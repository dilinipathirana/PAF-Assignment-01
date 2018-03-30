function formValidate() {
			  var fullName=document.forms["myForm"]["fullname"].value;
			  var DateOfBirth=document.forms["myForm"]["DateOfBirth"].value;
			  var PermenantAddress=document.forms["myForm"]["Permenant Address"].value;
			  var CurrentAddress=document.forms["myForm"]["Current Address"].value;
			  var MobileNumber=document.forms["myForm"]["Mobile Number"].value;
			  var HomeTelephoneNumber=document.forms["myForm"]["Home Telephone Number"].value;
			  var username=document.forms["myForm"]["username"].value;  
			  var password=document.forms["myForm"]["password"].value;
			  var cpassword=document.forms["myForm"]["Confirm Password"].value;
						 
			  if(isAlphebatic(fullName,"fullname"))
				  return true;
			 // isAlphebatic(lastName,"Last name");//check for only letters
			  
			  else if(ispassword(password,cpassword))
				  return true;
			  else if(isNumeric (DateOfBirth,"DateOfBirth"))
				  return true;
			  else if(isNumeric (MobileNumber,"Mobile Number"))
				  return true;
			  else if(isNumeric (HomeTelephoneNumber,"Home Telephone number"))
				  return true;
			  else if(isAlphebatic(username,"username"))
				  return true;
			  else
				  return false;
	
			  
			 
			  
			
			
			  //selectState(state);
			  //userValidation(username,6,8);
			  
			}
			
			function isEmpty(elemValue,feild) {
			  if(elemValue==""|elemValue==null){
			  		alert(" "+feild+" is Empty");			  		
			  		return true;
			  }
			  else
			  	return false;
			  
			}
			
			function isAlphebatic (elemValue,feild) {
				var exp=/^[a-zA-Z]+$/;
				if(true)
				{
					if(elemValue.match(exp)){
						return true;
					}
					else{
						alert("Enter only letters as the "+feild+"  ");
					return false;}
				}
			  else
			  	return false;
			}
				function isNumeric (elemValue,feild) {
				var exp1=/^[0-9]+$/;
				if(true)
				{
					if(elemValue.match(exp1)){
						return true;
					}
					else{
						alert("Enter only numbers as the "+feild+"  ");
					return false;}
				}
			  else
			  	return false;
			}
		/*	
			function selectState (elemValue) {
			   if (elemValue == "please select") { 
            		alert("Choose a month"); 
            		return false; 
          		} 
        		else  
              	return true;  

			}
			
			function userValidation(elemValue, min, max){
        		if (!isEmpty(elemValue, "UserName")) 
        		{ 
            		if (elemValue.length >= min&& elemValue.length<= max) { 
                	return true; 
            		} 
            		else { 
                		alert("Enter a username in between " + min + " and " + max + " characters"); 
                		return false; 
            		} 
        		} 
        		else  
            	return false;      
    		}  */
			
			function emailValidation(elemValue) 
    		{ 
        		if (!isEmpty(elemValue, "Email")) 
        		{ 
            		var atpos = elemValue.indexOf("@"); 
            		var dotpos = elemValue.indexOf("."); 
            		if (atpos < 1 || dotpos + 2 >= elem.length || atpos + 2 > dotpos) 
            		{ 
                		alert("Enter a valid email address"); 
                		return false; 
            		} 
            		else  
                		return true; 
        		} 
        		else  
            		return false; 
    		} 
			
			function ispassword (elemValue,elemValue2) {
				if (!isEmpty(elemValue, "password")){ 
				 
				
				if(elemValue!=elemValue2)
				{
					alert("password do not match!!");
					return false;
				}
				else
				{
					return true;
				}
			 }
				else  
            		return false; 
			}
		
	