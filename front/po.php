<div>
    目前位置：首頁 > 分類網誌 > <span id="type">健康新知</span>
</div>
<fieldset style="width:150px;display:inline-block;">
    <legend>分類網誌</legend>
    <a class="type" href="#" data-type='1'>健康新知</a>
    <a class="type" href="#" data-type='2'>菸害防制</a>
    <a class="type" href="#" data-type='3'>癌症防治</a>
    <a class="type" href="#" data-type='4'>慢性病防治</a>
</fieldset>

<fieldset style="width:500px;display:inline-block;vertical-align:top;">
    <legend>文章列表</legend>
    <div id="postList"></div>
</fieldset>

<script>
getList(1)
// $('.type').on('click', (e) => {
//     console.log(e);
//     $("#type").text($(e.target).text())
// })
$('.type').on('click', function() {
    $("#type").text($(this).text())
    let type = $(this).data('type')
    getList(type)

})

function getList(type) {
    /**
     * 1.有參數時 等同使用$.post
     * 2.沒參數時 等同使用$.get
     */
    $("#postList").load("./api/get_list.php", {
        type
    })
}

function getPost(id) {
    $("#postList").load("./api/get_post.php", {
        id
    })


}
</script>