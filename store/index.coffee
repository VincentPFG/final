export state = ->
    msg: 'Store'
    count: 0
    dark: on

export mutations =
    increment: (s) ->
        s.count++
    switch_light: (s) ->
        s.dark = not s.dark