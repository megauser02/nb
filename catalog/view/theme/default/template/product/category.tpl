<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<style>
    .color-title { color: #<?php echo $color; ?>; }
</style>
<div id="content"><?php echo $content_top; ?>
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
    
    <div class="characteristics-data">
        
        <?php if( $first_banner ) { ?>
        <img src="<?php echo $first_banner; ?>" alt="" class="first-banner" />
        <?php } ?>
        
        <div class="benefits color-title">
            <h2>Beneficios</h2>
            <?php echo $benefits; ?>
        </div>
        
        <?php if( $second_banner ) { ?>
        <img src="<?php echo $second_banner; ?>" alt="" class="second-banner" />
        <?php } ?>
        
        <ul class="bottom-charact color-title">
            <li>
                <b class="charact-title">Algunos ingredientes:&nbsp;</b>
                <?php echo $ingredients; ?>
            </li>
            <li>
                <b class="charact-title">Aroma:&nbsp;</b>
                <?php echo $odor; ?>
            </li>
            <li>
                <b class="charact-title">Sensaci&oacute;n:&nbsp;</b>
                <?php echo $sensation; ?>
            </li>
        </ul>
        
    </div>
   
  <div class="category-banners"><?php echo $content_bottom; ?></div>
    
  <div class="category-info">
      <div class="category-info-item last-category color-title"><?php echo $heading_title; ?></div>
      <?php if ($description) { ?>
        <div class="category-info-item middle-category color-title"><?php echo $description; ?></div>
      <?php } ?>
      <?php if( $parent_cat_name ) { ?>
        <div class="first-category color-title"><?php echo $parent_cat_name; ?></div>
      <?php } ?>
  </div>
  
  <?php if ($categories) { ?>
  <h2><?php echo $text_refine; ?></h2>
  <div class="category-list">
    <?php if (count($categories) <= 5) { ?>
    <ul>
      <?php foreach ($categories as $category) { ?>
      <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
      <?php } ?>
    </ul>
    <?php } else { ?>
    <?php for ($i = 0; $i < count($categories);) { ?>
    <ul>
      <?php $j = $i + ceil(count($categories) / 4); ?>
      <?php for (; $i < $j; $i++) { ?>
      <?php if (isset($categories[$i])) { ?>
      <li><a href="<?php echo $categories[$i]['href']; ?>"><?php echo $categories[$i]['name']; ?></a></li>
      <?php } ?>
      <?php } ?>
    </ul>
    <?php } ?>
    <?php } ?>
  </div>
  <?php } ?>
  <?php if ($products) { ?>
  <div class="product-list">
    <?php $e = 1; ?>  
    <?php foreach ($products as $product) { ?>
    
    <div <?php if( $e%4 == 0) { echo 'class="clear-item"'; } ?> >
      <?php if ($product['thumb']) { ?>
      <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
      <?php } ?>
      <div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
      <div class="description"><?php echo $product['subtitle']; ?></div>
      <div class="presentation"><?php echo $product['presentation']; ?></div>
      <?php if ($product['price']) { ?>
      <div class="price">
        <?php if (!$product['special']) { ?>
        <?php echo $product['price']; ?>
        <?php } else { ?>
        <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
        <?php } ?>
        <?php if ($product['tax']) { ?>
        <br />
        <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
        <?php } ?>
      </div>
      <?php } ?>
      <?php if ($product['rating']) { ?>
      <div class="rating"><img src="catalog/view/theme/default/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
      <?php } ?>
      <div class="cart">
        <input type="button" value="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button" />
        <a href="<?php echo $product['href']; ?>" class="detail-link">Detalles</a>
      </div>
    </div>
    <?php $e++; ?>
    <?php } ?>
    
  </div>
  <div class="pagination"><?php echo $pagination; ?></div>
  <?php } ?>
  <?php if (!$categories && !$products) { ?>
  <div class="content"><?php echo $text_empty; ?></div>
  <div class="buttons">
    <div class="right"><a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a></div>
  </div>
  <?php } ?>
  </div>
<?php echo $footer; ?>