// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package in.saddaadda.domain;

import in.saddaadda.domain.Account;
import in.saddaadda.domain.User;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.OneToMany;
import javax.validation.constraints.NotNull;

privileged aspect Account_Roo_DbManaged {
    
    @OneToMany(mappedBy = "account")
    private Set<User> Account.users;
    
    @Column(name = "account_name", length = 45)
    @NotNull
    private String Account.accountName;
    
    @Column(name = "display_name", length = 45)
    private String Account.displayName;
    
    public Set<User> Account.getUsers() {
        return users;
    }
    
    public void Account.setUsers(Set<User> users) {
        this.users = users;
    }
    
    public String Account.getAccountName() {
        return accountName;
    }
    
    public void Account.setAccountName(String accountName) {
        this.accountName = accountName;
    }
    
    public String Account.getDisplayName() {
        return displayName;
    }
    
    public void Account.setDisplayName(String displayName) {
        this.displayName = displayName;
    }
    
}