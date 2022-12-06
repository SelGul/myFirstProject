public class primitiveDataTypeDemo2 {
    public void printNewDate() {
system.debug('create new Date instance');
Date newDate = Date.newInstance(1994, 7, 9);
system.debug('new Date is' + newDate);

Date newDate2 = Date.newInstance(2022, 5, 6);
system.debug('new Date2 is' + newDate2);

Date todayDate = date.today();
system.debug('today\'s date' + todayDate);
    }

    public void printNewTime(){
        Time myTime = Time.newInstance(2, 15, 45, 55);
        system.debug('my time is' + myTime);

        Time meTime = Time.newInstance(2, 15, 0, 9);
        system.debug('me time is' + meTime);
    }
    public void printNewDateTime(){
        Date newDate = date.today();
        Time newTime = time.newInstance(2, 15, 45, 55);
        
        Datetime dt1 = datetime.newInstance(newDate,newTime);
        system.debug('dt is' + dt1);

        Datetime dt2 = Datetime.newInstance(2001, 7, 9);
        system.debug('dt2 is' + dt2);    

}
}
