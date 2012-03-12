###*
 *
###
class Duration

  constructor : ( @seconds ) ->

    @date = new Date @seconds * 1000

  valueOf : -> @date.getTime( )

  ago : ( date=new Date( ) ) -> date - @

###*
 *
###
alias = ( subject, from, to ) -> subject[ to ] = subject[ from ]

###*
 *
###
Number.prototype.seconds = -> new Duration @ * 1 # force coerce
Number.prototype.minutes = -> new Duration @ * 60
Number.prototype.hours   = -> new Duration @ * 60 * 60
Number.prototype.days    = -> new Duration @ * 60 * 60 * 24
Number.prototype.weeks   = -> new Duration @ * 60 * 60 * 24 * 7
Number.prototype.months  = -> new Duration @ * 60 * 60 * 24 * 30
Number.prototype.years   = -> new Duration @ * 60 * 60 * 24 * 365

###*
 *
###
alias Number.prototype, 'minutes', 'minute'
alias Number.prototype, 'seconds', 'second'
alias Number.prototype, 'hours',   'hour'
alias Number.prototype, 'days',    'day'
alias Number.prototype, 'weeks',   'week'
alias Number.prototype, 'months',  'month'
alias Number.prototype, 'years',   'year'
