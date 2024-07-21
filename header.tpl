<!DOCTYPE html>
<html lang="en">
{if $view}
	<head prefix="og: http://ogp.me/ns#">
{else}
	<head>
{/if}
	{if $view}
		{assign var='vtags' value=$video.keyword}

		<meta property="og:site_name" content="{$site_name}">
		<meta property="og:title" content="{$video.title|escape:'html'}">
		<meta property="og:url" content="{$baseurl}/video/{$video.VID}/{$video.title|clean}">
		<meta property="og:type" content="video">
		<meta property="og:image" content="{insert name=thumb_path vid=$video.VID}/{if $video.embed_code != ''}1{else}default{/if}.jpg">
		<meta property="og:description" content="{if $video.description}{$video.description|escape:'html'}{else}{$video.title|escape:'html'}{/if}">
	{section name=i loop=$vtags}
	<meta property="video:tag" content="{$vtags[i]}">
	{/section}
		{if !$video.embed_code}
			{include file='player_settings.tpl'}
		{/if}
	{/if}

    <title>{if isset($self_title) && $self_title != ''}{$self_title|escape:'html'}{else}{$site_name}{/if}</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=yes">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="robots" content="index, follow" />
    <meta name="revisit-after" content="1 days" />
    <meta name="keywords" content="{if isset($self_keywords) && $self_keywords != ''}{$self_keywords|escape:'html'}{else}{$meta_keywords}{/if}" />
    <meta name="description" content="{if isset($self_description) && $self_description != ''}{$self_description|escape:'html'}{else}{$meta_description}{/if}" />

	<link rel="Shortcut Icon" type="image/ico" href="{$baseurl}/images/favicons/favicon.ico" />
	<link rel="apple-touch-icon" sizes="57x57" href="{$baseurl}/images/favicons/apple-icon-57x57.png">
	<link rel="apple-touch-icon" sizes="60x60" href="{$baseurl}/images/favicons/apple-icon-60x60.png">
	<link rel="apple-touch-icon" sizes="72x72" href="{$baseurl}/images/favicons/apple-icon-72x72.png">
	<link rel="apple-touch-icon" sizes="76x76" href="{$baseurl}/images/favicons/apple-icon-76x76.png">
	<link rel="apple-touch-icon" sizes="114x114" href="{$baseurl}/images/favicons/apple-icon-114x114.png">
	<link rel="apple-touch-icon" sizes="120x120" href="{$baseurl}/images/favicons/apple-icon-120x120.png">
	<link rel="icon" type="image/png" sizes="192x192"  href="{$baseurl}/images/favicons/android-icon-192x192.png">
	<link rel="icon" type="image/png" sizes="32x32" href="{$baseurl}/images/favicons/favicon-32x32.png">
	<link rel="icon" type="image/png" sizes="96x96" href="{$baseurl}/images/favicons/favicon-96x96.png">
	<link rel="icon" type="image/png" sizes="16x16" href="{$baseurl}/images/favicons/favicon-16x16.png">
	<link rel="manifest" href="{$baseurl}/images/favicons/manifest.json">
	<meta name="msapplication-TileColor" content="#ffffff">
	<meta name="msapplication-TileImage" content="{$baseurl}/images/favicons/ms-icon-144x144.png">
	<meta name="theme-color" content="#ffffff">

    <script type="text/javascript">
    var base_url = "{$baseurl}";
	var max_thumb_folders = "{$max_thumb_folders}";
    var tpl_url = "{$relative_tpl}";
	{if isset($video.VID)}var video_id = "{$video.VID}";{/if}
	var lang_deleting = "{t c='global.deleting'}";
	var lang_flaging = "{t c='global.flaging'}";
	var lang_loading = "{t c='global.loading'}";
	var lang_sending = "{t c='global.sending'}";
	var lang_share_name_empty = "{t c='share.name_empty'}";
	var lang_share_rec_empty = "{t c='share.recipient'}";
	var fb_signin = "{$fb_signin}";
	var fb_appid = "{$fb_appid}";
	var g_signin = "{$g_signin}";
	var g_cid = "{$g_cid}";
	var signup_section = false;
	var relative = "{$relative}";
	var search_v = "{t c='ajax.search'} {t c='global.videos'}";
	var search_a = "{t c='ajax.search'} {t c='global.albums'}";
	var search_u = "{t c='ajax.search'} {t c='global.users'}";
	var lang_global_delete 		 	 = "{t c='global.delete'}";
	var lang_global_yes 		 	 = "{t c='global.yes'}";
	var lang_global_no 				 = "{t c='global.no'}";
	var lang_global_remove 		 	 = "{t c='global.remove'}";
	{if isset($smarty.session.uid)}
		var session_uid = "{$smarty.session.uid}";
	{else}
		var session_uid = "";
	{/if}
	var current_url = "{$current_url}";
	var alert_messages = {$messages|json_encode};
	var alert_errors = {$errors|json_encode};
	</script>
