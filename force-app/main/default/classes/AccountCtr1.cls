public with sharing class AccountCtr1 {
    
    @AuraEnabled(cacheable=true)
    public static List<Account> getTopAccounts() {
        return [SELECT Name, Type, Industry, AnnualRevenue
                FROM Account
                WHERE AnnualRevenue != null
                WITH SECURITY_ENFORCED
                ORDER BY AnnualRevenue DESC
                LIMIT 10];
    }
}