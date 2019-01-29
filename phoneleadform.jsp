<script>
jQuery(document).ready(function() {
    jQuery('#country').bind('change', function() {
		
        var elements = jQuery('div.StateContainer').children().hide(); 
		
        var value = jQuery(this).val();

		if(value == ""){
		}
        else if(value == "USA"){ 
            elements.filter('.' + "USA").show();			 			
			document.getElementById("CANSelect").value = "";
			document.getElementById("AUSSelect").value = "";						
			document.getElementById("USASelect").setAttribute("required", "");
			document.getElementById("CANSelect").removeAttribute("required");
			document.getElementById("AUSSelect").removeAttribute("required");			
        }else if(value == "CAN"){ 			
			elements.filter('.' + "CAN").show(); 									
			document.getElementById("USASelect").value = "";
			document.getElementById("AUSSelect").value = "";
			document.getElementById("USASelect").removeAttribute("required");
			document.getElementById("CANSelect").setAttribute("required", "");
			document.getElementById("AUSSelect").removeAttribute("required");			
        }else if(value == "AUS"){ 			
			elements.filter('.' + "AUS").show();								     
			document.getElementById("CANSelect").value = "";
			document.getElementById("USASelect").value = "";
			document.getElementById("USASelect").removeAttribute("required");
			document.getElementById("CANSelect").removeAttribute("required");
			document.getElementById("AUSSelect").setAttribute("required", "");			
        }
		else{
			document.getElementById("CANSelect").value = "";
			document.getElementById("AUSSelect").value = "";
			document.getElementById("USASelect").value = "";
			document.getElementById("USASelect").removeAttribute("required");
			document.getElementById("CANSelect").removeAttribute("required");
			document.getElementById("AUSSelect").removeAttribute("required");
		}
			

    }).trigger('change');
});

jQuery(document).ready(function() {
    jQuery('#country').bind('change', function() {
	
	var elements = jQuery('div.zipContainer').children().hide();
	
	var value = jQuery(this).val();
	
	if(value == ""){
		}
	else if(value == "USA"){ 	
		elements.filter('.' + "USZIP").show(); 
		document.getElementById("USzipcode").disabled = false;											
		document.getElementById("Ozipcode").disabled = true;
		document.getElementById("AUzipcode").disabled = true;
		document.getElementById("CAzipcode").disabled = true;
		document.getElementById("USzipcode").setAttribute("required", "");
		document.getElementById("Ozipcode").removeAttribute("required");
		document.getElementById("AUzipcode").removeAttribute("required");
		document.getElementById("CAzipcode").removeAttribute("required");
	}
	else if(value == "CAN"){ 
		elements.filter('.' + "CANCADAZIP").show(); 
		document.getElementById("USzipcode").disabled = true;
		document.getElementById("Ozipcode").disabled = true;
		document.getElementById("AUzipcode").disabled = true;
		document.getElementById("CAzipcode").disabled = false;	
		document.getElementById("USzipcode").removeAttribute("required");
		document.getElementById("Ozipcode").removeAttribute("required");
		document.getElementById("AUzipcode").removeAttribute("required");
		document.getElementById("CAzipcode").setAttribute("required", "");
	}
	else if(value == "AUS"){ 
		elements.filter('.' + "AUSTRIAZIP").show();
		document.getElementById("USzipcode").disabled = true;
		document.getElementById("Ozipcode").disabled = true;
		document.getElementById("AUzipcode").disabled = false;
		document.getElementById("CAzipcode").disabled = true;
		document.getElementById("USzipcode").removeAttribute("required");
		document.getElementById("Ozipcode").removeAttribute("required");
		document.getElementById("AUzipcode").setAttribute("required", "");
		document.getElementById("CAzipcode").removeAttribute("required");
	}
	else{
		elements.filter('.' + "OTHERZIP").show();		
		document.getElementById("USzipcode").disabled = true;
		document.getElementById("Ozipcode").disabled = false;
		document.getElementById("AUzipcode").disabled = true;
		document.getElementById("CAzipcode").disabled = true;
		document.getElementById("USzipcode").removeAttribute("required");
		document.getElementById("Ozipcode").setAttribute("required", "");
		document.getElementById("AUzipcode").removeAttribute("required");
		document.getElementById("CAzipcode").removeAttribute("required");
	}
	
    }).trigger('change');
});	
function isNumber(evt) {
    evt = (evt) ? evt : window.event;
    var charCode = (evt.which) ? evt.which : evt.keyCode;
    if (charCode > 31 && (charCode < 48 || charCode > 57)) {
        return false;
    }
    return true;
}
function onlyAlphabets(e, t) {
            try {
                if (window.event) {
                    var charCode = window.event.keyCode;
                }
                else if (e) {
                    var charCode = e.which;
                }
                else { return true; }
                if ((charCode > 64 && charCode < 91) || (charCode > 96 && charCode < 123)|| (charCode == 32))
                    return true;
                else
                    return false;
            }
            catch (err) {
                alert(err.Description);
            }
        }

