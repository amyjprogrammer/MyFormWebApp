<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="MyFormWebApp.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3 runat="server" id="divMessage" class="message">Your contact page.</h3>
    <address>
        One Microsoft Way<br />
        Redmond, WA 98052-6399<br />
        <abbr title="Phone">P:</abbr>
        425.555.0100
    </address>

    <address>
        <strong>Support:</strong>   <a href="mailto:Support@example.com">Support@example.com</a><br />
        <strong>Marketing:</strong> <a href="mailto:Marketing@example.com">Marketing@example.com</a>
    </address>

    <div>
        <label>Name</label>
        <asp:TextBox runat="server" ID="txtName"/>  
        <asp:RequiredFieldValidator ErrorMessage="Add Name" ControlToValidate="txtName" runat="server" ID="rfvName" CssClass="alert-danger" />
    </div>
     <div>
        <label>Email</label>
        <asp:TextBox runat="server" ID="txtEmail"/>  
         <asp:RegularExpressionValidator ErrorMessage="Enter Valid Email" ControlToValidate="txtEmail" runat="server" CssClass="alert-info" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"/>
         <asp:RequiredFieldValidator ErrorMessage="Add email" ControlToValidate="txtEmail" runat="server" CssClass="alert-danger" />
    </div>
     <div>
        <label>Age</label>
        <asp:TextBox runat="server" ID="txtAge"/>  
    </div>
    <div>
        <label>Your Favorite Color:</label>
        <asp:DropDownList runat="server" ID="ddlColor">
            <asp:ListItem Text="Please choose a color" Value=""/>
            <asp:ListItem Text="Blue" />
            <asp:ListItem Text="Red" />
            <asp:ListItem Text="Green" />
            <asp:ListItem Text="Purple" />
        </asp:DropDownList>
    </div>
    <div>
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
    </div>
    <br />
    <div class="message">
        <asp:Literal ID="ltMessage" runat="server" />
    </div>
</asp:Content>
