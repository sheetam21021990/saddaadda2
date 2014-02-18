// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package in.saddaadda.web;

import in.saddaadda.domain.Account;
import in.saddaadda.domain.Gender;
import in.saddaadda.domain.User;
import in.saddaadda.domain.UserPK;
import in.saddaadda.web.UserController;
import java.io.UnsupportedEncodingException;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.joda.time.format.DateTimeFormat;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.core.convert.ConversionService;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect UserController_Roo_Controller {
    
    private ConversionService UserController.conversionService;
    
    @Autowired
    public UserController.new(ConversionService conversionService) {
        super();
        this.conversionService = conversionService;
    }

    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String UserController.create(@Valid User user, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, user);
            return "users/create";
        }
        uiModel.asMap().clear();
        user.persist();
        return "redirect:/users/" + encodeUrlPathSegment(conversionService.convert(user.getId(), String.class), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String UserController.createForm(Model uiModel) {
        populateEditForm(uiModel, new User());
        return "users/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String UserController.show(@PathVariable("id") UserPK id, Model uiModel) {
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("user", User.findUser(id));
        uiModel.addAttribute("itemId", conversionService.convert(id, String.class));
        return "users/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String UserController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("users", User.findUserEntries(firstResult, sizeNo));
            float nrOfPages = (float) User.countUsers() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("users", User.findAllUsers());
        }
        addDateTimeFormatPatterns(uiModel);
        return "users/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String UserController.update(@Valid User user, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, user);
            return "users/update";
        }
        uiModel.asMap().clear();
        user.merge();
        return "redirect:/users/" + encodeUrlPathSegment(conversionService.convert(user.getId(), String.class), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String UserController.updateForm(@PathVariable("id") UserPK id, Model uiModel) {
        populateEditForm(uiModel, User.findUser(id));
        return "users/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String UserController.delete(@PathVariable("id") UserPK id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        User user = User.findUser(id);
        user.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/users";
    }
    
    void UserController.addDateTimeFormatPatterns(Model uiModel) {
        uiModel.addAttribute("user_dateofbirth_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
    }
    
    void UserController.populateEditForm(Model uiModel, User user) {
        uiModel.addAttribute("user", user);
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("accounts", Account.findAllAccounts());
        uiModel.addAttribute("genders", Gender.findAllGenders());
    }
    
    String UserController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
        String enc = httpServletRequest.getCharacterEncoding();
        if (enc == null) {
            enc = WebUtils.DEFAULT_CHARACTER_ENCODING;
        }
        try {
            pathSegment = UriUtils.encodePathSegment(pathSegment, enc);
        } catch (UnsupportedEncodingException uee) {}
        return pathSegment;
    }
    
}
