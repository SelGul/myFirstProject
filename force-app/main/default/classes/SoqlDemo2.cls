public class SoqlDemo2 {
    public static void soqlChildToParent_1() {
        List<contact> listContact = [select id, name, account.name , account.Industry
                            from contact where account.industry = 'energy'];
        for (contact eachContact : listContact) {
            string cntName = eachContact.Name;
            string cntId = eachContact.Id;
            string accountName = eachContact.account.Name;
            //string accountInd = eachContact.account.Industry;
            system.debug('contact name is ' + cntName + ', account name is ' + accountName);
        }
    }

    public static void soqlParentToChild_1() {
        List<account> listAccOpp  = [select id, name, annualrevenue,(select name, amount from Opportunities where stagename = 'Closed Won') from account where type = 'Customer - Direct'];
        for (account eachAcc: listAccOpp) {
            
            system.debug('ACCOUNT name is ' + eachAcc.name + ', annual revenue is ' + eachAcc.annualRevenue);

            List<Opportunity> listOpp = eachAcc.Opportunities;

            for (Opportunity eachOpp : ListOpp) {
                
                system.debug('opp name is ' + eachOpp.name + ', amount is ' + eachOpp.Amount);
            }
        }
    }
}
