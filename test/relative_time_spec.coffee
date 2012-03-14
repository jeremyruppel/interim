require '../lib/interim'
require 'should'

describe 'until', ->

  it 'should subtract the duration from the specified date', ->

    date = new Date( Date.UTC( 2012, 2, 12 ) )

    3.seconds( ).until( date ).should.eql ( date.getTime( ) - 3000 )

describe 'ago', ->

  it 'should subtract the duration from now', ->

    3.seconds( ).ago( ).should.eql ( new Date( ).getTime( ) - 3000 )

describe 'since', ->

  it 'should add the duration to the specified date', ->

    date = new Date( Date.UTC( 2012, 2, 12 ) )

    3.seconds( ).since( date ).should.eql ( date.getTime( ) + 3000 )

describe 'fromNow', ->

  it 'should add the duration to now', ->

    3.seconds( ).fromNow( ).should.eql ( new Date( ).getTime( ) + 3000 )
