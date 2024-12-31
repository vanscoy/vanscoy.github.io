@echo on

magick convert -density 500 optimization.pdf -colorspace RGB -transparent white optimization.png

magick convert -density 500 multi-agent.pdf -colorspace RGB -transparent white multi-agent.png

magick convert -density 500 control.pdf -colorspace RGB -transparent white control.png


rem Creating favicon...

magick convert favicon.pdf -colorspace RGB -resize 128x128 favicon-128.png

magick convert favicon-128.png favicon.ico