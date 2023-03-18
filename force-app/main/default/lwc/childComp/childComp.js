import { LightningElement } from 'lwc';

export default class ChildComp extends LightningElement {

    clickHandler(){
        console.log("User has click the button,about to create an event");
        const showEvent = new CustomEvent('show', {bubbles:false,composed:false});
        this.dispatchEvent(showEvent);
        console.log("Show event has beeen dispatched from the child component!");
    }
}