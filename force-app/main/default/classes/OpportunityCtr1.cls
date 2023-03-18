public with sharing class OpportunityCtr1 {
    @AuraEnabled(cacheable=true)
    public static List<Opportunity> getTopOpportunities(string stage) {
        return [SELECT Name, Type, Amount, CloseDate
                FROM Opportunity
                WHERE StageName = :stage
                AND  Amount !=null
                WITH SECURITY_ENFORCED
                ORDER BY Amount DESC
                LIMIT 10];
    }
}