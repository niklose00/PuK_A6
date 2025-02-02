(define (problem BLOCKS-13-1)
(:domain ma-blocksworld)
(:objects
 r0 r1 r2 r3 - robot
 i m g h l a c d e k f b j - block
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
 (not (clear i))
 (= (on i) f)
 (not (ontable i))
 (not (clear m))
 (= (on m) i)
 (not (ontable m))
 (not (clear g))
 (= (on g) m)
 (not (ontable g))
 (not (clear h))
 (= (on h) g)
 (not (ontable h))
 (not (clear l))
 (= (on l) h)
 (not (ontable l))
 (not (clear a))
 (= (on a) l)
 (not (ontable a))
 (not (clear c))
 (= (on c) a)
 (not (ontable c))
 (not (clear d))
 (= (on d) c)
 (not (ontable d))
 (not (clear e))
 (= (on e) d)
 (not (ontable e))
 (not (clear k))
 (ontable k)
 (= (on k) nob)
 (not (clear f))
 (ontable f)
 (= (on f) nob)
 (clear b)
 (= (on b) k)
 (not (ontable b))
 (clear j)
 (= (on j) e)
 (not (ontable j))
)
(:global-goal (and
 (= (on d) a)
 (= (on a) e)
 (= (on e) l)
 (= (on l) m)
 (= (on m) c)
 (= (on c) j)
 (= (on j) f)
 (= (on f) k)
 (= (on k) g)
 (= (on g) h)
 (= (on h) i)
 (= (on i) b)
)))
