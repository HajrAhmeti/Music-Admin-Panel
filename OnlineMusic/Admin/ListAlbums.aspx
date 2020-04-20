<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListAlbums.aspx.cs" Inherits="OnlineMusic.Admin.ListAlbums" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
   <link href="css/style.css" rel="stylesheet" type="text/css" />
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">


    <title>Admin Dashboard</title>
</head>
<body>
    <form id="form1" runat="server">
    <body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

      <!-- Sidebar - Brand -->
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="AdminPanel.aspx">
        <div class="sidebar-brand-icon rotate-n-15">
          <i class="fas fa-laugh-wink"></i>
        </div>
        <div class="sidebar-brand-text mx-3">Music Store <sup>2</sup></div>
      </a>

      <!-- Divider -->
      <hr class="sidebar-divider my-0">

      <!-- Nav Item - Dashboard -->
      <li class="nav-item active">
        <a class="nav-link" href="AdminPanel.aspx">
          <i class="fas fa-fw fa-tachometer-alt"></i>
          <span>Dashboard</span></a>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
      <div class="sidebar-heading">
        Interface
      </div>

      <!-- Nav Item - Pages Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="ListArtist.aspx" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
          
            <i class="fas fa-music"></i>
          <span>Artist</span>
        </a>
      </li>

      <!-- Nav Item - Utilities Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="ListSongs.aspx" data-toggle="collapse" data-target="#collapseUtilities" aria-expanded="true" aria-controls="collapseUtilities">
          <i class="fas fa-music"></i>
          <span>Songs</span>
        </a>
      </li>
         <li class="nav-item">
        <a class="nav-link collapsed" href="ListAlbums.aspx" data-toggle="collapse" data-target="#collapseUtilities" aria-expanded="true" aria-controls="collapseUtilities">
         <i class="fas fa-music"></i>
          <span>Albums</span>
        </a>
      </li>
         <li class="nav-item">
        <a class="nav-link collapsed" href="ShowAll.aspx" data-toggle="collapse" data-target="#collapseUtilities" aria-expanded="true" aria-controls="collapseUtilities">
          <i class="fas fa-music"></i>
          <span>Show All</span>
        </a>
      </li>

      <!-- Divider -->
      

      <!-- Heading -->
      

      <!-- Nav Item - Pages Collapse Menu -->
      
        <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">Login Screens:</h6>
            <a class="collapse-item" href="login.html">Login</a>
            <a class="collapse-item" href="register.html">Register</a>
            <a class="collapse-item" href="forgot-password.html">Forgot Password</a>
            <div class="collapse-divider"></div>
            <h6 class="collapse-header">Other Pages:</h6>
            <a class="collapse-item" href="404.html">404 Page</a>
            <a class="collapse-item" href="blank.html">Blank Page</a>
          </div>
        </div>
      </li>

      <!-- Nav Item - Charts -->
      
      <!-- Nav Item - Tables -->
      
      <!-- Divider -->
      <hr class="sidebar-divider d-none d-md-block">

      <!-- Sidebar Toggler (Sidebar) -->
     

    </ul>
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <!-- Topbar -->
        <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

          <!-- Sidebar Toggle (Topbar) -->
          <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
            <i class="fa fa-bars"></i>
          </button>

          <!-- Topbar Search -->
            <div class="input-group">
              <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
              <div class="input-group-append">
                <button class="btn btn-primary" type="button">
                  <i class="fas fa-search fa-sm"></i>
                </button>
              </div>
            </div>

          <!-- Topbar Navbar -->
          <ul class="navbar-nav ml-auto">

            <!-- Nav Item - Search Dropdown (Visible Only XS) -->
            <li class="nav-item dropdown no-arrow d-sm-none">
              <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-search fa-fw"></i>
              </a>
              <!-- Dropdown - Messages -->
              <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in" aria-labelledby="searchDropdown">
                  <div class="input-group">
                    <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
                    <div class="input-group-append">
                      <button class="btn btn-primary" type="button">
                        <i class="fas fa-search fa-sm"></i>
                      </button>
                    </div>
                  </div>
              </div>
            </li>

            <!-- Nav Item - Alerts -->
            

            <!-- Nav Item - Messages -->
            

            

            <!-- Nav Item - User Information -->
            

          </ul>

        </nav>
        <!-- End of Topbar -->

        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">Albums</h1>
            <a href="AddNewAlbum.aspx" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i class="fas fa-download fa-sm text-white-50"></i> Add new Album</a>
          </div>

          <!-- Content Row -->
          <div class="row">

           <div class="container">

               <h3>Please select your Artist</h3>
               <br />
               <asp:ListBox ID="ListBox1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="ArtistName" DataValueField="ArtistID" CssClass="btn-primary" Height="83px" Width="203px"></asp:ListBox>
               <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:musicstoreConnectionString %>" SelectCommand="SELECT [ArtistID], [ArtistName] FROM [Artist]"></asp:SqlDataSource>
               <br />
               <br />
               <br />
