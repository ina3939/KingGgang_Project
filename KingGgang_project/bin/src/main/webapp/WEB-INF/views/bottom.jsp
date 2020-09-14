<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

    <!-- Start Footer -->
    <footer class="footer-box">
        <div class="container">
            <div class="row">
               <div class="col-md-12 white_fonts">
                    <div class="row">
                        <div class="col-sm-6 col-md-6 col-lg-3">
                            <div class="full">
                                <img class="img-responsive" src="${pageContext.request.contextPath}/resources/main/images/logo.png" alt="#" />
                            </div>
                        </div>
                        <div class="col-sm-6 col-md-6 col-lg-3">
                            <div class="full">
                                <h3>Quick Link</h3>
                            </div>
                            <div class="full">
                                <ul class="menu_footer">
                                    <li><a href="home.html">> Home</a></li>
                                    <li><a href="about.html">> About</a></li>
                                    <li><a href="exchange.html">> Exchange</a></li>
                                    <li><a href="services.html">> Services</a></li>
                                    <li><a href="new.html">> New</a></li>
                                    <li><a href="contact.html">> Contact</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-sm-6 col-md-6 col-lg-3">
                            <div class="full">
                                <div class="footer_blog full white_fonts">
                             <h3>낑.깡.따</h3>
                             <p>함께 여행 갈 인연을 찾아보아요!!</p>
                             <div class="newsletter_form">
                                <form action="index.html">
                                   <input type="email" placeholder="Your Email" name="#" required="">
                                   <button>Submit</button>
                                </form>
                             </div>
                         </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-md-6 col-lg-3">
                            <div class="full">
                                <div class="footer_blog full white_fonts">
                             <h3>Contact us</h3>
                             <ul class="full">
                               <li><img src=""><span>London 145<br>United Kingdom</span></li>
                               <li><img src=""><span>demo@gmail.com</span></li>
                               <li><img src=""><span>+12586954775</span></li>
                             </ul>
                         </div>
                            </div>
                        </div>
					</div>
                </div>
			 </div>
        </div>
    </footer>
    <!-- End Footer -->
   <!-- test -->
<a href="main.admin">관리자모드로 가기</a>
<br>
<a href="main.member">임시회원</a>
<br><a href="Q_list.board">문의게시판 가기</a>
<br><a href="list.notice">공지사항 보기</a>
<br><a href="main.my">마이페이지로 가기</a><p>
<br><a href="main.mem">멤버 페이지로 가기</a><p>
<br><a href="main.hotel">호텔 예약하기</a>
<br><a href="hotelList.hotel">호텔 목록보기(어드민)</a>
<br><a href="listRentcar.admin">렌트카 목록(어드민)</a>
<br><a href="listInsu.admin">렌트카_보험 목록(어드민)</a>
<br><a href="firstPage.rentcar">렌트카 메인(회원)</a>
<br><a href="main.wish">관심리스트등록 페이지로 가기</a><p>
<br><a href="main.pay">결제 페이지로 가기</a><p>
<br><a href="payList.admin">결제 목록으로 가기(어드민)</a><p>

<br><a href="commhome.comm">커뮤니티 페이지로 가기</a><p>
<!-- test -->
    <div class="footer_bottom">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <p class="crp">Team B Project</p>
                </div>
            </div>
        </div>
    </div>

    <a href="#" id="scroll-to-top" class="hvr-radial-out"><i class="fa fa-angle-up"></i></a>

    <!-- ALL JS FILES -->
    <script src="${pageContext.request.contextPath}/resources/main/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/main/js/popper.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/main/js/bootstrap.min.js"></script>
    <!-- ALL PLUGINS -->
    <script src="${pageContext.request.contextPath}/resources/main/js/jquery.magnific-popup.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/main/js/jquery.pogo-slider.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/main/js/slider-index.js"></script>
    <script src="${pageContext.request.contextPath}/resources/main/js/smoothscroll.js"></script>
    <script src="${pageContext.request.contextPath}/resources/main/js/form-validator.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/main/js/contact-form-script.js"></script>
    <script src="${pageContext.request.contextPath}/resources/main/js/isotope.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/main/js/images-loded.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/main/js/custom.js"></script>
	<script>
	/* counter js */

(function ($) {
	$.fn.countTo = function (options) {
		options = options || {};
		
		return $(this).each(function () {
			// set options for current element
			var settings = $.extend({}, $.fn.countTo.defaults, {
				from:            $(this).data('from'),
				to:              $(this).data('to'),
				speed:           $(this).data('speed'),
				refreshInterval: $(this).data('refresh-interval'),
				decimals:        $(this).data('decimals')
			}, options);
			
			// how many times to update the value, and how much to increment the value on each update
			var loops = Math.ceil(settings.speed / settings.refreshInterval),
				increment = (settings.to - settings.from) / loops;
			
			// references & variables that will change with each update
			var self = this,
				$self = $(this),
				loopCount = 0,
				value = settings.from,
				data = $self.data('countTo') || {};
			
			$self.data('countTo', data);
			
			// if an existing interval can be found, clear it first
			if (data.interval) {
				clearInterval(data.interval);
			}
			data.interval = setInterval(updateTimer, settings.refreshInterval);
			
			// initialize the element with the starting value
			render(value);
			
			function updateTimer() {
				value += increment;
				loopCount++;
				
				render(value);
				
				if (typeof(settings.onUpdate) == 'function') {
					settings.onUpdate.call(self, value);
				}
				
				if (loopCount >= loops) {
					// remove the interval
					$self.removeData('countTo');
					clearInterval(data.interval);
					value = settings.to;
					
					if (typeof(settings.onComplete) == 'function') {
						settings.onComplete.call(self, value);
					}
				}
			}
			
			function render(value) {
				var formattedValue = settings.formatter.call(self, value, settings);
				$self.html(formattedValue);
			}
		});
	};
	
	$.fn.countTo.defaults = {
		from: 0,               // the number the element should start at
		to: 0,                 // the number the element should end at
		speed: 1000,           // how long it should take to count between the target numbers
		refreshInterval: 100,  // how often the element should be updated
		decimals: 0,           // the number of decimal places to show
		formatter: formatter,  // handler for formatting the value before rendering
		onUpdate: null,        // callback method for every time the element is updated
		onComplete: null       // callback method for when the element finishes updating
	};
	
	function formatter(value, settings) {
		return value.toFixed(settings.decimals);
	}
}(jQuery));

jQuery(function ($) {
  // custom formatting example
  $('.count-number').data('countToOptions', {
	formatter: function (value, options) {
	  return value.toFixed(options.decimals).replace(/\B(?=(?:\d{3})+(?!\d))/g, ',');
	}
  });
  
  // start all the timers
  $('.timer').each(count);  
  
  function count(options) {
	var $this = $(this);
	options = $.extend({}, options || {}, $this.data('countToOptions') || {});
	$this.countTo(options);
  }
});
	</script>
</body>

</html>