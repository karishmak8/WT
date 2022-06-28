<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>gvpce</title>
    <style>
        .containerr{ 
            margin:2rem;
            padding: 1rem;
            background-image: url('https://t3.ftcdn.net/jpg/04/48/06/74/360_F_448067440_hTWoSx63cvavKS0qYDs1BR2Qg5C0JVB7.jpg');
        }
        center{
            width: 80%;
        }
        p,label{
            padding: 0.2rem;
            margin: 0.2rem;
            color: white;
        }
        input{
            padding: 0.2rem;
            margin: 0.2rem;
            border-radius: 0.5rem;
            border: 0.1rem black;

        }
        button{
            padding: 0.2rem;
            margin: 0.2rem;
            border-radius: 0.5rem;
            color: black;
            background-color: white;
        }
        button:hover{
            background-color: #33ADDB;
            color: white;
        }
        a:hover{
            color: white;
        }
        a{
            color: #33ADDB;
        }

    </style>
</head>
<body>
    <center>
    <div class="containerr">
        <div>
            <h2 style="color: white;">Login</h2>

    <form onsubmit="return click()" action="./jsplogin.jsp" method="post" class="formm" name="formm"  >
        <label>Name:</label>
        <input name="name" type="text"><br>
        <label>Password:</label>
        <input name="password" type="password">
        <button type="submit" style="margin-top: 1rem;margin-bottom:1rem">Signin</button>

    </form>
        </div>
        <div class="">

    <p>Dont have an account <a href="./register.jsp">Signup</a></p> 
    <p> Forgot password <a href="./forgot.jsp">Change password</a></p>
</div>
</div>
    </center>
</body>
<script>
    function stringContainsNumber(str){
        return /\d/.test(str);
    }
    function stringContainslower(str){
        return str.match(/[a-z]/);
    }
    function check(){
        let x=document.forms["formm"]["name"].value;
        let y=document.forms['formm']['password'].value;
        console.log(x,y);
        var c=y.charAt(0);
        var lc=/abcdefghijklmnopqrstuvwxyz/;
        var ss= /[!@#$%^&*()_+\-=\[\]{};':"\\|,.<>\/?]+/;

        if(x.length<6){
            alert('username must be of atleast 6 characters.');
            return false;
        }
        else if(y.length<8){
            alert("Password must be of atleast 8 characters");
        }
        
        else if(c!=c.toUpperCase()){
            alert("Password should start with a capital letter");
        }
        else if(!stringContainsNumber(y)){
            alert('Password should contain a digit');
        }
        else if(!y.match(ss)){
            alert('Password should contain special character');
        }
        else if(!stringContainslower(y)){
            alert('Password should contain a lower case letter');
        }
        else{
            alert("login successful")
            return true;
        }
        return false;
    }
</script>
</html>