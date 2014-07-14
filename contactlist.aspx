<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contactlist.aspx.cs" Inherits="GreendaleContactList.contactlist" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Greendale Community College Contact Lists</title>
    <link href="GreendaleContactList.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            float: right;
            border: solid black 1px;
            background-color: #fff;
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="content">
        <header>
            <h1>Greendale Community College<img alt="Greendale logo" class="logo" src="Greendalelogo.png" /></h1>
            <h2>Faculty contact lists</h2>
        </header>
        <div class="main">
            <div class="chairs">        
                <h3>Department Chairs</h3>
                                                                                                                                <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
                AutoGenerateColumns="False" DataKeyNames="MajorID" AutoGenerateEditButton="True"
                DataSourceID="AccessDataSource1" CellPadding="4" ForeColor="#333333" 
                GridLines="None">
             <AlternatingRowStyle BackColor="White" />
             <Columns>
                 <asp:BoundField DataField="MajorID" HeaderText="MajorID" InsertVisible="False" 
                    ReadOnly="True" SortExpression="MajorID" />
                 <asp:BoundField DataField="MajorName" HeaderText="MajorName" 
                    SortExpression="MajorName" />
                 <asp:BoundField DataField="FirstName" HeaderText="FirstName" 
                    SortExpression="FirstName" />
                 <asp:BoundField DataField="LastName" HeaderText="LastName" 
                    SortExpression="LastName" />
                 <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" 
                    SortExpression="PhoneNumber" />
                 <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
             </Columns>
             <EditRowStyle BackColor="#2461BF" />
             <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
             <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
             <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
             <RowStyle BackColor="#EFF3FB" />
             <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
             <SortedAscendingCellStyle BackColor="#F5F7FB" />
                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                            <SortedDescendingCellStyle BackColor="#E9EBEF" />
                            <SortedDescendingHeaderStyle BackColor="#4870BE" />
                        </asp:GridView>
                <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                    DataFile="~/App_Data/GreendaleFaculty.accdb" 
                    SelectCommand="SELECT * FROM [tblDepartmentChairs]"></asp:AccessDataSource>
            </div>
            <div class="right">
                <h3>Add new faculty</h3>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtMEID" CssClass="frmValid" 
                    ErrorMessage="*MEID Required" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:Label ID="lblMEID" runat="server" CssClass="frm" 
                    Text="MEID:"></asp:Label>
                <asp:TextBox ID="txtMEID" runat="server" CssClass="frm"></asp:TextBox>
                    <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtFirstName" CssClass="frmValid" 
                    ErrorMessage="*First Name Required" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:Label ID="lblFirstName" runat="server" CssClass="frm" 
                    Text="First Name:"></asp:Label></td>
                <asp:TextBox ID="txtFirstName" runat="server" CssClass="frm"></asp:TextBox>
                    <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtLastName" CssClass="frmValid" 
                    ErrorMessage="*Last Name Required" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:Label ID="lblLastName" runat="server" CssClass="frm" 
                    Text="Last Name:"></asp:Label>
                <asp:TextBox ID="txtLastName" runat="server" CssClass="frm"></asp:TextBox>
                    <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtMajorId" CssClass="frmValid" 
                    ErrorMessage="*Major ID Required" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:Label ID="lblMajorId" runat="server" CssClass="frm"
                    Text="Major ID:"></asp:Label>
                <asp:TextBox ID="txtMajorId" runat="server" CssClass="frm"></asp:TextBox>
                    <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="txtEmail" CssClass="frmValid" Display="Dynamic" 
                    ErrorMessage="*Enter a valid email address" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    ForeColor="Red"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtEmail" CssClass="frmValid" 
                    ErrorMessage="*Email Required" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:Label ID="lblEmail" runat="server" CssClass="frm" 
                    Text="Email:"></asp:Label>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="frm"></asp:TextBox>
                    <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtPhoneNumber" CssClass="frmValid" Display="Dynamic" 
                    ErrorMessage="*Enter a valid phone number." 
                    ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}" 
                    ForeColor="Red"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txtPhoneNumber" CssClass="frmValid" 
                    ErrorMessage="*Phone Number Required" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>            
                <asp:Label ID="lblPhoneNumber" runat="server" CssClass="frm" 
                    Text="Phone Number:"></asp:Label>
                <asp:TextBox ID="txtPhoneNumber" runat="server" CssClass="frm" ></asp:TextBox>
                    <br />
                <asp:Button ID="btnSubmit" runat="server" onclick="btnSubmit_Click" 
                    Text="Submit" CssClass="buttons" />
                <asp:Button ID="btnClear" runat="server" CssClass="buttons" Text="Clear" 
                    onclick="btnClear_Click" />
                <asp:Label ID="lblConfirmation" runat="server" CssClass="frm"
                    Text=""></asp:Label>
            </div>
        </div>
        <div class="faculty">
        <h3>Faculty</h3>
            <asp:GridView ID="GridView2" runat="server" AllowSorting="True" 
                AutoGenerateColumns="False" DataKeyNames="MEID" 
                DataSourceID="AccessDataSource2" AutoGenerateEditButton="True"
                onselectedindexchanged="GridView2_SelectedIndexChanged" CellPadding="4" 
                ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="MEID" HeaderText="MEID" ReadOnly="True" 
                    SortExpression="MEID" />
                <asp:BoundField DataField="FirstName" HeaderText="FirstName" 
                    SortExpression="FirstName" />
                <asp:BoundField DataField="LastName" HeaderText="LastName" 
                    SortExpression="LastName" />
                <asp:BoundField DataField="MajorID" HeaderText="MajorID" 
                    SortExpression="MajorID" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" 
                    SortExpression="PhoneNumber" />
            </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
       
            <asp:AccessDataSource ID="AccessDataSource2" runat="server" 
                DataFile="~/App_Data/GreendaleFaculty.accdb" 
                SelectCommand="SELECT * FROM [tblFaculty]"></asp:AccessDataSource>             
        </div>
    </div>
</form>
</body>
</html>
