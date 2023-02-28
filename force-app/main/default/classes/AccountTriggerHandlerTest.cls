@isTest
public class AccountTriggerHandlerTest {
    @istest
    private static void testUpdateDescription() {
        //insert account record with active field as yes.
        //1. prepare data
        Account acc1 = new account();
        acc1.Name = 'SI Test';
        acc1.Industry = 'Energy';

        Account acc2 = new account();
        acc2.Name = 'UI Test';
        acc2.Industry = 'Energy';
        acc2.Active__c = 'Yes';

        Account acc3 = new account();
        acc3.Name = 'PI Test';
        acc3.Industry = 'Banking';

        List<account> listAcc = new list<account>{acc1, acc2, acc3};
        insert listAcc;


        //verify description.
        //soql
        Account checkInsertYes = [select id, name, active__c, Description from account where id = :acc2.id];
        system.assertEquals('Account is now Active. Enjoy, celebrate, have fun.', checkInsertYes.Description);
        //check description.
        //assert
        for (account a : listAcc) {
            a.Active__c = 'Yes';
        }
        update listAcc;

        List<account> allAcc = [select id, name, active__c, Description from account];
        system.assertEquals('Account is now Active. Enjoy, celebrate, have fun.', allAcc[0].Description);
    }
}