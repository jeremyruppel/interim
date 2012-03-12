require '../lib/interim'
require 'should'

describe 'equality', ->

  it 'should pass the node assertion for equality', ->

    2.minutes( ).should.eql 120.seconds( )

  it 'should not be equal without coercion', ->

    # would love to make this work but i'm pretty
    # sure it's impossible
    ( 1.year( ) == 365.days( ) ).should.be.false

  it 'should be equal with coercion', ->

    ( +1.year( ) == +365.days( ) ).should.be.true

describe 'mathematical operators', ->

  it 'should be able to add durations accurately', ->

    ( 3.days( ) + 4.days( ) ).should.eql +7.days( )

  it 'should be able to subtract durations accurately', ->

    ( 7.days( ) - 6.days( ) ).should.eql +1.day( )

  it 'should be able to multiply durations accurately', ->

    ( 4.days( ) * 2 ).should.eql +8.days( )

  it 'should be able to divide durations accurately', ->

    ( 4.days( ) / 2 ).should.eql +2.days( )
