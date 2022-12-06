public class SOQLDec1Asgn {
    public static void soqlContact() {
        List<Contact>Istcontact = [select id, name, account.name, account.Id from Contact];
       
        for ( Contact eachCont : Istcontact){

            string accountName = eachCont.Account.name;
            Id accountId = eachCont.account.Id;
            system.debug('Account Name=  ' + accountName+ ', Account Id =  ' + accountId );
        }

    }
    public static void accountSOQL() {
        
        List<account> IstAccount = [select id, name, (SELECT id, name from contacts) from Account];
        
        for ( Account eachAccount :  IstAccount ){
            system.debug('acc name is ' + eachAccount );
            List<Contact>Istcontact = eachAccount.Contacts;
            for ( Contact eachCont : Istcontact){
             string contactName = eachCont.Name;
             Id contactId = eachCont.Id ;
             system.debug('contact name = ' + contactName+ ', contact Id = ' + contactId );
            }
            
        }

        }
}