jQuery(document).ready(function() {
    jQuery('#Program1').bind('change', function() {		
        var elements1 = jQuery('div.containerDavid1').children().hide();
		var elements2 = jQuery('div.containerDavid2').children().hide();	
		var elements3 = jQuery('div.containerDavid3').children().hide();
		var elements4 = jQuery('div.containerDavid4').children().hide();
		var elements5 = jQuery('div.containerDavid5').children().hide();	
		var elements6 = jQuery('div.containerDavid6').children().hide();
		var elements7 = jQuery('div.containerDavid7').children().hide();
		var elements8 = jQuery('div.containerDavid8').children().hide();	
		var elements9 = jQuery('div.containerDavid9').children().hide();
		var elements10 = jQuery('div.containerDavid10').children().hide();
        var value = jQuery(this).val();

		if (value == ""){
			
		}
        else if (value == "ACT" || value == "ATC" || value == "ARH1" || value == "AUT" || value == "FSH-TX" || value == "FSH-KW" || value == "FSH-FW") { 
            elements1.filter('.' + 1).show(); 
			document.getElementById("aacOnlineInterest12").removeAttribute("required");	
			document.getElementById("aacOnlineInterest11").setAttribute("required", "");
			document.getElementById("aacOnlineInterest11").options[1].disabled = false;			
        }
		else{
			elements1.filter('.' + 2).show(); 
			document.getElementById("aacOnlineInterest12").setAttribute("required", "");
			document.getElementById("aacOnlineInterest11").removeAttribute("required");		
			document.getElementById("aacOnlineInterest11").options[1].disabled = true;				
		}
    }).trigger('change');
});

