<script>
	var myVideo = document.getElementById('galerivideo');

	function playPause(){
		if(myVideo.paused)
			myVideo.play();
		else {
			myVideo.pause();
		}
	}

	function makeBig(){
		myVideo.width = 560;
	}

	function makeSmall(){
		myVideo.width = 320;
	}

	function makeNormal(){
		myVideo.width = 420;
	}
</script>