today = new Date(); //creates a new date object with current date and time
//currentMonth = today.getMonth(); //will get current month in index number(0-11)
//currentYear = today.getFullYear(); //will get current year
selectYear = document.getElementById("year");
selectMonth = document.getElementById("month");

months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"];

monthAndYear = document.getElementById("monthAndYear");
showCalendar(currentMonth, currentYear);

function jump() {
    console.log("jump");
    console.log(selectYear.value, "selectYearvalue");
    currentYear = parseInt(selectYear.value);
    currentMonth = parseInt(selectMonth.value);
    showCalendar(currentMonth, currentYear);
    console.log("empty");
    console.log(y, "yvalue");
}


function showCalendar(month, year) {
    let firstDay = (new Date(year, month)).getDay();
    console.log(firstDay, "firstd");
    tbl = document.getElementById("calendar-body"); // body of the calendar
    console.log(tbl, "tbl");
    // clearing all previous cells
    tbl.innerHTML = "";
    console.log(tbl.innerHTML, "tblinnerhtml");
    // filing data about month and in the page via DOM.
    monthAndYear.innerHTML = months[month] + " " + year;
    selectYear.value = year;
    selectMonth.value = month;
    console.log(selectMonth.value, selectYear.value);
   // this.showCalendarValues(selectMonth.value, selectYear.value);
    
    // creating all cells
    let date = 1;
    for (let i = 0; i < 6; i++) {
        // creates a table row
        let row = document.createElement("tr");
        //creating individual cells, filing them up with data.
        for (let j = 0; j < 7; j++) {
            if (i === 0 && j < firstDay) {
                cell = document.createElement("td");
                
                cellText = document.createTextNode("");
                
                cell.appendChild(cellText);
               
                row.appendChild(cell);
                console.log(row.appendChild(cell),"cll");
            }
            else if (date > daysInMonth(month, year)) {
                break;
            }
            else {
                cell = document.createElement("td");
                cellText = document.createTextNode(date);
                cell.appendChild(cellText);
                console.log(cell.appendChild(cellText), "cell");
                row.appendChild(cell);
                date++;
            }
        }
        tbl.appendChild(row); // appending each row into calendar body.
    }
}
function daysInMonth(iMonth, iYear) {
    //debugger;
    return 32 - new Date(iYear, iMonth, 32).getDate();
}


