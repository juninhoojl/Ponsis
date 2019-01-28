// Barra de progresso scroll - Inicio
$(window).scroll(function () {
  var s = $(window).scrollTop(),
        d = $(document).height(),
        c = $(window).height();
        scrollPercent = (s / (d-c)) * 100;
        var position = scrollPercent;

   $("#progressbar").attr('value', position);

});
// Barra de progresso scroll - Fim



// Botao para topo - inicio
(function(){
    // Back to Top - by CodyHouse.co
    var backTop = document.getElementsByClassName('js-cd-top')[0],
        // browser window scroll (in pixels) after which the "back to top" link is shown
        offset = 300,
        //browser window scroll (in pixels) after which the "back to top" link opacity is reduced
        offsetOpacity = 1200,
        scrollDuration = 700,
        scrolling = false;
    if( backTop ) {
        //update back to top visibility on scrolling
        window.addEventListener("scroll", function(event) {
            if( !scrolling ) {
                scrolling = true;
                (!window.requestAnimationFrame) ? setTimeout(checkBackToTop, 250) : window.requestAnimationFrame(checkBackToTop);
            }
        });
        //smooth scroll to top
        backTop.addEventListener('click', function(event) {
            event.preventDefault();
            (!window.requestAnimationFrame) ? window.scrollTo(0, 0) : scrollTop(scrollDuration);
        });
    }

    function checkBackToTop() {
        var windowTop = window.scrollY || document.documentElement.scrollTop;
        ( windowTop > offset ) ? addClass(backTop, 'cd-top--show') : removeClass(backTop, 'cd-top--show', 'cd-top--fade-out');
        ( windowTop > offsetOpacity ) && addClass(backTop, 'cd-top--fade-out');
        scrolling = false;
    }
    
    function scrollTop(duration) {
        var start = window.scrollY || document.documentElement.scrollTop,
            currentTime = null;
            
        var animateScroll = function(timestamp){
            if (!currentTime) currentTime = timestamp;        
            var progress = timestamp - currentTime;
            var val = Math.max(Math.easeInOutQuad(progress, start, -start, duration), 0);
            window.scrollTo(0, val);
            if(progress < duration) {
                window.requestAnimationFrame(animateScroll);
            }
        };

        window.requestAnimationFrame(animateScroll);
    }

    Math.easeInOutQuad = function (t, b, c, d) {
        t /= d/2;
        if (t < 1) return c/2*t*t + b;
        t--;
        return -c/2 * (t*(t-2) - 1) + b;
    };

    //class manipulations - needed if classList is not supported
    function hasClass(el, className) {
        if (el.classList) return el.classList.contains(className);
        else return !!el.className.match(new RegExp('(\\s|^)' + className + '(\\s|$)'));
    }
    function addClass(el, className) {
        var classList = className.split(' ');
        if (el.classList) el.classList.add(classList[0]);
        else if (!hasClass(el, classList[0])) el.className += " " + classList[0];
        if (classList.length > 1) addClass(el, classList.slice(1).join(' '));
    }
    function removeClass(el, className) {
        var classList = className.split(' ');
        if (el.classList) el.classList.remove(classList[0]);    
        else if(hasClass(el, classList[0])) {
            var reg = new RegExp('(\\s|^)' + classList[0] + '(\\s|$)');
            el.className=el.className.replace(reg, ' ');
        }
        if (classList.length > 1) removeClass(el, classList.slice(1).join(' '));
    }
})();


// Botao para topo - fim




// Tentativa de mudar estilo da pagina
// *** TO BE CUSTOMISED ***

var style_cookie_name = "style";
var style_cookie_duration = 30;
var style_domain = "http://localhost:50225";

// *** END OF CUSTOMISABLE SECTION ***
// You do not need to customise anything below this line

function switch_style(css_title) {
    // You may use this script on your site free of charge provided
    // you do not remove this notice or the URL below. Script from
    // https://www.thesitewizard.com/javascripts/change-style-sheets.shtml
    var i, link_tag;
    for (i = 0, link_tag = document.getElementsByTagName("link");
        i < link_tag.length; i++) {
        if ((link_tag[i].rel.indexOf("stylesheet") != -1) &&
            link_tag[i].title) {
            link_tag[i].disabled = true;
            if (link_tag[i].title == css_title) {
                link_tag[i].disabled = false;
            }
        }
        set_cookie(style_cookie_name, css_title,
            style_cookie_duration, style_domain);
    }
}
function set_style_from_cookie() {
    var css_title = get_cookie(style_cookie_name);
    if (css_title.length) {
        switch_style(css_title);
    }
}
function set_cookie(cookie_name, cookie_value,
    lifespan_in_days, valid_domain) {
    // https://www.thesitewizard.com/javascripts/cookies.shtml
    var domain_string = valid_domain ?
        ("; domain=" + valid_domain) : '';
    document.cookie = cookie_name +
        "=" + encodeURIComponent(cookie_value) +
        "; max-age=" + 60 * 60 *
        24 * lifespan_in_days +
        "; path=/" + domain_string;
}
function get_cookie(cookie_name) {
    // https://www.thesitewizard.com/javascripts/cookies.shtml
    var cookie_string = document.cookie;
    if (cookie_string.length != 0) {
        var cookie_array = cookie_string.split('; ');
        for (i = 0; i < cookie_array.length; i++) {
            cookie_value = cookie_array[i].match(cookie_name + '=(.*)');
            if (cookie_value != null) {
                return decodeURIComponent(cookie_value[1]);
            }
        }
    }
    return '';
}

