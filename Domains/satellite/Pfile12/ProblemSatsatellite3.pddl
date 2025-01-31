(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
 satellite0 satellite1 satellite2 satellite3 satellite4 - satellite
 instrument0 instrument1 instrument2 instrument3 instrument4 instrument5 instrument6 instrument7 instrument8 instrument9 - instrument
 thermograph2 infrared0 infrared1 spectrograph4 infrared3 - mode
 star0 star3 groundstation1 star2 star4 planet5 phenomenon6 star7 planet8 star9 planet10 planet11 star12 phenomenon13 star14 star15 planet16 phenomenon17 star18 star19 planet20 phenomenon21 star22 star23 phenomenon24 - direction
)
(:shared-data
  ((pointing ?s - satellite) - direction)
  (have_image ?d - direction ?m - mode) - (either satellite0 satellite1 satellite2 satellite4)
)
(:init (mySatellite satellite3)
 (power_avail satellite3)
 (not (power_on instrument0))
 (not (calibrated instrument0))
 (= (calibration_target instrument0) star0)
 (not (power_on instrument1))
 (not (calibrated instrument1))
 (= (calibration_target instrument1) star2)
 (not (power_on instrument2))
 (not (calibrated instrument2))
 (= (calibration_target instrument2) star3)
 (not (power_on instrument3))
 (not (calibrated instrument3))
 (= (calibration_target instrument3) star4)
 (not (power_on instrument4))
 (not (calibrated instrument4))
 (= (calibration_target instrument4) star4)
 (not (power_on instrument5))
 (not (calibrated instrument5))
 (= (calibration_target instrument5) groundstation1)
 (not (power_on instrument6))
 (not (calibrated instrument6))
 (= (calibration_target instrument6) star4)
 (not (power_on instrument7))
 (not (calibrated instrument7))
 (= (calibration_target instrument7) star2)
 (not (power_on instrument8))
 (not (calibrated instrument8))
 (= (calibration_target instrument8) star2)
 (not (power_on instrument9))
 (not (calibrated instrument9))
 (= (calibration_target instrument9) star4)
 (not (have_image planet5 infrared0))
 (not (have_image phenomenon6 spectrograph4))
 (not (have_image star7 infrared0))
 (not (have_image planet8 infrared1))
 (not (have_image star9 spectrograph4))
 (not (have_image planet10 thermograph2))
 (not (have_image planet11 infrared3))
 (not (have_image phenomenon13 spectrograph4))
 (not (have_image star14 thermograph2))
 (not (have_image star15 infrared3))
 (not (have_image planet16 infrared1))
 (not (have_image phenomenon17 spectrograph4))
 (not (have_image star18 spectrograph4))
 (not (have_image star19 thermograph2))
 (not (have_image planet20 thermograph2))
 (not (have_image phenomenon21 thermograph2))
 (not (have_image star22 infrared1))
 (not (have_image star23 spectrograph4))
 (not (have_image phenomenon24 infrared0))
 (= (pointing satellite3) phenomenon6)
 (= (on_board satellite3) {instrument6})
 (not (= (on_board satellite3) {instrument0 instrument1 instrument2 instrument3 instrument4 instrument5 instrument7 instrument8 instrument9}))
 (= (supports instrument0) {infrared1 spectrograph4})
 (not (= (supports instrument0) {thermograph2 infrared0 infrared3}))
 (= (supports instrument1) {infrared0 infrared1})
 (not (= (supports instrument1) {thermograph2 spectrograph4 infrared3}))
 (= (supports instrument2) {infrared0 infrared1})
 (not (= (supports instrument2) {thermograph2 spectrograph4 infrared3}))
 (= (supports instrument3) {infrared0 spectrograph4})
 (not (= (supports instrument3) {thermograph2 infrared1 infrared3}))
 (= (supports instrument4) {thermograph2 infrared0 infrared3})
 (not (= (supports instrument4) {infrared1 spectrograph4}))
 (= (supports instrument5) {infrared1})
 (not (= (supports instrument5) {thermograph2 infrared0 spectrograph4 infrared3}))
 (= (supports instrument6) {infrared1})
 (not (= (supports instrument6) {thermograph2 infrared0 spectrograph4 infrared3}))
 (= (supports instrument7) {infrared1 infrared3})
 (not (= (supports instrument7) {thermograph2 infrared0 spectrograph4}))
 (= (supports instrument8) {infrared0 spectrograph4 infrared3})
 (not (= (supports instrument8) {thermograph2 infrared1}))
 (= (supports instrument9) {infrared1 spectrograph4 infrared3})
 (not (= (supports instrument9) {thermograph2 infrared0}))
)
(:global-goal (and
 (have_image planet5 infrared0)
 (have_image phenomenon6 spectrograph4)
 (have_image star7 infrared0)
 (have_image planet8 infrared1)
 (have_image star9 spectrograph4)
 (have_image planet10 thermograph2)
 (have_image planet11 infrared3)
 (have_image phenomenon13 spectrograph4)
 (have_image star14 thermograph2)
 (have_image star15 infrared3)
 (have_image planet16 infrared1)
 (have_image phenomenon17 spectrograph4)
 (have_image star18 spectrograph4)
 (have_image star19 thermograph2)
 (have_image planet20 thermograph2)
 (have_image phenomenon21 thermograph2)
 (have_image star22 infrared1)
 (have_image star23 spectrograph4)
 (have_image phenomenon24 infrared0)
))
)
