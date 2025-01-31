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
 mauve red blue black - acolour
 walnut pine - awood
 p0 p1 p2 p3 p4 p5 - part
 b0 b1 - board
 s0 s1 s2 s3 s4 s5 - aboardsize
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
 (= (goalsize p0) medium)
 (not (available p0))
 (= (wood p0) unknown-wood)
 (= (surface-condition p0) smooth)
 (= (treatment p0) untreated)
 (= (colour p1) mauve)
 (unused p1)
 (= (goalsize p1) medium)
 (available p1)
 (= (wood p1) pine)
 (= (surface-condition p1) rough)
 (= (treatment p1) varnished)
 (= (colour p2) natural)
 (unused p2)
 (= (goalsize p2) medium)
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
 (= (colour p4) mauve)
 (unused p4)
 (= (goalsize p4) small)
 (available p4)
 (= (wood p4) walnut)
 (= (surface-condition p4) smooth)
 (= (treatment p4) colourfragments)
 (= (colour p5) natural)
 (unused p5)
 (= (goalsize p5) medium)
 (not (available p5))
 (= (wood p5) unknown-wood)
 (= (surface-condition p5) smooth)
 (= (treatment p5) untreated)
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
 (not (has-colour grinder0 natural))
 (not (has-colour grinder0 mauve))
 (not (has-colour grinder0 red))
 (not (has-colour grinder0 blue))
 (not (has-colour grinder0 black))
 (not (has-colour glazer0 natural))
 (not (has-colour glazer0 mauve))
 (has-colour glazer0 red)
 (has-colour glazer0 blue)
 (has-colour glazer0 black)
 (not (has-colour immersion-varnisher0 natural))
 (not (has-colour immersion-varnisher0 mauve))
 (has-colour immersion-varnisher0 red)
 (has-colour immersion-varnisher0 blue)
 (not (has-colour immersion-varnisher0 black))
 (not (has-colour planer0 natural))
 (not (has-colour planer0 mauve))
 (not (has-colour planer0 red))
 (not (has-colour planer0 blue))
 (not (has-colour planer0 black))
 (not (has-colour highspeed-saw0 natural))
 (not (has-colour highspeed-saw0 mauve))
 (not (has-colour highspeed-saw0 red))
 (not (has-colour highspeed-saw0 blue))
 (not (has-colour highspeed-saw0 black))
 (not (has-colour spray-varnisher0 natural))
 (not (has-colour spray-varnisher0 mauve))
 (has-colour spray-varnisher0 red)
 (has-colour spray-varnisher0 blue)
 (not (has-colour spray-varnisher0 black))
 (not (has-colour saw0 natural))
 (not (has-colour saw0 mauve))
 (not (has-colour saw0 red))
 (not (has-colour saw0 blue))
 (not (has-colour saw0 black))
 (= (in-highspeed-saw highspeed-saw0) no-board)
 (= (boardsize b0) s5)
 (= (wood b0) pine)
 (= (surface-condition b0) smooth)
 (available b0)
 (= (boardsize b1) s2)
 (= (wood b1) walnut)
 (= (surface-condition b1) rough)
 (available b1)
)
(:global-goal (and
 (available p0)
 (= (colour p0) red)
 (= (wood p0) walnut)
 (= (surface-condition p0) smooth)
 (= (treatment p0) varnished)
 (available p1)
 (= (wood p1) pine)
 (= (surface-condition p1) verysmooth)
 (available p2)
 (= (colour p2) red)
 (= (wood p2) pine)
 (available p3)
 (= (wood p3) pine)
 (= (surface-condition p3) smooth)
 (= (treatment p3) varnished)
 (available p4)
 (= (colour p4) blue)
 (= (wood p4) walnut)
 (available p5)
 (= (colour p5) black)
 (= (wood p5) pine)
 (= (surface-condition p5) verysmooth)
 (= (treatment p5) glazed)
))
)
