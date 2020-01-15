@echo off

magick convert -density 300 optimization.pdf -colorspace RGB -transparent white optimization.png

magick convert -density 300 multi-agent.pdf -colorspace RGB -transparent white multi-agent.png

magick convert -density 300 control.pdf -colorspace RGB -transparent white control.png
