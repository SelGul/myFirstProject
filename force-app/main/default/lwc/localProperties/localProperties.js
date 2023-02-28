import { LightningElement } from 'lwc';

export default class LocalProperties extends LightningElement {
    name; //undefined
    age = 30;
    fullname ="Salesforce Developer";
    location = {
        city : "Houston",
        country : "USA",
        postalCode:"77887"
    };
    fruits = ["Orange", "Berries", "Apple"];
}