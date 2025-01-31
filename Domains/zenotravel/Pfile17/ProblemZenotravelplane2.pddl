(define (problem ZTRAVEL-5-20)
(:domain zeno-travel)
(:objects
 plane1 plane2 plane3 plane4 plane5 - aircraft
 person1 person2 person3 person4 person5 person6 person7 person8 person9 person10 person11 person12 person13 person14 person15 person16 person17 person18 person19 person20 - person
 city0 city1 city2 city3 city4 city5 city6 city7 city8 city9 city10 city11 city12 city13 city14 city15 - city
 fl0 fl1 fl2 fl3 fl4 fl5 fl6 - flevel
)
(:shared-data
  ((at ?a - aircraft) - city)
  ((in ?p - person) - (either city aircraft)) - 
(either plane1 plane3 plane4 plane5)
)
(:init
 (myAgent plane2)
 (= (at plane1) city14)
 (= (at plane2) city11)
 (= (at plane3) city4)
 (= (at plane4) city11)
 (= (at plane5) city15)
 (= (fuel-level plane2) fl0)
 (= (in person1) city0)
 (= (in person2) city14)
 (= (in person3) city12)
 (= (in person4) city7)
 (= (in person5) city4)
 (= (in person6) city14)
 (= (in person7) city4)
 (= (in person8) city0)
 (= (in person9) city3)
 (= (in person10) city7)
 (= (in person11) city3)
 (= (in person12) city15)
 (= (in person13) city10)
 (= (in person14) city1)
 (= (in person15) city7)
 (= (in person16) city9)
 (= (in person17) city7)
 (= (in person18) city5)
 (= (in person19) city11)
 (= (in person20) city0)
 (= (next fl0) fl1)
 (= (next fl1) fl2)
 (= (next fl2) fl3)
 (= (next fl3) fl4)
 (= (next fl4) fl5)
 (= (next fl5) fl6)
)
(:global-goal (and
 (= (at plane1) city14)
 (= (at plane3) city7)
 (= (at plane5) city12)
 (= (in person1) city4)
 (= (in person2) city11)
 (= (in person3) city0)
 (= (in person4) city12)
 (= (in person5) city12)
 (= (in person6) city0)
 (= (in person7) city5)
 (= (in person8) city13)
 (= (in person9) city9)
 (= (in person10) city7)
 (= (in person11) city7)
 (= (in person12) city6)
 (= (in person13) city2)
 (= (in person14) city10)
 (= (in person15) city14)
 (= (in person16) city12)
 (= (in person17) city1)
 (= (in person18) city1)
 (= (in person19) city5)
 (= (in person20) city13)
)))
