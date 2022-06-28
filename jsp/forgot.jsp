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
            <h2 style="color: white;">Change password</h2>

            <form onsubmit="return check()" action="./jspforgot.jsp" method="post" class="formm"  name="formm" >
                <label>Username</label>
                <input name="name" type="text"><br>
                <label>Password</label>
                <input name="password" type="password"><br>
                <label>Confirm Password</label>
                <input name="password1" type="password"><br>
        
                <button type="submit" style="margin-top: 1rem;margin-bottom:1rem">Change Password</button>

            </form>
            
        </div>
        <div class="">

    <p>Dont have an account <a href="./register.jsp">Signup</a></p> 
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
        let y=document.forms['formm']['password'].value;
        let z=document.forms['formm']['password1'].value;
        var c=y.charAt(0);
        var l=0;
        var ss= /[!@#$%^&*()_+\-=\[\]{};':"\\|,.<>\/?]+/;
        var lc=/abcdefghijklmnopqrstuvwxyz/
    
        if(y.length<8){
            l+=1;
    
            alert("Password must be of atleast 8 characters");
        }
    
        
        else if(c!=c.toUpperCase()){
            l+=1;
    
            alert("Password should start with a capital letter");
        }
        else if(!stringContainsNumber(y)){
            l+=1;
    
            alert('Password should contain a digit');
        }
        else if(!y.match(ss)){
            l+=1;
    
            alert('Password should contain special character');
        }
        else if(!stringContainslower(y)){
            l+=1;
    
            alert('Password should contain a lower case letter');
        }
        else if(y!=z){
            l+=1;
    
            alert('password and confirm password didnot match');
        }
        
        if(l==0){
            alert("Password change done")
        }
    
    }
    </script>
    
</html>