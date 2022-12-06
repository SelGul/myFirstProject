list<string> listStr = new list<string>();
if(listStr.isEmpty()){
    system.debug('list is empty');
}
listStr.add('some string');
boolean listIsEmpty = listStr.isEmpty();
if(!listStr.isEmpty()){
    system.debug('list is not empty');
}
//list<string> listStr2;
//.add('will not work');ystem.NullPointerException: Attempt to de-reference a null objectc

List<integer> listInteger = new List<integer>();
       listInteger.add(54);//0
       listInteger.add(12);//1
       listInteger.add(44);//2
       listInteger.add(22);//3
system.debug('before sort' + listInteger);
listInteger.sort();
system.debug('after sort' + listInteger);