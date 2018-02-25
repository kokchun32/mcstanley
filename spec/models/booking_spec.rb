require 'rails_helper'

RSpec.describe Booking, type: :model do
  context 'validation test' do
    it 'ensures name presence' do
     booking = Booking.new(name: 'name').save
     expect(booking).to eq(false)
    end

    it 'ensures no_ppl presence' do
      booking = Booking.new(no_ppl: '2').save
      expect(booking).to eq(false)
    end

    it 'ensures phone_no presence' do
      booking = Booking.new(phone_no: '0123456789').save
      expect(booking).to eq(false)
    end

    it 'ensures date_time presence' do
      booking = Booking.new(date_time: '2018-12-31').save
      expect(booking).to eq(false)
    end

    it 'ensures date_time presence' do
      booking = Booking.new(message: 'This is message').save
      expect(booking).to eq(false)
    end

    it 'ensures new records save successfully' do
      booking = Booking.new(name: 'name', no_ppl: '2', phone_no: '0123456789', date_time: '2018-12-31', message: 'this is message').save
      expect(booking).to eq(true)
    end     
  end
end
