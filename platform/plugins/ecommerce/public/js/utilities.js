$((function(){if($.fn.datepicker){var a=$("#date_of_birth"),t={format:"yyyy-mm-dd",orientation:"bottom"},e=a.data("locale");e&&(t.language=e);var r=a.data("date-format");r&&(t.format=r),a.datepicker(t)}$("#avatar").on("change",(function(a){var t=a.currentTarget;if(t.files&&t.files[0]){var e=new FileReader;e.onload=function(a){$(".userpic-avatar").attr("src",a.target.result)},e.readAsDataURL(t.files[0])}}))}));