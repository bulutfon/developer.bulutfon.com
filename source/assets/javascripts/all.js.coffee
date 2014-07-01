#= require vendor/retina-1.1.0.min

# Smooth scroll
$("a[href*=#]:not([href=#])").click ->
  if location.pathname.replace(/^\//, "") is @pathname.replace(/^\//, "") and location.hostname is @hostname
    target = $(@hash)
    target = (if target.length then target else $("[name=" + @hash.slice(1) + "]"))
    if target.length
      $("html,body").animate
        scrollTop: target.offset().top - 20
      ,
        duration: 800
        specialEasing:
          width: "linear"
          height: "easeOutCubic"
      false
