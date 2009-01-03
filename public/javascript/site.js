$(document).ready( function() {
  $('a.delete').click( function() {
    if ( confirm("本当に削除しますか?") ) {
      var href = $(this).attr('href');
      $.ajax({ type: 'delete', url: href,
        success: function() { window.location = window.location; }
      });
    }
    // Stop the browser from processing the click.
    return false;
  });
});
