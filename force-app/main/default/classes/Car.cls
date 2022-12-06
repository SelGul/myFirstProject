public class Car {
   // public void switchOn(){
       // system.debug('starting the car');
   // }


    public string carColor = '';
    public string carName;
    //if we don't write access modifier. Default is Private.
    private integer maxSpeed = 150;
    //chnage in vs code
    public void switchOn(){
        System.debug('starting the car');
    }
    public void drive(){
        system.debug('driving ' + carName + ', color is ' + carColor);
    }
}