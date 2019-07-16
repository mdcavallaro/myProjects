class Person {
    constructor(firstName, lastName){
        this.firstName = firstName;
        this.lastName = lastName;
    }
    getName(){
        return this.firstName + " " +this.lastName;
    }
}

var me = new Person('Trisha', 'Saldhana');

console.log(me.getName());