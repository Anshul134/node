$(document).ready( function()  {
	$(".card-tours").on('mouseover', function()  {
		$(this).find('.overlay').show();
		//$(".overlay").show('slow');
		//$(".card-img").css({"height":"270px", "width":"100%"});
	});
	$(".card-tours").on('mouseleave', function()  {
		$(".overlay").hide();
	})
});
