var attempt = 3; 
function validate()
{
var username = document.getElementById("UName").value;
var password = document.getElementById("Password").value;
if ( username == "Karishma" && password == "Ka@121")
{
alert ("Login successfully");
window.location = "Success.html"; // Redirecting to other page.
return false;
}
else
{
attempt --;// Decrementing by one.
alert("Wrong username or password You have left "+attempt+" attempt;");
// Disabling fields after 3 attempts.
if( attempt == 0)
{
document.getElementById("UName").disabled = true;
document.getElementById("Password").disabled = true;
document.getElementById("submit").disabled = true;
return false;
}
}
}