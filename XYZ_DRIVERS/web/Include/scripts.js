//// JavaScript Document
//var txtfirstname;
//var txtlastname;
//var txtaddressln1;
//var txtaddressln2;
//var txtpostcode;
//var txtemail;
//var txtdob;
//var txtphoneno;
//var txtemergency;
//var txtpassword;
//var atpos;
//var dotpos;
//var currdate = new Date();
//
//
//
//
//
//function validateuser1()<!-- form validation for the inputcustomer.asp page -->
//{
//txtfirstname=document.forms["frmAddCustomer"]["txtFirstName"].value;
//txtlastname=document.forms["frmAddCustomer"]["txtlastname"].value;
//txtaddressln1=document.forms["frmAddCustomer"]["txtaddressln1"].value;
// txtaddressln2=document.forms["frmAddCustomer"]["txtaddressln2"].value;
// txtpostcode=document.forms["frmAddCustomer"]["txtpostcode"].value;
// txtemail=document.forms["frmAddCustomer"]["txtemail"].value;
// txtdob=document.forms["frmAddCustomer"]["txtdob"].value;
// txtphoneno=document.forms["frmAddCustomer"]["txtphoneno"].value;
// txtemergency=document.forms["frmAddCustomer"]["txtemergency"].value;
// txtpassword=document.forms["frmAddCustomer"]["txtpassword"].value;
// atpos=txtemail.indexOf("@");
// dotpos=txtemail.lastIndexOf(".");
//if (txtfirstname==null || txtfirstname=="")<!-- stops the text box from being empty -->
//  {
//  alert  ("first name must be filled out");
//  return false;
//  }
//  if (txtlastname==null || txtlastname=="")<!-- stops the text box from being empty -->
//  {
//  alert  ("last name must be filled out");
//  return false;
//  }
//    if (txtaddressln1==null || txtaddressln1=="" ||txtaddressln2==null || txtaddressln2=="")<!-- stops the text box from being empty -->
//  {
//  alert  ("address must be correctly filled out");
//  return false;
//  }
//    if (txtpostcode==null || txtpostcode=="")<!-- stops the text box from being empty -->
//  {
//  alert  ("postcode must be filled out");
//  return false;
//  }
//  if (txtemail==null || txtemail=="" || atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length)<!--  stops the text box from being empty and email validation to ensure there is an "@" and a "." -->
//  {
//  alert("invalid or empty e-mail address, please try again");
//  return false;
//  }
//  if (txtphoneno==null || txtphoneno=="")<!-- stops the text box from being empty -->
//  {
//  alert  ("phone number must be filled in");
//  return false;
//  }
//   if (txtemergency==null || txtemergency=="")<!-- stops the text box from being empty -->
//  {
//  alert  ("emergency contact number must be filled in");
//  return false;
//  }
//    if (txtpassword==null || txtpassword=="")<!-- stops the text box from being empty -->
//  {
//  alert  ("password must be filled in");
//  return false;
//  }
//    if (txtdob==null || txtdob=="" || txtdob.length>7 || txtdob.length<10)<!-- stops the text box from being empty and ensures it is of a valid length -->
//  {
//  alert  ("date of birth must be filled in correctly");
//  return false;
//  }
//} 
//
// function validateuser2()<!-- validation for the second user information form updatedetails.asp -->
//{
//txtfirstname=document.forms["updateuser"]["txtFirstName"].value;
//txtlastname=document.forms["updateuser"]["txtlastname"].value;
//txtaddressln1=document.forms["updateuser"]["txtaddressln1"].value;
// txtaddressln2=document.forms["updateuser"]["txtaddressln2"].value;
// txtpostcode=document.forms["updateuser"]["txtpostcode"].value;
// txtemail=document.forms["updateuser"]["txtemail"].value;
// txtdob=document.forms["updateuser"]["txtdob"].value;
// txtphoneno=document.forms["updateuser"]["txtphoneno"].value;
// txtemergency=document.forms["updateuser"]["txtemergency"].value;
// txtpassword=document.forms["updateuser"]["txtpassword"].value;
// atpos=txtemail.indexOf("@");
// dotpos=txtemail.lastIndexOf(".");
//if (txtfirstname==null || txtfirstname=="")<!-- stops the text box from being empty -->
//  {
//  alert  ("first name must be filled out");
//  return false;
//  }
//  if (txtlastname==null || txtlastname=="")<!-- stops the text box from being empty -->
//  {
//  alert  ("last name must be filled out");
//  return false;
//  }
//    if (txtaddressln1==null || txtaddressln1=="" ||txtaddressln2==null || txtaddressln2=="")<!-- stops the text box from being empty -->
//  {
//  alert  ("address must be correctly filled out");
//  return false;
//  }
//    if (txtpostcode==null || txtpostcode=="")<!-- stops the text box from being empty -->
//  {
//  alert  ("postcode must be filled out");
//  return false;
//  }
//        if (txtemail==null || txtemail=="" || atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length)<!--  stops the text box from being empty and email validation to ensure there is an "@" and a "." -->
//  {
//  alert("invalid or empty e-mail address, please try again");
//  return false;
//  }
//    if (txtphoneno==null || txtphoneno=="")<!-- stops the text box from being empty -->
//  {
//  alert  ("phone number must be filled in");
//  return false;
//  }
//   if (txtemergency==null || txtemergency=="")<!-- stops the text box from being empty -->
//  {
//  alert  ("emergency contact number must be filled in");
//  return false;
//  }
//    if (txtpassword==null || txtpassword=="")<!-- stops the text box from being empty -->
//  {
//  alert  ("password must be filled in");
//  return false;
//  }
//    if (txtdob==null || txtdob=="" || txtdob.length>7 || txtdob.length<10)<!-- stops the text box from being empty and ensures it is of a valid length -->
//  {
//  alert  ("date of birth must be filled in correctly");
//  return false;
//  }
//}
//
//
//
//
