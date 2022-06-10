<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="Ko">

<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="<c:url value="/resources/css/swiper-bundle.min.css" />">
    <link rel="stylesheet" href="<c:url value="/resources/css/common.css" />">
    <script src=/resources/js/jquery-3.5.1.min.js"></script>
    <script src="/resources/js/swiper-bundle.min.js"></script>
    <title>슬라이더 Sample</title>
</head>
    <script>
        let userList = [
            {name : 'ahn', age : 30},
            {name : 'lee', age : 43},
            {name : 'hong', age : 17}
        ]
        let result = userList.find((user) => {
            if(user.age < 19){
                return true
            } else {
                return false
            }
        })

        console.log(result);

        let newUserList = userList.map((userMap, index)=>{
            return Object.assign({}, userMap,{
                id: index + 1,
                isAdult: userMap.age > 19,
            });
        });
        console.log(newUserList);
    </script>

<body>
<div id="wrap">
    <h2>주빈이꺼</h2>

    <div class="slider-area">
        <p class="title">사진들</p>
        <!--// swiper -->
        <div class="slider-list-wrap">
            <div class="slider-list swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <a href="#"><img src="/resources/images/a1.png"></a>
                    </div>
                    <div class="swiper-slide">
                        <a href="#"><img src="/resources/images/a2.png"></a>
                    </div>
                    <div class="swiper-slide">
                        <a href="#"><img src="/resources/images/a3.png"></a>
                    </div>
                    <div class="swiper-slide">
                        <a href="#"><img src="/resources/images/a4.png"></a>
                    </div>
                    <div class="swiper-slide">
                        <a href="#"><img src="/resources/images/a5.png"></a>
                    </div>
                    <div class="swiper-slide">
                        <a href="#"><img src="/resources/images/a6.png"></a>
                    </div>
                    <div class="swiper-slide">
                        <a href="#"><img src="/resources/images/a7.png"></a>
                    </div>
                    <div class="swiper-slide">
                        <a href="#"><img src="/resources/images/a8.png"></a>
                    </div>
                    <div class="swiper-slide">
                        <a href="#"><img src="/resources/images/a9.png"></a>
                    </div>
                </div>
            </div>
            <div class="swiper-navigation">
                <div class="swiper-button-next"></div>
                <div class="swiper-button-prev"></div>
            </div>
            <div class="swiper-controls">
                <div class="swiper-button pause"></div>
            </div>
        </div>
        <!--// swiper -->
    </div>
</div>
<script>
    var siteList = new Swiper('.slider-list', {
        slidesPerView: 6,
        autoplay: {
            delay: 2000
        },
        loop: true,
        speed: 700,
        spaceBetween: 20,
        centeredSlides: false,
        navigation: {
            nextEl: '.slider-list-wrap .swiper-button-prev',
            prevEl: '.slider-list-wrap .swiper-button-next',
        }
    });
    $(function(){
        $('.swiper-controls .swiper-button').click(function(){
            var className = $(this)[0].className;
            if(className.indexOf('pause') != -1){
                siteList.autoplay.stop();
                $(this).removeClass('pause');
                $(this).addClass('play');
            }else{
                siteList.autoplay.start();
                $(this).removeClass('play');
                $(this).addClass('pause');
            }
        });
    });



</script>
</body>

</html>