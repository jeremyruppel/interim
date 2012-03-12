###*
 *
###
class Duration

  constructor : ( @seconds ) ->

    @date = new Date @seconds * 1000

  valueOf : -> @date.getTime( )

alias = ( subject, from, to ) -> subject[ to ] = subject[ from ]

###*
 *
###
Number.prototype.seconds = -> new Duration @

Number.prototype.minutes = -> new Duration @ * 60

alias Number.prototype, 'minutes', 'minute'
alias Number.prototype, 'seconds', 'second'
