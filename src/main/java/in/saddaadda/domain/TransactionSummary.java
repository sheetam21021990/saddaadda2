package in.saddaadda.domain;

import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(identifierType = TransactionSummaryPK.class, versionField = "", table = "transaction_summary")
@RooDbManaged(automaticallyDelete = true)
public class TransactionSummary {
}
