package in.saddaadda.web;

import in.saddaadda.domain.Gender;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/genders")
@Controller
@RooWebScaffold(path = "genders", formBackingObject = Gender.class)
public class GenderController {
}
