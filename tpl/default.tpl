<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title><?theme title?></title>
		<meta property="og:site_name" content="rnd's website"/>
		<meta property="og:title" content="<?theme title?>"/>
		<meta property="og:type" content="website"/>
		<meta property="og:url" content="https://devurandom.xyz/<?theme dir?><?theme source?>"/>
		<link href="/style.css" rel="stylesheet" type="text/css" media="handheld,print,screen,projection,tv" title="Default Style">
		<link href="/style_tty.css" rel="stylesheet" type="text/css" media="braille,speech,tty" title="TTY Web Browser Style">
		<link href="xstyle.css" rel="stylesheet" type="text/css" media="handheld,print,screen,projection,tv">
		<link rel="icon" type="image/png" href="favicon.png">
		<link rel="preload" href="/menu_button_hover.gif" as="image">
		<link rel="preload" href="/menu_button_sel.gif" as="image">
		<?theme style?>
	</head>
	<body>
		<div class="header">
			<div class="header_image"></div>
			<div class="itime">
	<div class="itime-text">internet time @ <span id="itime-value">???</span></div>
	<div class="itime-bar"><div id="itime-progress"></div></div>
			</div>
			<div class="tenpo">
	<div class="tenpo-text">tenpo ni li "<span id="tenpo-value">???</span>"</div>
			</div>
			<div class="header_text">
	<h2><a href="/">rnd's website</a><span class="titlesep"> | </span></h2><h3><?theme title?></h3>
			</div>
		</div>
		<div class="middle">
			<div class="navbar nav_linkmenu">
				<nav class="links"><a href="/index.html">Main page</a><a href="/about_me.html">About me</a><a href="/blog">Blog thingy</a><a href="/politics">Politics</a><a href="/tokipona">toki pona</a></nav>
			</div>
			<article class="content">
	<?theme body?>
			</article>
			<div class="footer">
	<a rel="me" href="https://cutiehaven.club/@rnd"><img src="/banners/mastodon.gif"
	width="88" height="31" alt="Follow me on Mastodon" /></a>
	<a rel="me" href="https://toki.social/@janLentan"><img src="/banners/mastodon_tp.gif"
	width="88" height="31" alt="o kute e toki mi kepeken ilo Masoton" /></a>
	<a href="https://www.vim.org"><img src="/banners/vim.gif"
	width="88" height="31" alt="This page made with Vim" /></a>
	<a href="https://mozilla.org/en-US/firefox/"><img src="/banners/firefox.gif"
	width="88" height="31" alt="Best viewed in Firefox" title="This website is best viewed in the Firefox web browser."/ ></a>
	<a href="https://rnd.neocities.org/tokipona/"><img src="/banners/mute_lukin.gif"
	width="88" height="31" alt="jan li lukin e lipu ni lon tenpo mute"/ ></a>
	<img src="/banners/trans_rights.gif"
	width="88" height="31" alt="Trans Rights Now!"/ >
	<br />
	</div>
	</div>
	</body>
	<script src="/scripts.js"></script>
</html>
