<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <jsp:include page="header.jsp"></jsp:include>
        <title>Admin Zone | Descfilm</title>
    </head>
    <body onload="loads()" id="page-top" style="background-image: url('img/test.jpg');" ng-app="validationApp" ng-controller="mainController">
        <nav class="navbar navbar-expand-lg navbar-dark fixed-top" style="background-color: darkred" id="mainNav">
            <div class="container">
	            <a href="index.jsp" class="navbar-brand" style="color: white">Descfilm</a>
	            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation" style="background-color: firebrick; color: white;">
	            	<span class="navbar-toggler-icon my-toggler"></span>
				</button>
	            <div class="collapse navbar-collapse" id="navbarResponsive">
					<ul class="navbar-nav ml-auto">
	                	<li class="nav-item dropdown">
	                		<a id="sectionnav" href="#" class="nav-link dropdown-toggle" id="sectionss" data-toggle="dropdown" style="display: none">Sections<b class="caret"></b></a>
	                		<ul class="dropdown-menu multi-column columns-3" style="background: darkred">
	                			<li>
	                				<div>
	                					<ul style="list-style-type: none; padding: 0px;">
	                						<li class="nav-item">
	                							<a class="nav-link js-scroll-trigger" href="#table1">Movie List</a>
	                						</li>
	                						<li class="nav-item">
	                							<a class="nav-link js-scroll-trigger" href="#table2">Visitor Message</a>
	                						</li>
	                					</ul>
	                				</div>
	                			</li>
	                		</ul>
	                	</li>
	                	<li class="nav-item">
				        	<a id="logoutnav" class="nav-link text-uppercase" onclick="logot()" href="index.jsp" style="display: none"><b>logout</b></a>
				        </li>
					</ul>
				</div>
            </div>
        </nav>
        <br/><br/><br/><br/><br/><br/>
        <div class="container" id="logen">
            <div class="card card-login mx-auto mt-5">
                <div class="card-header text-center" style="background-color: darkred; color: white;">Login Admin</div>
                <div class="card-body">
					<div class="form-group">
						<div class="form-group">
							Username
							<input id="inputUsername" class="form-control" label="Username" required="true"/>
							<p for="inputUsername" style="color:red"></p>
                        </div>
                    </div>
                    <div class="form-group">
                    	<div class="form-group">
                    		Password
							<input id="inputPassword" class="form-control" label="Password" required="true" type="password" redisplay="true"/>
                            <p for="inputPassword" style="color:red"></p>
                        </div>
                    </div>
                    <p id="text" value="" style="color: red; text-transform: uppercase; align-content: center"></p>
                    <button onclick="logs()" class="btn btn-block btn-warning" style="color: white;" value="Login" action="">Login</button>
                </div>
            </div>
        </div>
        <div class="container">
        	<div id="table1" style="display:none">
        		<div class="row">
	                <div class="col-md-12" >
	                    <h3 class="mt-5 mb-5 text-center text-uppercase" style="color: white;">movie list</h3>
	                    <button id="add" class="btn btn-info" onclick="adds()">Add movie</button><br/><br/>
						<table class="text-center table table-bordered pb-5" id="movietbl" width="100%" cellspacing="0" style="background-color:white">
	                        <thead style="background-color: brown; color:white">
	                        	<tr>
		                        	<th>#ID</th>
		                        	<th>Title</th>
		                            <th>Genre</th>
		                            <th>Language</th>
		                            <th>Runtime</th>
		                            <th>Distributor</th>
		                            <th>Year</th>
		                            <th>Rating</th>
		                            <th>Image</th>
		                            <th>Action</th>
								</tr>
	                        </thead>
	                    </table>
	                </div>
	            </div>
        	</div>
        </div>
        <br/>
        <div class="container" style="background-color: brown; color: white">
        	<div id="forms" style="display:none">
	        	<div class="col-md-12">
		        	<h4 class="text-center mb-3">Movie Data Form</h4>
		        	<form id="tesform" name="movieForm" class="form-group needs-validation" ng-submit="submitForm(movieForm.$valid)" novalidate>
		            	<div class="row">
		                	<div class="col-md-1 mb-3" ng-class="{ 'has-error' : movieForm.movieid.$invalid && !movieForm.movieid.$pristine }">
			                	<label for="movieid">#ID</label>
			                    <input type="number" id="movieid" name="movieid" class="form-control" ng-minlength="1" ng-model="movie.movieid" placeholder="*required" required>
								<p ng-show="movieForm.movieid.$invalid && !movieForm.movieid.$pristine" class="help-block" style="color: orange">ID required.</p>
							</div>
		                    <div class="col-md-7 mb-3" ng-class="{ 'has-error' : movieForm.title.$invalid && !movieForm.title.$pristine }">
		                    	<label for="title">Title</label>
		                        <input type="text" id="title" name="title" class="form-control" ng-minlength="1" ng-model="movie.title" placeholder="*required" required>
		                        <p ng-show="movieForm.title.$invalid && !movieForm.title.$pristine" class="help-block" style="color: orange">Title required.</p>
							</div>
		                    <div class="col-md-4 mb-3" ng-class="{ 'has-error' : movieForm.genre.$invalid && !movieForm.genre.$pristine }">
								<label for="genre">Genre</label>
		                        <input type="text" id="genre" name="genre" class="form-control" ng-minlength="1" ng-model="movie.genre" placeholder="*required" required>
								<p ng-show="movieForm.genre.$invalid && !movieForm.genre.$pristine" class="help-block" style="color: orange">Genre required.</p>
							</div>
						</div>
		                <div class="row">
							<div class="col-md-2 mb-3" ng-class="{ 'has-error' : movieForm.language.$invalid && !movieForm.language.$pristine }">
		                    	<label for="language">Language</label>
		                        <input type="text" id="language" name="language" class="form-control" ng-minlength="1" ng-model="movie.language" placeholder="*required" required>
								<p ng-show="movieForm.language.$invalid && !movieForm.language.$pristine" class="help-block" style="color: orange">Language required.</p>
							</div>
		                    <div class="col-md-2 mb-3" ng-class="{ 'has-error' : movieForm.runtime.$invalid && !movieForm.runtime.$pristine }">
		                    	<label for="runtime">Runtime (minutes)</label>
		                        <input type="number" id="runtime" name="runtime" class="form-control" ng-minlength="2" ng-model="movie.runtime" placeholder="*required" required>
								<p ng-show="movieForm.runtime.$invalid && !movieForm.runtime.$pristine" class="help-block" style="color: orange">Runtime required.</p>
							</div>
		                    <div class="col-md-8 mb-3" ng-class="{ 'has-error' : movieForm.producer.$invalid && !movieForm.producer.$pristine }">
		                    	<label for="producer">Producer</label>
		                        <input type="text" id="producer" name="producer" class="form-control" ng-minlength="1" ng-model="movie.producer" placeholder="*required" required>
								<p ng-show="movieForm.producer.$invalid && !movieForm.producer.$pristine" class="help-block" style="color: orange">Producer required.</p>
							</div>
						</div>
		                <div class="row">
		                	<div class="col-md-3 mb-3" ng-class="{ 'has-error' : movieForm.director.$invalid && !movieForm.director.$pristine }">
		                    	<label for="director">Director</label>
		                        <input type="text" id="director" name="director" class="form-control" ng-minlength="1" ng-model="movie.director" placeholder="*required" required>
								<p ng-show="movieForm.director.$invalid && !movieForm.director.$pristine" class="help-block" style="color: orange">Director required.</p>
							</div>
		                    <div class="col-md-5 mb-3" ng-class="{ 'has-error' : movieForm.distributor.$invalid && !movieForm.distributor.$pristine }">
		                    	<label for="distributor">Distributor</label>
		                        <input type="text" id="distributor" name="distributor" class="form-control" ng-minlength="1" ng-model="movie.distributor" placeholder="*required" required>
								<p ng-show="movieForm.distributor.$invalid && !movieForm.distributor.$pristine" class="help-block" style="color: orange">Distributor required.</p>
							</div>
		                    <div class="col-md-2 mb-3" ng-class="{ 'has-error' : movieForm.year.$invalid && !movieForm.year.$pristine }">
		                    	<label for="year">Year</label>
		                        <input type="number" id="year" name="year" class="form-control" ng-minlength="4" ng-model="movie.year" placeholder="*required" required>
								<p ng-show="movieForm.year.$invalid && !movieForm.year.$pristine" class="help-block" style="color: orange">Year required.</p>
							</div>
		                    <div class="col-md-2 mb-3" ng-class="{ 'has-error' : movieForm.rating.$invalid && !movieForm.rating.$pristine }">
		                    	<label for="rating">Rating</label>
								<input type="text" id="rating" name="rating" class="form-control" ng-minlength="1" ng-model="movie.rating" placeholder="*required" required>
								<p ng-show="movieForm.rating.$invalid && !movieForm.rating.$pristine" class="help-block" style="color: orange">Rating required.</p>
							</div>
						</div>
		                <div class="row">
		                	<div class="col-md-12 mb-3" ng-class="{ 'has-error' : movieForm.casts.$invalid && !movieForm.casts.$pristine }">
		                    	<label for="casts">Casts</label>
		                        <textarea id="casts" name="casts" class="form-control" ng-minlength="1" ng-model="movie.casts" placeholder="*required" rows="1" required></textarea>
								<p ng-show="movieForm.casts.$invalid && !movieForm.casts.$pristine" class="help-block" style="color: orange">Casts required.</p>
							</div>
		                    <div class="col-md-12 mb-3" ng-class="{ 'has-error' : movieForm.synopsisshort.$invalid && !movieForm.synopsisshort.$pristine }">
		                    	<label for="synopsisshort">Synopsis Short</label>
		                        <textarea id="synopsisshort" name="synopsisshort" class="form-control" ng-minlength="1" ng-model="movie.synopsisshort" placeholder="*required" rows="2" required></textarea>
								<p ng-show="movieForm.synopsisshort.$invalid && !movieForm.synopsisshort.$pristine" class="help-block" style="color: orange">Short synopsis required.</p>
							</div>
						</div>
		                <div class="row">
		                	<div class="col-md-12 mb-3" ng-class="{ 'has-error' : movieForm.synopsisline1.$invalid && !movieForm.synopsisline1.$pristine }">
		                    	<label for="synopsisline1">Synopsis Line 1</label>
		                        <textarea id="synopsisline1" name="synopsisline1" class="form-control" ng-minlength="1" ng-model="movie.synopsisline1" placeholder="*required" rows="5" required></textarea>
								<p ng-show="movieForm.synopsisline1.$invalid && !movieForm.synopsisline1.$pristine" class="help-block" style="color: orange">Synopsis Line 1 required.</p>
							</div>
		                    <div class="col-md-12 mb-3">
		                    	<label for="synopsisline2">Synopsis Line 2</label>
		                        <textarea id="synopsisline2" name="synopsisline2" class="form-control" rows="5"></textarea>
							</div>
						</div>
		                <div class="row">
		                	<div class="col-md-6 mb-3" ng-class="{ 'has-error' : movieForm.videourl.$invalid && !movieForm.videourl.$pristine }">
		                    	<label for="videourl">Video URL</label>
		                        <input type="text" id="videourl" name="videourl" class="form-control" ng-minlength="1" ng-model="movie.videourl" placeholder="*required" required>
								<p ng-show="movieForm.videourl.$invalid && !movieForm.videourl.$pristine" class="help-block" style="color: orange">Video URL required.</p>
							</div>
						</div>
						<div class="col-md-12 mb-6">
		                	<ul class="row list-inline">
								<li class="list-inline-item">
									<button id="addBtn" class="btn btn-info btn-block" type="submit" value="Add movie" name="addBtn">Add movie</button>
								</li>
								<li class="list-inline-item">
									<button style="display: none" id="updateBtn" class="btn btn-warning btn-block" type="submit" value="Update movie data" name="updateBtn">Edit movie data</button>
								</li>
								<li class="list-inline-item">
									<button style="display: none" id="removeBtn" class="btn btn-danger btn-block" type="submit" value="Remove movie" name="deleteBtn">Delete movie</button>
								</li>
								<li class="list-inline-item">
									<button id="clearBtn" style="background-color: grey; color: white" class="btn btn-block" type="submit" value="Clear form" name="clearBtn" onclick="clearForm()">Clear form</button>
								</li>
								<li class="list-inline-item">
									<button id="cancel" style="background-color: black; color: white" class="btn btn-block" type="submit" value="Cancel" name="cancel" onclick="cancels()">Cancel</button>
						        </li>
							</ul>
						</div>
					</form>
	        	</div>
			</div>
        </div>
        <br/>
		<div class="container">
			<div id="table2" style="display:none">
				<div class="row">
	                <div class="col-md-12" >
	                    <h3 style="color: white">Visitor Message</h3>
	                    <table class="text-center table table-bordered pb-5" id="suggestiontbl" width="100%" cellspacing="0" style="background-color: white">
	                        <thead>
	                        	<tr>
		                        	<th>Name</th>
		                        	<th>Email</th>
		                        	<th>Message</th>
								</tr>
	                        </thead>
	                    </table>
	                </div>
	            </div>
			</div>
        </div>
        <br/><br/><br/>
        <jsp:include page="footer.jsp"></jsp:include>
		<a id="scroll" style="display: none;"><span></span></a>
        <jsp:include page="scripts.jsp"></jsp:include>
        <script src="js/angular.js"></script>
        <script src="js/angular-validatemovie.js"></script>
        <script src="js/logicadmin.js"></script>
        <script>
			var firebaseConfig = {
				apiKey: "apiKey",
				authDomain: "authDomain",
				databaseURL: "databaseURL",
				projectId: "projectId",
				storageBucket: "storageBucket",
				messagingSenderId: "messagingSenderId",
				appId: "appId",
				measurementId: "measurementId"
			};
          	firebase.initializeApp(firebaseConfig);
          	firebase.analytics();
        </script>
        <script>
	        const database = firebase.database();
	        const movieRef = database.ref('/movie');
	        
	        const updateBtn = document.getElementById('updateBtn');
	        const removeBtn = document.getElementById('removeBtn');
	        
	        updateBtn.addEventListener('click', e => {
	            e.preventDefault();
	            const newData = {
					title: title.value,
		            genre: genre.value,
		            language: language.value,
		            runtime: runtime.value,
		            producer: producer.value,
		            director: director.value,
		            distributor: distributor.value,
		            year: year.value,
		            rating: rating.value,
		            casts: casts.value,
		            synopsisshort: synopsisshort.value,
		            synopsisline1: synopsisline1.value,
		            synopsisline2: synopsisline2.value,
		            videourl: videourl.value
	            };
	            if (movieid.value!="" && title.value!="" && genre.value!="" 
        			&& language.value!="" && runtime.value!="" && producer.value!="" 
        			&& director.value!="" && distributor.value!="" && year.value!="" 
        			&& rating.value!="" && casts.value!="" && synopsisshort.value!="" 
        			&& synopsisline1.value!="" && videourl.value!="") {
	            	movieRef.child(movieid.value).update(newData);
		            alert('Movie datas are updated successfully!');
		            reload_page();
	            } else {
	            	alert('Please input all required fields correctly before continue!');
	            }
	        });
	        
	        removeBtn.addEventListener('click', e => {
	        	e.preventDefault();
	        	if(movieid.value!="") {
	        		movieRef.child(movieid.value).remove()
		            .then(()=> {
		            	alert('Selected movie is deleted!');
		            	reload_page();
		                Console.log('Movie Deleted !');
		            })
		            .catch(error => {
		                console.error(error);
		            });
	        	} else {
	        		alert('Error in deleting selected movie!');
	        	}
	        });
	        
	        function reload_page() {
	      		window.location.reload();
	      	}
	        
	        var a,b,c,d,e,f,g;
	        movieRef.once('value', function(parentSnapshot) {
	            parentSnapshot.forEach(function(childSnapshot) {
	                var childKey = childSnapshot.key;
	                var childData = childSnapshot.val();
	                a = childData.title;
	                b = childData.genre;
	                c = childData.language;
	                d = childData.runtime;
	                e = childData.distributor;
	                f = childData.year;
	                g = childData.rating;
	                var table = document.getElementById("movietbl");
	                table.insertAdjacentHTML("beforeend",
						"<tr onclick=call("+childKey+")>"+
						"<td>"+childKey+"</td>"+
				        "<td>"+a+"</td>"+
				        "<td>"+b+"</td>"+
				        "<td>"+c+"</td>"+
				        "<td>"+d+" min</td>"+
				        "<td>"+e+"</td>"+
				        "<td>"+f+"</td>"+
				        "<td>"+g+"</td>"+
				        "<td>"+'<img class="img-fluid" src="img/'+childKey+'.jpg" width="90px" height="120px">'+"</td>"+
				        "<td>"+
			        		'<a style="color:black; background-color:orange" href="#forms" onclick="edit('+childKey+')"><b>'+'Edit'+'</b></a>'+
			        	"</td>"+
				        "</tr>"
				    );
	            });
	        });
	        
	        function call(keyss) {
	        	movieRef.once('value', function(parentSnapshot) {
	        		parentSnapshot.forEach(function(childSnapshot) {
	        			var childKey = childSnapshot.key;
	        			var childData = childSnapshot.val();
	        			if (childKey == keyss) {
	        				document.getElementById('movieid').value = childKey;
	        		        document.getElementById('title').value = childData.title;
	        		        document.getElementById('genre').value = childData.genre;
	        		        document.getElementById('language').value = childData.language;
	        		        document.getElementById('runtime').value = childData.runtime;
	        		        document.getElementById('producer').value = childData.producer;
	        		        document.getElementById('director').value = childData.director;
	        		        document.getElementById('distributor').value = childData.distributor;
	        		        document.getElementById('year').value = childData.year;
	        		        document.getElementById('rating').value = childData.rating;
	        		        document.getElementById('casts').value = childData.casts;
	        		        document.getElementById('synopsisshort').value = childData.synopsisshort;
	        		        document.getElementById('synopsisline1').value = childData.synopsisline1;
	        		        document.getElementById('synopsisline2').value = childData.synopsisline2;
	        		        document.getElementById('videourl').value = childData.videourl;
	        			}
	        		});
	        	});
	        }
        </script>
        <script>
	        var tblSuggest = document.getElementById('suggestiontbl');
	      	var databaseRef = firebase.database().ref('suggestion/');
	      	var rowIndex = 1;
	      	databaseRef.once('value', function(snapshot) {
	      		snapshot.forEach(function(childSnapshot) {
	      			var childKey = childSnapshot.key;
	      			var childData = childSnapshot.val();
	      			var row = tblSuggest.insertRow(rowIndex);
	      			var cellName = row.insertCell(0);
	      			var cellEmail = row.insertCell(1);
	      			var cellMessage = row.insertCell(2);
	      			cellName.appendChild(document.createTextNode(childData.name));
	      			cellEmail.appendChild(document.createTextNode(childData.email));
	      			cellMessage.appendChild(document.createTextNode(childKey));
	      			rowIndex = rowIndex + 1;
	      		});
	      	});
        </script>
    </body>
</html>