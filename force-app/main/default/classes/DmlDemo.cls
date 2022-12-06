public class DmlDemo {
    public static void dmlInsertDemo_stndObj() {
// we will create account record using apex

Account acc = new account();
// set field value
acc.Name= 'SoftInnovas';
//acc.phone=

insert acc;
system.debug('insert acc: ' + acc);
    }
    public static void dmlInsertDemo_cstmObj() {
       Salesforce_project__c spNew = new Salesforce_project__c();
       spNew.project_name__c = 'teach dml';
       spNew.description__c='';
        
        insert spNew;
     
            }

            public static void dmlUpdatetDemo() {
               
                Account acc = new account();
               
                acc.Name= 'Sfdc';
                insert acc;
                acc.Name = 'salesforce inc.';
               update acc;
}
}