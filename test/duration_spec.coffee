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
      2.minutes( ).valueOf( ).should.equal (2 * 60 * 1000)

    it 'should be able to be coerced by mathematical operators', ->
      ( 10.minutes( ) - 6.minutes( ) ).should.equal (4 * 60 * 1000)

    it 'should be aliased to #minute', ->
      Number.prototype.minutes.should.equal Number.prototype.minute

  describe '#hours', ->

    it 'should return an object', ->
      2.hours( ).should.be.a 'object'

    it 'should give the correct value in milliseconds', ->
      2.hours( ).valueOf( ).should.equal (2 * 60 * 60 * 1000)

    it 'should be able to be coerced by mathematical operators', ->
      ( 10.hours( ) - 6.hours( ) ).should.equal (4 * 60 * 60 * 1000)

    it 'should be aliased to #hour', ->
      Number.prototype.hours.should.equal Number.prototype.hour

  describe '#days', ->

    it 'should return an object', ->
      2.days( ).should.be.a 'object'

    it 'should give the correct value in milliseconds', ->
      2.days( ).valueOf( ).should.equal (2 * 24 * 60 * 60 * 1000)

    it 'should be able to be coerced by mathematical operators', ->
      ( 10.days( ) - 6.days( ) ).should.equal (4 * 24 * 60 * 60 * 1000)

    it 'should be aliased to #day', ->
      Number.prototype.days.should.equal Number.prototype.day

  describe '#weeks', ->

    it 'should return an object', ->
      2.weeks( ).should.be.a 'object'

    it 'should give the correct value in milliseconds', ->
      2.weeks( ).valueOf( ).should.equal (2 * 7 * 24 * 60 * 60 * 1000)

    it 'should be able to be coerced by mathematical operators', ->
      ( 10.weeks( ) - 6.weeks( ) ).should.equal (4 * 7 * 24 * 60 * 60 * 1000)

    it 'should be aliased to #week', ->
      Number.prototype.weeks.should.equal Number.prototype.week

  describe '#months', ->

    it 'should return an object', ->
      2.months( ).should.be.a 'object'

    it 'should give the correct value in milliseconds', ->
      2.months( ).valueOf( ).should.equal (2 * 30 * 24 * 60 * 60 * 1000)

    it 'should be able to be coerced by mathematical operators', ->
      ( 10.months( ) - 6.months( ) ).should.equal (4 * 30 * 24 * 60 * 60 * 1000)

    it 'should be aliased to #month', ->
      Number.prototype.months.should.equal Number.prototype.month

  describe '#years', ->

    it 'should return an object', ->
      2.years( ).should.be.a 'object'

    it 'should give the correct value in milliseconds', ->
      2.years( ).valueOf( ).should.equal (2 * 365 * 24 * 60 * 60 * 1000)

    it 'should be able to be coerced by mathematical operators', ->
      ( 10.years( ) - 6.years( ) ).should.equal (4 * 365 * 24 * 60 * 60 * 1000)

    it 'should be aliased to #year', ->
      Number.prototype.years.should.equal Number.prototype.years
