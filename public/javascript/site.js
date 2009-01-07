$(document).ready( function() {
  $('a.delete').click( function() {
    if ( confirm("本当に削除しますか?") ) {
      var href = $(this).attr('href');
      $.ajax({ type: 'delete', url: href,
        success: function() { window.location = window.location; }
      });
    }
    // 本来のイベントの実行を回避する
    return false;
  });
});
