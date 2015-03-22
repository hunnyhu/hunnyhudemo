<%@ page contentType="text/html; charset=UTF-8"%>
<script type="text/javascript" language="javascript">
	$(document).ready(function() {
		adjustDocumentSize();
	});
	$(window).resize(function() {
		adjustDocumentSize();
	});
	function adjustDocumentSize() {
		var WIDTH = 780;
		var HEIGHT = 400;
		var page = $('.page');
		var fullpage = $('.fullcontent');
		var full = fullpage.length == 0 ? false : true;
		var content = full ? fullpage : $('.vertical-div');
		var height = $(window).height();
		var width = $(window).width();
		if (width > WIDTH) {
			page.width(width - 18);
			content.width(width - (full ? 26 : 235));
		} else {
			page.width(WIDTH);
			content.width(WIDTH - (full ? 26 : 215));
		}
		if (content.height() < height) {
			if (height > HEIGHT) {
				content.height(height - ($('.loginform').length > 0 ? 120 : 180));
			} else {
				content.height(HEIGHT - 200);
			}
		}
		debug(height + '|' + width);
	}
	function debug(s) {
		$('.nav').html(s);
	}
</script>