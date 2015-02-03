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




end


pat = Patpat.new(20)



a = Dikdortgen.new
a.kaydet(pat.table)

k = Kare.new
k.kaydet(pat.table)
k.kaydet(pat.table)

pat.table.display