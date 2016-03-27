//= require raphael
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

// Play sounds on keypress
function playSound(index){
		var soundLoc = $(".audio-pad").eq(index);
		var url = soundLoc.find("audio").attr("src");
		var sound = new Audio(url);
		sound.play();
	}

$(document).ready(function(){

	// Raphaël animation
	$(".audio-pad").each(function(){
		var paper = Raphael(this, 200, 100);
		var kitPad = paper.path("M10,10L10,90L90,90L90,10Z");

		kitPad.attr({fill:"#FF173C"});

		kitPad.node.onclick = function(){
			kitPad.animate({transform: "r" + 360}, 90);
			kitPad.attr({fill:"#0F0103"});
		}
	})

	// Play sound on click
	$(".audio-pad").on('click', function(event){
		event.preventDefault();
		var audioUrl = $(this).find("audio").attr("src");
		var sound = new Audio(audioUrl);
		sound.play();
	})

	// Play sound by pressing numbers
	$("body").on('keypress', function(event){
		// event.preventDefault();
		switch(event.which) {
		case 49:
			playSound(0);
			break;
		case 50:
			playSound(1);
			break;
		case 51:
			playSound(2);
			break;
		case 52:
			playSound(3);
			break;
		case 53:
			playSound(4);
			break;
		case 54:
			playSound(5);
			break;
		case 55:
			playSound(6);
			break;
		case 56:
			playSound(7);
			break;
		case 57:
			playSound(8);
			break;
		case 48:
			playSound(9);
			break;
		}
	})
	
})