jQuery(document).ready(function() {
    jQuery('#Program2').bind('change', function() {
		
        var elements1 = jQuery('div.containerDavid1').children().hide();
		var elements2 = jQuery('div.containerDavid2').children().hide();	
		var elements3 = jQuery('div.containerDavid3').children().hide();
		var elements4 = jQuery('div.containerDavid4').children().hide();
		var elements5 = jQuery('div.containerDavid5').children().hide();	
		var elements6 = jQuery('div.containerDavid6').children().hide();
		var elements7 = jQuery('div.containerDavid7').children().hide();
		var elements8 = jQuery('div.containerDavid8').children().hide();	
		var elements9 = jQuery('div.containerDavid9').children().hide();
		var elements10 = jQuery('div.containerDavid10').children().hide();
        var value = jQuery(this).val();

		if (value == ""){
			
		}
        else if (value == "ACT" || value == "ATC" || value == "ARH1" || value == "AUT" || value == "FSH-TX" || value == "FSH-KW" || value == "FSH-FW") { 
            elements2.filter('.' + 1).show(); 
			document.getElementById("aacOnlineInterest22").removeAttribute("required");	
			document.getElementById("aacOnlineInterest21").setAttribute("required", "");	
			document.getElementById("aacOnlineInterest21").options[1].disabled = false;	
        }
		else{
			elements2.filter('.' + 2).show(); 
			document.getElementById("aacOnlineInterest22").setAttribute("required", "");
			document.getElementById("aacOnlineInterest21").removeAttribute("required");	
			document.getElementById("aacOnlineInterest21").options[1].disabled = true;			
		}
    }).trigger('change');
});
jQuery(document).ready(function() {
    jQuery('#educationLevel').bind('change', function() {
		if(document.getElementById("educationLevel").value == ("Did-Not-Complete-High-School-No-GED")){
			document.getElementById("field12").removeAttribute("required");
			document.getElementById("formElement12").style.display = "none";
		}
		else{
			document.getElementById("field12").setAttribute("required", "");
			document.getElementById("formElement12").style.display = "block";	
		}
	}).trigger('change');
});
jQuery(document).ready(function() {
    jQuery('#educationLevel').bind('change', function() {
		
        var elements = jQuery('div.containerDavid').children().hide(); 
		document.getElementById("Program1").value = "";
		document.getElementById("Program2").value = "";
		document.getElementById("Program3").value = "";
		document.getElementById("Program4").value = "";
		document.getElementById("Program5").value = "";
		document.getElementById("Program6").value = "";
		document.getElementById("Program7").value = "";
		document.getElementById("Program8").value = "";
		document.getElementById("Program9").value = "";
		document.getElementById("Program10").value = "";
		document.getElementById("aacOnlineInterest11").removeAttribute("required");
		document.getElementById("aacOnlineInterest21").removeAttribute("required");
		document.getElementById("aacOnlineInterest31").removeAttribute("required");
		document.getElementById("aacOnlineInterest41").removeAttribute("required");
		document.getElementById("aacOnlineInterest51").removeAttribute("required");
		document.getElementById("aacOnlineInterest61").removeAttribute("required");
		document.getElementById("aacOnlineInterest71").removeAttribute("required");
		document.getElementById("aacOnlineInterest81").removeAttribute("required");
		document.getElementById("aacOnlineInterest91").removeAttribute("required");
		document.getElementById("aacOnlineInterest101").removeAttribute("required");
		document.getElementById("aacOnlineInterest12").removeAttribute("required");
		document.getElementById("aacOnlineInterest22").removeAttribute("required");
		document.getElementById("aacOnlineInterest32").removeAttribute("required");
		document.getElementById("aacOnlineInterest42").removeAttribute("required");
		document.getElementById("aacOnlineInterest52").removeAttribute("required");
		document.getElementById("aacOnlineInterest62").removeAttribute("required");
		document.getElementById("aacOnlineInterest72").removeAttribute("required");
		document.getElementById("aacOnlineInterest82").removeAttribute("required");
		document.getElementById("aacOnlineInterest92").removeAttribute("required");
		document.getElementById("aacOnlineInterest102").removeAttribute("required");
		document.getElementById("aacOnlineInterest11").options[1].disabled = true;	
		document.getElementById("aacOnlineInterest21").options[1].disabled = true;	
		document.getElementById("aacOnlineInterest31").options[1].disabled = true;	
		document.getElementById("aacOnlineInterest41").options[1].disabled = true;	
		document.getElementById("aacOnlineInterest51").options[1].disabled = true;	
		document.getElementById("aacOnlineInterest61").options[1].disabled = true;	
		document.getElementById("aacOnlineInterest71").options[1].disabled = true;	
		document.getElementById("aacOnlineInterest81").options[1].disabled = true;	
		document.getElementById("aacOnlineInterest91").options[1].disabled = true;	
		document.getElementById("aacOnlineInterest101").options[1].disabled = true;
		
        var value = jQuery(this).val();

        if (value == "Current-High-School-Student") { 
            elements.filter('.' + value).show(); // show the ones we want
			document.getElementById("interest").style.display = "block";
			document.getElementById("Program1").setAttribute("required", "");
			document.getElementById("Program2").removeAttribute("required");
			document.getElementById("Program3").removeAttribute("required");
			document.getElementById("Program4").removeAttribute("required");
			document.getElementById("Program5").removeAttribute("required");
			document.getElementById("Program6").removeAttribute("required");
			document.getElementById("Program7").removeAttribute("required");
			document.getElementById("Program8").removeAttribute("required");
			document.getElementById("Program9").removeAttribute("required");
			document.getElementById("Program10").removeAttribute("required");
        }
		else if (value == "High-School-Diploma") { 
            elements.filter('.' + value).show(); 
			document.getElementById("interest").style.display = "block";
			document.getElementById("Program1").removeAttribute("required");
			document.getElementById("Program2").setAttribute("required", "");
			document.getElementById("Program3").removeAttribute("required");
			document.getElementById("Program4").removeAttribute("required");
			document.getElementById("Program5").removeAttribute("required");
			document.getElementById("Program6").removeAttribute("required");
			document.getElementById("Program7").removeAttribute("required");
			document.getElementById("Program8").removeAttribute("required");
			document.getElementById("Program9").removeAttribute("required");
			document.getElementById("Program10").removeAttribute("required");
        }
		else if (value == "Some-College-Credits") { 
            elements.filter('.' + value).show(); 
			document.getElementById("interest").style.display = "block";
			document.getElementById("Program1").removeAttribute("required");
			document.getElementById("Program2").removeAttribute("required");
			document.getElementById("Program3").setAttribute("required", "");
			document.getElementById("Program4").removeAttribute("required");
			document.getElementById("Program5").removeAttribute("required");
			document.getElementById("Program6").removeAttribute("required");
			document.getElementById("Program7").removeAttribute("required");
			document.getElementById("Program8").removeAttribute("required");
			document.getElementById("Program9").removeAttribute("required");
			document.getElementById("Program10").removeAttribute("required");
        }
		else if (value == "Associate-Degree") { 
            elements.filter('.' + value).show(); 
			document.getElementById("interest").style.display = "block";
			document.getElementById("Program1").removeAttribute("required");
			document.getElementById("Program2").removeAttribute("required");
			document.getElementById("Program3").removeAttribute("required");
			document.getElementById("Program4").setAttribute("required", "");
			document.getElementById("Program5").removeAttribute("required");
			document.getElementById("Program6").removeAttribute("required");
			document.getElementById("Program7").removeAttribute("required");
			document.getElementById("Program8").removeAttribute("required");
			document.getElementById("Program9").removeAttribute("required");
			document.getElementById("Program10").removeAttribute("required");
        }
		else if (value == "Bachelor-Degree") { 
            elements.filter('.' + value).show(); 
			document.getElementById("interest").style.display = "block";
			document.getElementById("Program1").removeAttribute("required");
			document.getElementById("Program2").removeAttribute("required");
			document.getElementById("Program3").removeAttribute("required");
			document.getElementById("Program4").removeAttribute("required");
			document.getElementById("Program5").setAttribute("required", "");
			document.getElementById("Program6").removeAttribute("required");
			document.getElementById("Program7").removeAttribute("required");
			document.getElementById("Program8").removeAttribute("required");
			document.getElementById("Program9").removeAttribute("required");
			document.getElementById("Program10").removeAttribute("required");
        }
		else if (value == "Second-Bachelor-Degree") { 
            elements.filter('.' + value).show(); 
			document.getElementById("interest").style.display = "block";
			document.getElementById("Program1").removeAttribute("required");
			document.getElementById("Program2").removeAttribute("required");
			document.getElementById("Program3").removeAttribute("required");
			document.getElementById("Program4").removeAttribute("required");
			document.getElementById("Program5").removeAttribute("required");
			document.getElementById("Program6").setAttribute("required", "");
			document.getElementById("Program7").removeAttribute("required");
			document.getElementById("Program8").removeAttribute("required");
			document.getElementById("Program9").removeAttribute("required");
			document.getElementById("Program10").removeAttribute("required");
        }
		else if (value == "Some-Post-Graduate") { 
            elements.filter('.' + value).show(); 
			document.getElementById("interest").style.display = "block";
			document.getElementById("Program1").removeAttribute("required");
			document.getElementById("Program2").removeAttribute("required");
			document.getElementById("Program3").removeAttribute("required");
			document.getElementById("Program4").removeAttribute("required");
			document.getElementById("Program5").removeAttribute("required");
			document.getElementById("Program6").removeAttribute("required");
			document.getElementById("Program7").setAttribute("required", "");
			document.getElementById("Program8").removeAttribute("required");
			document.getElementById("Program9").removeAttribute("required");
			document.getElementById("Program10").removeAttribute("required");
        }
		else if (value == "Master-Degree") { 
            elements.filter('.' + value).show(); 
			document.getElementById("interest").style.display = "block";
			document.getElementById("Program1").removeAttribute("required");
			document.getElementById("Program2").removeAttribute("required");
			document.getElementById("Program3").removeAttribute("required");
			document.getElementById("Program4").removeAttribute("required");
			document.getElementById("Program5").removeAttribute("required");
			document.getElementById("Program6").removeAttribute("required");
			document.getElementById("Program7").removeAttribute("required");
			document.getElementById("Program8").setAttribute("required", "");
			document.getElementById("Program9").removeAttribute("required");
			document.getElementById("Program10").removeAttribute("required");
        }
		else if (value == "Doctoral-Degree") { 
            elements.filter('.' + value).show(); 
			document.getElementById("interest").style.display = "block";
			document.getElementById("Program1").removeAttribute("required");
			document.getElementById("Program2").removeAttribute("required");
			document.getElementById("Program3").removeAttribute("required");
			document.getElementById("Program4").removeAttribute("required");
			document.getElementById("Program5").removeAttribute("required");
			document.getElementById("Program6").removeAttribute("required");
			document.getElementById("Program7").removeAttribute("required");
			document.getElementById("Program8").removeAttribute("required");
			document.getElementById("Program9").setAttribute("required", "");
			document.getElementById("Program10").removeAttribute("required");
        }
		else if (value == "Did-Not-Complete-High-School-No-GED") { 
            elements.filter('.' + value).show(); 
			document.getElementById("interest").style.display = "block";
			document.getElementById("Program1").removeAttribute("required");
			document.getElementById("Program2").removeAttribute("required");
			document.getElementById("Program3").removeAttribute("required");
			document.getElementById("Program4").removeAttribute("required");
			document.getElementById("Program5").removeAttribute("required");
			document.getElementById("Program6").removeAttribute("required");
			document.getElementById("Program7").removeAttribute("required");
			document.getElementById("Program8").removeAttribute("required");
			document.getElementById("Program9").removeAttribute("required");
			document.getElementById("Program10").setAttribute("required", "");
        }
		else
			document.getElementById("interest").style.display = "none";
		
    }).trigger('change');
});
jQuery(document).ready(function() {
    jQuery('#Program3').bind('change', function() {
		
        var elements1 = jQuery('div.containerDavid1').children().hide();
		var elements2 = jQuery('div.containerDavid2').children().hide();	
		var elements3 = jQuery('div.containerDavid3').children().hide();
		var elements4 = jQuery('div.containerDavid4').children().hide();
		var elements5 = jQuery('div.containerDavid5').children().hide();	
		var elements6 = jQuery('div.containerDavid6').children().hide();
		var elements7 = jQuery('div.containerDavid7').children().hide();
		var elements8 = jQuery('div.containerDavid8').children().hide();	
		var elements9 = jQuery('div.containerDavid9').children().hide();
		var elements10 = jQuery('div.containerDavid10').children().hide();
        var value = jQuery(this).val();
		
		if (value == ""){
			
		}
        else if (value == "ACT" || value == "ATC" || value == "ARH1" || value == "AUT" || value == "FSH-TX" || value == "FSH-KW" || value == "FSH-FW") { 
            elements3.filter('.' + 1).show(); 
			document.getElementById("aacOnlineInterest32").removeAttribute("required");	
			document.getElementById("aacOnlineInterest31").setAttribute("required", "");
			document.getElementById("aacOnlineInterest31").options[1].disabled = false;
        }
		else{
			elements3.filter('.' + 2).show(); 
			document.getElementById("aacOnlineInterest32").setAttribute("required", "");
			document.getElementById("aacOnlineInterest31").removeAttribute("required");	
			document.getElementById("aacOnlineInterest31").options[1].disabled = true;
		}
    }).trigger('change');
});
jQuery(document).ready(function() {
    jQuery('#Program4').bind('change', function() {
		
        var elements1 = jQuery('div.containerDavid1').children().hide();
		var elements2 = jQuery('div.containerDavid2').children().hide();	
		var elements3 = jQuery('div.containerDavid3').children().hide();
		var elements4 = jQuery('div.containerDavid4').children().hide();
		var elements5 = jQuery('div.containerDavid5').children().hide();	
		var elements6 = jQuery('div.containerDavid6').children().hide();
		var elements7 = jQuery('div.containerDavid7').children().hide();
		var elements8 = jQuery('div.containerDavid8').children().hide();	
		var elements9 = jQuery('div.containerDavid9').children().hide();
		var elements10 = jQuery('div.containerDavid10').children().hide();
        var value = jQuery(this).val();

		if (value == ""){
			
		}
        else if (value == "ACT" || value == "ATC" || value == "ARH1" || value == "AUT" || value == "FSH-TX" || value == "FSH-KW" || value == "FSH-FW") { 
            elements4.filter('.' + 1).show(); 
			document.getElementById("aacOnlineInterest42").removeAttribute("required");	
			document.getElementById("aacOnlineInterest41").setAttribute("required", "");
			document.getElementById("aacOnlineInterest41").options[1].disabled = false;
        }
		else{
			elements4.filter('.' + 2).show(); 
			document.getElementById("aacOnlineInterest42").setAttribute("required", "");
			document.getElementById("aacOnlineInterest41").removeAttribute("required");	
			document.getElementById("aacOnlineInterest41").options[1].disabled = true;
		}
    }).trigger('change');
});
jQuery(document).ready(function() {
    jQuery('#Program5').bind('change', function() {
		
        var elements1 = jQuery('div.containerDavid1').children().hide();
		var elements2 = jQuery('div.containerDavid2').children().hide();	
		var elements3 = jQuery('div.containerDavid3').children().hide();
		var elements4 = jQuery('div.containerDavid4').children().hide();
		var elements5 = jQuery('div.containerDavid5').children().hide();	
		var elements6 = jQuery('div.containerDavid6').children().hide();
		var elements7 = jQuery('div.containerDavid7').children().hide();
		var elements8 = jQuery('div.containerDavid8').children().hide();	
		var elements9 = jQuery('div.containerDavid9').children().hide();
		var elements10 = jQuery('div.containerDavid10').children().hide();
        var value = jQuery(this).val();

		if (value == ""){
			
		}
		else if (value == "ACT" || value == "ATC" || value == "ARH1" || value == "AUT" || value == "FSH-TX" || value == "FSH-KW" || value == "FSH-FW") { 
            elements5.filter('.' + 1).show(); 
			document.getElementById("aacOnlineInterest52").removeAttribute("required");	
			document.getElementById("aacOnlineInterest51").setAttribute("required", "");
			document.getElementById("aacOnlineInterest51").options[1].disabled = false;			
        }
		else{
			elements5.filter('.' + 2).show(); 
			document.getElementById("aacOnlineInterest52").setAttribute("required", "");
			document.getElementById("aacOnlineInterest51").removeAttribute("required");
			document.getElementById("aacOnlineInterest51").options[1].disabled = true;
		}
    }).trigger('change');
});
jQuery(document).ready(function() {
    jQuery('#Program6').bind('change', function() {
		
        var elements1 = jQuery('div.containerDavid1').children().hide();
		var elements2 = jQuery('div.containerDavid2').children().hide();	
		var elements3 = jQuery('div.containerDavid3').children().hide();
		var elements4 = jQuery('div.containerDavid4').children().hide();
		var elements5 = jQuery('div.containerDavid5').children().hide();	
		var elements6 = jQuery('div.containerDavid6').children().hide();
		var elements7 = jQuery('div.containerDavid7').children().hide();
		var elements8 = jQuery('div.containerDavid8').children().hide();	
		var elements9 = jQuery('div.containerDavid9').children().hide();
		var elements10 = jQuery('div.containerDavid10').children().hide();
        var value = jQuery(this).val();

		if (value == ""){
			
		}
        else if (value == "ACT" || value == "ATC" || value == "ARH1" || value == "AUT" || value == "FSH-TX" || value == "FSH-KW" || value == "FSH-FW") { 
            elements6.filter('.' + 1).show(); 
			document.getElementById("aacOnlineInterest62").removeAttribute("required");	
			document.getElementById("aacOnlineInterest61").setAttribute("required", "");
			document.getElementById("aacOnlineInterest61").options[1].disabled = false;	
        }
		else{
			elements6.filter('.' + 2).show(); 
			document.getElementById("aacOnlineInterest62").setAttribute("required", "");
			document.getElementById("aacOnlineInterest61").removeAttribute("required");	
			document.getElementById("aacOnlineInterest61").options[1].disabled = true;
		}
    }).trigger('change');
});
jQuery(document).ready(function() {
    jQuery('#Program7').bind('change', function() {
		
        var elements1 = jQuery('div.containerDavid1').children().hide();
		var elements2 = jQuery('div.containerDavid2').children().hide();	
		var elements3 = jQuery('div.containerDavid3').children().hide();
		var elements4 = jQuery('div.containerDavid4').children().hide();
		var elements5 = jQuery('div.containerDavid5').children().hide();	
		var elements6 = jQuery('div.containerDavid6').children().hide();
		var elements7 = jQuery('div.containerDavid7').children().hide();
		var elements8 = jQuery('div.containerDavid8').children().hide();	
		var elements9 = jQuery('div.containerDavid9').children().hide();
		var elements10 = jQuery('div.containerDavid10').children().hide();
        var value = jQuery(this).val();

		if (value == ""){
			
		}
        else if (value == "ACT" || value == "ATC" || value == "ARH1" || value == "AUT" || value == "FSH-TX" || value == "FSH-KW" || value == "FSH-FW") { 
            elements7.filter('.' + 1).show(); 
			document.getElementById("aacOnlineInterest72").removeAttribute("required");	
			document.getElementById("aacOnlineInterest71").setAttribute("required", "");
			document.getElementById("aacOnlineInterest71").options[1].disabled = false;	
        }
		else{
			elements7.filter('.' + 2).show(); 
			document.getElementById("aacOnlineInterest72").setAttribute("required", "");
			document.getElementById("aacOnlineInterest71").removeAttribute("required");	
			document.getElementById("aacOnlineInterest71").options[1].disabled = true;
		}
    }).trigger('change');
});
jQuery(document).ready(function() {
    jQuery('#Program8').bind('change', function() {
		
        var elements1 = jQuery('div.containerDavid1').children().hide();
		var elements2 = jQuery('div.containerDavid2').children().hide();	
		var elements3 = jQuery('div.containerDavid3').children().hide();
		var elements4 = jQuery('div.containerDavid4').children().hide();
		var elements5 = jQuery('div.containerDavid5').children().hide();	
		var elements6 = jQuery('div.containerDavid6').children().hide();
		var elements7 = jQuery('div.containerDavid7').children().hide();
		var elements8 = jQuery('div.containerDavid8').children().hide();	
		var elements9 = jQuery('div.containerDavid9').children().hide();
		var elements10 = jQuery('div.containerDavid10').children().hide();
        var value = jQuery(this).val();

		if (value == ""){
			
		}
        else if (value == "ACT" || value == "ATC" || value == "ARH1" || value == "AUT" || value == "FSH-TX" || value == "FSH-KW" || value == "FSH-FW") { 
            elements8.filter('.' + 1).show(); 
			document.getElementById("aacOnlineInterest82").removeAttribute("required");	
			document.getElementById("aacOnlineInterest81").setAttribute("required", "");	
			document.getElementById("aacOnlineInterest81").options[1].disabled = false;	
        }
		else{
			elements8.filter('.' + 2).show(); 
			document.getElementById("aacOnlineInterest82").setAttribute("required", "");
			document.getElementById("aacOnlineInterest81").removeAttribute("required");	
			document.getElementById("aacOnlineInterest81").options[1].disabled = true;				
		}
    }).trigger('change');
});
jQuery(document).ready(function() {
    jQuery('#Program9').bind('change', function() {
		
        var elements1 = jQuery('div.containerDavid1').children().hide();
		var elements2 = jQuery('div.containerDavid2').children().hide();	
		var elements3 = jQuery('div.containerDavid3').children().hide();
		var elements4 = jQuery('div.containerDavid4').children().hide();
		var elements5 = jQuery('div.containerDavid5').children().hide();	
		var elements6 = jQuery('div.containerDavid6').children().hide();
		var elements7 = jQuery('div.containerDavid7').children().hide();
		var elements8 = jQuery('div.containerDavid8').children().hide();	
		var elements9 = jQuery('div.containerDavid9').children().hide();
		var elements10 = jQuery('div.containerDavid10').children().hide();
        var value = jQuery(this).val();

		if (value == ""){
			
		}
        else if (value == "ACT" || value == "ATC" || value == "ARH1" || value == "AUT" || value == "FSH-TX" || value == "FSH-KW" || value == "FSH-FW") { 
            elements9.filter('.' + 1).show(); 
			document.getElementById("aacOnlineInterest92").removeAttribute("required");	
			document.getElementById("aacOnlineInterest91").setAttribute("required", "");
			document.getElementById("aacOnlineInterest91").options[1].disabled = false;	
        }
		else{
			elements9.filter('.' + 2).show(); 
			document.getElementById("aacOnlineInterest92").setAttribute("required", "");
			document.getElementById("aacOnlineInterest91").removeAttribute("required");	
			document.getElementById("aacOnlineInterest91").options[1].disabled = true;
		}
    }).trigger('change');
});
jQuery(document).ready(function() {
    jQuery('#Program10').bind('change', function() {
		
        var elements1 = jQuery('div.containerDavid1').children().hide();
		var elements2 = jQuery('div.containerDavid2').children().hide();	
		var elements3 = jQuery('div.containerDavid3').children().hide();
		var elements4 = jQuery('div.containerDavid4').children().hide();
		var elements5 = jQuery('div.containerDavid5').children().hide();	
		var elements6 = jQuery('div.containerDavid6').children().hide();
		var elements7 = jQuery('div.containerDavid7').children().hide();
		var elements8 = jQuery('div.containerDavid8').children().hide();	
		var elements9 = jQuery('div.containerDavid9').children().hide();
		var elements10 = jQuery('div.containerDavid10').children().hide();
        var value = jQuery(this).val();

		if (value == ""){
			
		}
        else if (value == "ACT" || value == "ATC" || value == "ARH1" || value == "AUT" || value == "FSH-TX" || value == "FSH-KW" || value == "FSH-FW") { 
            elements10.filter('.' + 1).show(); 
			document.getElementById("aacOnlineInterest102").removeAttribute("required");	
			document.getElementById("aacOnlineInterest101").setAttribute("required", "");	
			document.getElementById("aacOnlineInterest101").options[1].disabled = false;
        }
		else{
			elements10.filter('.' + 2).show(); 
			document.getElementById("aacOnlineInterest102").setAttribute("required", "");
			document.getElementById("aacOnlineInterest101").removeAttribute("required");
			document.getElementById("aacOnlineInterest101").options[1].disabled = true;
		}
    }).trigger('change');
});
function isNumber(evt) {
    evt = (evt) ? evt : window.event;
    var charCode = (evt.which) ? evt.which : evt.keyCode;
    if (charCode > 31 && (charCode < 48 || charCode > 57)) {
        return false;
    }
    return true;
}
function isPhone(evt) {
    evt = (evt) ? evt : window.event;
    var charCode = (evt.which) ? evt.which : evt.keyCode;
    if (charCode > 31 && (charCode < 48 || charCode > 57)&& charCode != 32 && charCode != 40 && charCode != 41 && charCode != 45) {
        return false;
    }
    return true;
}
function isNumberSpaceLetterDash(evt) {
    evt = (evt) ? evt : window.event;
    var charCode = (evt.which) ? evt.which : evt.keyCode;
    if (charCode > 31 && (charCode < 48 || charCode > 57)&& charCode != 32 && (charCode < 65 || charCode > 90) && (charCode < 97 || charCode > 122) && charCode != 45) {
        return false;
    }
    return true;
}
function onlyAlphabetsFirstName(e, t) {
			document.getElementById("firstName").innerHTML=document.getElementById("FirstName").value;	
            try {
                if (window.event) {
                    var charCode = window.event.keyCode;
                }
                else if (e) {
                    var charCode = e.which;
                }
                else { return true; }
                if ((charCode > 64 && charCode < 91) || (charCode > 96 && charCode < 123) || (charCode == 32)||(charCode == 45))
                    return true;
                else
                    return false;
            }
            catch (err) {
                alert(err.Description);
            }
			
        }
