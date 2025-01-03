<!-- res 問卷結果 -->
<?php
 $subject=$Que->find($_GET['id']);
 $options=$Que->all(['main_id'=>$_GET['id']]);
 ?>
<fieldset>
    <legend>目前位置：首頁 > 問卷調查區 > <?=$subject['text'];?></legend>

</fieldset>