 <%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Live Broadcasting</title>
    <script src="http://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
        crossorigin="anonymous">   </script>
   
    
    <meta charset="utf-8" >
    <meta name="viewport" content="width=device-width, initial-scale=1" >
    <meta http-equiv="X-UA-Compatible" content="IE-edge" >
    <link href="css/Custom.css" rel="stylesheet" />
  

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
   <script type="text/javascript">

        $(document).ready(function myfunction() {
            $("#btnCart").click(function myfunction() {
                window.location.href = "Cart.aspx";
            });
        });

    </script>

</head>
<body>
    <form id="form1" runrat="server"> 
    <div> 
   <div class ="navbar navbar-default navbar-fixed-top" role ="navigation">
        <div class ="container">
            <div class ="navbar-header">

            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class ="sr-only">Toggle Navigation</span>
                <span class ="icon-bar"> </span>
                 <span class ="icon-bar"> </span>
                 <span class ="icon-bar"> </span>
            </button>
                <a class ="navbar-brand" href ="Default.aspx" ><span><img src="Athlete/ParaOLympic.png" alt="Olympic Games" height="30" /> </span>Anamani Media Group</a>
            </div>


        

           <div class ="navbar-collapse collapse">
                <ul class ="nav navbar-nav navbar-right">
                      <li ><a href ="Default.aspx">Home</a></li>
                      <li><a href ="About.aspx">About</a></li>
                      <li><a href ="Contactus.aspx">Contact us</a></li>
                      <li><a href ="#">News</a></li>
                      <li class ="dropdown">
                        <a href ="#" class="dropdown-toggle" data-toggle="dropdown">Sports<b class ="caret"> </b></a>
                        <ul class ="dropdown-menu">
                             <li> <a href ="Products.aspx">All Products</a></li>
                            <li role="separator"class ="divider"></li>
                              <li class ="dropdown-header">Men </li>
                            <li role="separator"class ="divider"></li>
                            <li> <a href ="#">Football</a></li>
                             <li> <a href ="#">Gymnastic</a></li>
                             <li> <a href ="#">Hockey</a></li>
                             <li> <a href ="#">Swimming</a></li>
                              <li role="separator"class ="divider"></li>
                             <li class ="dropdown-header">Female </li>
                             <li role="separator"class ="divider"></li>
                            <li> <a href ="#">Football</a></li>
                             <li> <a href ="#">Ice Hockey</a></li>
                             <li> <a href ="#">Swimming</a></li>
                             <li> <a href ="#">Marathon</a></li>
                        
                        </ul>
                        </li>
                        <li>
                            <button id="btnCart" class="btn btn-primary navbar-btn " type="button">
                                Cart <span class="badge " id="pCount" runat="server"></span>
                            </button>
                        </li>
                        <li id="btnSignUP" runat="server"><a href="SignUp.aspx">SignUp</a> </li>
                        <li id="btnSignIN" runat="server"><a href="SignIn.aspx">SignIn</a> </li>
                        <li>
                            <asp:Button ID="btnlogout" CssClass="btn btn-default navbar-btn " runat="server" Text="Sign Out" OnClick="btnlogout_Click" />
                                
                        </li>
                </ul>
            </div>
            
        
        </div>
               
        </div>
        <!--- image slider --->

            <h1> News </h1>
        <div class="container">
  <h2>News </h2>  
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
          <img src="Image Slider Animation/olympic-bright-circle-colorful-wallpaper-preview.jpg" style="width:100%; height:260px;">
       
    
          <div class="carousel-caption">
          <h3>Official Broadcast Media</h3>
          <p>Anamani Media Group</p>
              <p><a class = "btn btn-lg btn-primary" href ="#" role ="button"> Live Broadcast</a></p>
        </div>
      </div>


       <div class="item">
        <img src="Image Slider Animation/Olympic image 2.jfif" style="width:100%; height:260px;">
          <div class="carousel-caption">
          <h3>Participating Country</h3>
          <p>Representing Countrys</p>
        </div>
      </div>
    
      <div class="item">
         <img src="Image Slider Animation/Screenshot 2022-08-13 181257.png" alt="Los Angeles" style="width:100%; height:260px;"> 
          <div class="carousel-caption">
          <h3>Participating Country</h3>
          <p>Representing Countrys</p>
        </div>
      </div>

         
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>


        <!--- image slider End--->
    
    
    
    
    
    
    
    
    </div>

     <!--- Middle Contents Start--->
    <hr />
    <h1 style="text-align:center;" > Featured Athletes</h1>
  
    <div class ="container center ">
        <div class ="row">
            <div class ="col-lg-4">
                <img class ="img-circle" src="Athlete/Eric Hayden.jpg" alt="thumb" width="140" height="140" />
                <h2> Bibek</h2>
                <p> MR. Shiwakoti is from Dolakha. He is senior badminton player from Nepal and is currently on worlds top 10 position. </p>
                <p> <a class="btn btn-default" href="#" role="button"> View More &raquo</a></p>
            </div>
           
             <div class ="col-lg-4">
                <img class ="img-circle" src="Athlete/Eric Radford.jpg" alt="thumb" width="140" height="140" />
                <h2> Uddhav</h2>
                <p> All-rounder Chalise is a right-handed batsman, an off break bowler , and an occasional right-arm medium-fast bowler . He made his debut for Nepal against Ireland in September 2018.  </p>
                <p> <a class="btn btn-default" href="#" role="button"> View More &raquo</a></p>
            </div>

            <div class ="col-lg-4">
                 <img class ="img-circle" src="Athlete/Ester Ledecka.jpg" alt="thumb" width="140" height="140" />
                <h2> Bikesh</h2>
                <p> Bikesh Shrestha (born December 07, 1997) is an American water polo player considered by many to be the best goalkeeper in the world. </p>
                <p> <a class="btn btn-default" href="#" role="button"> View More &raquo</a></p>
            </div>
        </div>
        </div>


     <!--- Partners Start--->
 
 <hr />
     <h1 style="text-align:center;" > Fun Olympic Partners </h1>
    <div class ="container center ">
        <div class ="row">
            <div class ="col-lg-4">
                <img class ="img-circle" src="Partner/Adidas.png" alt="thumb" width="140" height="140" />
            </div>
           
               <div class ="col-lg-4">
                 <img class ="img-circle" src="Partner/sunderland-ismt-partnership.png" alt="thumb" width="140" height="130" />
            </div>


             <div class ="col-lg-4">
                <img class ="img-circle" src="Partner/Coca-Cola-logo.png" alt="thumb" width="140" height="140" />
            </div>

         <br />
         <br />

             <div class ="col-lg-4">
                 <img class ="img-circle" src="Partner/Qatar Airways.png" alt="thumb" width="140" height="140" />
            </div>

            <div class ="col-lg-4">
                 <img class ="img-circle" src="Partner/Visa Master Card.png" alt="thumb" width="160" height="120" />
              
            </div>

            <div class ="col-lg-4">
                 <img class ="img-circle" src="Partner/Hyundai.png"  alt ="thumb" width="140" height="140" />
            </div>
        </div>
        </div>
 <hr />
     <!--- Partners End-->

    
     <!--- Middle Contents Start--->

        <!---Upcoming Events --->

     <hr />
   
    <h1 style="text-align:center;" > Upcoming Events </h1>
  
    <div class ="container center ">
        <div class ="row">
            <div class ="col-lg-4">
                <img class ="img-circle" src="Upcoming Events/ParaOLympic.png" alt="thumb" width="140" height="140" />
                <h2> Para Olympic</h2>
                <p> The Paralympic Games or Paralympics is the largest international event for disabled athletes and societal change and take place shortly after every Olympic Games in the same host city.  </p>
                <p> <a class="btn btn-default" href="#" role="button"> View More &raquo;</a></p>
            </div>
           
             <div class ="col-lg-4">
                <img class ="img-circle" src="Upcoming Events/Summer Olympic.png" alt="thumb" width="140" height="140" />
                <h2> Summer Olympic</h2>
                <p> The Summer Games are the summer version of the Olympic Games, an international athletic competition featuring multiple sporting events between athletes  representing their country.  </p>
                <p> <a class="btn btn-default" href="#" role="button"> View More &raquo;</a></p>
            </div>

            <div class ="col-lg-4">
                 <img class ="img-circle" src="Upcoming Events/Winter Olympic.jfif" alt="thumb" width="140" height="140" />
                <h2> Winter Olympic</h2>
                <p> The Winter Games are the winter version of the Olympic Games, an international athletic competition featuring multiple sporting events between athletes  representing their country. </p>
                <p> <a class="btn btn-default" href="#" role="button"> View More &raquo;</a></p>
            </div>
        </div>


    </div>


     <!--- Upcoming event--->
     
    
    <!--- Sponsor Start--->

     <hr />
   
    <h1 style="text-align:center;" >   Our Sponsor </h1>
  
    <div class ="container center ">
        <div class ="row">
            <div class ="col-lg-4">
                <img class ="img-circle" src="GIF/Bajaj.gif" alt="thumb" width="1084" height="140" />
                <h2>   </h2>
                <p>   </p>
                <p>   </p>
            </div>
      <br />
             <br />
             <br />
             <br />
             <br />
             <br />
             <br />
             <br />
             <div class ="col-lg-4">
                <img class =" " src="GIF/Islington.gif" alt="thumb" width="1084" height="140" />
                <h2>   </h2>
                <p>   </p>
                <p>   </p>
            </div>

      
        </div>


    </div>
 
     <!--- Sponsor End--->

     <!--- Comment Start--->
   <div class="container mt-3">
  <h2>Comments</h2>
  <p> </p><br>
  <div class="media border p-3">
    <img src="Athlete/Rupesh.jpg" alt="" class="mr-3 mt-3 rounded-circle" style="width:60px;">
    <div class="media-body">
      <h4>Rupesh <small><i>Posted on February 19, 2018</i></small></h4>
      <p>I am enjoying this broadcast and i am supporting Brazil.</p>
      <p> Which team are you supporting? </p>
      <div class="media p-3">
        <img src="Athlete/Monihang.jpg" alt="Monihang" class="mr-3 mt-3 rounded-circle" style="width:45px;">
        <div class="media-body">
          <h4>Rupesh Giri <small><i>Posted on February 20 2018</i></small></h4>
          <p>From where you are watching? </p>
          <p> </p>
        </div>
      </div>  
    </div>
  </div>
</div>
     <!--- Comment End--->

   

       <!--- Footer Contents Start--->
  <hr  />
    <footer>
        <div class ="container">
            <p class ="pull-right"><a href ="Default.aspx">Back To Top</a></p>
            <p>&copy;2020 Anamani Media Group  &middot; <a href ="Default.aspx"> Home </a> &middot;<a href="#">About</a> &middot; <a href="#">Contact us</a> &middot;<a href="#">News</a></p>
        </div>
    </footer>
       <!--- Footer Contents End--->

   
    </form>
    
</body>
</html>
