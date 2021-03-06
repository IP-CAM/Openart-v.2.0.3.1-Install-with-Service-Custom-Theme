<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title><?php echo $title; ?></title>
  <base href="<?php echo $base; ?>" />
  <?php if ($description) { ?>
  <meta name="description" content="<?php echo $description; ?>" />
  <?php } ?>
  <?php if ($keywords) { ?>
  <meta name="keywords" content= "<?php echo $keywords; ?>" />
  <?php } ?>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <?php if ($icon) { ?>
  <link href="<?php echo $icon; ?>" rel="icon" />
  <?php } ?>
  <?php foreach ($links as $link) { ?>
  <link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
  <?php } ?>
  <script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
  <link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
  <script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
  <link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
  <link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />

  <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800&subset=latin,cyrillic' rel='stylesheet' type='text/css'>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

  <?php foreach ($styles as $style) { ?>
  <link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
  <?php } ?>
  <script src="catalog/view/javascript/common.js" type="text/javascript"></script>
  <?php foreach ($scripts as $script) { ?>
  <script src="<?php echo $script; ?>" type="text/javascript"></script>
  <?php } ?>
  <?php echo $google_analytics; ?>
  <link href="catalog/view/theme/default/stylesheet/stylesheet.css" rel="stylesheet">
  <link rel="stylesheet" href="catalog/view/theme/default/stylesheet/adaptiveness.css">
</head>

<body class="<?php echo $class; ?>">


<header class="header">
  <div class="upper-part">
    <div class="wide-body-layout">
      <div class=" outer flex-wrapper">
        <div class="upper-flex-item logo-wrapper hide-when-small">
          <img src="catalog/view/theme/default/image/logo.png" alt="" class="logo">
        </div>
        <p class="site-description hide-when-small flex-wrapper upper-flex-item">ИЗГОТОВЛЕНИЕ, ОБСЛУЖИВАНИЕ и РЕМОНТ ДИЗЕЛЬНЫх ЭЛЕКТРОСТАНЦИй И КОНВЕРСИОННОЙ ТЕХНИКИ.</p>
        <div class="languages-selection flex-wrapper upper-flex-item">
          <?php echo $language; ?>
        </div>
        <div class="regime site-description hide-when-small upper-flex-item">Режим работы: <br> с 9:00 до 17:00</div>
        <div class="phones upper-flex-item">
          <img src="catalog/view/theme/default/image/phone.png" alt="" class="phone-image">
          <div class="phone-number"><small>(044) </small>232-12-20</div>
          <div class="phone-number"><small>(098) </small>153-02-40</div>
        </div>
      </div>
    </div>
  </div>
  <div class="lower-part">
    <div class="wide-body-layout">
      <nav class="outer flex-wrapper">
        <ul class="flex-wrapper main-nav">
          <?php if ($logo) { ?>
          <li><a href="<?php echo $home; ?>"><?php echo $text_main; ?></a></li>
          <?php } else { ?>
          <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
          <?php } ?>

          <?php foreach ($categories as $category) { ?>
          <?php if ($category['children']) { ?>
          <li class="dropdown"><a href="<?php echo $category['href']; ?>" class="dropdown-toggle" data-toggle="dropdown"><?php echo $category['name']; ?></a>
            <div class="dropdown-menu">
              <div class="dropdown-inner">
                <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
                <ul class="list-unstyled">
                  <?php foreach ($children as $child) { ?>
                  <li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
                  <?php } ?>
                </ul>
                <?php } ?>
              </div>
              <a href="<?php echo $category['href']; ?>" class="see-all"><?php echo $text_all; ?> <?php echo $category['name']; ?></a> </div>
          </li>
          <?php } else { ?>
          <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
          <?php } ?>
          <?php } ?>

        </ul>
        <button class="red-button">заказать звонок</button>
    </div>
  </div>
  <div class="responsive-menu flex-wrapper">
    <div class="logo-wrapper flex-item"><img src="catalog/view/theme/service/image/logo.png" alt=""></div>
    <h1 class="page-name flex-item">Дизельные электростанции</h1>
    <div class="trigger-wrapper">
      <button class="menu-trigger flex-item" onclick="toggleResponsiveMenu()" type="button" data-toggle="collapse" data-target="#bs-navbar-collapse" aria-expanded="false">
        <span class="icon-bar first"></span>
        <span class="icon-bar second"></span>
        <span class="icon-bar third"></span>
      </button>
    </div>
  </div>
  <div class="responsive-menu-body">
    <ul class="flex-wrapper responsive-nav">

      <li><a href="">Главная</a></li>
      <li><a href="">Продукция</a></li>
      <li><a href="">Услуги</a></li>
      <li><a href="">Комплектующие</a></li>
      <li><a href="">Компания</a></li>
      <li><a href="">Контакты</a></li>
    </ul>
  </div>
  <section class="motivation-image">
    <img src="catalog/view/theme/service/image/main-image.jpg" alt="">
    <div class="wide-body-layout">
      <div class="we-bring-light">
        <h2 class="">ДАРИМ СВЕТ</h2>
        <small>КОГДА ЕГО НЕТ</small>
      </div>
    </div>
  </section>
</header>
