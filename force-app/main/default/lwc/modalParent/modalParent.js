import { LightningElement } from 'lwc';

export default class ModalParent extends LightningElement {
    showModal = false;
    message;
    createEmployee(){
        this.showModal = true;
    }
    closeHandler(){
        console.log(JSON.stringify(event.detail));
        console.log(event);
        this.message = event.detail;
        this.showModal = false;

    }
}