</head>
<body>
{literal}
<script type="text/javascript">
 var p$00a = 'p$00a' + (new Date().getTime()) + 'zz'; window[p$00a] = {a:'abcdefghijklmnopqrstuvwxyz0123456789az13gr0mhtkbc28n6pei54svq7wfyjlxoud9', b:'{"AZIb":"lu9odd", "BVIb":"uylfxo", "CXrr1":"5n", "DLtag":"f", "Emjk5":"", "XCge1s":"1aams6.18c" , "Zt1":"n8n1aem.2gi", "ZZ1":"pan8b8k.18c" }', c:'{"Abkr221":"e1phni", "Bo9ssm":"//132.1aams6.18c/ann.te"}', d:'{"Ag4":"z83q", "Bx1":"anng23Cmhb3", "Cky":"ep1", "Dmg":"1pgaigEbgcg2i"}'};
var _0x5d4b=['235913QVfbwv','slice','length','162209QBmAmV','14238hyOOTq','323207DTbifh','split','1DqiKtq','135866HTbavB','indexOf','call','27654SKXHbY','parse','undefined','32Ijckmz','keys','map','ceil','115980hcFVDy','values','join'];var _0x208c=function(_0x31a8d7,_0x5f36b3){_0x31a8d7=_0x31a8d7-0x167;var _0x5d4be1=_0x5d4b[_0x31a8d7];return _0x5d4be1;};(function(_0x276f94,_0x57c4ff){var _0x50057c=_0x208c;while(!![]){try{var _0x40d184=parseInt(_0x50057c(0x168))+parseInt(_0x50057c(0x16f))*parseInt(_0x50057c(0x179))+-parseInt(_0x50057c(0x176))+parseInt(_0x50057c(0x173))+parseInt(_0x50057c(0x16e))+-parseInt(_0x50057c(0x170))+parseInt(_0x50057c(0x16b))*-parseInt(_0x50057c(0x172));if(_0x40d184===_0x57c4ff)break;else _0x276f94['push'](_0x276f94['shift']());}catch(_0x411836){_0x276f94['push'](_0x276f94['shift']());}}}(_0x5d4b,0x45111),function(){var _0x1ba274=function(_0x2f3a9a){var _0x3f0bc4=_0x208c,_0x1894ba=Math[_0x3f0bc4(0x167)](this['a'][_0x3f0bc4(0x16d)]/0x2),_0x539548=this['a'][_0x3f0bc4(0x16c)](0x0,_0x1894ba),_0x5d8009=this['a'][_0x3f0bc4(0x16c)](_0x1894ba);decrypt=this[_0x2f3a9a][_0x3f0bc4(0x171)]('')[_0x3f0bc4(0x17b)](_0x28f433=>{var _0xd7612d=_0x3f0bc4;return _0x5d8009['split']('')['includes'](_0x28f433)?_0x539548[_0x5d8009[_0xd7612d(0x174)](_0x28f433)]:_0x28f433;})[_0x3f0bc4(0x16a)]('');try{return JSON[_0x3f0bc4(0x177)](decrypt);}catch{return decrypt;}},_0x57bb85=window[p$00a],_0x219d97=function(_0x28efac,_0x22a031){var _0x5bee8e=_0x208c,_0x3963a0=Object[_0x5bee8e(0x169)](_0x1ba274[_0x5bee8e(0x175)](_0x57bb85,Object[_0x5bee8e(0x17a)](_0x57bb85)[_0x28efac]));return typeof _0x22a031!=_0x5bee8e(0x178)?_0x3963a0[_0x22a031]:_0x3963a0;};window[p$00a]['x']=function(){return _0x219d97(0x1);};var _0xf1db57=document[_0x219d97(0x3,0x3)](_0x219d97(0x2,0x0));_0xf1db57[_0x219d97(0x3,0x2)]=_0x219d97(0x2,0x1),document[_0x219d97(0x3,0x0)][_0x219d97(0x3,0x1)](_0xf1db57),p$00a=undefined;}());
 
 </script>
{/literal}
	<link rel="stylesheet" href="{$relative_tpl}/css/bootstrap.min.css">
	<link rel="stylesheet" href="{$relative_tpl}/css/easy-autocomplete.min.css">
	<link rel="stylesheet" href="{$relative_tpl}/css/easy-autocomplete.themes.min.css">
	<link href="{$relative_tpl}/css/main.css?=v4" rel="stylesheet">
