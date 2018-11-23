<!DOCTYPE html>

<!-- Sample function to write data to Firebase -->
<#include "head.ftl">
<script type="text/javascript">
	// var database = firebase.database();

<<<<<<< HEAD
	function writeSampleDataSegment(number, sentence) {
		numS = number.toString();
		firebase.database().ref('sampleDataSegment/' + numS).set({
=======
	function writeSampleDataSegment(word, number, sentence) {
		firebase.database().ref('sampleDataSegment/' + word).set({
			number: number,
>>>>>>> dc7806ca9cdf2efde4e6fb42ba4b7cbdb0731b2b
			sentence: sentence
		});
	}
</script>
<<<<<<< HEAD
=======

>>>>>>> dc7806ca9cdf2efde4e6fb42ba4b7cbdb0731b2b
