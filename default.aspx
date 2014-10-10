<%@ Page Language="VB" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="style.css" />

</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    Ke's Mortgage Calculator
        
        <br /><br />
     
        Loan Amount:<asp:TextBox ID="tbLoanAmt" runat="server" ></asp:TextBox>
                  
        <br /><br />      
        
        Annual Interest %: <asp:TextBox ID="tbAnnualInterest" runat="server" ></asp:TextBox>
        
        <br /><br />

        Loan Term (Yrs): <asp:TextBox ID="tbLoanTerm" runat="server" ></asp:TextBox>
        
        <br /><br />

        <asp:Button ID="btnCalcPmt" runat="server" Text="Calculate" Width="89px" />
           <br /><br />
        
        <asp:Button ID="clearButton" runat="server" Text="Clear " Width="89px" /><br />  <br />
        
        
        <%If Not IsPostBack Then%>
        <br />
        <br />
     <p>Welcome to my mortagage calculator. Please complete the fields above to have your monthly payment and loan replayment schedule calculated for you </p>

        <% Else %>
       
         <br />
                
        Monthly Payment: &nbsp; <asp:Label ID="lblMonthlyPmt" runat="server"></asp:Label>
        
        <br /><br />
        
        <asp:GridView ID="loanGridView" runat="server" CssClass="cssgridview" >
            <AlternatingRowStyle CssClass="alt" />
            </asp:GridView> 

        <%End If%>
        </div>
    </form>
</body>
</html>
