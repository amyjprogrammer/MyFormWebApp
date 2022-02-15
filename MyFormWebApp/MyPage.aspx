<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MyPage.aspx.cs" Inherits="MyFormWebApp.MyPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Advanced Web Server Controls</h2>
    <h3>Create a list of events in a repeater from a calendar control.</h3>
    <div class="form-group">
        <label>Event Name:</label>
        <asp:TextBox runat="server" ID="txtEvent" CssClass="form-control"/>
    </div>
    <div class="form-group">
        <label>Event Date:</label>
        <asp:Calendar ID="calendarEvents" runat="server" />
    </div>
    <div class="form-group">
        <asp:Button Text="Add Event" runat="server" OnClick="btnEvent_Click" CssClass="btn btn-lg-primary" />
    </div>
    <h3>Events Repeater,</h3>
    <div>
        <asp:Repeater ID="rptEvents" runat="server" />
        <ItemTemplate>
            <%--<h3><%# DataBinder.Eval(Container.DataItem, "EventDate") %><small><%# DataBinder.Eval(Container.) %></small></h3>--%>
        </ItemTemplate>
    </div>

</asp:Content>
