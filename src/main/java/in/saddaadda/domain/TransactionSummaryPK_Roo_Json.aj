// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package in.saddaadda.domain;

import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import in.saddaadda.domain.TransactionSummaryPK;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect TransactionSummaryPK_Roo_Json {
    
    public String TransactionSummaryPK.toJson() {
        return new JSONSerializer().exclude("*.class").serialize(this);
    }
    
    public static TransactionSummaryPK TransactionSummaryPK.fromJsonToTransactionSummaryPK(String json) {
        return new JSONDeserializer<TransactionSummaryPK>().use(null, TransactionSummaryPK.class).deserialize(json);
    }
    
    public static String TransactionSummaryPK.toJsonArray(Collection<TransactionSummaryPK> collection) {
        return new JSONSerializer().exclude("*.class").serialize(collection);
    }
    
    public static Collection<TransactionSummaryPK> TransactionSummaryPK.fromJsonArrayToTransactionSummaryPKs(String json) {
        return new JSONDeserializer<List<TransactionSummaryPK>>().use(null, ArrayList.class).use("values", TransactionSummaryPK.class).deserialize(json);
    }
    
}