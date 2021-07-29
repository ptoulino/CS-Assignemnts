"use strict";

/*===
    yes, you CAN have a statement by itself in an external JavaScript
===*/

window.onload = function()
                {
                    // I would like to do something (change a checkbox summary)
                    //     every time a checkbox with a particular class attribute
                    //     is clicked
                    // getElementsByClassName returns an Array of objects
                    //     corresponding to elements with attribute class with
                    //     the given value

                    var myToppingCkboxes = 
                        document.getElementsByClassName("toppingChoice");

                    // I want to attach an onclick attribute to each
                    //     of these checkboxes

                    for (var i=0; i < myToppingCkboxes.length; i++)
                    {
                        myToppingCkboxes[i].onclick = updateSummary;
                    }
                };

/*===
    function: updateSummary: void -> void
    purpose: expects nothing, returns nothing,
        has the following side-effects:
        *   set an element with id="topping-summary"
           to have content summarizing the current checked checkedboxes
===*/

function updateSummary()
{
     // grab all checkboxes for toppings

     var myToppingBoxes = document.getElementsByClassName("toppingChoice");

     // I happen to know the element with id="topping-summary" has content
     //    (it is a p element)

     var summaryPara = document.getElementById("topping-summary");
     summaryPara.innerHTML = "Summary of toppings: ";

     // for each checked ckbox, append its name to the grabbed
     //    paragraph's content

     for (var i=0; i < myToppingBoxes.length; i++)
     {
         // a JS DOM checkbox object has a checked data field,
         //     and its value is Boolean true if the corresponding
         //     checkbox element is currently checked
         // and its name data field contains the value of its
         //     name attribute

         if (myToppingBoxes[i].checked == true)
         {
             summaryPara.innerHTML += " " + myToppingBoxes[i].name;
         }
    }
}
