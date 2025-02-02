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
 black blue mauve red white green - acolour
 pine oak - awood
 p0 p1 p2 p3 p4 p5 p6 p7 p8 - part
 b0 b1 b2 - board
 s0 s1 s2 s3 s4 - aboardsize
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
 - (either agPlanner agGrinder agVarnisher))
(:init
 (= (colour p0) natural)
 (unused p0)
 (= (goalsize p0) small)
 (not (available p0))
 (= (wood p0) unknown-wood)
 (= (surface-condition p0) smooth)
 (= (treatment p0) untreated)
 (= (colour p1) natural)
 (unused p1)
 (= (goalsize p1) medium)
 (not (available p1))
 (= (wood p1) unknown-wood)
 (= (surface-condition p1) smooth)
 (= (treatment p1) untreated)
 (= (colour p2) natural)
 (unused p2)
 (= (goalsize p2) medium)
 (not (available p2))
 (= (wood p2) unknown-wood)
 (= (surface-condition p2) smooth)
 (= (treatment p2) untreated)
 (= (colour p3) natural)
 (unused p3)
 (= (goalsize p3) medium)
 (not (available p3))
 (= (wood p3) unknown-wood)
 (= (surface-condition p3) smooth)
 (= (treatment p3) untreated)
 (= (colour p4) natural)
 (unused p4)
 (= (goalsize p4) small)
 (not (available p4))
 (= (wood p4) unknown-wood)
 (= (surface-condition p4) smooth)
 (= (treatment p4) untreated)
 (= (colour p5) black)
 (unused p5)
 (= (goalsize p5) large)
 (available p5)
 (= (wood p5) pine)
 (= (surface-condition p5) smooth)
 (= (treatment p5) colourfragments)
 (= (colour p6) natural)
 (unused p6)
 (= (goalsize p6) small)
 (not (available p6))
 (= (wood p6) unknown-wood)
 (= (surface-condition p6) smooth)
 (= (treatment p6) untreated)
 (= (colour p7) natural)
 (unused p7)
 (= (goalsize p7) medium)
 (not (available p7))
 (= (wood p7) unknown-wood)
 (= (surface-condition p7) smooth)
 (= (treatment p7) untreated)
 (= (colour p8) natural)
 (unused p8)
 (= (goalsize p8) small)
 (not (available p8))
 (= (wood p8) unknown-wood)
 (= (surface-condition p8) smooth)
 (= (treatment p8) untreated)
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
 (not (has-colour grinder0 natural))
 (not (has-colour grinder0 black))
 (not (has-colour grinder0 blue))
 (not (has-colour grinder0 mauve))
 (not (has-colour grinder0 red))
 (not (has-colour grinder0 white))
 (not (has-colour grinder0 green))
 (has-colour glazer0 natural)
 (not (has-colour glazer0 black))
 (not (has-colour glazer0 blue))
 (not (has-colour glazer0 mauve))
 (has-colour glazer0 red)
 (has-colour glazer0 white)
 (has-colour glazer0 green)
 (not (has-colour immersion-varnisher0 natural))
 (not (has-colour immersion-varnisher0 black))
 (not (has-colour immersion-varnisher0 blue))
 (not (has-colour immersion-varnisher0 mauve))
 (has-colour immersion-varnisher0 red)
 (not (has-colour immersion-varnisher0 white))
 (has-colour immersion-varnisher0 green)
 (not (has-colour planer0 natural))
 (not (has-colour planer0 black))
 (not (has-colour planer0 blue))
 (not (has-colour planer0 mauve))
 (not (has-colour planer0 red))
 (not (has-colour planer0 white))
 (not (has-colour planer0 green))
 (not (has-colour highspeed-saw0 natural))
 (not (has-colour highspeed-saw0 black))
 (not (has-colour highspeed-saw0 blue))
 (not (has-colour highspeed-saw0 mauve))
 (not (has-colour highspeed-saw0 red))
 (not (has-colour highspeed-saw0 white))
 (not (has-colour highspeed-saw0 green))
 (not (has-colour spray-varnisher0 natural))
 (not (has-colour spray-varnisher0 black))
 (not (has-colour spray-varnisher0 blue))
 (not (has-colour spray-varnisher0 mauve))
 (has-colour spray-varnisher0 red)
 (not (has-colour spray-varnisher0 white))
 (has-colour spray-varnisher0 green)
 (not (has-colour saw0 natural))
 (not (has-colour saw0 black))
 (not (has-colour saw0 blue))
 (not (has-colour saw0 mauve))
 (not (has-colour saw0 red))
 (not (has-colour saw0 white))
 (not (has-colour saw0 green))
 (= (in-highspeed-saw highspeed-saw0) no-board)
 (= (boardsize b0) s4)
 (= (wood b0) oak)
 (= (surface-condition b0) smooth)
 (available b0)
 (= (boardsize b1) s4)
 (= (wood b1) pine)
 (= (surface-condition b1) rough)
 (available b1)
 (= (boardsize b2) s4)
 (= (wood b2) pine)
 (= (surface-condition b2) rough)
 (available b2)
)
(:global-goal (and
 (available p0)
 (= (colour p0) green)
 (= (wood p0) oak)
 (= (treatment p0) glazed)
 (available p1)
 (= (wood p1) pine)
 (= (surface-condition p1) smooth)
 (available p2)
 (= (wood p2) pine)
 (= (treatment p2) glazed)
 (available p3)
 (= (colour p3) red)
 (= (wood p3) oak)
 (= (treatment p3) varnished)
 (available p4)
 (= (colour p4) natural)
 (= (wood p4) oak)
 (= (surface-condition p4) smooth)
 (= (treatment p4) glazed)
 (available p5)
 (= (colour p5) green)
 (= (wood p5) pine)
 (available p6)
 (= (colour p6) red)
 (= (wood p6) pine)
 (= (surface-condition p6) smooth)
 (available p7)
 (= (colour p7) white)
 (= (wood p7) pine)
 (= (surface-condition p7) verysmooth)
 (= (treatment p7) glazed)
 (available p8)
 (= (wood p8) pine)
 (= (surface-condition p8) smooth)
 (= (treatment p8) varnished)
))
)
