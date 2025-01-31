(define (problem ZTRAVEL-5-20)
(:domain zeno-travel)
(:objects
 plane1 plane2 plane3 plane4 plane5 - aircraft
 person1 person2 person3 person4 person5 person6 person7 person8 person9 person10 person11 person12 person13 person14 person15 person16 person17 person18 person19 person20 - person
 city0 city1 city2 city3 city4 city5 city6 city7 city8 city9 city10 city11 city12 city13 city14 city15 city16 city17 - city
 fl0 fl1 fl2 fl3 fl4 fl5 fl6 - flevel
)
(:shared-data
  ((at ?a - aircraft) - city)
  ((in ?p - person) - (either city aircraft)) - 
(either plane1 plane2 plane3 plane5)
)
(:init
 (myAgent plane4)
 (= (at plane1) city11)
 (= (at plane2) city12)
 (= (at plane3) city12)
 (= (at plane4) city14)
 (= (at plane5) city14)
 (= (fuel-level plane4) fl0)
 (= (in person1) city7)
 (= (in person2) city16)
 (= (in person3) city9)
 (= (in person4) city6)
 (= (in person5) city6)
 (= (in person6) city0)
 (= (in person7) city6)
 (= (in person8) city8)
 (= (in person9) city13)
 (= (in person10) city14)
 (= (in person11) city7)
 (= (in person12) city15)
 (= (in person13) city4)
 (= (in person14) city14)
 (= (in person15) city10)
 (= (in person16) city5)
 (= (in person17) city10)
 (= (in person18) city11)
 (= (in person19) city9)
 (= (in person20) city3)
 (= (next fl0) fl1)
 (= (next fl1) fl2)
 (= (next fl2) fl3)
 (= (next fl3) fl4)
 (= (next fl4) fl5)
 (= (next fl5) fl6)
)
(:global-goal (and
 (= (at plane2) city6)
 (= (in person1) city2)
 (= (in person2) city17)
 (= (in person3) city7)
 (= (in person4) city14)
 (= (in person5) city9)
 (= (in person6) city13)
 (= (in person7) city6)
 (= (in person8) city8)
 (= (in person9) city4)
 (= (in person10) city16)
 (= (in person11) city6)
 (= (in person12) city4)
 (= (in person13) city14)
 (= (in person14) city2)
 (= (in person15) city9)
 (= (in person16) city9)
 (= (in person17) city15)
 (= (in person18) city6)
 (= (in person19) city2)
 (= (in person20) city17)
)))