&nbsp;&nbsp;&nbsp;&nbsp;<br />
               <h3>List of Albums</h3>
               <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="AlbumID" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
                   <AlternatingRowStyle BackColor="White" />
                   <Columns>
                       <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                       <asp:BoundField DataField="AlbumID" HeaderText="AlbumID" InsertVisible="False" ReadOnly="True" SortExpression="AlbumID" />
                       <asp:BoundField DataField="AlbumName" HeaderText="AlbumName" SortExpression="AlbumName" />
                       <asp:BoundField DataField="ArtistID" HeaderText="ArtistID" SortExpression="ArtistID"></asp:BoundField>
                       <asp:BoundField DataField="SongID" HeaderText="SongID" SortExpression="SongID" />
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
               <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:musicstoreConnectionString %>" DeleteCommand="DELETE FROM [Albums] WHERE [AlbumID] = @original_AlbumID AND (([AlbumName] = @original_AlbumName) OR ([AlbumName] IS NULL AND @original_AlbumName IS NULL)) AND (([ArtistID] = @original_ArtistID) OR ([ArtistID] IS NULL AND @original_ArtistID IS NULL)) AND (([SongID] = @original_SongID) OR ([SongID] IS NULL AND @original_SongID IS NULL))" InsertCommand="INSERT INTO [Albums] ([AlbumName], [ArtistID], [SongID]) VALUES (@AlbumName, @ArtistID, @SongID)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Albums] WHERE ([ArtistID] = @ArtistID)" UpdateCommand="UPDATE [Albums] SET [AlbumName] = @AlbumName, [ArtistID] = @ArtistID, [SongID] = @SongID WHERE [AlbumID] = @original_AlbumID AND (([AlbumName] = @original_AlbumName) OR ([AlbumName] IS NULL AND @original_AlbumName IS NULL)) AND (([ArtistID] = @original_ArtistID) OR ([ArtistID] IS NULL AND @original_ArtistID IS NULL)) AND (([SongID] = @original_SongID) OR ([SongID] IS NULL AND @original_SongID IS NULL))">
                   <DeleteParameters>
                       <asp:Parameter Name="original_AlbumID" Type="Int32" />
                       <asp:Parameter Name="original_AlbumName" Type="String" />
                       <asp:Parameter Name="original_ArtistID" Type="Int32" />
                       <asp:Parameter Name="original_SongID" Type="Int32" />
                   </DeleteParameters>
                   <InsertParameters>
                       <asp:Parameter Name="AlbumName" Type="String" />
                       <asp:Parameter Name="ArtistID" Type="Int32" />
                       <asp:Parameter Name="SongID" Type="Int32" />
                   </InsertParameters>
                   <SelectParameters>
                       <asp:ControlParameter ControlID="ListBox1" Name="ArtistID" PropertyName="SelectedValue" Type="Int32" />
                   </SelectParameters>
                   <UpdateParameters>
                       <asp:Parameter Name="AlbumName" Type="String" />
                       <asp:Parameter Name="ArtistID" Type="Int32" />
                       <asp:Parameter Name="SongID" Type="Int32" />
                       <asp:Parameter Name="original_AlbumID" Type="Int32" />
                       <asp:Parameter Name="original_AlbumName" Type="String" />
                       <asp:Parameter Name="original_ArtistID" Type="Int32" />
                       <asp:Parameter Name="original_SongID" Type="Int32" />
                   </UpdateParameters>
               </asp:SqlDataSource>
               <br />
              </div>
          <!-- Content Row -->
              <br /><br /><br /> <br /><br /><br /> <br /><br /><br /> <br /><br /><br /> <br /><br /><br /> <br /><br /><br />
          <div class="row">
              <div class="gridAlbums">
              </div>
            <!-- Area Chart -->
            

            <!-- Pie Chart -->
            
          </div>
           
          <!-- Content Row -->
          

        </div>
        <!-- /.container-fluid -->

      </div>
             <div class="gridSongs">
              </div>

      <!-- End of Main Content -->

      <!-- Footer -->
      <footer class="sticky-footer bg-white">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span>Copyright © Your Website 2019    </div>
        </div>
      </footer>
      <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->

  </div>
  <!-- End of Page Wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top" style="display: none;">
    <i class="fas fa-angle-up"></i>
  </a>

  <!-- Logout Modal-->
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
          <a class="btn btn-primary" href="login.html">Logout</a>
        </div>
      </div>
    </div>
  </div>

  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="js/sb-admin-2.min.js"></script>

  <!-- Page level plugins -->
  <script src="vendor/chart.js/Chart.min.js"></script>

  <!-- Page level custom scripts -->
  <script src="js/demo/chart-area-demo.js"></script>
  <script src="js/demo/chart-pie-demo.js"></script>




<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/js/all.min.js" integrity="sha256-KzZiKy0DWYsnwMF+X1DvQngQ2/FxF7MF3Ff72XcpuPs=" crossorigin="anonymous"></script>
        </form>
</body>
</html>