<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<head>
<meta charset="UTF-8" />
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<meta name="viewport" content="width=device-width">
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content="<?php echo $keywords; ?>" />
<?php } ?>
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<?php foreach ($styles as $style) { ?>
<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>
<!--[if IE 7]> 
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/ie7.css" />
<p class="chromeframe">Usted est&aacute; usando un navegador <strong>desactualizado</strong>. Por favor <a href="http://browsehappy.com/">actualice su navegador</a> o <a href="http://www.google.com/chromeframe/?redirect=true">active Google Chrome Frame</a> para mejorar su experiencia.</p>
<![endif]-->
<!--[if lt IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/ie6.css" />
<script type="text/javascript" src="catalog/view/javascript/DD_belatedPNG_0.0.8a-min.js"></script>
<script type="text/javascript">
DD_belatedPNG.fix('#logo img');
</script>
<![endif]-->
<?php echo $google_analytics; ?>
</head>
<body>
<div id="container">
<div id="header">
  <?php if ($logo) { ?>
  <div id="logo"><a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a></div>
  <?php } ?>
  <?php echo $cart; ?>
  <div id="search">
    <div class="button-search"></div>
    <input type="text" name="search" placeholder="<?php echo $text_search; ?>" value="<?php echo $search; ?>" />
  </div>
  <div id="welcome">
      
    <div class="left-content">
        <?php if (!$logged) { ?>
        <?php echo $text_welcome; ?>
        <?php } else { ?>
        <?php echo $text_logged; ?>
        <?php } ?>
    </div>  
    <div class="right-content">
        <span class="aux-shipping">Env&iacute;o gratis en pedido de m&aacute;s de <?php echo $free_shipping_limit; ?></span>
        <a href="http://www.naturalbenefits.us" class="aux-us-store" target="_blank">U.S. Online Store</a>
    </div>
    
  </div>
  <div class="links"><a href="<?php echo $about_us; ?>">Con&oacute;cenos</a><a href="<?php echo $profesional_cons; ?>" >Consulta con Profesionales</a><a href="<?php echo $special_offer; ?>">Ofertas Especiales</a></div>
</div>
<?php if ($categories) { ?>
<div id="menu">
  <ul>
    <?php foreach ($categories as $category) { ?>
    <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
        
        <?php  if($category['type_menu_name'] == 'facial' ) { ?>
            <div>
                <ul>
                    <li>1</li>
                    <li>2</li>
                </ul>
            </div>
        <?php  } ?>
        <?php  if($category['type_menu_name'] == 'corporal' ) { ?>
            <div>
                <ul>
                    <li>1</li>
                    <li>2</li>
                </ul>
            </div>
        <?php  } ?>
        <?php  if($category['type_menu_name'] == 'mantequilla' ) { ?>
            <div>
                <ul>
                    <li>1</li>
                    <li>2</li>
                </ul>
            </div>
        <?php  } ?>
        <?php  if($category['type_menu_name'] == 'manicure' ) { ?>
            <div>
                <ul>
                    <li>1</li>
                    <li>2</li>
                </ul>
            </div>
        <?php  } ?>
        <?php  if($category['type_menu_name'] == 'aromaterapia' ) { ?>
            <div>
                <ul>
                    <li>1</li>
                    <li>2</li>
                </ul>
            </div>
        <?php  } ?>
        <?php  if($category['type_menu_name'] == 'reductivos' ) { ?>
            <div>
                <ul>
                    <li>1</li>
                    <li>2</li>
                </ul>
            </div>
        <?php  } ?>

    </li>
    <?php } ?>
  </ul>
</div>
<?php } ?>
<div id="notification"></div>