function onlyAlphabetsLastName(e, t) {
			document.getElementById("lastName").innerHTML=document.getElementById("LastName").value;
            try {
                if (window.event) {
                    var charCode = window.event.keyCode;
                }
                else if (e) {
                    var charCode = e.which;
                }
                else { return true; }
                if ((charCode > 64 && charCode < 91) || (charCode > 96 && charCode < 123) || (charCode == 32)||(charCode == 45))
                    return true;
                else
                    return false;
            }
            catch (err) {
                alert(err.Description);
            }
			
        }
function isNumber(evt) {
    evt = (evt) ? evt : window.event;
    var charCode = (evt.which) ? evt.which : evt.keyCode;
    if (charCode > 31 && (charCode < 48 || charCode > 57)) {
        return false;
    }
    return true;
}

function isNumberSpaceLetter(evt) {
    evt = (evt) ? evt : window.event;
    var charCode = (evt.which) ? evt.which : evt.keyCode;
    if (charCode > 31 && (charCode < 48 || charCode > 57)&& charCode != 32 && (charCode < 65 || charCode > 90) && (charCode < 97 || charCode > 122)) {
        return false;
    }
    return true;
}
function isNumberSpaceLetterDash(evt) {
    evt = (evt) ? evt : window.event;
    var charCode = (evt.which) ? evt.which : evt.keyCode;
    if (charCode > 31 && (charCode < 48 || charCode > 57)&& charCode != 32 && (charCode < 65 || charCode > 90) && (charCode < 97 || charCode > 122) && charCode != 45) {
        return false;
    }
    return true;
}
function noCommaplease(evt) {
    evt = (evt) ? evt : window.event;
    var charCode = (evt.which) ? evt.which : evt.keyCode;
    if (charCode == 44) {
        return false;
    }
    return true;
}

