<!DOCTYPE html>

<!-- Sample function to write data to Firebase -->
<#include "head.ftl">
<script type="text/javascript">
	// var database = firebase.database();

	function writeSampleDataSegment(number, sentence) {
		numS = number.toString();
		firebase.database().ref('sampleDataSegment/' + numS).set({
			sentence: sentence
		});
	}
</script>
