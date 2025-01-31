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
 white red mauve black green blue - acolour
 oak pine beech - awood
 p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 - part
 b0 b1 b2 b3 b4 - board
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
 (= (goalsize p0) large)
 (not (available p0))
 (= (wood p0) unknown-wood)
 (= (surface-condition p0) smooth)
 (= (treatment p0) untreated)
 (= (colour p1) black)
 (unused p1)
 (= (goalsize p1) large)
 (available p1)
 (= (wood p1) pine)
 (= (surface-condition p1) verysmooth)
 (= (treatment p1) varnished)
 (= (colour p2) blue)
 (unused p2)
 (= (goalsize p2) large)
 (available p2)
 (= (wood p2) beech)
 (= (surface-condition p2) smooth)
 (= (treatment p2) varnished)
 (= (colour p3) natural)
 (unused p3)
 (= (goalsize p3) small)
 (not (available p3))
 (= (wood p3) unknown-wood)
 (= (surface-condition p3) smooth)
 (= (treatment p3) untreated)
 (= (colour p4) natural)
 (unused p4)
 (= (goalsize p4) medium)
 (not (available p4))
 (= (wood p4) unknown-wood)
 (= (surface-condition p4) smooth)
 (= (treatment p4) untreated)
 (= (colour p5) natural)
 (unused p5)
 (= (goalsize p5) medium)
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
 (= (colour p7) natural)
 (unused p7)
 (= (goalsize p7) large)
 (not (available p7))
 (= (wood p7) unknown-wood)
 (= (surface-condition p7) smooth)
 (= (treatment p7) untreated)
 (= (colour p8) natural)
 (unused p8)
 (= (goalsize p8) medium)
 (not (available p8))
 (= (wood p8) unknown-wood)
 (= (surface-condition p8) smooth)
 (= (treatment p8) untreated)
 (= (colour p9) natural)
 (unused p9)
 (= (goalsize p9) small)
 (not (available p9))
 (= (wood p9) unknown-wood)
 (= (surface-condition p9) smooth)
 (= (treatment p9) untreated)
 (= (colour p10) natural)
 (unused p10)
 (= (goalsize p10) large)
 (not (available p10))
 (= (wood p10) unknown-wood)
 (= (surface-condition p10) smooth)
 (= (treatment p10) untreated)
 (= (colour p11) natural)
 (unused p11)
 (= (goalsize p11) large)
 (not (available p11))
 (= (wood p11) unknown-wood)
 (= (surface-condition p11) smooth)
 (= (treatment p11) untreated)
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
 (not (has-colour grinder0 white))
 (not (has-colour grinder0 red))
 (not (has-colour grinder0 mauve))
 (not (has-colour grinder0 black))
 (not (has-colour grinder0 green))
 (not (has-colour grinder0 blue))
 (has-colour glazer0 natural)
 (not (has-colour glazer0 white))
 (not (has-colour glazer0 red))
 (has-colour glazer0 mauve)
 (has-colour glazer0 black)
 (not (has-colour glazer0 green))
 (has-colour glazer0 blue)
 (has-colour immersion-varnisher0 natural)
 (not (has-colour immersion-varnisher0 white))
 (not (has-colour immersion-varnisher0 red))
 (has-colour immersion-varnisher0 mauve)
 (has-colour immersion-varnisher0 black)
 (has-colour immersion-varnisher0 green)
 (has-colour immersion-varnisher0 blue)
 (not (has-colour planer0 natural))
 (not (has-colour planer0 white))
 (not (has-colour planer0 red))
 (not (has-colour planer0 mauve))
 (not (has-colour planer0 black))
 (not (has-colour planer0 green))
 (not (has-colour planer0 blue))
 (not (has-colour highspeed-saw0 natural))
 (not (has-colour highspeed-saw0 white))
 (not (has-colour highspeed-saw0 red))
 (not (has-colour highspeed-saw0 mauve))
 (not (has-colour highspeed-saw0 black))
 (not (has-colour highspeed-saw0 green))
 (not (has-colour highspeed-saw0 blue))
 (has-colour spray-varnisher0 natural)
 (not (has-colour spray-varnisher0 white))
 (not (has-colour spray-varnisher0 red))
 (has-colour spray-varnisher0 mauve)
 (has-colour spray-varnisher0 black)
 (has-colour spray-varnisher0 green)
 (has-colour spray-varnisher0 blue)
 (not (has-colour saw0 natural))
 (not (has-colour saw0 white))
 (not (has-colour saw0 red))
 (not (has-colour saw0 mauve))
 (not (has-colour saw0 black))
 (not (has-colour saw0 green))
 (not (has-colour saw0 blue))
 (= (in-highspeed-saw highspeed-saw0) no-board)
 (= (boardsize b0) s9)
 (= (wood b0) beech)
 (= (surface-condition b0) rough)
 (available b0)
 (= (boardsize b1) s10)
 (= (wood b1) oak)
 (= (surface-condition b1) rough)
 (available b1)
 (= (boardsize b2) s3)
 (= (wood b2) oak)
 (= (surface-condition b2) smooth)
 (available b2)
 (= (boardsize b3) s9)
 (= (wood b3) pine)
 (= (surface-condition b3) smooth)
 (available b3)
 (= (boardsize b4) s3)
 (= (wood b4) pine)
 (= (surface-condition b4) rough)
 (available b4)
)
(:global-goal (and
 (available p0)
 (= (colour p0) blue)
 (= (surface-condition p0) smooth)
 (available p1)
 (= (colour p1) natural)
 (= (surface-condition p1) smooth)
 (available p2)
 (= (surface-condition p2) verysmooth)
 (= (treatment p2) varnished)
 (available p3)
 (= (wood p3) pine)
 (= (surface-condition p3) smooth)
 (= (treatment p3) varnished)
 (available p4)
 (= (colour p4) black)
 (= (treatment p4) varnished)
 (available p5)
 (= (surface-condition p5) verysmooth)
 (= (treatment p5) varnished)
 (available p6)
 (= (wood p6) pine)
 (= (treatment p6) varnished)
 (available p7)
 (= (colour p7) green)
 (= (wood p7) oak)
 (= (surface-condition p7) verysmooth)
 (= (treatment p7) varnished)
 (available p8)
 (= (colour p8) black)
 (= (wood p8) beech)
 (available p9)
 (= (colour p9) blue)
 (= (wood p9) beech)
 (= (surface-condition p9) smooth)
 (= (treatment p9) glazed)
 (available p10)
 (= (colour p10) natural)
 (= (surface-condition p10) verysmooth)
 (available p11)
 (= (colour p11) mauve)
 (= (wood p11) oak)
 (= (surface-condition p11) smooth)
))
)
