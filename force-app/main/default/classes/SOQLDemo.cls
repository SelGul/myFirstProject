public class SOQLDemo {
    public static void accountSOQL_1() {
        //[ Query goes in here ] <- in square brackets.
        //it always return List<sObject>
        List<account> listAcc = [select id, name from account where name like '%a%'];
        system.debug('list of acc -> ' + listAcc);
    }

    public static void accountSOQL_11() {
        //if SOQL is returning JUST 1 record, we can use sObject for that.
        Account acc = [select id, name, phone from account order by createddate desc limit 1];
        system.debug('latest created account is ' + acc);
    }

    public static void accountSOQL_2() {
        Account acc =  [select id, name, phone, AccountNumber from account order by createddate desc limit 1];
        system.debug('latest created account is ' + acc);

        string accName = acc.name;
        string accPhone = acc.Phone;
        system.debug('acc name is ' + accName + ', acc phone is ' + accPhone + ', accountnumber is ' + acc.AccountNumber);
    }
    public static void accountSOQL_3() {
        
        List<account> listAcc = [select id, name, phone, AccountNumber from account order by createddate desc];
        system.debug('all accounts ' + listAcc);
        for ( Account eachAcc : listAcc){

            string accName = eachAcc.name;
            string accPhone = eachAcc.Phone;
            system.debug('acc name is ' + accName + ', acc phone is ' + accPhone + ', accountnumber is ' + eachAcc.AccountNumber);
        }

        }
        public static void accountSOQL_Filter(string accNameFilter) {
            
        
            List<account> listAcc = [select id, name, phone from account where name  =  : accNameFilter ];
            system.debug('filter list  ' + listAcc);
    }


public static void accountSOQL_Filter(List<String>accNames) {
    

    List<account> listAcc = [select id, name, phone from account where name in : accNames ];
    system.debug('filter account  ' + listAcc);
}

}