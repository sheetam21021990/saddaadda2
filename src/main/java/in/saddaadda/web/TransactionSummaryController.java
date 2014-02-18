package in.saddaadda.web;

import in.saddaadda.domain.TransactionSummary;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/transactionsummarys")
@Controller
@RooWebScaffold(path = "transactionsummarys", formBackingObject = TransactionSummary.class)
public class TransactionSummaryController {
}
