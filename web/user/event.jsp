<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Events</title>
        <link rel="icon" type="image/x-icon"
              href="../Homepage/assets/images/Những-thông-điệp-sâu-sắc-phía-sau-logo-FPT.png" />
        <link rel="stylesheet" href="./assets/css/reset.css">
        <link rel="stylesheet" href="./assets/css/grid.css">
        <link rel="stylesheet" href="./assets/css/base.css">
        <link rel="stylesheet" href="./assets/css/style.css">
        <link rel="stylesheet" href="./assets/css/responsive.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link
            href="https://fonts.googleapis.com/css2?family=Merriweather:wght@400;700&family=Poppins:wght@300;500;700&family=Roboto:wght@400;500;700&family=Satisfy&display=swap"
            rel="stylesheet">
    </head>

    <body>

        <div class="wrapper" id="scroll-top">
            <!-- Header Navbar-->
            <div class="header">
                <div class="navbar">
                    <div class="grid wide header-navbar--flex">
                        <input type="checkbox" name="" id="navbar__mobile" hidden>
                        <label for="navbar__mobile" class="navbar-mobile__menu">
                            <i class="fas fa-bars"></i>
                        </label>
                        <div class="navbar__logo">
                            <a href="" class="logo__link">
                                <img src="./assets/images/tải xuống.png" alt="Setsail" class="navbar__logo-img">
                            </a>
                        </div>
                        <ul class="navbar__list">
                            <label for="navbar__mobile" class="navbar-mobile__menu-close">
                                <i class="fas fa-times"></i>
                            </label>
                            <li class="navbar__item">
                                <a href="home.jsp" class="navbar__item-link">Trang chủ</a>
                                <input type="radio" name="nav-select" id="show-subnav__list--1">
                            </li>
                            <li class="navbar__item">
                                <a href="news.jsp" class="navbar__item-link">Tin tức</a>
                                <input type="radio" name="nav-select" id="show-subnav__list--2">
                                <ul class="subnav__list">
                                    <li class="subnav__item">
                                        <a href="its.jsp" class="subnav__link">Đời sống sinh viên</a>
                                    </li>
                                    <li class="subnav__item">
                                        <a href="se.jsp" class="subnav__link">FPT High-tech</a>
                                    </li>
                                    <li class="subnav__item">
                                        <a href="se.jsp" class="subnav__link">Hội nhập quốc tế</a>
                                    </li>

                                </ul>
                            </li>
                            <li class="navbar__item">
                                <a href="major.jsp" class="navbar__item-link">Lộ trình môn chuyên sâu</a>
                                <input type="radio" name="nav-select" id="show-subnav__list--3">
                                <ul class="subnav__list">
                                    <li class="subnav__item">
                                        <a href="its.jsp" class="subnav__link">ITS</a>
                                    </li>
                                    <li class="subnav__item">
                                        <a href="se.jsp" class="subnav__link">SE</a>
                                    </li>

                                </ul>
                            </li>
                            <li class="navbar__item">
                                <a href="event.jsp" class="navbar__item-link">Sự kiện</a>
                                <input type="radio" name="nav-select" id="show-subnav__list--4">
                            </li>
                            <li class="navbar__item">
                                <a href="recruitment.jsp" class="navbar__item-link">Tuyển dụng</a>
                                <input type="radio" name="nav-select" id="show-subnav__list--5">
                            </li>
                            <li class="navbar__item">
                                <a href="${pageContext.request.contextPath}/login.jsp" class="navbar__item-link">Đăng nhập</a>
                                <input type="radio" name="nav-select" id="show-subnav__list--5">
                            </li>
                        </ul>

                        <a href="" class="navbar-mobile__user">
                            <i class="far fa-user-circle"></i>
                        </a>
                    </div>
                </div>
            </div>

            <div class="slider">
                <div class="banner banner--1">
                    <img src="assets/images/background-img/full-slide1.jpg" alt="Friend" class="banner__img">
                </div>
                <div class="banner__content banner__content-event">
                    <h2>EVENTS</h2>
                </div>
            </div>

            <div class="type-travel">
                <div class="grid wide">
                    <div class="heading-section padding-top-86px">
                        <h3 class="sub-heading">Sự kiện</h3>
                    </div>
                </div> 
                <input type="radio" hidden name="dot" id="type-travel__input-one">
                <input type="radio" hidden name="dot" id="type-travel__input-two">
                <div class="grid type-travel--width">
                    <div class="row margin-10px">
                        <div class="col l-3 m-6 c-12">
                            <div class="type-travel-item">
                                <a href="contentEvent.jsp" class="type-travel__link">
                                    <img src="assets/images/tour-image/tour-img-1.jpg" alt="" class="type-travel__img">
                                </a>
                                <div class="type-travel__plan">
                                    <a class="type-travel__plan-link" href="contentEvent.jsp">
                                        <i class="type-travel__plan-icon fas fa-map-marker-alt"></i>
                                        <span>FPT HCM</span>
                                    </a>
                                </div>
                                <div class="type-travel__intro">
                                    <a class="type-travel__intro-link" href="contentEvent.jsp">Ngày hội công nghệ</a>
                                    <p class="type-travel__intro-text">Lorem ipsum dolor sit amet, consectetuer adipiscing
                                        elit. Aene an commodo ligula eget dolor. Aenean massa. Cum sociis the</p>
                                    <div class="type-travel__info">
                                        <span class="type-travel__info-price">$1230</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col l-3 m-6 c-12">
                            <div class="type-travel-item">
                                <a href="contentEvent.jsp" class="type-travel__link">
                                    <img src="assets/images/tour-image/tour-img-5.jpg" alt="" class="type-travel__img">
                                </a>
                                <div class="type-travel__plan">                 
                                    <a class="type-travel__plan-link" href="contentEvent.jsp">
                                        <i class="type-travel__plan-icon fas fa-map-marker-alt"></i>
                                        <span>FPT HCM</span>
                                    </a>
                                </div>
                                <div class="type-travel__intro">
                                    <a class="type-travel__intro-link" href="contentEvent.jsp">Event</a>
                                    <p class="type-travel__intro-text">Lorem ipsum dolor sit amet, consectetuer adipiscing
                                        elit. Aene an commodo ligula eget dolor. Aenean massa. Cum sociis the</p>
                                    <div class="type-travel__info">
                                        <span class="type-travel__info-price">$2340</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col l-3 m-6 c-12">
                            <div class="type-travel-item">
                                <a href="contentEvent.jsp" class="type-travel__link">
                                    <img src="assets/images/tour-image/tour-img-5.jpg" alt=""
                                         class="type-travel__img">
                                </a>
                                <div class="type-travel__plan">                                
                                    <a class="type-travel__plan-link" href="contentEvent.jsp">
                                        <i class="type-travel__plan-icon fas fa-map-marker-alt"></i>
                                        <span>FPT HCM</span>
                                    </a>
                                </div>
                                <div class="type-travel__intro">
                                    <a class="type-travel__intro-link" href="contentEvent.jsp">Event</a>
                                    <p class="type-travel__intro-text">Lorem ipsum dolor sit amet, consectetuer adipiscing
                                        elit. Aene an commodo ligula eget dolor. Aenean massa. Cum sociis the</p>
                                    <div class="type-travel__info">
                                        <span class="type-travel__info-price">$930</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col l-3 m-6 c-12">
                            <div class="type-travel-item">
                                <a href="contentEvent.jsp" class="type-travel__link">
                                    <img src="assets/images/tour-image/tour-img-5.jpg" alt=""
                                         class="type-travel__img">
                                </a>
                                <div class="type-travel__plan">
                                    <a class="type-travel__plan-link" href="">
                                        <i class="type-travel__plan-icon fas fa-map-marker-alt"></i>
                                        <span>FPT HCM</span>
                                    </a>
                                </div>
                                <div class="type-travel__intro">
                                    <a class="type-travel__intro-link" href="contentEvent.jsp">Event</a>
                                    <p class="type-travel__intro-text">Lorem ipsum dolor sit amet, consectetuer adipiscing
                                        elit. Aene an commodo ligula eget dolor. Aenean massa. Cum sociis the</p>
                                    <div class="type-travel__info">
                                        <span class="type-travel__info-price">$3000</span>
                                    </div>
                                </div>
                            </div>

                        </div>

                    </div>


                </div>

            </div>

        </div> 

        <div class="footer">

            <div class="grid wide">
                <div class="row footer__content">
                    <div class="m-6 c-12 margin-bottom-tablet margin-bottom-mobile footer_access">
                        <div  class="footer__logo-link">
                            <img src="assets/images/tải xuống.png" alt="" class="footer__logo-img">
                        </div>
                        <div class="footer__contact">
                            <div class="footer__contact-address">
                                <a href="mailto:setsail@qode.com" class="footer__contact-gmail">
                                    <i class="footer__contact-icon far fa-envelope"></i>
                                    <span>daihocfpt@fpt.edu.vn</span>
                                </a>
                                <a href="tel:1 562 867 5309" class="footer__contact-phone">
                                    <i class="footer__contact-icon fas fa-phone-alt"></i>
                                    <span>028 7300 1866</span>
                                </a>
                                <div class="footer__contact-address-street">
                                    <i class="footer__contact-icon fas fa-map-marker-alt"></i>
                                    <span>Lô E2a-7, Đường D1 Khu Công nghệ cao, P. Long Thạnh Mỹ, TP. Thủ Đức, TP. Hồ Chí
                                        Minh</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col l-3 m-6 c-12 margin-bottom-mobile">
                        <div class="footer__subscribe">
                            <h5 class="footer__heading">Tư vấn học tập</h5>
                            <div class="footer__form">
                                <div class="footer__form-item">
                                    <i class="footer__form-icon fas fa-user"></i>
                                    <input type="text" class="footer__form-input" placeholder="Tên" required>
                                </div>
                                <div class="footer__form-item">
                                    <i class="footer__form-icon far fa-envelope"></i>
                                    <input type="email" class="footer__form-input" placeholder="SĐT" required>
                                </div>
                                <div class="footer__form-item">
                                    <button type="submit" class="footer__form-submit">Đăng ký</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="footer__copyright">
                <div class="grid wide">
                    <p class="footer__copyright-text">
                        Powered by @
                        <a href="" class="footer__copyright-link">Team 4_SWP391</a>
                    </p>
                </div>
            </div>
        </div>
    </div>
    <div class="btn-scroll-top">
        <a href="#scroll-top" class="btn-scroll-top__link">Top</a>
    </div>
</div>
</div>
</body>

</html>