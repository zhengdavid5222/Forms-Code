<script>
jQuery(document).ready(function() {

    jQuery(function() {
        var allRadios = jQuery('input[type=radio]')
        var radioChecked;

        var setCurrent =
            function(e) {
                var obj = e.target;

                radioChecked = jQuery(obj).attr('checked');
            }

        var setCheck =
            function(e) {

                if (e.type == 'keypress' && e.charCode != 32) {
                    return false;
                }

                var obj = e.target;

                if (radioChecked) {
                    jQuery(obj).attr('checked', false);
                } else {
                    jQuery(obj).attr('checked', true);
                }
            }

        jQuery.each(allRadios, function(i, val) {
            var label = jQuery('label[for=' + jQuery(this).attr("id") + ']');

            jQuery(this).bind('mousedown keydown', function(e) {
                setCurrent(e);
            });

            label.bind('mousedown keydown', function(e) {
                e.target = jQuery('#' + jQuery(this).attr("for"));
                setCurrent(e);
            });

            jQuery(this).bind('click', function(e) {
                setCheck(e);
            });

        });

    });
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
function onlyAlphabets(e, t) {
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
function isPhone(evt) {
    evt = (evt) ? evt : window.event;
    var charCode = (evt.which) ? evt.which : evt.keyCode;
    if (charCode > 31 && (charCode < 48 || charCode > 57)&& charCode != 32 && charCode != 40 && charCode != 41 && charCode != 45) {
        return false;
    }
    return true;
}
function myFunction(x) {
  if(document.getElementById("51").checked||document.getElementById("61").checked||document.getElementById("11").checked||document.getElementById("21").checked||document.getElementById("12").checked||document.getElementById("22").checked||document.getElementById("13").checked||document.getElementById("23").checked||document.getElementById("31").checked||document.getElementById("41").checked||document.getElementById("32").checked||document.getElementById("42").checked||document.getElementById("33").checked||document.getElementById("34").checked||document.getElementById("52").checked||document.getElementById("53").checked||document.getElementById("71").checked||document.getElementById("72").checked||document.getElementById("81").checked||document.getElementById("91").checked){
	document.getElementById("51").removeAttribute("required");
	document.getElementById("61").removeAttribute("required");
	document.getElementById("11").removeAttribute("required");
	document.getElementById("21").removeAttribute("required");
	document.getElementById("12").removeAttribute("required");
	document.getElementById("22").removeAttribute("required");
	document.getElementById("13").removeAttribute("required");
	document.getElementById("23").removeAttribute("required");
	document.getElementById("31").removeAttribute("required");
	document.getElementById("41").removeAttribute("required");
	document.getElementById("32").removeAttribute("required");
	document.getElementById("42").removeAttribute("required");
	document.getElementById("33").removeAttribute("required");
	document.getElementById("34").removeAttribute("required");
	document.getElementById("52").removeAttribute("required");
	document.getElementById("53").removeAttribute("required");
	document.getElementById("71").removeAttribute("required");
	document.getElementById("72").removeAttribute("required");
	document.getElementById("81").removeAttribute("required");
	document.getElementById("91").removeAttribute("required");
  }
  else{
	document.getElementById("51").setAttribute("required", "");
	document.getElementById("61").setAttribute("required", "");
	document.getElementById("11").setAttribute("required", "");
	document.getElementById("21").setAttribute("required", "");
	document.getElementById("12").setAttribute("required", "");
	document.getElementById("22").setAttribute("required", "");
	document.getElementById("13").setAttribute("required", "");
	document.getElementById("23").setAttribute("required", "");
	document.getElementById("31").setAttribute("required", "");
	document.getElementById("41").setAttribute("required", "");
	document.getElementById("32").setAttribute("required", "");
	document.getElementById("42").setAttribute("required", "");
	document.getElementById("33").setAttribute("required", "");
	document.getElementById("34").setAttribute("required", "");
	document.getElementById("52").setAttribute("required", "");
	document.getElementById("53").setAttribute("required", "");
	document.getElementById("71").setAttribute("required", "");
	document.getElementById("72").setAttribute("required", "");
	document.getElementById("81").setAttribute("required", "");
	document.getElementById("91").setAttribute("required", ""); 
  }
  if(x == 11){
	document.getElementById("12").disabled = true;
	document.getElementById("13").disabled = true;
  }
  if(x == 12){
	document.getElementById("11").disabled = true;
	document.getElementById("13").disabled = true;
  }
  if(x == 13){
	document.getElementById("11").disabled = true;
	document.getElementById("12").disabled = true;
  }  
  if(x == 21){
	document.getElementById("22").disabled = true;
	document.getElementById("23").disabled = true;  
  }
  if(x == 22){
	document.getElementById("21").disabled = true;
	document.getElementById("23").disabled = true;  
  }
  if(x == 23){
	document.getElementById("21").disabled = true;
	document.getElementById("22").disabled = true;
  }
  if(x == 31){
	document.getElementById("32").disabled = true;
	document.getElementById("33").disabled = true;
	document.getElementById("34").disabled = true; 
  }
  if(x == 32){
	document.getElementById("31").disabled = true;
	document.getElementById("33").disabled = true;
	document.getElementById("34").disabled = true; 
  }
  if(x == 33){
	document.getElementById("31").disabled = true;
	document.getElementById("32").disabled = true;
	document.getElementById("34").disabled = true; 
  }
  if(x == 34){
	document.getElementById("31").disabled = true;
	document.getElementById("32").disabled = true;
	document.getElementById("33").disabled = true;
  }
  if(x == 41){
	document.getElementById("42").disabled = true;
	document.getElementById("43").disabled = true; 
  }
  if(x == 42){
	document.getElementById("41").disabled = true;
	document.getElementById("43").disabled = true; 
  }
  if(x == 43){
	document.getElementById("41").disabled = true;
	document.getElementById("42").disabled = true; 
  }
  if(x == 51){
	document.getElementById("52").disabled = true;
	document.getElementById("53").disabled = true; 
  }
  if(x == 52){
	document.getElementById("51").disabled = true;
	document.getElementById("53").disabled = true; 
  }  
  if(x == 53){
	document.getElementById("51").disabled = true;
	document.getElementById("52").disabled = true;
  }
  if(x == 71){
	document.getElementById("72").disabled = true;
  }
  if(x == 72){
    document.getElementById("71").disabled = true;
  }
}
</script>