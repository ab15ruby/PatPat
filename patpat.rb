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
    if seviye.to_i.equal? 1
      (0..30).each do |i|
        Dikdortgen.new.kaydet(table)
        Kare.new.kaydet(table)
        Ucgen.new.kaydet(table)
      end
    elsif seviye.to_i.equal? 2
      (0..20).each do |i|
        Dikdortgen.new.kaydet(table)
        Kare.new.kaydet(table)
        Ucgen.new.kaydet(table)
      end
    elsif seviye.to_i.equal? 3
      (0..10).each do |i|
        Dikdortgen.new.kaydet(table)
        Kare.new.kaydet(table)
        Ucgen.new.kaydet(table)
      end
    end
    end


  def puanlama (x,y)
    if table.bosmu?(x,y)
      0

    elsif table.value(x,y).equal? 1 #kare
      1
    elsif table.value(x,y).equal? 2  # dıkdortgen
      2
    elsif table.value(x,y).equal? 3 #ucgen için
      3
    end
  end


end


