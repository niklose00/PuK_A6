(define (problem ZTRAVEL-5-25)
(:domain zeno-travel)
(:objects
 plane1 plane2 plane3 plane4 plane5 - aircraft
 person1 person2 person3 person4 person5 person6 person7 person8 person9 person10 person11 person12 person13 person14 person15 person16 person17 person18 person19 person20 person21 person22 person23 person24 person25 - person
 city0 city1 city2 city3 city4 city5 city6 city7 city8 city9 city10 city11 city12 city13 city14 city15 city16 city17 city18 city19 city20 city21 - city
 fl0 fl1 fl2 fl3 fl4 fl5 fl6 - flevel
)
(:shared-data
  ((at ?a - aircraft) - city)
  ((in ?p - person) - (either city aircraft)) - 
(either plane1 plane2 plane3 plane4)
)
(:init
 (myAgent plane5)
 (= (at plane1) city0)
 (= (at plane2) city6)
 (= (at plane3) city18)
 (= (at plane4) city11)
 (= (at plane5) city9)
 (= (fuel-level plane5) fl4)
 (= (in person1) city12)
 (= (in person2) city13)
 (= (in person3) city12)
 (= (in person4) city1)
 (= (in person5) city20)
 (= (in person6) city13)
 (= (in person7) city13)
 (= (in person8) city4)
 (= (in person9) city7)
 (= (in person10) city7)
 (= (in person11) city8)
 (= (in person12) city14)
 (= (in person13) city1)
 (= (in person14) city14)
 (= (in person15) city2)
 (= (in person16) city21)
 (= (in person17) city8)
 (= (in person18) city4)
 (= (in person19) city8)
 (= (in person20) city17)
 (= (in person21) city5)
 (= (in person22) city21)
 (= (in person23) city15)
 (= (in person24) city6)
 (= (in person25) city5)
 (= (next fl0) fl1)
 (= (next fl1) fl2)
 (= (next fl2) fl3)
 (= (next fl3) fl4)
 (= (next fl4) fl5)
 (= (next fl5) fl6)
)
(:global-goal (and
 (= (in person1) city5)
 (= (in person2) city0)
 (= (in person3) city18)
 (= (in person4) city7)
 (= (in person5) city8)
 (= (in person6) city4)
 (= (in person7) city12)
 (= (in person8) city16)
 (= (in person9) city20)
 (= (in person10) city5)
 (= (in person11) city18)
 (= (in person12) city10)
 (= (in person13) city0)
 (= (in person14) city1)
 (= (in person15) city0)
 (= (in person16) city13)
 (= (in person17) city4)
 (= (in person18) city9)
 (= (in person19) city16)
 (= (in person20) city1)
 (= (in person21) city10)
 (= (in person22) city2)
 (= (in person23) city4)
 (= (in person24) city18)
 (= (in person25) city21)
)))
