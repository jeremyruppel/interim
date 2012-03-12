require '../lib/interim'
require 'should'

describe 'ago', ->

  it 'should subtract the duration from the specified date', ->

    date = new Date( Date.UTC( 2012, 2, 12 ) )

    3.seconds( ).ago( date ).should.eql ( date.getTime( ) - 3000 )

  it 'should subtract the duration from now if no date is specified', ->

    3.seconds( ).ago( ).should.eql ( new Date( ).getTime( ) - 3000 )
