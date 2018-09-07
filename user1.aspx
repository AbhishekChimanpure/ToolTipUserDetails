<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user1.aspx.cs" Inherits="tp1.user1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

     <style type="text/css">

        .tooltip

        {

            display: none;

            border: solid 1px #708069;

            background-color: #289642;

            color: #fff;

            line-height: 25px;

            border-radius: 5px;

            padding: 5px 10px;

            position: absolute;

            z-index:1001;

        }

    </style>

      <script src="http://code.jquery.com/jquery-1.9.1.min.js" type="text/javascript"></script>

    <script language="javascript">

        $(document).ready(function () {

            $(".tooltip").closest("tr").mousemove(function (event) {

                $(this).find(".tooltip").css({

                    "left": event.pageX + 1,

                    "top": event.pageY + 1

                }).show();

            }).mouseout(function () { $(this).find(".tooltip").hide(); });;

        });

    </script>
  

</head>
<body>
    <form id="form1" runat="server">
    <div>
  <asp:GridView ID="gv" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None"

            AutoGenerateColumns="false" OnSelectedIndexChanged="gv_SelectedIndexChanged">

     <Columns>  
                <asp:BoundField DataField="u_id" HeaderText="Id"/>  
                <asp:BoundField DataField="name" HeaderText="Name"/>  
                <asp:BoundField DataField="email" HeaderText="Email"/>  
                <asp:BoundField DataField="pass" HeaderText="Password"/>
                <asp:BoundField DataField="mobile" HeaderText="Mobile"/>
                <asp:BoundField DataField="gender" HeaderText="Gender"/>
                <asp:BoundField DataField="age" HeaderText="Age"/>
                <asp:BoundField DataField="address" HeaderText="Address"/>
                     

           <asp:TemplateField>

                    <ItemTemplate>

                        <div class="tooltip">

                           u_id :

                            <%#Eval("u_id")%><br />

                            User Name :

                            <%#Eval("name")%><br />

                            Email :

                            <%#Eval("email")%><br />

                           Password :<%#Eval("pass")%><br />Mobile :

                            <%#Eval("mobile")%><br />

                            Gender :<%#Eval("gender")%><br />Age :

                            <%#Eval("age")%><br />

                             Address :

                            <%#Eval("address")%><br />



                        </div>

                    </ItemTemplate>

                </asp:TemplateField>

            </Columns>  

             </asp:GridView>

    </div>
    </form>
</body>
</html>
