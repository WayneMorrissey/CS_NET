﻿<%@ Page Title="Filter Search" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MultiRecordQuery.aspx.cs" Inherits="WebApp.NorthwindPages.MultiRecordQuery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Filter Searching Techniques</h1>
     <div class="row col-md-12">
        <div class="alert alert-warning">
            <blockquote style="font-style: italic">
                This page will be used to demonstrate filter searches. It will
                be used to demonstrate the use of the GridView control in
                filter searchs. The GridView will demonstrate custom columns
                and formatting. The code behind will demonstrate accessing columns
                on the GridView
            </blockquote>
        </div>
    </div>
    <div class="row col-md-12">
           <asp:DataList ID="MessageList" runat="server">
                 <ItemTemplate>
                     <%# Container.DataItem %>
                 </ItemTemplate>
             </asp:DataList>
             <br />
    </div>
    <div class="row">
        <div class="col-md-4">
            <asp:Label ID="Label1" runat="server" Text="Select Category"></asp:Label>&nbsp;&nbsp;
            <asp:DropDownList ID="CategoryList" runat="server"></asp:DropDownList><br/>
            <asp:Button ID="SearchCatgeory" runat="server" Text="Search" OnClick="SearchCatgeory_Click" />
        </div>
        <div class="col-md-8">
            <asp:Label ID="Label2" runat="server" Text="ID"></asp:Label>&nbsp;&nbsp;
            <asp:Label ID="CategoryID" runat="server" ></asp:Label>&nbsp;&nbsp;
            <asp:Label ID="Label4" runat="server" Text="Category Name"></asp:Label>&nbsp;&nbsp;
            <asp:Label ID="CategoryName" runat="server" ></asp:Label><br />
            <asp:Label ID="Label6" runat="server" Text="Description"></asp:Label>&nbsp;&nbsp;
            <asp:Label ID="Description" runat="server" ></asp:Label>
        </div>
    </div>
    <hr style="width:5px" />
    <div class="row">
        <div class="col-md-2">
            <asp:Label ID="Label3" runat="server" Text="Enter partial product name:"></asp:Label><br />
            <asp:TextBox ID="SearchPartialName" runat="server"></asp:TextBox><br />
            <asp:Button ID="SearchProduct" runat="server" Text="Search" CssClass="btn btn-primary" OnClick="SearchProduct_Click" />
        </div>
        <div class="col-md-6">
            <asp:GridView ID="ProductSelectionList" runat="server" OnSelectedIndexChanged="ProductSelectionList_SelectedIndexChanged" AutoGenerateColumns="False" CssClass="table" GridLines="Horizontal" BorderStyle="None" AllowPaging="True" PageSize="5" OnPageIndexChanging="ProductSelectionList_PageIndexChanging">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Label ID="ProductID" runat="server" Text='<%# Eval("ProductID") %>' Visible="false"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Name">
                        <ItemTemplate>
                            <asp:Label ID="Label15" runat="server" Text='<%# Eval("ProductName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Size">
                        <ItemTemplate>
                            <asp:Label ID="Label11" runat="server" Text='<%# Eval("QuantityPerUnit") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Disc">
                        <ItemTemplate>
                            <asp:CheckBox ID="Label12" runat="server" Checked='<%# Eval("Discontinued") %>'></asp:CheckBox>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EmptyDataTemplate>
                    No Data Available for supplied product search string
                </EmptyDataTemplate>
                <PagerSettings Mode="NumericFirstLast" PageButtonCount="3" />
            </asp:GridView>
        </div>
        <div class="col-md-4">
            <asp:Label ID="Label5" runat="server" Text="ID"></asp:Label>&nbsp;&nbsp;
            <asp:Label ID="ProductID" runat="server" ></asp:Label>
            <br />
             <asp:Label ID="Label7" runat="server" Text="Name"></asp:Label>&nbsp;&nbsp;
            <asp:Label ID="ProductName" runat="server" ></asp:Label>
             <br />
             <asp:Label ID="Label8" runat="server" Text="QOH"></asp:Label>&nbsp;&nbsp;
            <asp:Label ID="UnitsInStock" runat="server" ></asp:Label>
             <br />
             <asp:Label ID="Label9" runat="server" Text="Price"></asp:Label>&nbsp;&nbsp;
            <asp:Label ID="UnitPrice" runat="server" ></asp:Label>
        </div>
    </div>
</asp:Content>
