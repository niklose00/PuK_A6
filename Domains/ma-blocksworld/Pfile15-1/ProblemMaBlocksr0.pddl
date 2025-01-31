(define (problem BLOCKS-15-1)
(:domain ma-blocksworld)
(:objects
 r0 r1 r2 r3 - robot
 j b k a d h e n c f l m i o g - block
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
 (not (clear j))
 (= (on j) i)
 (not (ontable j))
 (not (clear b))
 (= (on b) j)
 (not (ontable b))
 (not (clear k))
 (= (on k) b)
 (not (ontable k))
 (not (clear a))
 (= (on a) k)
 (not (ontable a))
 (not (clear d))
 (= (on d) a)
 (not (ontable d))
 (not (clear h))
 (= (on h) d)
 (not (ontable h))
 (not (clear e))
 (= (on e) h)
 (not (ontable e))
 (not (clear n))
 (= (on n) e)
 (not (ontable n))
 (not (clear c))
 (= (on c) n)
 (not (ontable c))
 (not (clear f))
 (= (on f) c)
 (not (ontable f))
 (not (clear l))
 (= (on l) f)
 (not (ontable l))
 (not (clear m))
 (ontable m)
 (= (on m) nob)
 (not (clear i))
 (ontable i)
 (= (on i) nob)
 (clear o)
 (= (on o) m)
 (not (ontable o))
 (clear g)
 (= (on g) l)
 (not (ontable g))
)
(:global-goal (and
 (= (on d) g)
 (= (on g) f)
 (= (on f) k)
 (= (on k) j)
 (= (on j) e)
 (= (on e) m)
 (= (on m) a)
 (= (on a) b)
 (= (on b) c)
 (= (on c) n)
 (= (on n) o)
 (= (on o) i)
 (= (on i) l)
 (= (on l) h)
)))
