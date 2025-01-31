(define (problem BLOCKS-7-2)
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
(either r1 r2 r3)
)
(:init
 (myAgent r0)
 (= (holding r0) nob)
 (= (holding r1) nob)
 (= (holding r2) nob)
 (= (holding r3) nob)
 (not (clear e))
 (= (on e) f)
 (not (ontable e))
 (not (clear g))
 (= (on g) e)
 (not (ontable g))
 (not (clear c))
 (= (on c) g)
 (not (ontable c))
 (not (clear d))
 (ontable d)
 (= (on d) nob)
 (not (clear f))
 (ontable f)
 (= (on f) nob)
 (clear a)
 (= (on a) d)
 (not (ontable a))
 (clear b)
 (= (on b) c)
 (not (ontable b))
)
(:global-goal (and
 (= (on e) b)
 (= (on b) f)
 (= (on f) d)
 (= (on d) a)
 (= (on a) c)
 (= (on c) g)
)))
