require '../lib/interim'
require 'should'

describe 'Number prototype', ->

  describe '#seconds', ->

    it 'should return an object', ->
      2.seconds( ).should.be.a 'object'

    it 'should give the correct value in milliseconds', ->
      2.seconds( ).valueOf( ).should.equal (2 * 1000)

    it 'should be able to be coerced by mathematical operators', ->
      ( 10.seconds( ) - 6.seconds( ) ).should.equal (4 * 1000)

    it 'should be aliased to #second', ->
      Number.prototype.seconds.should.equal Number.prototype.second

  describe '#minutes', ->

    it 'should return an object', ->
      2.minutes( ).should.be.a 'object'

    it 'should give the correct value in milliseconds', ->
      2.minutes( ).valueOf( ).should.equal (2000 * 60)

    it 'should be able to be coerced by mathematical operators', ->
      ( 10.minutes( ) - 6.minutes( ) ).should.equal (4 * 60 * 1000)

    it 'should be aliased to #minute', ->
      Number.prototype.minutes.should.equal Number.prototype.minute
