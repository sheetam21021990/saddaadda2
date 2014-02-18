// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package in.saddaadda.web;

import in.saddaadda.domain.TransactionSummary;
import in.saddaadda.domain.TransactionSummaryPK;
import in.saddaadda.web.TransactionSummaryController;
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

privileged aspect TransactionSummaryController_Roo_Controller {
    
    private ConversionService TransactionSummaryController.conversionService;
    
    @Autowired
    public TransactionSummaryController.new(ConversionService conversionService) {
        super();
        this.conversionService = conversionService;
    }

    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String TransactionSummaryController.create(@Valid TransactionSummary transactionSummary, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, transactionSummary);
            return "transactionsummarys/create";
        }
        uiModel.asMap().clear();
        transactionSummary.persist();
        return "redirect:/transactionsummarys/" + encodeUrlPathSegment(conversionService.convert(transactionSummary.getId(), String.class), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String TransactionSummaryController.createForm(Model uiModel) {
        populateEditForm(uiModel, new TransactionSummary());
        return "transactionsummarys/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String TransactionSummaryController.show(@PathVariable("id") TransactionSummaryPK id, Model uiModel) {
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("transactionsummary", TransactionSummary.findTransactionSummary(id));
        uiModel.addAttribute("itemId", conversionService.convert(id, String.class));
        return "transactionsummarys/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String TransactionSummaryController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("transactionsummarys", TransactionSummary.findTransactionSummaryEntries(firstResult, sizeNo));
            float nrOfPages = (float) TransactionSummary.countTransactionSummarys() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("transactionsummarys", TransactionSummary.findAllTransactionSummarys());
        }
        addDateTimeFormatPatterns(uiModel);
        return "transactionsummarys/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String TransactionSummaryController.update(@Valid TransactionSummary transactionSummary, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, transactionSummary);
            return "transactionsummarys/update";
        }
        uiModel.asMap().clear();
        transactionSummary.merge();
        return "redirect:/transactionsummarys/" + encodeUrlPathSegment(conversionService.convert(transactionSummary.getId(), String.class), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String TransactionSummaryController.updateForm(@PathVariable("id") TransactionSummaryPK id, Model uiModel) {
        populateEditForm(uiModel, TransactionSummary.findTransactionSummary(id));
        return "transactionsummarys/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String TransactionSummaryController.delete(@PathVariable("id") TransactionSummaryPK id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        TransactionSummary transactionSummary = TransactionSummary.findTransactionSummary(id);
        transactionSummary.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/transactionsummarys";
    }
    
    void TransactionSummaryController.addDateTimeFormatPatterns(Model uiModel) {
        uiModel.addAttribute("transactionSummary_transactiondate_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
    }
    
    void TransactionSummaryController.populateEditForm(Model uiModel, TransactionSummary transactionSummary) {
        uiModel.addAttribute("transactionSummary", transactionSummary);
        addDateTimeFormatPatterns(uiModel);
    }
    
    String TransactionSummaryController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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