<%@ Page Title="Реєстрація" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebApplication.Account.Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <div class="divCenter">
        <div id="loginForm">
            <h2 id="title"><%: Title %>.</h2>
            <p class="text-danger">
                <asp:Literal runat="server" ID="ErrorMessage" />
            </p>
            <h4>Створіть новий акаунт</h4>
            <hr />
            <asp:ValidationSummary runat="server" CssClass="text-danger" />
            <div>
                <div>
                    <asp:TextBox ToolTip="Електронна пошта" placeholder="Електронна пошта" runat="server" ID="Email" TextMode="Email" CssClass="credit-card-input" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                        CssClass="text-danger" ErrorMessage="Пошта є обов'язковою." />
                </div>
            </div>
            <div>
                <div>
                    <asp:TextBox ToolTip="Пароль" placeholder="Пароль" runat="server" ID="Password" TextMode="Password" CssClass="credit-card-input" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                        CssClass="text-danger" ErrorMessage="Пароль це обов'язкове поле" />
                </div>
            </div>
                <div>
                    <asp:TextBox ToolTip="Підтвердіть пароль" placeholder="Підтвердіть пароль" runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="credit-card-input" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                        CssClass="text-danger" Display="Dynamic" ErrorMessage="Будь ласка, підтвердіть пароль." />
                    <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                        CssClass="text-danger" Display="Dynamic" ErrorMessage="Пароль не відповідає дійсності." />
                </div>
            <div>
                <div>
                    <asp:Button runat="server" OnClick="CreateUser_Click" Text="Зареєструватися" CssClass="buttonAddNewCity" />
                </div>
            </div>
        </div>

    </div>
</asp:Content>
