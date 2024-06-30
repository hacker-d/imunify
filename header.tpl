<!DOCTYPE html>
<html lang="RS">

<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width">
        <meta name="juicyads-site-verification" content="34001323acc88155099e9f997bdac00e">
	<title>{if isset($self_title) && $self_title != ''}{$self_title|escape:'html'}{else}{$site_name}{/if}</title>
	<meta name="description"
		content="{if isset($self_description) && $self_description != ''}{$self_description|escape:'html'|noquote|truncate:160|real2br}{else}{$meta_description|escape:'html'|noquote|truncate:160|real2br}{/if}" />

	<link rel="Shortcut Icon" type="image/ico" href="/favicon.ico" />
	<link rel="apple-touch-icon" href="/apple-bjizz.png">

	{if !empty($noindex)}
		<meta name="robots" content="noindex, follow" />
	{else}
		<meta name="robots" content="index, follow" />
		<meta name="revisit-after" content="1 days" />
	{/if}

	<meta property="og:url" content="{$smarty.server.HTTP_HOST}{$smarty.server.REQUEST_URI}" />
	<meta property="og:type" content="{if $view}video.movie{else}website{/if}" />
	<meta property="og:title"
		content="{if isset($self_title) && $self_title != ''}{$self_title|escape:'html'}{else}{$site_name}{/if}" />
	<meta property="og:description"
		content="{if isset($self_description) && $self_description != ''}{$self_description|escape:'html'|noquote|truncate:160|real2br}{else}{$meta_description|escape:'html'|noquote|truncate:160|real2br}{/if}" />
	{if $view}
		<meta property="og:image"
			content="{insert name=thumb_path vid=$video.VID}/{if $video.embed_code != ''}1{else}default{/if}.jpg" />
		<meta property="video:duration" content="{$video.duration|round}" />
	{/if}

	<meta name="twitter:url" content="{$smarty.server.HTTP_HOST}{$smarty.server.REQUEST_URI}" />
	<meta name="twitter:domain" content="balkanjizz.com" />
	<meta name="twitter:site" content="@balkanjizz" />
	<meta name="twitter:card" content="summary" />
	<meta name="twitter:creator" content="@balkanjizz" />
	<meta name="twitter:title"
		content="{if isset($self_title) && $self_title != ''}{$self_title|escape:'html'}{else}{$site_name}{/if}">
	{if $view}
		<meta name="twitter:image"
			content="{insert name=thumb_path vid=$video.VID}/{if $video.embed_code != ''}1{else}default{/if}.jpg" />
	{/if}

	{if $canonical}
	<link rel="canonical" href="{$canonical}" /> {/if}
	{if $relnext}
	<link href="{$relnext}" rel="next"> {/if}
	{if $relprev}
	<link href="{$relprev}" rel="prev"> {/if}

	<script type="text/javascript">
var base_url = "{$baseurl}";
var max_thumb_folders = "{$max_thumb_folders}";
var tpl_url = "{$relative_tpl}";
{if isset($video.VID)}var video_id = '{$video.VID}';{/if}
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
		</script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

	<link href="{$relative_tpl}/css/bootstrap.css" rel="stylesheet">
	<link href="{$relative_tpl}/css/style.css" rel="stylesheet">
	<link href="{$relative_tpl}/css/responsive.css" rel="stylesheet">
	<link href="{$relative_tpl}/css/font-awesome.min.css" rel="stylesheet">
	<link href="{$relative_tpl}/css/colors.css" rel="stylesheet">
	<link href="{$relative_tpl}/css/share.css" rel="stylesheet">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css"
		integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
	<link href="{$relative_tpl}/css/colors.css" rel="stylesheet">

	<!-- Video Player -->
	{if $view && !$video.embed_code}
		<script src="https://cdn.fluidplayer.com/v3/current/fluidplayer.min.js"></script>
	{/if}
	<!-- End Video Player -->

</head>

