<?php
final class Cuttext {
        public function cut($text, $length) {
         $desc = '';
         $cadena = $text;
         $limit = $length;
         for( $i = 0; $i <=strlen($cadena); $i++) {
              if(strlen($cadena)<=$limit) {
                 $desc = $cadena;
              } else {
                 if($i<=$limit) {
                    $desc .= $cadena[$i];
                 }
              }
         }
         if(strlen($cadena)>$limit) {
             $desc .= '&hellip;';
         }
          return $desc;
        }        
        
        public function formtDate($date)
        {
            $meses = array( '00' => 'Ene',
                            '01' => 'Enero',
                            '02' => 'Febrero',
                            '03' => 'Marzo',
                            '04' => 'Abril',
                            '05' => 'Mayo',
                            '06' => 'Junio',                
                            '07' => 'Julio',
                            '08' => 'Agosto',
                            '09' => 'Septiembre',
                            '10' => 'Octubre',
                            '11' => 'Noviembre',
                            '12' => 'Diciembre'
                          );
            $date = str_replace('-', '', $date);
            $anio = $date[0].$date[1].$date[2].$date[3];
            $mes = $date[4].$date[5];
            $dia = $date[6].$date[7];
            $new_date = ''.$dia.'&nbsp;'.$meses[$mes].'&nbsp;'.$anio;
            return $new_date;
        }        
        
}
?>