public class ListDemo {
    public static string  candidatesList(integer i) {
        List<string> listCandidates = new List<string>();
        listCandidates.add('Ela');
        listCandidates.add('Marc');
        listCandidates.add('Elon');
        listCandidates.add('Bill');
        system.debug(' list of candidates  ' + listCandidates);
        string returnString = ''; //= listCandidates[i];
        integer sizeOfList = listCandidates.size();
        if( i>=0 && i<sizeOfList){
            returnString = listCandidates[i];
        }else{
            returnString = 'no values found stay in limits';
        }
         return returnString ;
        
    }
   public static void  randomIntegerList() {
      List<integer> listInteger = new List<integer>();
       listInteger.add(54);//0
       listInteger.add(12);//1
       listInteger.add(44);//2
       listInteger.add(22);//3

       integer index3Value = listInteger.get(3); // or
       //integer index3Valuev2 = listInteger(3);

       system.debug('list of integer  ' + listInteger);
       system.debug('index 3 value is ' + index3Value );
     
       
}
public static void allCats() {
    list<cat> listCat = new list<cat>();
    //we can add instance of CAT.
    cat batch12Cat = new cat('fluffykins', 'white');
    cat batch12Cat2 = new cat('simba', 'brown');
    cat batch12Cat3 = new cat('blackpepper', 'black');
    listCat.add(batch12Cat);
    listCat.add(batch12Cat2);
    listCat.add(batch12Cat3);
    listCat.add(batch12Cat);
    system.debug('list of cats ' + listCat);
}
}