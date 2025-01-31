(define (problem BLOCKS-8-2)
(:domain ma-blocksworld)
(:objects
 r0 r1 r2 r3 - robot
 f b g c h e a d - block
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
 (not (clear f))
 (= (on f) g)
 (not (ontable f))
 (not (clear b))
 (= (on b) f)
 (not (ontable b))
 (not (clear g))
 (ontable g)
 (= (on g) nob)
 (clear c)
 (ontable c)
 (= (on c) nob)
 (clear h)
 (ontable h)
 (= (on h) nob)
 (clear e)
 (ontable e)
 (= (on e) nob)
 (clear a)
 (ontable a)
 (= (on a) nob)
 (clear d)
 (= (on d) b)
 (not (ontable d))
)
(:global-goal (and
 (= (on c) b)
 (= (on b) e)
 (= (on e) g)
 (= (on g) f)
 (= (on f) a)
 (= (on a) d)
 (= (on d) h)
)))
