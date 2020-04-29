$(() => {
  $('body').keyup(() => {
    $('#markdown_preview').html(marked($('#markdown_editor').val()))
  })
})