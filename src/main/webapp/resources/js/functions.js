
$(document).ready(function () {
		$('.js-fade-toggle').click(function() {
		$(this).children('.js-fade-content').fadeToggle(150);
	});
	$('.js-next-toggle').click(function() {
		$(this).fadeToggle(10);
		$(this).next('.js-next-content').fadeToggle(150);
	});

	$('.js-closer-toggle').click(function() {
		$(this).parent().parent().children().closest('.js-closer-content').fadeToggle(150);
	});

	$('.js-closer-content').mouseleave(function() {
		$(this).fadeToggle(150);
	});

	$('.js-show-details').click(function() {
		$('.js-content-details').fadeToggle(150);
	});

	$('#zoomIn').click(function() {
		$('#viewOrganigrama').toggleClass('w-200');
	});

// Input Material Effect

	$('.js-collapse-nav').click(function() {
		$('.icon-nav-collapse').toggleClass('mr-n3');
		$('.sidenav').toggleClass('col-2','col-1',100);
		$('.js-nav-desc').fadeToggle(100);
		$('.notice').fadeOut(100);
		$('.js-icon-nav').toggleClass('rotate-icon-nav',50);
	});

	$('.js-close-notice').click(function() {
		$('.notice').fadeOut();
	});

	$('.js-mat-input').focus(function() {
		$(this).prev('.js-mat-label').addClass('label-active');
		$(this).addClass('input-active');
	});

	$('.js-mat-input').focusout(function() {
		if($(this).val() === "")
		$(this).prev('.js-mat-label').removeClass('label-active');
		$(this).removeClass('input-active');
	});
    $('#usuario').click(function() {
		$('#busquedaU').removeClass('d-none');
	});
	$('#tareasC').click(function() {
		$('#tareasC').addClass('d-none');
		$('#addTarea').removeClass('d-none');
	});

       $('#dmenu').hover(function(){
	  $('#navbarDropdown').trigger('click')
          console.log('hover');
       });
       $('#dmenu2').hover(function(){
	  $('#dmenu2').trigger('click')
          console.log('hover');
       });
});
