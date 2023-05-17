<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>mainRto</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<style>
    * {
font-family: 'Poppins', sans-serif;
box-sizing: border-box;
  transition: 0.3s;
}

body {
    margin: 0;
}

section {
    background-image: url("https://connectgujarat.com/wp-content/uploads/2020/10/6-18.jpg");
    background-size: cover;
    background-repeat: no-repeat;
    width: 100vw;
    height:100vh;
    overflow: scroll;
    background-position: fixed;
    display: flex;
    justify-content: center;
}

.container {
    background-color: #296073;
    height: fit-content;
    padding: 10px 100px;
    margin: 5px;
    width: 50%;
    max-width: 600px;
}

h1 {
    font-family: 'Abril Fatface', cursive;
    font-size: 3.2rem;
    margin: 0;
    text-align: center;
}

#description {
    text-align: center;
}

form {
    display: flex;
    flex-direction: column;
    margin-top: 10px;
    
}

.inputwrap {
    margin: 1px 0;
}

.col {
    display: flex;
    flex-direction: column;

}

.mt8 {
    margin-top: 3px;
}

input, select {
    padding: 5px;
    font-size: 0.9rem;
}

.bold {
    font-weight: 600;
    font-size: 1.1rem;
}

textarea {
    height: 60px;
    width: 100%;
}

button {
    margin-top: 10px;
    padding: 15px;
    font-size: 1.2rem;
    font-weight: 600;
    color: white;
    background-color: black;
}

button:hover {
  cursor: pointer;
  transform: scale(1.1);
}

label:hover, input[type="radio"], input[type="checkbox"] {
  cursor: pointer;
}

@media screen and (max-width: 600px){
    h1 {
        font-size: 2rem;
    }
}
</style>
</head>
<body>
    <section>
        <div class="container">
          <h1 id="title">RTO FORM</h1>
  <!-- form starts -->
          <form id="survey-form" action="/save" method="get">
              <!-- name starts -->
            <div class="inputwrap col">
              <label for="name" id="name-label" class="bold">Name</label>
              <input
                class="mt8"
                type="text"
                id="name"
                required
                placeholder="Enter your Name" class="form-control"
                name="firstname"
              />
            </div>
<!-- phone number starts -->
            <div class="inputwrap col">
              <label for="phonenumber" id="email-label" class="bold">PHONE NUMBER</label>
              <input class="mt8" type="text" id="email" required name="phoneNumber"
              placeholder="Enter your phone number"/>
            </div>
<!-- gender starts -->
<!-- <div class="inputwrap col">
   <div class="form-check">
  <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="male" checked>
  <label class="form-check-label" for="exampleRadios1">
    Male
  </label>
</div>
<div class="form-check">
  <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios2" value="female">
  <label class="form-check-label" for="exampleRadios2">
    Female
  </label>
</div>
</div> -->
<!-- New Gender Starts -->
<div class="inputwrap col">
		<div class="form-check">
			<div>
			 <label for="number" id="number-label" class="bold">Gnder</label>
			</div>
				<input type="radio" id="male" name="gender" value="male">
 			 <label for="html">Male</label>
		</div>
	<div class="form-check">
 		<input type="radio" id="female" name="gender" value="female">
  			<label for="css">Female</label>
	</div>
</div>


<!-- age -->
<div class="inputwrap col">
              <label for="number" id="number-label" class="bold">Age</label>
              <input class="mt8"
                type="number"
                id="number"
                min="18"
                max="55"
                placeholder="Age"
                name="age"
              />
            </div>
<!-- vNumber -->
            <div class="inputwrap col">
                <label for="name" id="name-label" class="bold">vehicleNumber</label>
                <input
                  class="mt8"
                  type="text"
                  id="name"
                  name="vNumber"
                  required
                  placeholder="Enter your vehicleNumber"/>
<!-- vModel -->
                <div class="inputwrap col">
                    <label for="gender" id="vmodel" class="bold" >
                     VehicleModel</label>
                    <select id="dropdown" class="mt8" name="vModel">
                      <option>bike</option>
                      <option>car</option>
                      <option>truck</option>
                    </select>
                  </div>
  <!--address  -->
  
            <div class="inputwrap">
              <p class="bold">Address</p>
              <textarea
                id="comments"
                cols="30"
                rows="7"
                name="address"
              ></textarea>
            </div>
  <!-- button -->
            <button type="submit" id="submit" value="submit">Submit</button>
             ${result}
          </form>
<button type="button" onclick="location.href='http://localhost:8080/htmltable'" class="btn btn-success m-4">HtmlTable</button>
<button type="button" onclick="location.href='http://localhost:8080/datatable'" class="btn btn-primary m-4">DataTable</button>                 
        </div>
</section>


</body>
</html>