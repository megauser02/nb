<div class="box-content banner-rotator">
  <?php $i = 1; foreach ($banners as $banner) { ?>
  
    <?php $middle = ''; if( ($i==2) || ($i==5) ){ $middle = 'class="inter-separator"'; } ?>
    
    <?php if ($banner['link']) { ?>
    <div <?php echo $middle; ?>><a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" title="<?php echo $banner['title']; ?>" /></a></div>
    <?php } else { ?>
    <div <?php echo $middle; ?>><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" title="<?php echo $banner['title']; ?>" /></div>
    <?php } ?>
    <?php if($i==3){ echo '<div class="separator">&nbsp;</div>'; } ?>
    <?php $i++; ?>
    
  <?php } ?>
</div>
