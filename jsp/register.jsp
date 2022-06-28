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
            padding: 0.3rem;
            margin: 0.3rem;
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
            <h2 style="color: white;">Registerrrrrrrrrrr</h2>

            <form onsubmit="return check()" action="./jspregister.jsp" method="post" class="formm"  name="formm"  >
                <label>Username:</label>
                <input name="name" required type="text"><br>
                <label>Password</label>
                <input name="password" required type="password"><br>
                <label>Confirm password</label>
                <input name="password1" required type="password"><br>
                <label>Email-id</label>
                <input name="email" required type="email"><br>
                <label>Mobile Number</label>
                <input name="mobile" required type="number"><br>
                <label>Date of Birth</label>
                <input name="dob" required type="date"><br>
                <label>Address</label>
                <input name="Address" required type="text"><br>
                <!-- <label>Gender</label>
                <input name="gender" required type="radio"><label>Male</label>
                <input name="gender" required type="radio"><label>Female</label>
                <input name="gender" required type="radio"><label>Others</label><br> -->
        
        
                <div class="">
                    <button type="submit"  style="margin-top: 1rem;margin-bottom:1rem">SignUp</button>
        
        </div>
        
        
            </form>
           
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
        let z=document.forms['formm']['password1'].value;
        console.log(x,y);
        var c=y.charAt(0);
        let m=document.forms['formm']['mobile'].value;
        var l=0;
        var ss= /[!@#$%^&*()_+\-=\[\]{};':"\\|,.<>\/?]+/;
        var lc=/abcdefghijklmnopqrstuvwxyz/
        em=document.forms['formm']['email'].value;
        var ems=/@./;

        if(x.length<6){
            l+=1;
            alert('username must be of atleast 6 characters.');
            return false;
        }
        else if(y.length<8){
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
        else if(!em.match(ems)){
            l+=1;

            alert('email is not in a correct format')
        }
        else if(m.length!=10){
            l+=1;

            alert('length of mobile number should be 10');
        }
        
        if(l==0){
            alert("account created successfully")
        }

    }
</script>

</html>