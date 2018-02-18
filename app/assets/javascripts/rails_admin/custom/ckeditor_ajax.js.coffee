$(document).ready ->
  $(document).on 'mousedown', '.save-action', (e) -> # triggers also when submitting form with enter
    for instance of CKEDITOR.instances
      editor = CKEDITOR.instances[instance]
      if editor.checkDirty()
        editor.updateElement();
    return true;
