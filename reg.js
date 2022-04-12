function registration()
{
var name= document.getElementById("username").value;
var email= document.getElementById("email").value;
var psw= document.getElementById("psw").value; 
var cpsw= document.getElementById("psw-repeat").value;
var phone= document.getElementById("mobile number").value;
var psw_expression = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-])/;
var letters = /^[A-Za-z]+$/;
var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
var phonepattern=/^([6-9][0-9]{9})/;
if(name=='')
{
alert('Please enter your name');
}
else if(name.length<6)
{
alert ('Username should be atleast 6 characters');
}
else if(!letters.test(name))
{
alert('Name field required only alphabet characters');
}
else if(email=='')
{
alert('Please enter your user email id');
}
else if (!filter.test(email))
{
alert('Invalid email');
}
else if(psw=='')
{
alert('Please enter Password');
}
else if(psw.length<8)
{
alert('Password should be atleast 8 characters');
}
else if(cpsw=='')
{
alert('Enter Confirm Password');
}
else if(!psw_expression.test(psw))
{
alert ('Upper case, Lower case, Special character and Numeric letter are required in Password filed');
}
else if(psw != cpsw)
{
alert ('Password not Matched');
}
else if(document.getElementById("psw-repeat").value.length < 6)
{
alert ('Password minimum length is 6');
}
else if(document.getElementById("psw-repeat").value.length > 12)
{
alert ('Password max length is 12');
}
else if(phone=='')
{
alert ('Enter Phone Number');
}
else if(!phone.match(phonepattern))
{
alert ('Phone Number pattern not matched. Starting number should be in range(6-9)');
}
else if(document.getElementById('Gender').checked == false)
{
alert ('Gender was not selected');
}
else
{ 
alert('Thank You for Registration'); 
}
}