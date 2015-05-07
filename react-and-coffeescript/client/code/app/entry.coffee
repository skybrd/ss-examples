

c = ->
    event = new CustomEvent "con---sole", {'detail': arguments}
    window.dispatchEvent event
    console.log.apply console, arguments

cc = -> console.log.apply console, arguments

window.t = require 'socketstream'

t.server.on 'disconnect', ->
    console.log 'lost connection :-('

t.server.on 'reconnect', ->
    console.log 'recovered connection :-)'

t.event.on 'hey', (a) ->
    c "got a message", a

{p, div, h1, input, svg, textarea, circle, form, h3, span } = React.DOM

rr = -> React.createFactory(React.createClass.apply(React, arguments))

monterrey = rr
    render: ->
        div
            key: 'monterrey'
            className: 'monterrey',
            "ha"
            colorado
                initial_position: {x: 204, y: 240}
            structured_console()

structured_console = rr

    getInitialState: ->
        logs: []

    componentDidMount: ->
        window.addEventListener 'con---sole', (a) =>
            @setState
                logs: [@state.logs..., a.detail]

    render: ->
        div
            key: 'structured_console',
            for item, idx in @state.logs
                span
                    key: 'sc_line' + idx,
                    item

remote_control = rr
    
    render: ->
        div
            key: 'remote_control',
            "something here soon to control "
            input
                placeholder: 'radio'

colorado = rr

    getInitialState: ->
        position: @props.initial_position

    __handle_change: (e) ->
        c e.currentTarget.value
        t.rpc 'gate.ping', (res)->
            c res



    render: ->
        div
            key: 'colorado'
            style:
                'position': 'absolute'
                'top': @state.position.y + 'px'
                'left': @state.position.x + 'px'
            ,
            input
                placeholder: 'something here'
                onChange: @__handle_change


imp = ->
    monterrey()
    #colorado()












amp = document.getElementById 'amp'
render = -> React.render imp(), amp
render()

