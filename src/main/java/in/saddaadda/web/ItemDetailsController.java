package in.saddaadda.web;

import in.saddaadda.domain.ItemDetails;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/itemdetailses")
@Controller
@RooWebScaffold(path = "itemdetailses", formBackingObject = ItemDetails.class)
public class ItemDetailsController {
}
