(define (problem wood-prob)
(:domain woodworking)
(:objects
 agPlanner agGrinder agVarnisher agSaw - agent
 grinder0 - grinder
 glazer0 - glazer
 immersion-varnisher0 - immersion-varnisher
 planer0 - planer
 highspeed-saw0 - highspeed-saw
 spray-varnisher0 - spray-varnisher
 saw0 - saw
 blue mauve green red black - acolour
 beech mahogany - awood
 p0 p1 p2 p3 p4 p5 p6 - part
 b0 b1 b2 - board
 s0 s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 - aboardsize
)
(:shared-data
 (unused ?obj - part) (available ?obj - woodobj)
 (empty ?m - highspeed-saw) (is-smooth ?surface - surface)
 (has-colour ?machine - machine ?colour - acolour)
 ((surface-condition ?obj - woodobj) - surface)
 ((treatment ?obj - part) - treatmentstatus)
 ((colour ?obj - part) - acolour)
 ((wood ?obj - woodobj) - awood)
 ((boardsize ?board - board) - aboardsize)
 ((goalsize ?part - part) - apartsize)
 ((boardsize-successor ?size1 - aboardsize) - aboardsize)
 ((in-highspeed-saw ?m - highspeed-saw) - board)
 ((grind-treatment-change ?old - treatmentstatus) - treatmentstatus)
 - (either agGrinder agVarnisher agSaw))
(:init
 (= (colour p0) natural)
 (unused p0)
 (= (goalsize p0) medium)
 (not (available p0))
 (= (wood p0) unknown-wood)
 (= (surface-condition p0) smooth)
 (= (treatment p0) untreated)
 (= (colour p1) natural)
 (unused p1)
 (= (goalsize p1) small)
 (not (available p1))
 (= (wood p1) unknown-wood)
 (= (surface-condition p1) smooth)
 (= (treatment p1) untreated)
 (= (colour p2) natural)
 (unused p2)
 (= (goalsize p2) large)
 (not (available p2))
 (= (wood p2) unknown-wood)
 (= (surface-condition p2) smooth)
 (= (treatment p2) untreated)
 (= (colour p3) natural)
 (unused p3)
 (= (goalsize p3) small)
 (not (available p3))
 (= (wood p3) unknown-wood)
 (= (surface-condition p3) smooth)
 (= (treatment p3) untreated)
 (= (colour p4) natural)
 (unused p4)
 (= (goalsize p4) large)
 (not (available p4))
 (= (wood p4) unknown-wood)
 (= (surface-condition p4) smooth)
 (= (treatment p4) untreated)
 (= (colour p5) natural)
 (unused p5)
 (= (goalsize p5) small)
 (not (available p5))
 (= (wood p5) unknown-wood)
 (= (surface-condition p5) smooth)
 (= (treatment p5) untreated)
 (= (colour p6) natural)
 (unused p6)
 (= (goalsize p6) large)
 (not (available p6))
 (= (wood p6) unknown-wood)
 (= (surface-condition p6) smooth)
 (= (treatment p6) untreated)
 (= (grind-treatment-change varnished) colourfragments)
 (= (grind-treatment-change glazed) untreated)
 (= (grind-treatment-change untreated) untreated)
 (= (grind-treatment-change colourfragments) untreated)
 (is-smooth verysmooth)
 (is-smooth smooth)
 (not (is-smooth rough))
 (= (boardsize-successor s0) s1)
 (= (boardsize-successor s1) s2)
 (= (boardsize-successor s2) s3)
 (= (boardsize-successor s3) s4)
 (= (boardsize-successor s4) s5)
 (= (boardsize-successor s5) s6)
 (= (boardsize-successor s6) s7)
 (= (boardsize-successor s7) s8)
 (= (boardsize-successor s8) s9)
 (= (boardsize-successor s9) s10)
 (not (has-colour grinder0 natural))
 (not (has-colour grinder0 blue))
 (not (has-colour grinder0 mauve))
 (not (has-colour grinder0 green))
 (not (has-colour grinder0 red))
 (not (has-colour grinder0 black))
 (not (has-colour glazer0 natural))
 (has-colour glazer0 blue)
 (not (has-colour glazer0 mauve))
 (not (has-colour glazer0 green))
 (has-colour glazer0 red)
 (has-colour glazer0 black)
 (has-colour immersion-varnisher0 natural)
 (has-colour immersion-varnisher0 blue)
 (not (has-colour immersion-varnisher0 mauve))
 (not (has-colour immersion-varnisher0 green))
 (has-colour immersion-varnisher0 red)
 (has-colour immersion-varnisher0 black)
 (not (has-colour planer0 natural))
 (not (has-colour planer0 blue))
 (not (has-colour planer0 mauve))
 (not (has-colour planer0 green))
 (not (has-colour planer0 red))
 (not (has-colour planer0 black))
 (not (has-colour highspeed-saw0 natural))
 (not (has-colour highspeed-saw0 blue))
 (not (has-colour highspeed-saw0 mauve))
 (not (has-colour highspeed-saw0 green))
 (not (has-colour highspeed-saw0 red))
 (not (has-colour highspeed-saw0 black))
 (has-colour spray-varnisher0 natural)
 (has-colour spray-varnisher0 blue)
 (not (has-colour spray-varnisher0 mauve))
 (not (has-colour spray-varnisher0 green))
 (has-colour spray-varnisher0 red)
 (has-colour spray-varnisher0 black)
 (not (has-colour saw0 natural))
 (not (has-colour saw0 blue))
 (not (has-colour saw0 mauve))
 (not (has-colour saw0 green))
 (not (has-colour saw0 red))
 (not (has-colour saw0 black))
 (= (in-highspeed-saw highspeed-saw0) no-board)
 (= (boardsize b0) s10)
 (= (wood b0) beech)
 (= (surface-condition b0) rough)
 (available b0)
 (= (boardsize b1) s2)
 (= (wood b1) beech)
 (= (surface-condition b1) rough)
 (available b1)
 (= (boardsize b2) s2)
 (= (wood b2) mahogany)
 (= (surface-condition b2) rough)
 (available b2)
)
(:global-goal (and
 (available p0)
 (= (colour p0) blue)
 (= (surface-condition p0) verysmooth)
 (available p1)
 (= (colour p1) natural)
 (= (treatment p1) varnished)
 (available p2)
 (= (colour p2) black)
 (= (wood p2) beech)
 (= (treatment p2) glazed)
 (available p3)
 (= (surface-condition p3) verysmooth)
 (= (treatment p3) varnished)
 (available p4)
 (= (colour p4) black)
 (= (wood p4) beech)
 (= (treatment p4) varnished)
 (available p5)
 (= (surface-condition p5) verysmooth)
 (= (treatment p5) varnished)
 (available p6)
 (= (colour p6) red)
 (= (surface-condition p6) verysmooth)
))
)