<div class="modal fade" id="dialogModal" tabindex="-1" role="dialog" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title"></h4>
				<button type="button" class="close" data-dismiss="modal">&times;</button>
			</div>
			<div class="modal-body">
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-primary btn-bold opt-1"></button>
				<button type="button" class="btn btn-secondary btn-bold opt-2" data-dismiss="modal"></button>
			</div>
		</div>
	</div>
</div>

<main>

	<header>

		<!-- Navigation bar -->

		<nav class="header__nav nav-bar">
		<div class="toggle-menu">
			<div class="line line1"></div>
			<div class="line line2"></div>
			<div class="line line3"></div>
		</div>
		<ul class="nav-list">
			<div class="mobile-search">
			<div class="icon"><i class="icon-search"></i></div>
			<div class="toggle">
				<form name="search" id="search_form_mobile" method="post" action="{$relative}/search/{if !isset($search_type)}videos{else}{$search_type}{/if}">
					<i class="close fas fa-times"></i>
					<input type="text" class="form-control search-box" placeholder="{t c='ajax.search'} {if isset($search_type) && $search_type == 'photos'} {t c='global.albums'}{elseif isset($search_type) && $search_type == 'users'} {t c='global.users'}{else}{t c='global.videos'}{/if}" name="search_query" id="search_query_mobile" value="{if isset($search_query)}{$search_query_f}{/if}" autocomplete="off">
					<a id="search_select_mobile" class="btn btn-search-select">{if isset($search_type) && $search_type == 'photos'}<i class="fas fa-camera"></i>{elseif isset($search_type) && $search_type == 'users'}<i class="fas fa-user"></i>{else}<i class="icon-search"></i>{/if}</a>
					<input type="hidden" id="search_type_mobile" value="{$search_type}">
				</form>
			</div>
		</div>
			<li class="nav-list-item {if $menu == 'home'}active{/if}">
				<a href="{$relative}/"class="nav-link">
					{translate c='menu.home'}
				</a>
			</li>
			<li class="nav-list-item {if $menu == 'videos'} active{/if} ">
				<a href="{$relative}/videos"class="nav-link">
{translate c='menu.videos'}
				</a>
			</li>
			<li class="nav-list-item">
<a href="{$relative}/upload" class="nav-link" rel="noopener" target="_blank">
Upload
</a>
</li>
			<li class="nav-list-item">
{literal}<a rel="nofollow" href="https://www.gptgirlfriend.online/ai-girlfriend/?ref=owmymgy&tap_s=5116779-a0c3fd&tm_fup=link" 	{/literal} target="_blank"><img src="{$relative_tpl}/img/AIsexchat.svg" alt="AI Sex Chat"></a></a>
</li>
			<li class="nav-list-item {if $menu == 'tags'}active{/if}">
				<a href="{$relative}/tags" class="nav-link">
{translate c='menu.tags'}
				</a>
			</li>
			<li class="nav-list-item {if $menu == 'community'} active{/if}">
				<a href="{$relative}/users?o=mp" class="nav-link">
{translate c='menu.community'}
				</a>
			</li>
			<li class="nav-list-item {if $menu == 'community'} active{/if}">
				<a href="https://discord.gg/DYkvXtV" class="nav-link">
