
import { LightningElement } from 'lwc';

export default class CalculatorAssignment extends LightningElement {
    num1=0;
    num2=0;
    total=0;
    
    changeHandler(event){
        if (event.target.name==="input1") {
            this.num1=event.target.value;
        }else{
            this.num2=event.target.value;
        }
        this.total=Number(this.num1)+Number(this.num2);
    }
   

    /*changeHandler1(event){
        this.num1=event.target.value;
    }

    changeHandler2(event){
        this.num2=event.target.value;
    }*/
   
}