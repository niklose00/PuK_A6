(define (problem BLOCKS-9-2)
(:domain ma-blocksworld)
(:objects
 r0 r1 r2 r3 - robot
 h d i a e g b f c - block
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
 (clear h)
 (= (on h) a)
 (not (ontable h))
 (not (clear d))
 (= (on d) e)
 (not (ontable d))
 (not (clear i))
 (= (on i) b)
 (not (ontable i))
 (not (clear a))
 (= (on a) d)
 (not (ontable a))
 (not (clear e))
 (= (on e) c)
 (not (ontable e))
 (not (clear g))
 (ontable g)
 (= (on g) nob)
 (not (clear b))
 (= (on b) g)
 (not (ontable b))
 (clear f)
 (ontable f)
 (= (on f) nob)
 (not (clear c))
 (= (on c) i)
 (not (ontable c))
)
(:global-goal (and
 (= (on f) g)
 (= (on g) h)
 (= (on h) d)
 (= (on d) i)
 (= (on i) e)
 (= (on e) b)
 (= (on b) c)
 (= (on c) a)
)))
