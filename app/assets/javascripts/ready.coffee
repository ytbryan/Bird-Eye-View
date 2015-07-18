(($) ->
  ready = $.fn.ready
  $.fn.ready = (fn) ->
    if @context == undefined
      # The $().ready(fn) case.
      ready fn
    else if @selector
      ready $.proxy((->
        $(@selector, @context).each fn
        return
      ), this)
    else
      ready $.proxy((->
        $(this).each fn
        return
      ), this)
    return
  return
) jQuery
