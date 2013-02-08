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
    <li><a href="<?php echo $category['href']; ?>" class="top-menu" onclick="return false;"><?php echo $category['name']; ?></a>
        
        <?php  if($category['type_menu_name'] == 'facial' ) { ?>
            <div <?php if($category['type_menu_image']) { echo 'style=" ' . $category['image_width'] . ' background: #fff url(' . $category['type_menu_image'] . ') center bottom no-repeat;"'; } ?> class="facial">
                <ul>
                    <li><a href="" class="title" onclick="return false;">Tratamientos coadyuvantes para diversos problemas de la piel</a></li>
                    <li><a href="<?php echo $this->url->link('product/category', 'path=20_59_60', 'SSL'); ?>">L&iacute;nea Sensi - Uva | Todo Tipo de Piel especialmente sensible</a></li>
                    <li><a href="">L&iacute;nea Skin White | Piel Hiperpigmentada</a></li>
                    <li><a href="">L&iacute;nea Purificante | Piel Grasa y Acn&eacute;ica</a></li>
                    <li class="space"><a href="" class="title">Tratamiento para piel grasa en zona "T"</a></li>
                    <li><a href="">L&iacute;nea Bot&aacute;nica | Piel Mixta</a></li>
                    <li class="space"><a href="" class="title">L&iacute;nea para Caballeros</a></li>
                    <li><a href="">L&iacute;nea Natural Man | Todo tipo de Piel</a></li>
                </ul>
                <ul>
                    <li><a href="" class="title" onclick="return false;">Lineas Anti-Envejecimiento</a></li>
                    <li><a href="">L&iacute;nea Hydrafrutal | Preventica Piel Seca</a></li>
                    <li><a href="">L&iacute;nea Platina | Piel Madura</a></li>
                    <li><a href="">Productos Platina Plus | Piel Madura y Desvitalizada</a></li>
                    <li><a href="">L&iacute;nea C&eacute;lulas Madre Frutales | Piel Seca Deshidratada</a></li>
                    <li class="space"><a href="" class="title" onclick="return false;">Productos Complementarios | Todo tipo de Piel</a></li>
                    <li><a href="">Para Ojos</a></li>
                    <li><a href="">Exfoliantes Faciales</a></li>
                    <li><a href="">Roc&iacute;os Refrescantes</a></li>
                    <li><a href="">Auxiliares | Regenerantes, oxigenantes y matificantes)</a></li>
                </ul>
            </div>
        <?php  } ?>
        <?php  if($category['type_menu_name'] == 'corporal' ) { ?>
            <div <?php if($category['type_menu_image']) { echo 'style=" ' . $category['image_width'] . ' background: #fff url(' . $category['type_menu_image'] . ') center bottom no-repeat;"'; } ?> class="corporal">
                <ul>
                    <li><a href="" class="title" onclick="return false;">L&iacute;neas Hol&iacute;sticas</a></li>
                    <li><a href="">L&iacute;nea T&eacute; Verde y Jengibre</a></li>
                    <li><a href="">L&iacute;nea Lavanda y Romero</a></li>
                    <li class="space"><a href="" class="title" onclick="return false;">L&iacute;neas Frutales</a></li>
                    <li><a href="">L&iacute;neas Espuma de Ángel</a></li>
                    <li><a href="">L&iacute;nea Champagne</a></li>
                    <li><a href="">L&iacute;nea Manzana Verde y Canela</a></li>
                    <li><a href="">L&iacute;nea Tropical</a></li>
                </ul>
                <ul>
                    <li><a href="" class="title" onclick="return false;">L&iacute;neas M&iacute;sticas Mexicanas</a></li>
                    <li><a href="">L&iacute;nea Copal</a></li>
                    <li><a href="">L&iacute;nea Teocalli (Azteca)</a></li>
                    <li><a href="">L&iacute;nea Yuc Hab (Maya)</a></li>
                    <li class="space"><a href="" class="title" onclick="return false;">Tratamientos Espec&iacute;ficos</a></li>
                    <li><a href="">L&iacute;nea Caf&eacute; - Anticelul&iacute;tica y Drenante</a></li>
                    <li><a href="">L&iacute;nea Chocolate - Antidepresiva</a></li>
                    <li><a href="">L&iacute;nea Orgánica Sábica y Nony - Antioxidante y Multivitam&iacute;nica </a></li>
                    <li><a href="">Arcillas - Remineralizantes</a></li>
                    <li><a href="">L&iacute;nea Orgaloe - Piel Asoleada</a></li>
                </ul>
            </div>
        <?php  } ?>
        <?php  if($category['type_menu_name'] == 'mantequilla' ) { ?>
            <div <?php if($category['type_menu_image']) { echo 'style=" ' . $category['image_width'] . ' background: #fff url(' . $category['type_menu_image'] . ') center bottom no-repeat;"'; } ?> class="mantequilla">
                <ul>
                    <li><a href="" class="title" onclick="return false;">Mantequilla</a></li>
                    <li><a href="<?php echo $this->url->link('product/product', 'product_id=50', 'SSL'); ?>">Mantequilla de S&aacute;bila para Masaje</a></li>
                    <li class="space"><a href="" class="title" onclick="return false;">Aceites Energizantes</a></li>
                    <li><a href="<?php echo $this->url->link('product/product', 'product_id=51', 'SSL'); ?>">Aceite Mandarina</a></li>
                    <li><a href="<?php echo $this->url->link('product/product', 'product_id=52', 'SSL'); ?>">Aceite Champagne</a></li>
                    <li><a href="<?php echo $this->url->link('product/product', 'product_id=53', 'SSL'); ?>">Aceite Caf&eacute;</a></li>
                    <li><a href="<?php echo $this->url->link('product/product', 'product_id=54', 'SSL'); ?>">Aceite Yuc - Hab</a></li>
                    <li><a href="<?php echo $this->url->link('product/product', 'product_id=55', 'SSL'); ?>">Aceite Tropical</a></li>
                </ul>
                <ul>
                    <li><a href="" class="title">Aceites Estimulantes</a></li>
                    <li><a href="<?php echo $this->url->link('product/product', 'product_id=57', 'SSL'); ?>">Aceite Manzana y Canela</a></li>
                    <li><a href="<?php echo $this->url->link('product/product', 'product_id=58', 'SSL'); ?>">Aceite Eucalipto y Menta</a></li>
                    <li><a href="<?php echo $this->url->link('product/product', 'product_id=59', 'SSL'); ?>">Aceite Romero y Albahaca</a></li>
                    <li><a href="<?php echo $this->url->link('product/product', 'product_id=61', 'SSL'); ?>">Aceite Hierbabuena</a></li>
                    <li><a href="<?php echo $this->url->link('product/product', 'product_id=62', 'SSL'); ?>">Aceites Relajantes</a></li>
                    <li class="space"><a href="" class="title">Aceites Relajantes</a></li>
                    <li><a href="<?php echo $this->url->link('product/product', 'product_id=63', 'SSL'); ?>">Aceite Lavanda y Romero</a></li>
                    <li><a href="<?php echo $this->url->link('product/product', 'product_id=64', 'SSL'); ?>">Aceite Flores</a></li>
                    <li><a href="<?php echo $this->url->link('product/product', 'product_id=65', 'SSL'); ?>">Aceite Rosas</a></li>
                </ul>
                <ul>
                    <li><a href="" class="title">Aceite Revitalizantes</a></li>
                    <li><a href="<?php echo $this->url->link('product/product', 'product_id=66', 'SSL'); ?>">Aceite T&eacute; Verde y Jengibre</a></li>
                    <li><a href="<?php echo $this->url->link('product/product', 'product_id=67', 'SSL'); ?>">Aceite de Chocolate</a></li>
                    <li><a href="<?php echo $this->url->link('product/product', 'product_id=68', 'SSL'); ?>">Aceite Espuma de &Aacute;ngel</a></li>
                    <li><a href="<?php echo $this->url->link('product/product', 'product_id=69', 'SSL'); ?>">Aceite Copal</a></li>
                    <li><a href="<?php echo $this->url->link('product/product', 'product_id=70', 'SSL'); ?>">Aceite Teocalli</a></li>
                </ul>
            </div>
        <?php  } ?>
        <?php  if($category['type_menu_name'] == 'manicure' ) { ?>
            <div <?php if($category['type_menu_image']) { echo 'style=" ' . $category['image_width'] . ' background: #fff url(' . $category['type_menu_image'] . ') center bottom no-repeat;"'; } ?> class="manicure">
                <ul>
                    <li class="title"><a href="" onclick="return false;">L&iacute;nea Manicure & Pedicure Spa</a></li>
                    <li><a href="<?php echo $this->url->link('product/product', 'product_id=71', 'SSL'); ?>">Bamb&uacute; y T&eacute; Blanco - Pies y Manos</a></li>
                    <li><a href="<?php echo $this->url->link('product/product', 'product_id=72', 'SSL'); ?>">Scrub Bamb&uacute; y T&eacute; Blanco</a></li>
                    <li><a href="<?php echo $this->url->link('product/product', 'product_id=73', 'SSL'); ?>">Removedor de C&uacute;ticula</a></li>
                    <li><a href="<?php echo $this->url->link('product/product', 'product_id=74', 'SSL'); ?>">Removedor de Callos</a></li>
                    <li><a href="<?php echo $this->url->link('product/product', 'product_id=75', 'SSL'); ?>">Mus Bamb&uacute; y T&eacute; Blanco</a></li>
                    <li><a href="<?php echo $this->url->link('product/product', 'product_id=76', 'SSL'); ?>">Silmani FPS 10</a></li>
                    <li><a href="<?php echo $this->url->link('product/product', 'product_id=77', 'SSL'); ?>">Foot Cream with Karinte Bamb&uacute; y T&eacute; Blanco</a></li>
                </ul>
            </div>
        <?php  } ?>
        <?php  if($category['type_menu_name'] == 'aromaterapia' ) { ?>
            <div <?php if($category['type_menu_image']) { echo 'style=" ' . $category['image_width'] . ' background: #fff url(' . $category['type_menu_image'] . ') center bottom no-repeat;"'; } ?> class="aromaterapia">
                <ul>
                    <li><a href="<?php echo $this->url->link('product/product', 'product_id=78', 'SSL'); ?>">Natural Relax / Roc&iacute;o Ambientador</a></li>
                    <li><a href="" class="title" onclick="return false;">Aceites Esenciales</a></li>
                    <li><a href="<?php echo $this->url->link('product/product', 'product_id=79', 'SSL'); ?>">Albahaca</a></li>
                    <li><a href="<?php echo $this->url->link('product/product', 'product_id=80', 'SSL'); ?>">Romero</a></li>
                    <li><a href="<?php echo $this->url->link('product/product', 'product_id=81', 'SSL'); ?>">Bergamota</a></li>
                    <li><a href="<?php echo $this->url->link('product/product', 'product_id=82', 'SSL'); ?>">S&aacute;ndalo</a></li>
                    <li><a href="<?php echo $this->url->link('product/product', 'product_id=83', 'SSL'); ?>">Canela</a></li>
                    <li><a href="<?php echo $this->url->link('product/product', 'product_id=84', 'SSL'); ?>">Toronja</a></li>
                    <li><a href="<?php echo $this->url->link('product/product', 'product_id=85', 'SSL'); ?>">Clavo</a></li>
                    <li><a href="<?php echo $this->url->link('product/product', 'product_id=86', 'SSL'); ?>">Ylang Ylang</a></li>
                    <li><a href="<?php echo $this->url->link('product/product', 'product_id=87', 'SSL'); ?>">Eucalipto</a></li>
                </ul>
                <ul>
                    <li><a href="<?php echo $this->url->link('product/product', 'product_id=88', 'SSL'); ?>">Lima</a></li>
                    <li><a href="<?php echo $this->url->link('product/product', 'product_id=89', 'SSL'); ?>">Hierbabuena</a></li>
                    <li><a href="<?php echo $this->url->link('product/product', 'product_id=90', 'SSL'); ?>">Mandarina</a></li>
                    <li><a href="<?php echo $this->url->link('product/product', 'product_id=91', 'SSL'); ?>">Lavanda</a></li>
                    <li><a href="<?php echo $this->url->link('product/product', 'product_id=92', 'SSL'); ?>">Menta</a></li>
                    <li><a href="<?php echo $this->url->link('product/product', 'product_id=93', 'SSL'); ?>">Lim&oacute;n</a></li>
                    <li><a href="<?php echo $this->url->link('product/product', 'product_id=94', 'SSL'); ?>">Tea Tree</a></li>
                    <li><a href="<?php echo $this->url->link('product/product', 'product_id=95', 'SSL'); ?>">Tomillo</a></li>
                </ul>    
            </div>
        <?php  } ?>
        <?php  if($category['type_menu_name'] == 'reductivos' ) { ?>
            <div <?php if($category['type_menu_image']) { echo 'style=" ' . $category['image_width'] . ' background: #fff url(' . $category['type_menu_image'] . ') center bottom no-repeat;"'; } ?> class="reductivos">
                <ul>
                    <li><a href="<?php echo $this->url->link('product/product', 'product_id=96', 'SSL'); ?>">Termocrean | Crema Corporal T&eacute;rmica</a></li>
                    <li><a href="<?php echo $this->url->link('product/product', 'product_id=97', 'SSL'); ?>">Scultanic | Gel Moldeante Corporal</a></li>
                    <li><a href="<?php echo $this->url->link('product/product', 'product_id=98', 'SSL'); ?>">Ampolletas Reductiva | Tratamiento Reductivo</a></li>
                    <li><a href="<?php echo $this->url->link('product/product', 'product_id=99', 'SSL'); ?>">Ampolletas Zone Three | Tratamuento Reafirmante y Anticelul&iacute;tico</a></li>
                    <li><a href="<?php echo $this->url->link('product/product', 'product_id=100', 'SSL'); ?>">Natural Ice | Hielos Reductivos</a></li>
                    <li><a href="<?php echo $this->url->link('product/product', 'product_id=101', 'SSL'); ?>">Mud Focus | Crema Corporal Reafirmante</a></li>
                    <li><a href="<?php echo $this->url->link('product/product', 'product_id=102', 'SSL'); ?>">Loci&oacute;n Venot&oacute;nica | Corporal Drenante</a></li>
                    <li><a href="<?php echo $this->url->link('product/product', 'product_id=103', 'SSL'); ?>">Loci&oacute;n Zone Three | Reductiva, Reafirmante Anticelil&iacute;tica</a></li>
                </ul>
                <ul>
                    <li><a href="<?php echo $this->url->link('product/product', 'product_id=104', 'SSL'); ?>">Orange Skin | Gel Corporal Anticelul&iacute;tico</a></li>
                    <li><a href="<?php echo $this->url->link('product/product', 'product_id=105', 'SSL'); ?>">Lipo-Cel | Crema Corporal Anticelul&iacute;tico</a></li>
                    <li><a href="<?php echo $this->url->link('product/product', 'product_id=106', 'SSL'); ?>">Lipo Cel 45+ | Crema Corporal Anticelul&iacute;tico</a></li>
                    <li><a href="<?php echo $this->url->link('product/product', 'product_id=107', 'SSL'); ?>">Antimark | Crema Corporal Anti-estr&iacute;as </a></li>
                </ul>
            </div>
        <?php  } ?>

    </li>
    <?php } ?>
  </ul>
</div>
<?php } ?>
<div id="notification"></div>
