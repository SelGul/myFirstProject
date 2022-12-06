public class SOQL_Assignment {
    public static void soql_WhereClause() {
 List<Contact>Istcontact = [select id, lastname from Contact where lastname like '%A%'];
 system.debug('list of lastname contains letter a  ' + Istcontact);
 system.debug('size of variable  ' + Istcontact.size());
    }

    public static void soql_formethod() {
        List<Contact>Istcontact = [select id, lastname, phone from Contact ];
        for ( Contact eachContact :Istcontact){

            string lastname = eachContact.lastname;
            string phone = eachContact.phone;
            system.debug('last name = ' + lastname+ 'phone number = ' +phone);
        }
        
       
           }
}
