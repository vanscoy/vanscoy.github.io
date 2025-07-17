using Luxor

function icon(sz, filename, maskable=false)

    # x direction is to the right
    # y direction is down
    
    if maskable
        a = sz/(75 * 1.4)
        Drawing(sz, sz, filename)
        # background(0.15,0.15,0.15,1)
        background("#2f809d")
        o = Point(0,-7.5a)  # origin
        origin()
        sethue("#0c2027")
    else
        a = sz/75
        Drawing(sz, sz, filename)
        background(0,0,0,0)
        o = Point(0,-12a)  # origin
        origin()
        sethue("#2f809d")
    end

    # box(BoundingBox(), action = :stroke)

    d  = 17a  # distance from center to each corner of the square in 'b'
    s  = 16a  # extra height of the stem on the 'b'
    lw = 11a  # width of a line

    w = 2(d + s) + lw/√2  # width
    h = (d + lw/√2) + (d√2 + s + lw/√2) # height

    @show (a,w,h)

    # setline(1)
    # box(Point(0,0), w, h, action=:stroke)

    setline(lw)
    
    bl = o + Point(-d, 0)  # left corner
    bt = o + Point(0, -d)  # top corner
    br = o + Point(d, 0)   # right corner
    bb = o + Point(0, d)   # bottom corner
    b  = bl + Point(-s,-s)
    
    poly([bl, bt, br, bb, b], :stroke)

    t = bt + Point(0, -lw/√2)  # tip of top corner
    r = br + Point(lw/√2, 0)   # tip of right corner
    l = bl + Point(-lw/√2, 0)  # tip of left corner
    
    _, vl = intersectionlines(t, l, b, b+Point(0,1))      # left
    _, vb = intersectionlines(bt, bb, vl, vl+Point(1,1))  # bottom
    _, vr = intersectionlines(t, r, vb, vb+Point(1,-1))   # right

    poly([vl, vb, vr], :stroke)

    # minimum safe area for masking
    # sethue("red")
    # setline(1)
    # circle(Point(0,0), 0.4*sz, action=:stroke)

    finish()
end

icon(75,   "static/images/icon.svg")
icon(1024, "static/images/icon-maskable.png", true)

preview()