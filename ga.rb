#-*- encoding: UTF-8 -*-

require 'rubygems'
require 'cairo'
require 'kconv'

format = Cairo::FORMAT_ARGB32
width = 300
height = 200

surface = Cairo::ImageSurface.new(Cairo::FORMAT_ARGB32, 200, 200)
context = Cairo::Context.new(surface)

# 背景
context.set_source_rgb(1, 1, 1) 
context.rectangle(0, 0, width, height)
context.fill 

#　丸
context.set_source_rgb(0, 0, 0)
context.arc(140, 140, 10, 0, 360);
context.fill

context.set_source_rgb(0, 0, 0)
context.arc(100, 140, 10, 0, 360);
context.fill

#　三角形
context.set_source_rgb(0,0,0)
context.triangle(105, 170, 120, 150, 135, 170) 
context.fill

# 文字
context.set_source_rgb(0, 0, 4)
context.select_font_face("kochi gothic", 0, 0)
context.set_font_size( 32 )
context.move_to(30,100) 
context.show_text( "dwango" )

surface.write_to_png("test.png")