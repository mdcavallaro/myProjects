// Get the pizza size price and add it to the running Total
// then pass that running total to the next function so
// the next function will add a a particular total to the running total and so on...
//
// Keep doing this until you get all items items added to the running total.
//
// Just remember that the syntax will be text1 = text1 + something + "<br>";
// So you take the original value and concetenate to something new and end it with
// an HTML line break so our code will write the next thing one line below instead
// of overwriting the previous print out.
//
// begin the first fuction and declare and initialize the variables.
function getReceipt() {
    text1 = "";  // This is a string that will show a list of selected items.
    text2 = "";
    var runningTotal = 0;  // This is a numeric value and will be the running total for all the selected items.
    var sizeTotal = 0;  // This is a numberic value and will be the subtotal of the selected pizza size.
    var sizeArray = document.getElementsByClassName("size"); // This is an array of all the input options from the "Size" section.

    for (var i = 0; i < sizeArray.length; i++) {
            if (sizeArray[i].checked) {
                    var selectedSize = sizeArray[i].value;
                    text1 = text1+selectedSize+"<br>";
            }
    }
    if (selectedSize === "Personal Pizza") {
            sizeTotal = 6;
    } else if (selectedSize === "Medium Pizza") {
            sizeTotal = 10;
    } else if (selectedSize === "Large Pizza") {
            sizeTotal = 14;
    } else if (selectedSize === "Extra Large Pizza") {
            sizeTotal = 16;
    }
    runningTotal = sizeTotal;
    getMeat(runningTotal,text1,text2); //All three of these variables will be passed on to each function
};

function getMeat(runningTotal,text1,text2) {
    var meatTotal = 0;  // This is the monetary value for all of hte selected meat toppings.
    var selectedMeat = [];  //This variable will store a list of all user selected meat toppings.
    var meatArray = document.getElementsByClassName("meats");  //This is an array of all possible input options from the "Meat" section.
    for (var j = 0; j < meatArray.length; j++) {
            if (meatArray[j].checked) {
                    selectedMeat.push(meatArray[j].value);
                    console.log("selected meat item: ("+meatArray[j].value+")");
                    text1 = text1+meatArray[j].value+"<br>";
            }
    }
    var meatCount = selectedMeat.length;
    if (meatCount > 1) {
            meatTotal = (meatCount - 1);
    } else {
            meatTotal = 0;
    }
    runningTotal= (runningTotal + meatTotal);
    for (var j = 0; j < selectedMeat.length; j++) {
            text1 = text1+selectedMeat[j]+"br";
            if (meatCount <= 1) {
                text2 = text2 + 0 + "<br>";
                meatCount = meatCount -1;
            } else if (meatCount == 2) {
                text2 = text2 + 1 + "<br>";
                meatCount = meatCount - 1;
            } else {
                text2 = text2 + 1 + "<br>";
                meatCount = meatCount -1;
            }        
    }
    getVeggie(runningTotal,text1,text2);
};

function getVeggie(runningTotal,text1,text2) {
    var veggieTotal = 0;
    var selectedVeggie = [];
    var veggieArray = document.getElementsByClassName("veggies");
    for (var j = 0; j < veggieArray.length; j++) {
        if (veggieArray[j].checked) {
            selectedVeggie.push(veggieArray[j].value);
        }
    }
    var veggieCount = selectedVeggie.length;
    if (veggieCount >= 2) {
        veggieTotal = (veggieCount - 1);
    } else {
        veggieTotal = 0;
    }
    runningTotal = (runningTotal + veggieTotal);
    for (var j = 0; j < selectedVeggie.length; j++) {
            text1 = text1+selectedVeggie[j]+"<br>";
            if (veggieCount <= 1) {
                text2 = text2 + 0 + "<br>";
                veggieCount = veggieCount - 1;
            } else if (veggieCount == 2) {
                text2 = text2 + 1 + "<br>";
                veggieCount = veggieCount - 1;
            } else {
                text2 = text2 + 1 + "<br>";
                veggieCount = veggieCount - 1;
            }
    }
    getCheese(runningTotal,text1,text2);
};

function getCheese(runningTotal,text1,text2) {
    var cheeseTotal = 0;
    var selectedCheese = [];
    var cheeseArray = document.getElementsByClassName("cheese");
    for (var j = 0; j < cheeseArray.length; j++) {
        if (cheeseArray[j].checked) {
            selectedCheese = cheeseArray[j].value;
        }
        if (selectedCheese === "Extra cheese") {
            cheeseTotal = 3;
        }
    }
    text2 = text2+cheeseTotal+"<br>";
    text1 = text1+selectedCheese+"<br>";
    runningTotal = (runningTotal + cheeseTotal);
    getSauce(runningTotal,text1,text2);
};

function getSauce(runningTotal,text1,text2) {
    var sauceArray = document.getElementsByClassName("sauce");
    for (var j = 0; j < sauceArray.length; j++) {
        if (sauceArray[j].checked) {
            selectedSauce = sauceArray[j].value;
            text1 = text1 + selectedSauce +"<br>";
        }
    }
    text2 = text2 + 0 +"<br>";
    getCrust(runningTotal,text1,text2)
};

function getCrust(runningTotal,text1,text2) {
    var crustTotal = 0
    var selectedCrust;
    var crustArray = document.getElementsByClassName("crust");
    for (var j = 0; j < crustArray.length; j++) {
        if (crustArray[j].checked) {
            selectedCrust = crustArray[j].value;
            text1 = text1 + selectedCrust + "<br>";
        }
        if (selectedCrust === "Cheese Stuffed Crust") {
            crustTotal = 3;
        }
    }
    runningTotal = (runningTotal + crustTotal);
    text2 = text2 + crustTotal + "<br>";
    document.getElementById("cart").style.opacity=1;
    document.getElementById("showText").innerHTML=text1;
    document.getElementById("showText").innerHTML=text2;
    document.getElementById("totalPrice").innerHTML = "</h3>$"+runningTotal+".00"+"</h3>";
};


