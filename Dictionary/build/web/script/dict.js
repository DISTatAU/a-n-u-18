/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).ready(function(){
 
    (function(){
        $("#loading").hide();
    })();
    
    $(document).on("click", "#btnSearch", function() {  
        loading();
        $.ajax({
            url: "dictServlet",
            data: { 
                "search": $("#txtWord").val()
            },
            type: "GET",
            success: function(response) {
                setTimeout(function(){ 
                    loadingComplete();
                    $("#defination").empty().append(response);
                }, 800);
            }
        });

    });

   function loading(){
       $("#btnSearch").hide();
       $("#loading").show();
   }

    function loadingComplete(){
       $("#loading").hide();
       $("#btnSearch").show();
   }

});