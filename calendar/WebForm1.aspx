<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="calendar.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Calendar</title>
</head>
<body>
<div >
    <div>
         <form>
            <label  for="month">Month: </label>
            <select name="month" id="month" onchange="jump()">
                <option value=''></option>
                <option value=0>Jan</option>
                <option value=1>Feb</option>
                <option value=2>Mar</option>
                <option value=3>Apr</option>
                <option value=4>May</option>
                <option value=5>Jun</option>
                <option value=6>Jul</option>
                <option value=7>Aug</option>
                <option value=8>Sep</option>
                <option value=9>Oct</option>
                <option value=10>Nov</option>
                <option value=11>Dec</option>
            </select>

            <label for="year">Year:</label>
            <select name="year" id="year" onchange="jump()" required>
            <option value=''></option>
            <option value=1990>1990</option>
            <option value=1991>1991</option>
            <option value=1992>1992</option>
            <option value=1993>1993</option>
            <option value=1994>1994</option>
            <option value=1995>1995</option>
            <option value=1996>1996</option>
            <option value=1997>1997</option>
            <option value=1998>1998</option>
            <option value=1999>1999</option>
            <option value=2000>2000</option>
            <option value=2001>2001</option>
            <option value=2002>2002</option>
            <option value=2003>2003</option>
            <option value=2004>2004</option>
            <option value=2005>2005</option>
            <option value=2006>2006</option>
            <option value=2007>2007</option>
            <option value=2008>2008</option>
            <option value=2009>2009</option>
            <option value=2010>2010</option>
            <option value=2011>2011</option>
            <option value=2012>2012</option>
            <option value=2013>2013</option>
            <option value=2014>2014</option>
            <option value=2015>2015</option>
            <option value=2016>2016</option>
            <option value=2017>2017</option>
            <option value=2018>2018</option>
            <option value=2019>2019</option>
            <option value=2020>2020</option>
            <option value=2021>2021</option>
            <option value=2022>2022</option>
            <option value=2023>2023</option>
            <option value=2024>2024</option>
            <option value=2025>2025</option>
            <option value=2026>2026</option>
            <option value=2027>2027</option>
            <option value=2028>2028</option>
            <option value=2029>2029</option>
            <option value=2030>2030</option>
        </select></form>
        <pre>
        <button onclick="myFunction()">Show</button>
        </pre>
   <!-- <button name="jump" onclick="jump()"></button>-->
        <div id="calendar">
            <h3 class="card-header" id="monthAndYear"></h3>
            <table>
                <thead>
                    <tr>
                        <th>Sun</th>
                        <th>Mon</th>
                        <th>Tue</th>
                        <th>Wed</th>
                        <th>Thu</th>
                        <th>Fri</th>
                        <th>Sat</th>
                    </tr>
                </thead>
                <tbody id="calendar-body">
                </tbody>
            </table>
        </div>
        <br/>     
    </div>
</div>
<script src="JavaScript.js"></script>
<script>
    document.getElementById("calendar").style.display = "none"; 
    function myFunction() {

        month = document.getElementById("month").value;
        year = document.getElementById("year").value;

        if (month == "" && year == "") {
            alert("Please Enter the Month and Year");
            return false;
        }
        else if (month == "") {
            alert("Please Enter the Month");
            return false;
        }
        else if (year == "") {
            alert("Please Enter the Year");
            return false;
        }
        else {
            var x = document.getElementById("calendar");

            if (x.style.display === "block") {
                x.style.display = "none";
            }
            else {
                x.style.display = "block";
            }
        }
        
    }   
</script>
    <script>
        document.querySelector('#month').value = '';
        document.querySelector('#year').value = '';
    </script>
</body>
</html>