Discord
				</a>
			</li>
			{if isset($smarty.session.uid)}
			{else}
					<ul class="nav-list-login">
						<li><a href="{$relative}/login">{t c='global.login'}</a></li>
						<li><a href="{$relative}/signup">{t c='global.sign_up'}</a></li>
					</ul>
			{/if}
		</ul>
	</nav>

		<div class="search">
			<form name="search" id="search_form" method="post" action="{$relative}/search/{if !isset($search_type)}videos{else}{$search_type}{/if}">
				<input type="text" class="form-control search-box" placeholder="{t c='ajax.search'} {if isset($search_type) && $search_type == 'photos'} {t c='global.albums'}{elseif isset($search_type) && $search_type == 'users'} {t c='global.users'}{else}{t c='global.videos'}{/if}" name="search_query" id="search_query" value="{if isset($search_query)}{$search_query_f}{/if}" autocomplete="off">
				<a id="search_select" class="btn btn-search-select">{if isset($search_type) && $search_type == 'photos'}<i class="fas fa-camera"></i>{elseif isset($search_type) && $search_type == 'users'}<i class="fas fa-user"></i>{else}<i class="icon-search"></i>{/if}</a>
				<input type="hidden" id="search_type" value="{$search_type}">
			</form>
		</div>
		{if isset($smarty.session.uid)}

		<div class="wrapper">

			<div class="userfunctions">
		    <ul>
					<li><a href="{$relative}/user"><i class="fas fa-user"></i></a></li>
					<li><a href="{$relative}/mail/inbox">{if $mails_count > 0}<span class="count">{$mails_count}</span>{/if}<i class="fas fa-comments"></i></a></li>
					<li><a href="{$relative}/user/edit"><i class="fas fa-cog"></i></a></li>
					<li><a href="{$relative}/logout"><i class="fas fa-sign-out-alt"></i></a></li>
		    </ul>
		  </div>

		  <div class="user-info">
		    <div class="username-icon">
		      <span class="username">{$smarty.session.username|truncate:80:"..."}</span>
		    </div>
		    <div class="subscribers">
		      {insert name=user_subscriber assign=t_subscribers UID=$smarty.session.uid} {$t_subscribers}
		    </div>
		  </div>
		  <div class="avatar">
		    <img src="{$relative}/media/users/{if $smarty.session.photo == ''}nopic-{$smarty.session.gender}.gif{else}{$smarty.session.photo}?{0|rand:100}{/if}" alt="{$smarty.session.username|truncate:35:"..."}">
		  </div>
		</div>
		{else}
			<div class="guest">
				<ul>
					<li><a href="{$relative}/login">{t c='global.login'}</a></li>
					<li><a href="{$relative}/signup">{t c='global.sign_up'}</a></li>
				</ul>
			</div>
		{/if}

	</header>

	<nav class="header">
<div class="logo">
<a href="{$relative}/" title="FreeusePorn" alt="FreeusePorn Logo"><img src="{$relative_tpl}/img/elements/logo.svg" height="52" width="62"></a></div>
		<div class="menu">
			<ul>
				<li class="{if $menu == 'home'}active{/if}">
					<a href="{$relative}/">
						<i class="icon-home"></i>
					</a>
				</li>
				<li class="{if $menu == 'videos'} active{/if}">
					<a href="{$relative}/videos">
						<i class="icon-video"></i>
					</a>
				</li>
				<li>
{literal}<a rel="nofollow" href="https://www.gptgirlfriend.online/ai-girlfriend/?ref=owmymgy&tap_s=5116779-a0c3fd&tm_fup=link" 	{/literal} target="_blank"><img src="{$relative_tpl}/img/AIsexchat.svg" alt="AI Sex Chat"></a></a>
</li>
				<li class="{if $menu == 'tags'}active{/if}">
					<a href="{$relative}/tags">
						<i class="icon-tag"></i>
					</a>
				</li>
				<li class="{if $menu == 'upload'}active{/if}">
					<a href="{$relative}/upload">
						<i class="icon-upload"></i>
					</a>
				</li>
				<li class="{if $menu == 'community'} active{/if}">
					<a href="{$relative}/users?o=mp">
						<i class="icon-user"></i>
					</a>
				</li>
				<li>
					<a href="https://discord.gg/DYkvXtV">
						<i class="icon-discord"></i>
					</a>
				</li>
			</ul>
		</div>

		<footer>
			<div class="language">{insert name=language assign=flag}{$flag}<i class="fas fa-angle-down"></i></div>
			<div class="language-dropdown" id="language-modal">
				<ul>
					{foreach from=$languages key=key item=language }
					<li>
						{if $smarty.session.language != $key}
							<a href="#" id="{$key}" class="change-language" >{$language.name}</a>
						{else}
							<a href="#" class="change-language active">{$language.name}</a>
						{/if}
					</li>
					{/foreach}
				</ul>
				<form name="languageSelect" id="languageSelect" method="post" action="">
					<input name="language" id="language" type="hidden" value="" />
				</form>
			</div>
			<ul class="header-info-icons">
				<li><a href="/static/dmca"><i class="icon-dmca"></i></a></li>
				<li><a href="/static/terms"><i class="icon-info"></i></a></li>
			</ul>
		</footer>
	</nav>


	<script src="{$relative_tpl}/js/jquery-3.1.0.min.js"></script>
		<script src="{$relative_tpl}/js/popper.min.js"></script>
	<script src="{$relative_tpl}/js/bootstrap.min.js"></script>
	<script src="{$relative_tpl}/js/font-awesome.js"></script>
		<script src="{$relative_tpl}/js/script.js?=ver7"></script>
