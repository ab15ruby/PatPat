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
        	return "0"
        
        elsif table.bosmu? (x+1, y)  and (x-1,y) and (x,y-1) and (x,y-1)  #ucgen için
                return '1'

         elsif table.bosmu?(x-2, y) and (x+2,y) and (x,y-2) and (x,y+2) # kare için

         	return '2'
         elsif table.bosmu? (x-3,y) and (x+3,y) and (x,y-3) and (x,y+3) and (x-1,y+1) and (x-1,y-1) and (x+1,y+1) and (x+1,y-1) #dikdortgen için 
         	return '4'
         elsif 
         	
         		
         
              break
            else 
              redo 
            end
        end
end


pat = Patpat.new(30)

pat.tablo_olustur(1)

pat.table.display

