<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" type="text/css"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
    <!-- CSS only -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
        integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous">
    </script>
    <title>Web bán sách</title>
</head>

<body>
    <div class="container-fluid">
        <div class="row">
            <?php
      session_start();
    include("admincp/config/config.php");
    include("pages/header.php");
    include("pages/menu.php");
    include("pages/main.php");
    include("pages/footer.php");
      ?>
        </div>
    </div>

    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js">
    </script>
    <script type="text/javascript">
    // Show the first tab and hide the rest
    $('#tabs-nav li:first-child').addClass('active');
    $('.tab-content').hide();
    $('.tab-content:first').show();

    // Click function
    $('#tabs-nav li').click(function() {
        $('#tabs-nav li').removeClass('active');
        $(this).addClass('active');
        $('.tab-content').hide();

        var activeTab = $(this).find('a').attr('href');
        $(activeTab).fadeIn();
        return false;
    });
    </script>
</body><!-- nut cuon len dau trang -->
<div class='lentop'>
    <div>
        <img
            src='https://1.bp.blogspot.com/-k6sikOdzFXQ/VwqCKDosmEI/AAAAAAAAKxE/nLxLhkTIO6o3iE5ZWmtxo2bf4QHdzPQNQ/s1600/top.png' />
    </div>
</div>
<style>
.lentop {
    display: none;
    bottom: 40%;
    right: 10px;
    cursor: pointer;
    position: fixed;
    z-index: 1000;
}

.lentop div {
    background: crimson;
    border: 2px solid #fff;
    border-radius: 45px;
    padding: 11px 12.5px;
    box-shadow: 1px 3px 5px 0px rgba(0, 0, 0, 0.3)
}

.lentop img {
    width: 16px;
    height: 16px;
}

.bg-dark {
    position: fixed;
    z-index: 1030;
}
</style>
<script>
$(function() {
    $(window).scroll(function() {
        if ($(this).scrollTop() > 100) $(".lentop").fadeIn();
        else $(".lentop").fadeOut();
        ttt
    });
    $(".lentop").click(function() {
        $("body,html").animate({
            scrollTop: 0
        }, "slow");
    });
});
</script>

<!--<script type="text/javascript">
            $(document).ready(function() {

          var back = $(".prev");
          var next = $(".next");
          var steps = $(".step");

          next.bind("click", function() {
            $.each(steps, function(i) {
              if (!$(steps[i]).hasClass('current') && !$(steps[i]).hasClass('done')) {
                $(steps[i]).addClass('current');
                $(steps[i - 1]).removeClass('current').addClass('done');
                return false;
              }
            })
          });
          back.bind("click", function() {
            $.each(steps, function(i) {
              if ($(steps[i]).hasClass('done') && $(steps[i + 1]).hasClass('current')) {
                $(steps[i + 1]).removeClass('current');
                $(steps[i]).removeClass('done').addClass('current');
                return false;
              }
            })
          });

          })
  </script>-->

</html>