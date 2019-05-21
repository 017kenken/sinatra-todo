$(function(){
    $('.delete').on('click',function(){
        let li = $(this).parent();
        $.post('/destroy',{
            id: li.data('id')
        },function(){
            li.fadeOut(500);
        });
    });
});