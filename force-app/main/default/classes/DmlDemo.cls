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

public static void dmlUpdatetDemo_3() {
               
               Account acc = [ select id,name from account where name ='Softinnovas' limit 1];
              
               acc.Name= 'Softinnovas Inc.';
               
              update acc;
              system.debug('acc=> ' + acc);
}

public static void dmlInsertDemo_4() {
               
               Account acc = [ select id,name from account where name ='Softinnovas Inc.' limit 1];
              
              Contact cnt = new contact();
              cnt.LastName = 'Biden';
               cnt.AccountId= acc.Id;
              insert cnt;
              system.debug('cnt=> ' + cnt);
}

public static void dmlInsertDemo_5() {
        Salesforce_Project__c sp = [select id from Salesforce_Project__c ORDER BY CreatedDate DESC LIMIT 1];

        Salesforce_Ticket__c st = new Salesforce_Ticket__c();
        st.Subject__c = 'Learn apex dml2';
        st.Priority__c = 'High';
        st.Status__c = 'New';
        st.Requested_by_date__c = date.today();
        //setting relationship
        st.Salesforce_Project__c = sp.id;
        insert st;
        system.debug(st);

    }

    public static void dmlInsertMultiple_right() {
        List<account> listAcc = new list<account>();

        account acc1 = new account();
        acc1.Name = 'acc bulk 1';
        listAcc.add(acc1);

        account acc2 = new account();
        acc2.Name = 'acc bulk 2';
        listAcc.add(acc2);

        account acc3 = new account();
        acc3.Name = 'acc bulk 3';
        listAcc.add(acc3);

        insert listAcc;
    }
    public static void dmlInsertMultiple_right_2() {
        List<account> listAcc = new list<account>();

       for(integer i=0; i<155; i++){

        account acc = new account();
        acc.Name = 'Softinnovas v.' + i;
        acc.Active__c='Yes';
        listAcc.add(acc);
       }
        if(!listAcc.isEmpty()){}

        insert listAcc;
    }
    public static void dmlUpdateMultiple_right_2() {
        List<account> listAccount = [select id, name,active__c from account];
       
        List<account>updateAccount = new List<account>();

       for(account acc : listAccount){

        
        if(acc.Active__c == 'Yes'){
            acc.Name = acc.Name+ 'via B.0';
            updateAccount.add(acc);
        }
       }
       if(!updateAccount.isEmpty()){
        update updateAccount;
       }
    }
}