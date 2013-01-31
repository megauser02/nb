<?php echo $header; ?>
<style>
ul#fechas { margin:0;padding:0;}
ul#fechas li { display: inline; margin-left:10px;text-align:left;}
</style>
<div id="content">
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
    
  <div class="box">
    <div class="heading">
      <h1><img src="view/image/shipping.png" alt="" /> <?php echo $heading_title; ?></h1>
    </div>
    
    <div class="content">
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
          
        <table class="list">
          <tbody>
              
            <tr>
              <td>
                 <input name="free_limit_shipping" value="<?php echo $free_limit_shipping; ?>" />
                  <?php if (isset($error_free_limit_shipping)) { ?>
                  <span class="error"><?php echo $error_free_limit_shipping; ?></span>
                  <?php } ?>                 
              </td>
            </tr>
            
            <tr>
                <td>
                  <br />
                  <input type="submit" name="enviar" value="Salvar" class="button" />
                </td>
            </tr>
            
          </tbody>
        </table>
          
      </form>
      
    </div>
  </div>
</div>
<script>var $token = '<?php echo $token; ?>';</script>
<?php echo $footer; ?>