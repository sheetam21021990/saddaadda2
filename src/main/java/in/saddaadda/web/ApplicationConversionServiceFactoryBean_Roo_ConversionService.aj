// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package in.saddaadda.web;

import in.saddaadda.domain.Account;
import in.saddaadda.domain.Gender;
import in.saddaadda.domain.ItemDetails;
import in.saddaadda.domain.ItemDetailsPK;
import in.saddaadda.domain.TransactionSummary;
import in.saddaadda.domain.TransactionSummaryPK;
import in.saddaadda.domain.User;
import in.saddaadda.domain.UserPK;
import in.saddaadda.web.ApplicationConversionServiceFactoryBean;
import org.apache.commons.codec.binary.Base64;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;

privileged aspect ApplicationConversionServiceFactoryBean_Roo_ConversionService {
    
    declare @type: ApplicationConversionServiceFactoryBean: @Configurable;
    
    public Converter<Account, String> ApplicationConversionServiceFactoryBean.getAccountToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<in.saddaadda.domain.Account, java.lang.String>() {
            public String convert(Account account) {
                return new StringBuilder().append(account.getAccountName()).append(' ').append(account.getDisplayName()).toString();
            }
        };
    }
    
    public Converter<Integer, Account> ApplicationConversionServiceFactoryBean.getIdToAccountConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Integer, in.saddaadda.domain.Account>() {
            public in.saddaadda.domain.Account convert(java.lang.Integer id) {
                return Account.findAccount(id);
            }
        };
    }
    
    public Converter<String, Account> ApplicationConversionServiceFactoryBean.getStringToAccountConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, in.saddaadda.domain.Account>() {
            public in.saddaadda.domain.Account convert(String id) {
                return getObject().convert(getObject().convert(id, Integer.class), Account.class);
            }
        };
    }
    
    public Converter<Gender, String> ApplicationConversionServiceFactoryBean.getGenderToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<in.saddaadda.domain.Gender, java.lang.String>() {
            public String convert(Gender gender) {
                return new StringBuilder().append(gender.getName()).toString();
            }
        };
    }
    
    public Converter<Integer, Gender> ApplicationConversionServiceFactoryBean.getIdToGenderConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Integer, in.saddaadda.domain.Gender>() {
            public in.saddaadda.domain.Gender convert(java.lang.Integer id) {
                return Gender.findGender(id);
            }
        };
    }
    
    public Converter<String, Gender> ApplicationConversionServiceFactoryBean.getStringToGenderConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, in.saddaadda.domain.Gender>() {
            public in.saddaadda.domain.Gender convert(String id) {
                return getObject().convert(getObject().convert(id, Integer.class), Gender.class);
            }
        };
    }
    
    public Converter<ItemDetails, String> ApplicationConversionServiceFactoryBean.getItemDetailsToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<in.saddaadda.domain.ItemDetails, java.lang.String>() {
            public String convert(ItemDetails itemDetails) {
                return new StringBuilder().append(itemDetails.getTrasactionDate()).append(' ').append(itemDetails.getName()).append(' ').append(itemDetails.getPrice()).toString();
            }
        };
    }
    
    public Converter<ItemDetailsPK, ItemDetails> ApplicationConversionServiceFactoryBean.getIdToItemDetailsConverter() {
        return new org.springframework.core.convert.converter.Converter<in.saddaadda.domain.ItemDetailsPK, in.saddaadda.domain.ItemDetails>() {
            public in.saddaadda.domain.ItemDetails convert(in.saddaadda.domain.ItemDetailsPK id) {
                return ItemDetails.findItemDetails(id);
            }
        };
    }
    
    public Converter<String, ItemDetails> ApplicationConversionServiceFactoryBean.getStringToItemDetailsConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, in.saddaadda.domain.ItemDetails>() {
            public in.saddaadda.domain.ItemDetails convert(String id) {
                return getObject().convert(getObject().convert(id, ItemDetailsPK.class), ItemDetails.class);
            }
        };
    }
    
    public Converter<TransactionSummary, String> ApplicationConversionServiceFactoryBean.getTransactionSummaryToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<in.saddaadda.domain.TransactionSummary, java.lang.String>() {
            public String convert(TransactionSummary transactionSummary) {
                return new StringBuilder().append(transactionSummary.getTransactionDate()).append(' ').append(transactionSummary.getName()).append(' ').append(transactionSummary.getTotalPrice()).toString();
            }
        };
    }
    
    public Converter<TransactionSummaryPK, TransactionSummary> ApplicationConversionServiceFactoryBean.getIdToTransactionSummaryConverter() {
        return new org.springframework.core.convert.converter.Converter<in.saddaadda.domain.TransactionSummaryPK, in.saddaadda.domain.TransactionSummary>() {
            public in.saddaadda.domain.TransactionSummary convert(in.saddaadda.domain.TransactionSummaryPK id) {
                return TransactionSummary.findTransactionSummary(id);
            }
        };
    }
    
    public Converter<String, TransactionSummary> ApplicationConversionServiceFactoryBean.getStringToTransactionSummaryConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, in.saddaadda.domain.TransactionSummary>() {
            public in.saddaadda.domain.TransactionSummary convert(String id) {
                return getObject().convert(getObject().convert(id, TransactionSummaryPK.class), TransactionSummary.class);
            }
        };
    }
    
    public Converter<User, String> ApplicationConversionServiceFactoryBean.getUserToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<in.saddaadda.domain.User, java.lang.String>() {
            public String convert(User user) {
                return new StringBuilder().append(user.getUserName()).append(' ').append(user.getPassword()).append(' ').append(user.getFirstName()).append(' ').append(user.getMiddleName()).toString();
            }
        };
    }
    
    public Converter<UserPK, User> ApplicationConversionServiceFactoryBean.getIdToUserConverter() {
        return new org.springframework.core.convert.converter.Converter<in.saddaadda.domain.UserPK, in.saddaadda.domain.User>() {
            public in.saddaadda.domain.User convert(in.saddaadda.domain.UserPK id) {
                return User.findUser(id);
            }
        };
    }
    
    public Converter<String, User> ApplicationConversionServiceFactoryBean.getStringToUserConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, in.saddaadda.domain.User>() {
            public in.saddaadda.domain.User convert(String id) {
                return getObject().convert(getObject().convert(id, UserPK.class), User.class);
            }
        };
    }
    
    public Converter<String, TransactionSummaryPK> ApplicationConversionServiceFactoryBean.getJsonToTransactionSummaryPKConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, in.saddaadda.domain.TransactionSummaryPK>() {
            public TransactionSummaryPK convert(String encodedJson) {
                return TransactionSummaryPK.fromJsonToTransactionSummaryPK(new String(Base64.decodeBase64(encodedJson)));
            }
        };
    }
    
    public Converter<TransactionSummaryPK, String> ApplicationConversionServiceFactoryBean.getTransactionSummaryPKToJsonConverter() {
        return new org.springframework.core.convert.converter.Converter<in.saddaadda.domain.TransactionSummaryPK, java.lang.String>() {
            public String convert(TransactionSummaryPK transactionSummaryPK) {
                return Base64.encodeBase64URLSafeString(transactionSummaryPK.toJson().getBytes());
            }
        };
    }
    
    public Converter<String, ItemDetailsPK> ApplicationConversionServiceFactoryBean.getJsonToItemDetailsPKConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, in.saddaadda.domain.ItemDetailsPK>() {
            public ItemDetailsPK convert(String encodedJson) {
                return ItemDetailsPK.fromJsonToItemDetailsPK(new String(Base64.decodeBase64(encodedJson)));
            }
        };
    }
    
    public Converter<ItemDetailsPK, String> ApplicationConversionServiceFactoryBean.getItemDetailsPKToJsonConverter() {
        return new org.springframework.core.convert.converter.Converter<in.saddaadda.domain.ItemDetailsPK, java.lang.String>() {
            public String convert(ItemDetailsPK itemDetailsPK) {
                return Base64.encodeBase64URLSafeString(itemDetailsPK.toJson().getBytes());
            }
        };
    }
    
    public Converter<String, UserPK> ApplicationConversionServiceFactoryBean.getJsonToUserPKConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, in.saddaadda.domain.UserPK>() {
            public UserPK convert(String encodedJson) {
                return UserPK.fromJsonToUserPK(new String(Base64.decodeBase64(encodedJson)));
            }
        };
    }
    
    public Converter<UserPK, String> ApplicationConversionServiceFactoryBean.getUserPKToJsonConverter() {
        return new org.springframework.core.convert.converter.Converter<in.saddaadda.domain.UserPK, java.lang.String>() {
            public String convert(UserPK userPK) {
                return Base64.encodeBase64URLSafeString(userPK.toJson().getBytes());
            }
        };
    }
    
    public void ApplicationConversionServiceFactoryBean.installLabelConverters(FormatterRegistry registry) {
        registry.addConverter(getAccountToStringConverter());
        registry.addConverter(getIdToAccountConverter());
        registry.addConverter(getStringToAccountConverter());
        registry.addConverter(getGenderToStringConverter());
        registry.addConverter(getIdToGenderConverter());
        registry.addConverter(getStringToGenderConverter());
        registry.addConverter(getItemDetailsToStringConverter());
        registry.addConverter(getIdToItemDetailsConverter());
        registry.addConverter(getStringToItemDetailsConverter());
        registry.addConverter(getTransactionSummaryToStringConverter());
        registry.addConverter(getIdToTransactionSummaryConverter());
        registry.addConverter(getStringToTransactionSummaryConverter());
        registry.addConverter(getUserToStringConverter());
        registry.addConverter(getIdToUserConverter());
        registry.addConverter(getStringToUserConverter());
        registry.addConverter(getJsonToTransactionSummaryPKConverter());
        registry.addConverter(getTransactionSummaryPKToJsonConverter());
        registry.addConverter(getJsonToItemDetailsPKConverter());
        registry.addConverter(getItemDetailsPKToJsonConverter());
        registry.addConverter(getJsonToUserPKConverter());
        registry.addConverter(getUserPKToJsonConverter());
    }
    
    public void ApplicationConversionServiceFactoryBean.afterPropertiesSet() {
        super.afterPropertiesSet();
        installLabelConverters(getObject());
    }
    
}
