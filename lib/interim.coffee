###*
 * Duration - base class for working with time
###
class Duration

  constructor : ( @seconds ) ->

    @date = new Date @seconds * 1000

  valueOf : -> @date.getTime( )

  until : ( date ) -> date.getTime( ) - @

  ago : ( ) -> @until new Date( )

  since : ( date ) -> date.getTime( ) + @

  fromNow : ( ) -> @since new Date( )

###*
 * Method alias convenience method
###
alias = ( subject, from, to ) -> subject[ to ] = subject[ from ]

###*
 * Number prototype extensions
###
Number.prototype.seconds = -> new Duration @ * 1 # force coerce
Number.prototype.minutes = -> new Duration @ * 60
Number.prototype.hours   = -> new Duration @ * 60 * 60
Number.prototype.days    = -> new Duration @ * 60 * 60 * 24
Number.prototype.weeks   = -> new Duration @ * 60 * 60 * 24 * 7
Number.prototype.months  = -> new Duration @ * 60 * 60 * 24 * 30
Number.prototype.years   = -> new Duration @ * 60 * 60 * 24 * 365

###*
 * Aliases
###
alias Number.prototype, 'minutes', 'minute'
alias Number.prototype, 'seconds', 'second'
alias Number.prototype, 'hours',   'hour'
alias Number.prototype, 'days',    'day'
alias Number.prototype, 'weeks',   'week'
alias Number.prototype, 'months',  'month'
alias Number.prototype, 'years',   'year'
