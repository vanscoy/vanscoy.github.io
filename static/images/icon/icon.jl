using Luxor
using MathTeXEngine

sz = 75

function icon(px, filename, maskable=false)

    sz = maskable ? 1.45px : px

    Drawing(sz, sz, filename)
    
    origin()
    maskable ? background(0.15,0.15,0.15,1) : background(0,0,0,0)
    sethue("#2f809d")
    a = px/75
    scale(a)
    setline(8a)

    p1 = Point(-20, -10)
    p2 = Point(0, -30)
    p3 = Point(20, -10)
    p4 = Point(0, 10)
    p5 = Point(-35, -25)

    poly([p1, p2, p3, p4, p5], :stroke)

    p6 = Point(0, 30)
    p7 = Point(-30, 0)
    p8 = Point(30, 0)

    poly([p7, p6, p8], :stroke)

    # minimum safe area for masking
    # sethue("red")
    # setline(1)
    # circle(Point(0,0), 0.4*sz/a, action=:stroke)

    finish()
end

# icon(100,  "static/images/icon-100.png")
# icon(144,  "static/images/icon-144.png")
# icon(256,  "static/images/icon-256.png")
# icon(512,  "static/images/icon-512.png")
# icon(1024, "static/images/icon-1024.png")
icon(75,   "static/images/icon.svg")
icon(75,   "static/images/icon-maskable.svg", true)

preview()