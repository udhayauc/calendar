<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calendar.aspx.cs" Inherits="calendar.Calendar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <pre>
       <label for="month">Month: </label>
       <input type="text" id="txtMonth" name="Month" /> 
       <label for="year">Year: </label>
       <input type="text" id="txtYear" name="Year" /> <br />
       <input type="button" value="Show" />
    </pre>
    </div>
    </form>
</body>
</html>
