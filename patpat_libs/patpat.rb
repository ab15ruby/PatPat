#!/usr/bin/env ruby
require_relative 'table'
require_relative 'kare'
require_relative 'dikdortgen'
require_relative 'ucgen'

class Patpat
  attr_accessor :table

  def initialize size
    @table = Table.new(size)
  end

  def tablo_olustur(seviye)

    dongu = 30
      if seviye.equal? 1
        dongu = 30
      elsif seviye.equal? 2
        dongu = 20
      elsif seviye.equal? 3
        dongu = 10
      end

      (0..dongu).each do |i|
        Dikdortgen.new.kaydet(table)
        Dikdortgen.new.kaydet(table)
        Kare.new.kaydet(table)
        Kare.new.kaydet(table)
        Ucgen.new.kaydet(table)
      end



  end


  def puanlama (x,y)
    table.value(x,y)
  end


end


