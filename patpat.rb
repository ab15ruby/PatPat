#!/usr/bin/env ruby
require_relative 'table'
require_relative 'kare'
require_relative 'dikdortgen'
require_relative 'ucgen'

class Patpat
  attr_accessor :table
  def initialize(size)
    @table = Table.new(size)
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


pat = Patpat.new(20)



a = Dikdortgen.new
a.kaydet(pat.table)

k = Kare.new
k.kaydet(pat.table)
k.kaydet(pat.table)

pat.table.display