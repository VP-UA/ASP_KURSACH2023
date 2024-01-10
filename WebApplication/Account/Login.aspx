<%@ Page Title="Авторизація" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication.Account.Login" Async="true" %>

<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <div>
        <h2 class="textAlignCenter" id="title"><%: Title %>.</h2>
        <div class="divCenter">
            <div id="loginForm">
                <div>
                    <h4>Використовуйте дані від свого акаунта, аби увійти.</h4>
                    <hr />
                    <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
                        <p class="text-danger">
                            <asp:Literal runat="server" ID="FailureText" />
                        </p>
                    </asp:PlaceHolder>
                    <div>
                        <div>
                            <asp:TextBox ToolTip="Електронна пошта" placeholder="Електронна пошта" runat="server" ID="Email" CssClass="credit-card-input" TextMode="Email" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                                CssClass="text-danger" ErrorMessage="The email field is required." />
                        </div>
                    </div>
                    <div>
                        <div>
                            <asp:TextBox ToolTip="Пароль" placeholder="Пароль" runat="server" ID="Password" TextMode="Password" CssClass="credit-card-input" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" CssClass="text-danger" ErrorMessage="The password field is required." />
                        </div>
                    </div>
                    <div>
                        <div>
                            <div>
                                <asp:CheckBox runat="server" ID="RememberMe" />
                                <asp:Label runat="server" AssociatedControlID="RememberMe">Запам'ятати мене?</asp:Label>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div>
                            <asp:Button runat="server" OnClick="LogIn" Text="Авторизуватися" CssClass="buttonAddNewCity" />
                        </div>
                    </div>
                </div>
                <br />
                <p>
                    <asp:HyperLink runat="server" ID="RegisterHyperLink" ViewStateMode="Disabled">Зареєструватися як новий користувач</asp:HyperLink>
                </p>
                <p>
                    <%-- Enable this once you have account confirmation enabled for password reset functionality
                    <asp:HyperLink runat="server" ID="ForgotPasswordHyperLink" ViewStateMode="Disabled">Forgot your password?</asp:HyperLink>
                    --%>
                </p>
            </div>
        </div>
    </div>
</asp:Content>
