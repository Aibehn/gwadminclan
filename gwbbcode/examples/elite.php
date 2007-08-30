<?
//You need to have all skills locally stored for this to properly work
//die('Outdated');

$gwbbcode_root_path = '../';
define ('GWBBCODE_ROOT','../');
include_once('../gwbbcode.inc.php');

$db = load('../skill_db.php');


usort($db, 'sort_function');
function sort_function($a, $b) {
   if ($a['profession'] < $b['profession'])
      return -1;
   else if ($a['profession'] > $b['profession'])
      return 1;

   if ($a['attribute'] < $b['attribute'])
      return -1;
   else if ($a['attribute'] > $b['attribute'])
      return 1;

   if ($a['name'] < $b['name'])
      return -1;
   else if ($a['name'] > $b['name'])
      return 1;
      
   return 0;
}


foreach(Array('Warrior', 'Ranger', 'Monk', 'Necromancer', 'Mesmer', 'Elementalist', 'Assassin', 'Ritualist') as $profession) {
   echo "[build prof=$profession name=\"$profession\"]";
   $attr = 'Axe Mastery';
   $list = Array();
   foreach($db as $skill)
      if (($skill['profession'] == $profession) && ($skill['elite'] == 1)) {
         if (!isset($list[$skill['attribute']]))
            $list[$skill['attribute']] = '';
         $list[$skill['attribute']] .= '['.$skill['name'].']';
      }
   echo implode($list, ' - ');
   echo '[/build]<br/>';
}

?>