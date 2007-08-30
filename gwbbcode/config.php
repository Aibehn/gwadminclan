<?php
/***************************************************************************
 *                                config.php
 *                            -------------------
 *   begin                : Tuesday, Apr 21, 2005
 *   copyright            : (C) 2006-2007 Pierre 'pikiou' Scelles
 *   email                : liu.pi.vipi@gmail.com
 *
 ***************************************************************************/

/***************************************************************************
 *
 *   This program is free software; you can redistribute it and/or modify
 *   it under the terms of the GNU General Public License as published by
 *   the Free Software Foundation; either version 2 of the License, or
 *   (at your option) any later version.
 *
 *   All images, skill names and descriptions are (C) ArenaNet.
 ***************************************************************************/
//gwBBCode's version
$gwbbcode_version = '1.7.4';
//Change "false" to "true" in the following line if you want gwBBCode
//to store/access skills from your SQL database. Then run install.php again.
define('GWBBCODE_SQL', true);
define('GWBBCODE_VERSION', $gwbbcode_version . (GWBBCODE_SQL ? '-sql' : ''));

//Chose between Kurzick and Luxon in order to adapt allegiance skills
define('GWBBCODE_ALLEGIANCE', 'Kurzick');

//use gwBBCode?
define('USE_GWBBCODE', true);

//Paths
define('SKILLS_PATH_1', GWBBCODE_ROOT.'/skill_db_1.php');
define('SKILLS_PATH_2', GWBBCODE_ROOT.'/skill_db_2.php');
define('SKILLNAMES_PATH', GWBBCODE_ROOT.'/skillname_db.php');
define('SKILLABBRS_PATH', GWBBCODE_ROOT.'/abbr_db.php');
define('PICKUP_PATH', GWBBCODE_ROOT.'/pickup_db.php');
define('TEMPLATE_PATH', GWBBCODE_ROOT.'/gwbbcode.tpl');
define('BORDER_PATH', GWBBCODE_ROOT.'/img_border');
define('GWSHACK', file_exists('gwshack.php'));


//List templates not to hook gwbbcode into
$not_to_hook = Array();
?>
