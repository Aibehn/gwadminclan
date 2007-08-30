<!-- BEGIN build -->
<div id="gws_template{load}" style="display: none;">
   <input id="gws_template_input{load}" style="font-family: courier;" type="text" value="{template_bbcode}" size="{template_size}" readonly/>
   <img src="{gwbbcode_root_path}/img_interface/cross.gif" style="vertical-align: top;" onclick="div('gws_template{load}').style.display = 'none';">
</div>
<div id="load{load}" style="display: none;">
	<table class="gwborder" cellpadding="0" cellspacing="0">
		<tr>
			<td class="gwborder_topleft"></td>
			<td class="gwborder_top"></td>
			<td class="gwborder_topright"></td>
		</tr>
		<tr>
			<td class="gwborder_left"></td>
			<td class="gwno_border">
				<table class="translucent" cellpadding="0" cellspacing="0">
					<tr>
						<td class="build_name"> <b>{primary}</b> / <b>{secondary}</b></td>
					</tr>
					<tr>
						<td class="build_desc">{attributes}{desc}{pickup}</td>
					</tr>
				</table>
			</td>
			<td class="gwborder_right"></td>
		</tr>
		<tr>
			<td class="gwborder_bottomleft"></td>
			<td class="gwborder_bottom"></td>
			<td class="gwborder_bottomright"></td>
		</tr>
	</table>
</div>
<table cellpadding="0" style="height: auto;">
	<tr>
		<td width="100px" style="text-align: center;{showimg}"{pickup_link}>{template_download}{prof_imgs}</td>
		<td rowspan="2">
			<table class="gwbuildbox" cellpadding="0" cellspacing="0">
				<tr>
					<td {buildbox_left}></td>
					<td {buildbox_center}>{skills}</td>
					<td {buildbox_right}></td>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td width="100px" style='text-align: center; vertical-align: top;{showimg}'><span class='build_lilname'>{build_name}</span></td>
	</tr>
</table>
<!-- END build -->

<!-- BEGIN prof_icon -->
<img class="build_icon" src="{gwbbcode_root_path}/img_interface/{profession}.gif?r=1" style="cursor: {cursor};" onmouseover="return overlib(div('load{load}').innerHTML);" onmouseout="return nd();"/>
<!-- END prof_icon -->

<!-- BEGIN icon -->
<img src="{gwbbcode_root_path}/img_skills/{id}.jpg?r=1" style="cursor: help; vertical-align: middle;" onmouseover="return overlib(div('load{load}').innerHTML);" onmouseout="return nd();" />
<!-- END icon -->

<!-- BEGIN blank_icon -->
<img src="{gwbbcode_root_path}/img_skills/{id}.jpg?r=1" style="vertical-align: middle;" />
<!-- END blank_icon -->

<!-- BEGIN noicon -->
<a href="javascript:void()" onmouseover="return overlib(div('load{load}').innerHTML);" onmouseout="return nd();" style="text-decoration: none">{name}</a>
<!-- END noicon -->

<!-- BEGIN noicon_gwshack -->
<span class="skill_link" onmouseover="return overlib(div('load{load}').innerHTML);" onmouseout="return nd();" style="text-decoration: none">{name}</span>
<!-- END noicon -->

<!-- BEGIN skill -->
<div id="load{load}" style="display: none;">
	<table class="gwborder" cellpadding="0" cellspacing="0">
		<tr>
			<td class="gwborder_topleft"></td>
			<td class="gwborder_top"></td>
			<td class="gwborder_topright"></td>
		</tr>
		<tr>
			<td class="gwborder_left"></td>
			<td class="gwno_border">
				<table{elite_background} class="translucent" cellpadding="0" cellspacing="0">
					<tr>
						<td class="table_image" width="50px">
							<img src="{gwbbcode_root_path}/img_skills/{id}.jpg?r=1"/><br/><img style="margin-top: 4px;" src="{prof_img}"/><br/><span class="skill_camp">{chapter}</span>
						</td>
						<td class="skill_text">
							<span class="skill_name">{name}</span>{required}
							<span class="skill_desc">{type}. {desc}</span> 
						</td>
					</tr>
				</table>
			</td>
			<td class="gwborder_right"></td>
		</tr>
		<tr>
		  <td class="gwborder_bottomleft"></td>
		  <td class="gwborder_bottom"></td>
		  <td class="gwborder_bottomright"></td>
		</tr>
	</table>
</div>
<!-- END skill -->

<!-- BEGIN attribute -->
<span class="attribute"><b>{attribute_value}</b> {attribute_name}</span><br/>
<!-- END attribute -->



<!-- BEGIN pickup -->
<span id="pickup_{id}">{userlist}</span>
<span onclick="pickup('add', '{id}')" class="postlink" id="add_{id}" style="text-decoration: underline; color: #DD6900; display: none; cursor: pointer;">Add me</span>
<span onclick="pickup('remove', '{id}')" class="postlink" id="remove_{id}" style="text-decoration: underline; color: #DD6900; display: none; cursor: pointer;">Remove me</span>
<script>div('{action}_{id}').style.display='';</script>
<!-- END pickup -->