<body {if $device_type=='mobile'}style="overflow-x:hidden;" {/if}>
<!-- JuicyAds PopUnders v3 Start -->
<script type="text/javascript" src="https://js.juicyads.com/jp.php?c=4454u233r254u4q2x2f4635454&u=http%3A%2F%2Fwww.juicyads.rocks"></script>
<!-- JuicyAds PopUnders v3 End -->
	<div class="modal fade in" id="login-modal">
		<div class="modal-dialog login-modal">
			<div class="modal-content">
				<form name="login_form" method="post" action="{$relative}/login">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
						<h4 class="modal-title">{t c='signup.login'}</h4>
					</div>
					<div class="modal-body">
						<center>
							<div class="m-b-5"></div>
							{if $fb_signin == '1'}
								<div>
									<button id="facebook-signin" class="btn btn-facebook" disabled>
										<div></div><i class="fa fa-facebook"></i> <span>{t c='socialsignup.login_with'}
											Facebook</span>
									</button>
								</div>
								<div class="hr">
									<div class="inner inner-login">{t c='socialsignup.or'}</div>
								</div>
							{/if}
							{if $g_signin == '1'}
								<div>
									<button id="google-signin" class="btn btn-google" disabled>
										<div></div><i class="fa fa-google-plus"></i> <span>{t c='socialsignup.login_with'}
											Google</span>
									</button>
								</div>
								<div class="hr">
									<div class="inner inner-login">{t c='socialsignup.or'}</div>
								</div>
							{/if}
						</center>
						<div class="form-group">
							<label for="login_username" class="control-label">{t c='global.username'}:</label>
							<input name="username" type="text" value="" id="login_username" class="form-control" />
						</div>
						<div class="form-group">
							<label for="login_password" class="control-label">{t c='global.password'}:</label>
							<input name="password" type="password" value="" id="login_password" class="form-control" />
						</div>
						<a href="{$relative}/lost" id="lost_password">{t c='global.forgot'}</a><br />
						<a href="{$relative}/confirm" id="confirmation_email">{t c='global.confirm'}</a>
					</div>
					<div class="modal-footer">
						<button name="submit_login" id="login_submit" type="submit"
							class="btn btn-primary ign-pop">{t c='global.login'}</button>
						<a href="{$relative}/registracija"
							class="btn btn-secondary ign-pop">{translate c='global.sign_up'}</a>
					</div>
				</form>
			</div>
		</div>
	</div>
	{if $fb_signin == '1'}
		{include file='fb_signup_modal.tpl'}
	{/if}
	{if $g_signin == '1'}
		{include file='g_signup_modal.tpl'}
	{/if}
	<div class="modal fade in" id="language-modal">
		<div class="modal-dialog language-modal">
			<div class="modal-content">

				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title">{t c='global.select_language'}</h4>
				</div>
				<div class="modal-body">
					<div class="row">
						{foreach from=$languages key=key item=language }
							<div class="col-xs-6 col-sm-4">
								{if $smarty.session.language != $key}
									<a href="#" id="{$key}" class="change-language">{$language.name}</a>
								{else}
									<span class="change-language language-active">{$language.name}</span>
								{/if}
							</div>
						{/foreach}
					</div>
					<form name="languageSelect" id="languageSelect" method="post" action="">
						<input name="language" id="language" type="hidden" value="" />
					</form>
				</div>

			</div>
		</div>
	</div>
	<div class="modal fade in" id="network-modal">
		<div class="modal-dialog network-modal">
			<div class="modal-content">

				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title">{t c='global.network_select'}</h4>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="">
							<a href="https://www.balkanjizz.com" class="bjizz-network ign-pop"><img
									src="https://www.balkanjizz.com/images/logo/logo-large.png"
									title="Balkan Jizz - Najbolji pornići na Balkanu"
									alt="Balkan Jizz - Najbolji pornići na Balkanu" class="img-responsive" /></a>
							<a href="https://www.pornicisrbija.com" class="bjizz-network ign-pop"><img
									src="https://www.pornicisrbija.com/images/logo/logo.png"
									title="Pornići Srbija - Besplatni pornići i sex klipovi"
									alt="Pornići Srbija - Besplatni pornići i sex klipovi" class="img-responsive" /></a>
							<a href="https://www.matorke.net" class="bjizz-network ign-pop"><img
									src="https://www.matorke.net/images/logo/logo.png"
									title="Porno matorke - Najbolji pornići sa matorkama"
									alt="Porno matorke - Najbolji pornići sa matorkama" class="img-responsive" /></a>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>
	<div class="top-nav">
		<div class="container">
			<ul class="top-menu">
				{if $multi_language}
					<div class="pull-left">
						<li><a data-toggle="modal" href="#language-modal">{insert name=language assign=flag} <span
									class="caret"></span></a></li>
					</div>
				{/if}
				<div class="pull-left">
					<li class="visible-xs"><a data-toggle="modal" href="#network-modal">{t c='global.network_select'}
							<span class="caret"></span></a></li>
					<li class="hidden-xs"><a target="_blank" href="https://www.balkanjizz.com"
							class="ign-pop">BALKANJIZZ <span class="caret-right"></span></a></li>
					<li class="hidden-xs"><a target="_blank" href="https://www.pornicisrbija.com"
							class="ign-pop">PORNICI SRBIJA <span class="caret-right"></span></a></li>
					<li class="hidden-xs"><a target="_blank" href="https://www.matorke.net" class="ign-pop">PORNO
							MATORKE <span class="caret-right"></span></a></li>
				</div>
				<div class="pull-right">
					{if isset($smarty.session.uid)}
						<li class="dropdown">
							<a class="dropdown-toggle" data-toggle="dropdown" href="#">
								<span class="visible-xs">
									{if $requests_count > 0 || $mails_count > 0}<div class="badge">
										{$requests_count+$mails_count}</div>{/if}
									{$smarty.session.username|upper|truncate:15:"..."} <span class="caret"></span>
								</span>
								<span class="hidden-xs">
									{if $requests_count > 0 || $mails_count > 0}<div class="badge">
										{$requests_count+$mails_count}</div>{/if}
									{$smarty.session.username|upper|truncate:35:"..."} <span class="caret"></span>
								</span>
							</a>
							<ul class="dropdown-menu pull-right m-t-0" style="font-size:14px;">
								<li><a href="{$relative}/user">{t c='topnav.my_profile'}</a></li>
								{if $video_module == '1'}<li><a
											href="{$relative}/user/{$smarty.session.username}/pornici">{t c='topnav.my_videos'}</a>
								</li>{/if}
								{if $photo_module == '1'}<li><a
											href="{$relative}/user/{$smarty.session.username}/albums">{t c='topnav.my_photos'}</a>
								</li>{/if}
								<li><a href="{$relative}/requests">{translate c='global.requests'}{if $requests_count > 0}
										<div class="badge pull-right">{$requests_count}</div>{/if}<div class="clearfix">
										</div>
									</a></li>
								<li><a href="{$relative}/mail/inbox">{translate c='global.inbox'}{if $mails_count > 0}<div
											class="badge pull-right">{$mails_count}</div>{/if}<div class="clearfix"></div>
									</a></li>
							</ul>
						</li>
						<li><a href="{$relative}/logout" class="ign-pop">{translate c='global.sign_out_CAPS'}</a></li>
					{else}
						<li><a href="{$relative}/registracija" rel="nofollow"
								class="ign-pop">{translate c='global.sign_up'}</a></li>
						<li><a data-toggle="modal" href="#login-modal" class="ign-pop">{translate c='global.login'}</a></li>
					{/if}
				</div>
				<div class="clearfix"></div>
			</ul>
		</div>
	</div>
	<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle ign-pop" data-toggle="collapse"
					data-target=".navbar-inverse-collapse">
					<span class="sr-only">Prikaži meni</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<button type="button" class="navbar-toggle ign-pop" data-toggle="collapse"
					data-target=".search-inverse-collapse" style="padding:6px 12px;">
					<i class="fa fa-search" style="color:#fff;"></i>
					<span class="sr-only">Prikaži pretragu</span>
				</button>
				<button type="button" class="navbar-toggle ign-pop"
					style="padding:6px 2px;color:#FFF;font-weight:bold; font-size:11px; text-transform:uppercase; width:80px; background-color:#da2657; border-color:#da2657;"
					onclick="location.href='{$relative}/upload/video'"><i class="fa fa-upload"></i> <span
						style="font-size: 12px; margin-left: 2px;">DODAJ</span></button>
				<a class="navbar-brand ign-pop" href="{$relative}/">
					<img src="{$relative}/images/logo/logo.png"
							 title="Balkan Jizz - Najbolji pornići na Balkanu"
							 alt="Balkan Jizz - Najbolji pornići na Balkanu"
					/>
				</a>
			</div>
			{if $device_type=='mobile'}
				<div class="searchbar-collapse collapse search-inverse-collapse">
					<ul class="dropdown-menu search-dropdown-menu search-mob" style="width:100%;">
						<form class="form-inline" name="search" id="search_form" method="get"
							action="{$relative}/search/{if !isset($search_type)}videos{else}{$search_type}{/if}">
							<div class="input-group">
								{* <span class="search-select input-group-addon">
									<select class="form-control" id="search_type">
										<option value="videos"{if isset($search_type) && $search_type == 'videos'} selected="yes"{/if}>{translate c='global.videos'}</option>
										{if $pornstars_module == '1'}<option value="pornstars"{if isset($search_type) && $search_type == 'pornstars'} selected="yes"{/if}>{translate c='global.pornstars.menu'}</option>{/if}
										<option value="users"{if isset($search_type) && $search_type == 'users'} selected="yes"{/if}>{translate c='global.users'}</option>
									</select>
								</span> *}
								<input type="hidden" id="search_type" value="videos">

								<input autocomplete="off" type="text" class="form-control" placeholder="{t c='ajax.search'}"
									name="search_query" id="search_query"
									value="{if isset($search_query)}{$search_query}{/if}">

								<input type="hidden" id="search_type" name="search_type" value="videos">
								<span class="input-group-btn">
									<button type="submit" class="btn btn-primary"><i class="fa fa-search"></i></button>
								</span>
							</div>
							<div class="box-suggest"></div>
						</form>
					</ul>
				</div>
			{/if}
			<div class="navbar-collapse collapse navbar-inverse-collapse">
				<ul class="nav navbar-nav navbar-right">
					{if $video_module == '1'}<li{if $menu == 'videos'} class="active" {/if}><a
							href="{$relative}/pornici" class="ign-pop">{translate c='menu.videos'}</a></li>{/if}
						{if $pornstars_module == '1'}<li{if $menu == 'pornstars'} class="active hidden-sm" {/if}
							class="hidden-sm"><a href="{$relative}/poznate-licnosti"
								class="ign-pop">{translate c='global.pornstars.menu'}</a></li>{/if}
							{if $photo_module == '1'}<li{if $menu == 'albums'} class="active" {/if}><a
									href="{$relative}/albums" class="ign-pop">{translate c='menu.photos'}</a></li>{/if}
								<li{if $menu == 'categories'} class="active hidden-sm " {else} class="hidden-sm" {/if}>
									{if $video_module == '1'}<a href="{$relative}/kategorije-pornica"
										class="ign-pop">{elseif $photo_module == '1'}<a
											href="{$relative}/kategorije-pornica?s=a">{else}<a
												href="{$relative}/kategorije-pornica?s=g">{/if}{translate c='menu.categories'}</a>
											</li>
										</a></li>
										{if $game_module == '1'}<li
											{if $menu == 'games'}
												class="active hidden-xs hidden-sm" {/if} class="hidden-sm hidden-xs"><a
													href="{$relative}/porno-igre"
													class="ign-pop">{translate c='menu.games'}</a></li>
										{/if}

										<li class="dropdown visible-sm hidden-xs hidden-md hidden-lg">
											<a href="#" class="dropdown-toggle ign-pop"
												data-toggle="dropdown">{translate c='menu.more'} <b
													class="caret"></b></a>
											<ul class="dropdown-menu">
												{if $blog_module == '1'}<li {if $menu == 'blogs'} class="active" {/if}>
													<a href="{$relative}/blogs"
														class="ign-pop">{translate c='menu.blogs'}</a>
												</li>{/if}
												<li{if $menu == 'categories'} class="active" {/if}>
													{if $video_module == '1'}<a href="{$relative}/kategorije-pornica"
														class="ign-pop">{elseif $photo_module == '1'}<a
																href="{$relative}/kategorije-pornica?s=a"
															class="ign-pop">{else}<a
																	href="{$relative}/kategorije-pornica?s=g"
																class="ign-pop">{/if}{translate c='menu.categories'}</a>
										</li>
										{if $pornstars_module == '1'}<li {if $menu == 'pornstars'} class="active" {/if}>
											<a href="{$relative}/poznate-licnosti"
												class="ign-pop">{translate c='global.pornstars.menu'}</a>
										</li>{/if}
										<li{if $menu == 'community'} class="active" {/if}><a
												href="{$relative}/porno-clanovi"
												class="ign-pop">{translate c='menu.community'}</a>
											</li>
				</ul>
				</li>

				{if $blog_module == '1'}<li
					{if $menu == 'blogs'} class="active hidden-sm"
					{else} class="hidden-sm"
						{/if}><a href="{$relative}/blogs">
							{translate c='menu.blogs'}</a></li>
				{/if}
				<li{if $menu == 'community'} class="active hidden-sm" {else} class="hidden-sm" {/if}><a
						href="{$relative}/porno-clanovi">{translate c='menu.community'}</a></li>
					<li><a href="https://theporndude.com" rel="nofollow" target="_blank">ThePornDude</a></li>
					{if $device_type!='mobile'}
						<li class="dropdown">
							<a href="#" id="search-drop" class="dropdown-toggle hidden-xs ign-pop" data-toggle="dropdown"><i
									class="fa fa-search"></i></a>
							<ul class="dropdown-menu search-dropdown-menu">
								<form class="form-inline" name="search" id="search_form" method="get"
									action="{$relative}/search/{if !isset($search_type)}videos{else}{$search_type}{/if}">
									<div class="input-group">
										{* <span class="search-select input-group-addon">
										<select class="form-control" id="search_type">
											<option value="videos"{if isset($search_type) && $search_type == 'videos'} selected="yes"{/if}>{translate c='global.videos'}</option>
											<option value="users"{if isset($search_type) && $search_type == 'users'} selected="yes"{/if}>{translate c='global.users'}</option>
										</select>
									</span> *}

										<input autocomplete="off" type="text" class="form-control"
											placeholder="{t c='ajax.search'}" name="search_query" id="search_query"
											value="{if isset($search_query)}{$search_query}{/if}">

										<span class="input-group-btn">
											<button type="submit" class="btn btn-primary"><i
													class="fa fa-search"></i></button>
										</span>
									</div>
									<div class="box-suggest"></div>
								</form>
							</ul>
						</li>
					{/if}
					<li><button type="button" class="btn btn-primary navbar-btn m-l-15 m-r-15 ign-pop"
							onclick="location.href='{$relative}/upload/video'">{translate c='menu.upload'}</button>
					</li>
					</ul>

			</div>
			<!--/.nav-collapse -->
		</div>
	</div>
	{if !empty($notice)}
		{* <div class="notice m-b-10">
			<div class="container">
				<p class="notice_header">
					{$notice[0][0]}
				</p>
			</div>
		</div> *}
	{/if}
	{if $device_type=='mobile'}
		{insert name=adv assign=adv group='slider_mob'}
		{if $adv}{$adv}{/if}
	{else}
		{insert name=adv assign=adv group='slider_dsk'}
		{if $adv}{$adv}{/if}
	{/if}
	{if $device_type=='mobile'}
		{insert name=adv assign=adv group='inter_mob'}
		{if $adv}{$adv}{/if}
	{else}
		{insert name=adv assign=adv group='inter_dsk'}
		{if $adv}{$adv}{/if}
	{/if}
	{if $device_type=='mobile'}
		<div class="header-ad">
			<div class="ad-body" style="padding-top:0px !important; margin-top: -15px;">
				{* <p class="ad-title">{t c='global.sponsors'}</p> *}
				{insert name=adv assign=adv group='all_header_mob'}
				{if $adv}{$adv}{/if}
			</div>
		</div>
	{/if}
	{* {if $device_type=='mobile'}
				{insert name=adv assign=adv group='outstream_mob'}
				{if $adv}{$adv}{/if}
		{else}
				{insert name=adv assign=adv group='outstream_dsk'}
				{if $adv}{$adv}{/if}
		{/if} *}
<div id="wrapper">
