(define (problem BLOCKS-7-1)
(:domain ma-blocksworld)
(:objects
 r0 r1 r2 r3 - robot
 e g c d f a b - block
)
(:shared-data
  ((on ?b - block) - block)
  (ontable ?b - block)
  (clear ?b - block)
  ((holding ?r - robot) - block) - 
(either r0 r1 r3)
)
(:init
 (myAgent r2)
 (= (holding r0) nob)
 (= (holding r1) nob)
 (= (holding r2) nob)
 (= (holding r3) nob)
 (not (clear e))
 (= (on e) f)
 (not (ontable e))
 (not (clear g))
 (ontable g)
 (= (on g) nob)
 (clear c)
 (= (on c) d)
 (not (ontable c))
 (not (clear d))
 (= (on d) b)
 (not (ontable d))
 (not (clear f))
 (ontable f)
 (= (on f) nob)
 (clear a)
 (= (on a) g)
 (not (ontable a))
 (not (clear b))
 (= (on b) e)
 (not (ontable b))
)
(:global-goal (and
 (= (on a) e)
 (= (on e) b)
 (= (on b) f)
 (= (on f) g)
 (= (on g) c)
 (= (on c) d)
)))
