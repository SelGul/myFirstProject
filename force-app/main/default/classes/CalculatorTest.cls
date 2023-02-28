
@isTest //is for class
public class CalculatorTest {
    private static void aNormalMethod() {
        system.debug('this is still allowed');
    }

    //Test method features.
   //1. static.
   //2. void
   //3. no parameters
   //4. test method can be Public or Private. 
   @isTest //is for method
   private static void testMessage() {
        //call two methods from here
        Calculator c = new Calculator();
        c.welcomeMessage();
        c.printNewMessage('printing from test method now.');

       

   }
   @istest
   private static void testAdd1() {
        Calculator c = new Calculator();
        integer sum1 = c.add(10,15);
        //we have not verified it
        //as per our human calculation --> sum1=>25
        //assertion
        system.assertEquals(25,sum1);
   }

   @istest
   private static void testAdd12() {
        Calculator c = new Calculator();
        integer sum1 = c.add(10,15,25);
        //we have not verified it
        //as per our human calculation --> sum1=>25
        //assertion
        system.assertEquals(50,sum1);
   }

}
