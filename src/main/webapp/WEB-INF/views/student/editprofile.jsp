<!DOCTYPE html>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html lang="en"><head>


        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">



        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <meta name="viewport" content="width=device-width, initial-scale=1">

        <meta name="description" content="">

        <meta name="author" content="">

        <link rel="icon" href="http://demos.bootdey.com/bookpost/img/favicon.png">

        <title>Alumni</title>

        <!-- Bootstrap core CSS -->

        <link href="resources/profile/css/bootstrap.min.css" rel="stylesheet">

        <link href="resources/profile/css/animate.min.css" rel="stylesheet">

        <link href="resources/profile/css/font-awesome.min.css" rel="stylesheet">

        <link href="resources/profile/css/timeline.css" rel="stylesheet">

        <script src="resources/profile/css/jquery.1.11.1.min.js.download"></script>

        <script src="resources/profile/css/bootstrap.min.js.download"></script>

        <script src="resources/profile/css/custom.js.download"></script>
        <link rel="stylesheet" href="resources/css/font-awesome.css">

        <script id="_carbonads_projs" type="text/javascript" src="resources/profile/css/CKYILKJI.json"></script>

        <script src="resources/js/angular.js"></script>
        <script>

            var chat = ${userprofileobject};
            var batch =${batchf};
            console.log(chat);
            angular.module('myapp', []).controller('BlogpostController', function ($scope) {

                $scope.profile = chat;
                $scope.batchfriend = batch;
            });



        </script>
    </head>

    <body class="animated fadeIn" ng-app="myapp" ng-controller="BlogpostController">
        <jsp:include page="header.jsp" />


        <!-- Fixed navbar -->

        <nav class="navbar navbar-default navbar-fixed-top navbar-principal">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
                        <a class="navbar-brand" href="http://demos.bootdey.com/dayzone/index.html"> <img src="resources/logo/alumni-logo.jpg" class="img-logo"> <b>Student</b> </a>
                    </div>
                    <div id="navbar" class="collapse navbar-collapse nav_menu">
                        <div class="col-md-5 col-sm-4">
                            <form class="navbar-form">
                                <div class="form-group" style="display:inline;">
                                    <div class="input-group" style="display:table;">
                                        <input class="form-control" name="search" placeholder="Search..." autocomplete="off" type="text"> <span class="input-group-addon" style="width:1%;"> <span class="glyphicon glyphicon-search"></span> </span>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <ul class="nav navbar-nav navbar-right">
                            <li class="active"><a href="http://localhost:8080/alumni/timelines">${uparsonalprofile.firstname} ${uparsonalprofile.lastname}<img src="resources/profileimage/${UserId}.jpg" class="img-nav"></a></li>
                            <li><a href="homepagestu"><i class="fa fa-home"></i>&nbsp;   </a></li>
                            <li><a href="showalljobcircularstu"><i class="fa fa-briefcase"></i></a></li>
                            <li><a href="showalleventstu"><i class="fa fa-calendar"></i></a></li>


                            <li class="">
                                <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">

                                    <span class=" glyphicon glyphicon-triangle-bottom"></span>
                                </a>
                                <ul class="dropdown-menu  pull-right">
                                    <li><a href="allstudentevent"><i class="fa fa-envira pull-right"></i>Event</a></li>
                                    <li><a href="logout"><i class="fa fa-sign-out pull-right"></i> Log Out</a></li>
                                </ul>
                            </li>

                        </ul>
                    </div>
                </div>
            </nav>


        <!-- Timeline content -->

        <div class="container" style="margin-top:50px;">

            <div class="row">

                <div class="col-md-10 no-paddin-xs">

                    <div class="profile-nav col-md-4">

                        <div class="panel">

                            <div class="user-heading round">

                                <a href="#">

                                    <img src="resources/profileimage/${UserId}.jpg" alt="you have no Image">

                                </a>

                                <h1>${UserId}</h1>

                                <p>Bangladesh</p>

                            </div>



                            <ul class="nav nav-pills nav-stacked">

                                <li><a href="http://demos.bootdey.com/bookpost/profile.html"> <i class="fa fa-user"></i> Profile</a></li>

                                <li><a href="http://demos.bootdey.com/bookpost/about.html"> <i class="fa fa-info-circle"></i> About</a></li>

                                <li><a href="http://demos.bootdey.com/bookpost/friends.html"> <i class="fa fa-users"></i> Friends</a></li>

                                <li><a href="http://demos.bootdey.com/bookpost/photos.html"> <i class="fa fa-file-image-o"></i> Photos</a></li>

                                <li class="active"><a href="http://demos.bootdey.com/bookpost/edit_profile.html"> <i class="fa fa-edit"></i> Edit profile</a></li>

                            </ul>

                        </div>

                    </div>

                    <div class="profile-info col-md-8" >

                        <!-- update info -->
                        <div class="panel animated fadeInDown delay-05s" id="panel-1">

                            <!-- end panel heading -->
                            <div class="panel-body">
                                <div class="formcontainer">
                                    <c:if test="${check}">
                                        <form:form name="addblog"
                                                   modelAttribute="profileobject1" action="edituserprofile" enctype="multipart/form-data"
                                                   method="post">
                                            <div class="widget post panel-shadow animated fadeInUp">

                                                <div class="widget-header">

                                                    <h3 class="widget-caption">Edit info</h3>

                                                </div>  
                                                <br/>
                                                <div>
                                                    <div class="panel-body bio-graph-info">
                                                        <h1>Bio Graph</h1>
                                                        <div class="row">
                                                            <div class="bio-row">
                                                                <p><span>First Name </span>: ${profileobject1.firstname}</p>
                                                            </div>
                                                            <div class="bio-row">
                                                                <p><span>Last Name </span>: ${profileobject1.lastname}</p>
                                                            </div>
                                                            <div class="bio-row">
                                                                <p><span>Father Name </span>: ${profileobject1.fathername}</p>
                                                            </div>
                                                            <div class="bio-row">
                                                                <p><span>Mother Name</span>: ${profileobject1.mothername}</p>
                                                            </div>
                                                            <div class="bio-row">
                                                                <p><span>Permanent Address</span>: ${profileobject1.paddress}</p>
                                                            </div>
                                                            <div class="bio-row">
                                                                <p><span>Present Address</span>: ${profileobject1.curentaddress}</p>
                                                            </div>
                                                            
                                                            
                                                            <div class="bio-row">
                                                                <p><span>Date Of Birth </span>: ${profileobject1.dateofbirth}</p>
                                                            </div>
                                                            <div class="bio-row">
                                                                <p><span>Gender </span>: ${profileobject1.gender}</p>
                                                            </div>
                                                            <div class="bio-row">
                                                                <p><span>Religion </span>: ${profileobject1.religion}</p>
                                                            </div>
                                                            <div class="bio-row">
                                                                <p><span>Marital Status </span>: ${profileobject1.maritalstatus}</p>
                                                            </div>
                                                            <div class="bio-row">
                                                                <p><span>Nationality </span>: ${profileobject1.nationality}</p>
                                                            </div>
                                                            <div class="bio-row">
                                                                <p><span>National ID </span>: ${profileobject1.nid}</p>
                                                            </div>

                                                        </div>
                                                    </div>

                                                </div>
                                                <br/>

                                            </div>


                                            <div class="pull-right">
                                                <a href="edituserprofile"><button id="editbuttons"
                                                                                  type="submit" class="btn">Edit</button></a> <a
                                                    href="removeblog/{{Blo.blogid}}"><button  id="removebuttons"
                                                                                          type="button" class="btn">Remove</button></a>
                                            </div>

                                        </form:form>
                                    </c:if>

                                    <c:if test="${!check}">
                                        <form:form name="addblog"
                                                   modelAttribute="profileobject1" action="updatestudentprofile"  enctype="multipart/form-data"
                                                   method="post">
                                            <div class="widget-body">
                                                <!--<div>${userprofile}</div>-->

                                                <div class="form-group">

                                                    <label class="col-md-4 control-label">Profile Id </label>

                                                    <div class="col-md-8">

                                                        <form:input class="form-control"
                                                                    Placeholder="profile id " type="number" path="profileid"  ></form:input>

                                                        </div>

                                                    </div>

                                                    <div class="form-group">

                                                        <label class="col-md-4 control-label">emailid</label>

                                                        <div class="col-md-8">

                                                        <form:input class="form-control"
                                                                    Placeholder="profile id " type="text" path="emailid"  required="true"></form:input>

                                                        </div>

                                                    </div>

                                                    <div class="form-group">

                                                        <label class="col-md-4 control-label">firstname</label>

                                                        <div class="col-md-8">

                                                        <form:input class="form-control"
                                                                    Placeholder="profile id " type="text" path="firstname" required="false"></form:input>

                                                        </div>

                                                    </div>

                                                    <div class="form-group">

                                                        <label class="col-md-4 control-label">lastname</label>

                                                        <div class="col-md-8">

                                                        <form:input class="form-control"
                                                                    Placeholder="profile id " type="text" path="lastname" required="true"></form:input>

                                                        </div>

                                                    </div>
                                                    <div class="form-group">

                                                        <label class="col-md-4 control-label">fathername</label>

                                                        <div class="col-md-8">

                                                        <form:input class="form-control"
                                                                    Placeholder="profile id " type="text" path="fathername" required="true"></form:input>

                                                        </div>

                                                    </div>
                                                    <div class="form-group">

                                                        <label class="col-md-4 control-label">mothername</label>

                                                        <div class="col-md-8">

                                                        <form:input class="form-control"
                                                                    Placeholder="profile id " type="text" path="mothername" required="true"></form:input>

                                                        </div>

                                                    </div>
                                                <div class="form-group">

                                                        <label class="col-md-4 control-label">Permanent Address</label>

                                                        <div class="col-md-8">

                                                        <form:input class="form-control"
                                                                    Placeholder=" " type="text" path="paddress" required="true"></form:input>

                                                        </div>

                                                    </div>
                                                <div class="form-group">

                                                        <label class="col-md-4 control-label">Present Address</label>

                                                        <div class="col-md-8">

                                                        <form:input class="form-control"
                                                                    Placeholder=" " type="text" path="curentaddress" required="true"></form:input>

                                                        </div>

                                                    </div>
                                                
                                                <div class="form-group">

                                                        <label class="col-md-4 control-label">Batch</label>

                                                        <div class="col-md-8">


                                                            <select class="form-control" ng-model="selectedbatch" ng-options="x.sbatch for x in batchfriend"></select>
                                                            <form:hidden class="form-control" value="{{selectedbatch.sbatch}}" path="batch" ></form:hidden>
                                                        </div>

                                                    </div>
                                                
                                                    <div class="form-group">

                                                        <label class="col-md-4 control-label">dateofbirth</label>

                                                        <div class="col-md-8">


                                                    <form:input type="text" class="form-control"  path="dateofbirth" placeholder="dateofbirth" required="true" id="date" ></form:input>
                                                        </div>

                                                    </div>
                                                        
                                                    <div class="form-group">

                                                        <label class="col-md-5 control-label">gender</label>
                                                        
                                                        

                                                        <label class="radio-inline">
                                                        <form:radiobutton path="gender" checked="checked" value="Male"/>Male
                                                        </label>
                                                        <label class="radio-inline">
                                                        <form:radiobutton path="gender" value="Female"/>Female
                                                        </label>
                                                        
                                                        

                                                    </div>

                                                    <div class="form-group">

                                                        <label class="col-md-4 control-label">religion</label>

                                                        <div class="col-md-8">

                                                        <form:input class="form-control"
                                                                    Placeholder="Islam " type="text" path="religion"   required="true"></form:input>

                                                        </div>

                                                    </div>

                                                    <div class="form-group">

                                                        <label class="col-md-4 control-label">maritalstatus</label>

                                                        <div class="col-md-8">

                                                        <form:input class="form-control"
                                                                    Placeholder="profile id " type="text" path="maritalstatus" required="true"></form:input>

                                                        </div>

                                                    </div>

                                                    <div class="form-group">

                                                        <label class="col-md-4 control-label">nationality</label>

                                                        <div class="col-md-8">

                                                        <form:input class="form-control"
                                                                    Placeholder="Bangladeshi " type="text" path="nationality" required="true"></form:input>

                                                        </div>

                                                    </div>

                                                    <div class="form-group">

                                                        <label class="col-md-4 control-label">nid</label>

                                                        <div class="col-md-8">

                                                        <form:input class="form-control"
                                                                    Placeholder="8111xxxxxxxx" type="text" path="nid" required="true"></form:input>

                                                        </div>

                                                    </div>

                                                    <div class="col-sm-6 form-group">
                                                        <label >Picture upload</label>
                                                    <form:input type="file" name="fileToUpload" id="fileToUpload"
                                                                path="profileimage" ></form:input>
                                                    </div> 



                                                    <div class="form-group">

                                                        <button id="addprofile" name="EditBlog" class="btn btn-danger " type="submit">Update Profile</button>

                                                    </div>

                                                </div>
                                        </form:form>
                                    </c:if> 
                                </div>
                            </div>
                            <!-- panel1 body end -->
                        </div><!-- end update info-->

                        <!-- update info -->

                        <div class="widget post panel-shadow">

                            <div class="widget-header">

                                <h3 class="widget-caption">Change password</h3>

                            </div>            

                            <div class="widget-body">

                                <div class="form-group">

                                    <label class="col-md-4 control-label">Current password</label>

                                    <div class="col-md-7">

                                        <input class="form-control" type="text">

                                    </div>

                                </div>

                                <div class="form-group">

                                    <label class="col-md-4 control-label">New password</label>

                                    <div class="col-md-7">

                                        <input class="form-control" type="text">

                                    </div>

                                </div>

                                <div class="form-group">

                                    <button type="submit" class="btn btn-danger">Guardar</button>

                                </div>                

                            </div>

                        </div><!-- end update info-->

                    </div>

                </div>

            </div><!--End Timeline content -->



            <!-- Online users sidebar content-->

            <div class="chat-sidebar focus">

                <div class="list-group text-left">

                    <p class="text-center visible-xs"><a href="#" class="hide-chat">Hide</a></p> 

                    <p class="text-center chat-title">Online users</p> 

                    <table >
                        <tr ng-repeat="chat in profile">

                            <td>
                                <ul class="list-inline">
                                    <a href="http://localhost:8080/alumni/messages.html" class="list-group-item">

                                        <i class="fa fa-check-circle connected-status">

                                            <img src="resources/profileimage/{{chat.emailid}}.jpg" class="img-chat img-thumbnail" alt="Image">
                                            {{chat.firstname}} {{chat.lastname}}</i>

                                        <li></li>


                                    </a>
                                </ul>

                            </td>

                        </tr>
                    </table>

                </div>

            </div><!-- Online users sidebar content-->
</div>
            <jsp:include page="footer.jsp" />



            <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>
            <script>
                                                        $(document).ready(function () {
                                                            var date_input = $('input[name="dateofbirth"]'); //our date input has the name "date"
                                                            var container = $('.bootstrap-iso form').length > 0 ? $('.bootstrap-iso form').parent() : "body";
                                                            date_input.datepicker({
                                                                format: 'yyyy/mm/dd',
                                                                container: container,
                                                                todayHighlight: true,
                                                                autoclose: true,
                                                            })
                                                        })
            </script>


           
    </body>
</html>