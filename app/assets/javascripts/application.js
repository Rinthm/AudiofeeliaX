// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//

//= require raphael
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .


$(document).ready(function(){

	$(".audio-pad").each(function(){
		var paper = Raphael(this, 200, 100);
		var kitPad = paper.path("M10,10L10,90L90,90L90,10Z");

		kitPad.attr({fill:"#FF173C"});

		kitPad.node.onclick = function(){
			kitPad.animate({transform: "r" + 360}, 90);
			kitPad.attr({fill:"#0F0103"});
		}
	})


	$(".audio-pad").on('click', function(event){
		event.preventDefault();
		var audioUrl = $(this).find("audio").attr("src");
		var sound = new Audio(audioUrl);
		sound.play();
	})
	
})