function myCheckFunction() {
  
  var addressRequired = document.getElementById("addressRequired");
  
  var addresscontainer = document.getElementById("addresscontainer");

  
  if (addressRequired.checked == true){   
	document.getElementById("email").setAttribute("required", "");		
	document.getElementById("daytimePhone").setAttribute("required", "");
	document.getElementById("field5").removeAttribute("required");
	document.getElementById("field6").removeAttribute("required");	
	document.getElementById("country").removeAttribute("required");	
	if(document.getElementById("country").value == "USA"){
	document.getElementById("USzipcode").removeAttribute("required", "");
	}
	else if(document.getElementById("country").value == "CAN"){
	document.getElementById("CAzipcode").removeAttribute("required", "");
	}
	else if(document.getElementById("country").value == "AUS"){
	document.getElementById("AUzipcode").removeAttribute("required", "");
	}
	else{
	document.getElementById("Ozipcode").removeAttribute("required", "");
	}
	document.getElementById("country").value = "";	
	addresscontainer.style.display = "none";
	
  } else {
    addresscontainer.style.display = "block";	
	document.getElementById("email").removeAttribute("required");	
	document.getElementById("daytimePhone").removeAttribute("required");
	document.getElementById("field5").setAttribute("required", "");
	document.getElementById("field6").setAttribute("required", "");
	document.getElementById("country").setAttribute("required", "");
  }
} 


</script>