import { LightningElement } from 'lwc';
import EMP_OBJECT from '@salesforce/schema/Employee__c';
export default class ModalChild extends LightningElement {
    objectName = EMP_OBJECT;
    clickHandler(){
        /**
         * simple event
         * const closeEvent = new CustomEvent('close');
        this.dispatchEvent(closeEvent);
        event with primative data

        let message = "User wants the child to be closed, hence closed!"
        const closeEvent = new CustomEvent('close',{detail :message});
        this.dispatchEvent(closeEvent);
        event with non primitive data*/
        let message = {
            Id: 1,
            Name:"Satya Nadella",
            Company:"Microsoft",
            Position:"CEO"
        }
        const closeEvent = new CustomEvent('close',{detail :message});
        this.dispatchEvent(closeEvent);
    }
}