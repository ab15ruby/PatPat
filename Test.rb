#!/usr/bin/env ruby
# encoding: utf-8
require_relative 'table'
require_relative 'kare'
require_relative 'dikdortgen'
require_relative 'ucgen'
require_relative 'patpat'

puts "\e[0;36m**************************************************************\e[0m"
puts "\e[0;36m*                   \e[1;31m--PATPAT--                               \e[0;36m*"
puts "\e[0;36m*                                                            *\e[0m"
puts "\e[0;36m*                                                            *\e[0m"
puts "\e[0;36m*                    \e[1;35mWELCOME!!                              \e[0;36m *   "
puts "\e[0;36m*                                                            *\e[0m"
puts "\e[0;36m*                                                            *\e[0m"
puts "\e[0;36m*                  \e[1;33mOyunun Amacı:                             \e[0;36m*    "
puts "\e[0;36m*  \e[1;33mx ve y koordinatlarını girerek haritadaki şekli bulmak.   \e[0;36m*    "
puts "\e[0;36m*                                                            *\e[0m"
puts "\e[0;36m*                                                            *\e[0m"
puts "\e[0;36m*                                                            *\e[0m"
puts "\e[0;36m*                                                            *\e[0m"
puts "\e[0;36m*   \e[1;33m-Başlamak için \e[3;32menter\e[0;31m'\e[1;33ma basınız-                          \e[0;36m*     "
puts "\e[0;36m*                                                            *\e[0m"
puts "\e[0;36m*                                                            *\e[0m"
puts "\e[0;36m*                                                            *\e[0m"
puts "\e[0;36m**************************************************************\e[0m"

unless gets.empty?

end
toplam_puan = 0
print "\e[0;31mOyun icin seviye belirleyin. (1 - 2 - 3) : \e[0m"
seviye = gets
patpat = Patpat.new(30)
patpat.tablo_olustur(seviye.to_i)
puts "\n\n\e[1;31mOYUN BASLIYOR!!!\e[0m\n\n"


  (1..5).each do |i|
    puts "\e[0;35mLevel #{i}\e[0m"

      print "\e[1;35m X ve Y koordinatlarını giriniz(0-30 aralığında)(x y):  \e[0m"
      x,y  = gets.chomp.split

      puan = patpat.puanlama(x.to_i, y.to_i)

      if puan.zero?
        puts "----Hiç puan kazanamadınız boş alan!! ----"
      elsif puan.equal? 1
        puts "----Tebrikler kareyi patpatladınız!! ----"
      elsif puan.equal? 2
        puts "----Tebrikler dikdörtgeni patpatladınız!! ----"
      elsif puan.equal? 3
        puts "----Tebrikler üçgeni patpatladınız!! -----"

      end

      puts "\n\n\n"
      toplam_puan += puan



end

puts "\e[1;33mToplam kazandıgınız puan: \e[0;36m#{toplam_puan}\e[0m\n\n"
sleep 2
puts "\t\t\e[1;32mPATPAT OYUN HARİTANIZ: \e[0m \n\n"
patpat.table.display