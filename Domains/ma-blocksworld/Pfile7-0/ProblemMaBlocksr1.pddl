(define (problem BLOCKS-7-0)
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
(either r0 r2 r3)
)
(:init
 (myAgent r1)
 (= (holding r0) nob)
 (= (holding r1) nob)
 (= (holding r2) nob)
 (= (holding r3) nob)
 (clear e)
 (= (on e) g)
 (not (ontable e))
 (not (clear g))
 (= (on g) b)
 (not (ontable g))
 (not (clear c))
 (= (on c) d)
 (not (ontable c))
 (not (clear d))
 (ontable d)
 (= (on d) nob)
 (not (clear f))
 (= (on f) c)
 (not (ontable f))
 (not (clear a))
 (= (on a) f)
 (not (ontable a))
 (not (clear b))
 (= (on b) a)
 (not (ontable b))
)
(:global-goal (and
 (= (on a) g)
 (= (on g) d)
 (= (on d) b)
 (= (on b) c)
 (= (on c) f)
 (= (on f) e)
)))
