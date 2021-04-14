<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="buy.aspx.cs" Inherits="MidWebsite.buy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
	 body{
    background: #D3D3D3;
}
span{
    font-size:15px;
}
a{
  text-decoration:none; 
  color: #0062cc;
  border-bottom:2px solid #0062cc;
}
.box{
    padding:60px 0px;
}

.box-part{
    background:#fff;
    border-radius:0;
    padding:60px 10px;
    margin:30px 0px;
}
.text{
    margin:20px 0px;
}

.fa{
     color:#4183D7;
}
		.auto-style1 {
            width: 331px;
        }
		</style>
    <script>
        function filter2(phrase, _id) {
            var words = phrase.value.toLowerCase().split(" ");
            var table = document.getElementById(_id);
            var ele;
            for (var r = 1; r < table.rows.length; r++) {
                ele = table.rows[r].innerHTML.replace(/<[^>]+>/g, "");
                var displayStyle = 'none';
                for (var i = 0; i < words.length; i++) {
                    if (ele.toLowerCase().indexOf(words[i]) >= 0)
                        displayStyle = '';
                    else {
                        displayStyle = 'none';
                        break;
                    }
                }
                table.rows[r].style.display = displayStyle;
            }
        }
        $(function () {
            $("#GridView1").DataTable();
        });
    </script>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="float:left;padding:10px;">
                Search : <input name="txtTerm" onkeyup="filter2(this, '<%=GridView2.ClientID %>')" type="text" class="auto-style1" />
            </div>
     <asp:GridView ID="GridView2" runat="server" 
                CssClass="table table-responsive table-striped" AutoGenerateColumns="False" 
                DataKeyNames="Id" DataSourceID="LibraryDb">
              <Columns>
                 
                  <asp:BoundField DataField="Id" HeaderText="Id" 
                      SortExpression="Id" ReadOnly="True" Visible="False" InsertVisible="False"  />
                  <asp:BoundField DataField="Name" HeaderText="Name" 
                      SortExpression="Name" />
                    <asp:BoundField DataField="CreatedUserId" Visible="False" HeaderText="CreatedUserId" 
                      SortExpression="CreatedUserId" />
                   <asp:BoundField DataField="timestamp" HeaderText="DateTime" 
                      SortExpression="timestamp" />
                  <asp:BoundField DataField="CType" HeaderText="Type" SortExpression="CType" />
                  <asp:BoundField DataField="ChanceToClose" HeaderText="ChanceToClose" 
                      SortExpression="ChanceToClose" />
                  <asp:BoundField DataField="EBudget" HeaderText="Budget" 
                      SortExpression="EBudget" />
                
                  <asp:BoundField DataField="Description" HeaderText="Description" 
                      SortExpression="Description" />
                  <%-- <asp:BoundField DataField="Image" HeaderText="Image" 
                      SortExpression="Image" />--%>
                  
              </Columns>
            </asp:GridView>
     <asp:SqlDataSource ID="LibraryDb" runat="server" 
                ConnectionString="<%$ ConnectionStrings:SalesConnectionString %>" >
            </asp:SqlDataSource>

<div class="box">
    <div class="container">
     	<div class="row">
			 
			<%int i = 0;%>
			  <% foreach (var product in allproduct)
                  {
                      i++;
                      if (i > 20)
                      {
						  i = 1;
                      }
					  %>
			    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
               
					<div class="box-part text-center">
                        
                   
                        
						<div class="title">
							<h4><%= product.Name %> </h4>
						</div>
						<div class="text">

							
							<span> <img src="Images/<% =i.ToString()%>.png" width="160" height="120"> </span> <br />
							
 							<span>Price :<%= product.EBudget %> CAD $ </span> <br />
							 

							<span>Description : <%= product.Description %> </span>
						</div>
                        
						<a href="purchase.aspx">BUY</a>
                        
					 </div>
				</div>	 
			 <% } %>
			 </div>
		</div>
	</div>

    
	
</asp:Content>
