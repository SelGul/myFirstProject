public  class Datetime_Assignment {
    public void diffOfDate() {
        Date tomorrowDate = Date.newInstance(2022, 11, 22);
        system.debug('tomorrow date is ' + tomorrowDate);

        Date todayDate = Date.newInstance(2022, 11, 21);
        system.debug('today date is ' + todayDate);

        Integer dayOfDiff = todayDate.daysBetween(tomorrowDate);
        system.debug('day difference => ' + dayOfDiff);


    }
    public void timeCheck() {
        Datetime tomorrowDatetime = Datetime.newInstance(2022, 11, 22,7, 0 , 0);
        system.debug('tomorrow date and time is ' + tomorrowDatetime);

        Datetime tenDayDateTime = Datetime.newInstance(2022, 12, 2,7, 0 , 0);
        system.debug('10 days later date and time is ' + tenDayDateTime);

        Long dateTimelong = 2112799877L;
        dateTime longDate = Datetime.newInstance(dateTimelong);
        system.debug('long date time=> ' + longDate);

        Datetime add7Days = tomorrowDatetime.addDays(7);
        system.debug('7 days later=> ' + add7Days);

        
        Datetime add10Days = tenDayDatetime.addDays(10);
        system.debug('10 days later=> ' + add10Days);


}
}