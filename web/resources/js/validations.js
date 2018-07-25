/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$(document).ready(function ()
{
    var form=document.getElementsByTagName('form')[0];
    var fname = document.getElementById('name');
    var address = document.getElementById('address');
    var age = document.getElementById('age');
    
   
    var error = document.getElementById('name-id');
    var error1=document.getElementById('address-id');
    var error2=document.getElementById('age-id');
    
    console.log(form);
    console.log(error);
    console.log(error1);
    console.log(error2);
    
    fname.addEventListener("input", function (event) {

        if (fname.validity.valid) {
              
           error.innerHTML="";
           error.className="error";
        }
    },false);
    
    form.addEventListener("submit",function(event){
        
       if(!fname.validity.valid){
           
        error.innerHTML="Name is expected";
        error.className="error active";
         
        event.preventDefault();
       }   
    },false);
    
    address.addEventListener("input",function(event){
        
        if (address.validity.valid) {
              
           error1.innerHTML="";
           error1.className="error1";
        }
       
    },false);
   
    form.addEventListener("submit",function(event){
            
           if(!address.validity.valid){
               
            error1.innerHTML="address is expected";
            error1.className="error1 active";
             
            event.preventDefault();
           }   
        },false);
    
    
    age.addEventListener("input",function(event){        
        if (age.validity.valid) {
              
           error2.innerHTML="";
           error2.className="error2";
        }
    },false);
            
    form.addEventListener("submit",function(event){
        
       if(!age.validity.valid){
           
        error2.innerHTML="Age is expected";
        error2.className="error2 active";
         
        event.preventDefault();
       }   
    },false); 
     
});
    
    
    
    
    
    
    
     
    
    
   
   

