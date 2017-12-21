$('#calendar').datepicker({
		});

!function ($) {
    $(document).on("click","ul.nav li.parent > a ", function(){          
        $(this).find('em').toggleClass("fa-minus");      
    }); 
    $(".sidebar span.icon").find('em:first').addClass("fa-plus");
}

(window.jQuery);
	$(window).on('resize', function () {
  if ($(window).width() > 768) $('#sidebar-collapse').collapse('show')
})
$(window).on('resize', function () {
  if ($(window).width() <= 767) $('#sidebar-collapse').collapse('hide')
})

$(document).on('click', '.panel-heading span.clickable', function(e){
    var $this = $(this);
	if(!$this.hasClass('panel-collapsed')) {
		$this.parents('.panel').find('.panel-body').slideUp();
		$this.addClass('panel-collapsed');
		$this.find('em').removeClass('fa-toggle-up').addClass('fa-toggle-down');
	} else {
		$this.parents('.panel').find('.panel-body').slideDown();
		$this.removeClass('panel-collapsed');
		$this.find('em').removeClass('fa-toggle-down').addClass('fa-toggle-up');
	}
})

//upload file
function readURL(input) {
	if (input.files && input.files[0]) {
		var reader = new FileReader();

		reader.onload = function(e) {
			$('#img-upload').attr('src', e.target.result);

		}

		reader.readAsDataURL(input.files[0]);
	}
}

$("#upload").change(function() {
	readURL(this);
	
});
////////////////////////////////////
$('input, textarea').on('change keyup paste',function(){
	$(this).siblings('.my_error').hide();
})
////////////////////////////////////
$(function(){
	var pathname = window.location.pathname;
	$('.nav li').removeClass('active')
	$('.nav li').each(function(index, value){
		if(pathname.indexOf( $(value).find('a').attr('href')) >= 0){
			$(value).addClass('active')
		}
			
	})
})










