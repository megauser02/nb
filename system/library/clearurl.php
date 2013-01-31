<?php
final class Clearurl {
    
        public function __construct($registry) {
                 $this->config = $registry->get('config');
                 $this->db = $registry->get('db');
        }   
        
        public function detectEncoding2( $str ){
            if(mb_detect_encoding($str) == 'ASCII' ){
                $clean = $str;
            }  else {
                setlocale(LC_CTYPE, 'nl_BE.utf8');
                $clean = iconv('UTF-8', 'ASCII//TRANSLIT', $str);
            }
            return $clean;
        }
        
        /*public function cleanSeo($str) {

            $delimiter='-';
            if( !empty($replace) ) {
                $str = str_replace((array)$replace, ' ', $str );
            }
            $clean = $this->detectEncoding2($str);
            $clean = preg_replace("/[^a-zA-Z0-9\/_|+ -]/", '', $clean);
            $clean = strtolower(trim($clean, '-'));
            $clean = preg_replace("/[\/_|+ -]+/", $delimiter, $clean);

            //Eliminar keyword iguales
            $q_key = $this->db->query("select * from url_alias where keyword = '".$clean."'");
            if ( $q_key->num_rows > 0  ) {
                 $clean = $clean.'-'.( $q_key->num_rows + 1 );
            }
            return $clean;

        }*/
        
        public function cleanSeo( $key = null, $key_id = null, $string = null )
        {  
            
            $clear_string = $this->basicClean( $string, '-' );  
            $query1 = $this->db->query( "select * from url_alias where query='".$key."=".$key_id."'" );
            if($query1->num_rows>0)
            {
                $query3 = $this->db->query( "select * from url_alias where query='".$key."=".$key_id."' and basic_keyword='" . $clear_string . "'" );
                if($query3->num_rows<=0)
                {
                    $this->db->query( "DELETE FROM `url_alias` where query='".$key."=".$key_id."'" );
                    $query4 = $this->db->query( "select max(count_keyword) as max from url_alias where basic_keyword='" . $clear_string . "'" );
                    if( ($query4->num_rows>0) && (!empty($query4->row['max'])) )
                    {
                        $max = ($query4->row['max'] + 1);
                        $this->db->query( "INSERT INTO " . DB_PREFIX . "url_alias SET query = '" . $key . "=" . (int)$key_id . "', keyword = '" . $clear_string . '-' . $max .  "', basic_keyword = '" . $clear_string . "', count_keyword ='" . $max . "'" );
                    }
                    else
                    {
                        $this->db->query( "INSERT INTO " . DB_PREFIX . "url_alias SET query = '" . $key . "=" . (int)$key_id . "', keyword = '" . $clear_string . "', basic_keyword = '" . $clear_string . "', count_keyword ='1'" );
                    }    
                }
                
            }
            else
            {
              $query2 = $this->db->query( "select max(count_keyword) as max from url_alias where basic_keyword='" . $clear_string . "'" );
              if( ($query2->num_rows>0)  && (!empty($query2->row['max'])))
              {
                  $max = ($query2->row['max'] + 1);
                  $this->db->query( "INSERT INTO " . DB_PREFIX . "url_alias SET query = '" . $key . "=" . (int)$key_id . "', keyword = '" . $clear_string . '-' . $max .  "', basic_keyword = '" . $clear_string . "', count_keyword ='" . $max . "'" );
              }
              else
              {
                $this->db->query( "INSERT INTO " . DB_PREFIX . "url_alias SET query = '" . $key . "=" . (int)$key_id . "', keyword = '" . $clear_string . "', basic_keyword = '" . $clear_string . "', count_keyword ='1'" );
              }    
            }    
            
        }        
        
        public function basicClean($str, $delimiter_plue=null) {
            $delimiter=$delimiter_plue;
            if( !empty($replace) ) {
                $str = str_replace((array)$replace, ' ', $str );
            }
            $clean = $this->detectEncoding2($str);
            $clean = preg_replace("/[^a-zA-Z0-9\/_|+ -]/", '', $clean);
            $clean = strtolower(trim($clean, $delimiter_plue));
            $clean = preg_replace("/[\/_|+ -]+/", $delimiter, $clean);
            return $clean;
        }
        
        public function stringConvert($string =null){
            $encoding_name = mb_detect_encoding($string,"UTF-8, ISO-8859-1, GBK");
            if ( $encoding_name == 'ISO-8859-1' )
            {
                return iconv('ISO-8859-1', 'UTF-8', $string);  
            }    
            else
            {
                return $string;
            }
        }
        
        public function getHexColor( $color =null )
        {
            $hex_color = false;
            if( $color )
            {
                $query = $this->db->query("select hex_color from common_colors where name_color like '%" . strtolower($color) . "%'");
                if($query->num_rows>0)
                {
                   $hex_color = $query->row['hex_color'];
                }
            }    
            return $hex_color;
        }        
        
}
?>