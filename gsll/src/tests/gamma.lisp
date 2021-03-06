;; Regression test GAMMA for GSLL, automatically generated
;;
;; Copyright 2009, 2010 Liam M. Healy
;; Distributed under the terms of the GNU General Public License
;;
;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

(in-package :gsl)

(LISP-UNIT:DEFINE-TEST GAMMA
  ;; Semi-automatically converted from specfunc/test_gamma.c
  (ASSERT-TO-TOLERANCE (LOG-GAMMA -0.1d0) 2.368961332728788655d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (LOG-GAMMA (- (/ 1.0d0 256.0d0))) 5.547444766967471595d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (LOG-GAMMA 1.0d-08) 18.420680738180208905d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (LOG-GAMMA 0.1d0) 2.252712651734205d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (LOG-GAMMA (+ 1.0d0 (/ 1.0d0 256.0d0))) -0.0022422226599611501448d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (LOG-GAMMA (+ 2.0d0 (/ 1.0d0 256.0d0))) 0.0016564177556961728692d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (LOG-GAMMA 100.0d0) 359.1342053695753d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (LOG-GAMMA (+ (- 1.0d0) (- (/ 1.0d0 65536.0d0)))) 11.090348438090047844d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (LOG-GAMMA (+ (- 1.0d0) (- (/ 1.0d0 2.68435456d8)))) 19.408121054103474300d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (LOG-GAMMA -100.5d0) -364.9009683094273518d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (LOG-GAMMA (+ (- 100) (- (/ 1.0d0 65536.0d0)))) -352.6490910117097874d0 +TEST-TOL0+)
  (assert-to-tolerance (log-gamma-sign 0.7d0)
		       '(0.26086724653166651439d0 1.0d0) +test-tol1+)
  (assert-to-tolerance (log-gamma-sign 0.1d0)
		       '(2.2527126517342059599d0 1.0d0) +test-tol0+)
  (assert-to-tolerance (log-gamma-sign -0.1d0)
		       '(2.368961332728788655d0 -1.0d0) +test-tol0+)
  (assert-to-tolerance (log-gamma-sign (+ -1.0d0 (/ -65536.0d0)))
		       '(11.090348438090047844d0 1.0d0) +test-tol0+)
  (assert-to-tolerance (log-gamma-sign (+ -2.0d0 (/ -256.0d0)))
		       '(4.848447725860607213d0 -1.0d0) +test-tol0+)
  (assert-to-tolerance (log-gamma-sign (+ -2.0d0 (/ -65536.0d0)))
		       '(10.397193628164674967d0 -1.0d0) +test-tol0+)
  (assert-to-tolerance (log-gamma-sign (+ -3.0d0 (/ -8.0d0)))
		       '(0.15431112768404182427d0 1.0d0) +test-tol2+)
  (assert-to-tolerance (log-gamma-sign -100.5d0)
		       '(-364.9009683094273518d0 -1.0d0) +test-tol0+)
  (ASSERT-TO-TOLERANCE (GAMMA (+ 1.0d0 (/ 1.0d0 4096.0d0))) 0.9998591371459403421d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (GAMMA (+ 1.0d0 (/ 1.0d0 32.0d0))) 0.9829010992836269148d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (GAMMA (+ 2.0d0 (/ 1.0d0 256.0d0))) 1.0016577903733583299d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (GAMMA 9.0d0) 40320.0d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (GAMMA 10.0d0) 362880.0d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (GAMMA 100.0d0) 9.332621544394415268d+155 +TEST-TOL2+)
  (ASSERT-TO-TOLERANCE (GAMMA 170.0d0) 4.269068009004705275d+304 +TEST-TOL2+)
  (ASSERT-TO-TOLERANCE (GAMMA 171.0d0) 7.257415615307998967d+306 +TEST-TOL2+)
  (ASSERT-TO-TOLERANCE (GAMMA -10.5d0) -2.640121820547716316d-07 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (GAMMA -11.25d0) 6.027393816261931672d-08 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (GAMMA (+ (- 1.0d0) (/ 1.0d0 65536.0d0))) -65536.42280587818970d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (GAMMA* 1.0d-08) 3989.423555759890865d0 +TEST-TOL1+)
  (ASSERT-TO-TOLERANCE (GAMMA* 1.0d-05) 126.17168469882690233d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (GAMMA* 0.001d0) 12.708492464364073506d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (GAMMA* 1.5d0) 1.0563442442685598666d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (GAMMA* 3.0d0) 1.0280645179187893045d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (GAMMA* 9.0d0) 1.0092984264218189715d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (GAMMA* 11.0d0) 1.0076024283104962850d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (GAMMA* 100.0d0) 1.0008336778720121418d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (GAMMA* 1.0d+05) 1.0000008333336805529d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (GAMMA* 1.0d+20) 1.0d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (1/GAMMA 1.0d0) 1.0d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (1/GAMMA 2.0d0) 1.0d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (1/GAMMA 3.0d0) 0.5d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (1/GAMMA 4.0d0) #.(/ 1.0d0 6.0d0) +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (1/GAMMA 10.0d0) #.(/ 1.0d0 362880.0d0) +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (1/GAMMA 100.0d0) 1.0715102881254669232d-156 +TEST-TOL2+)
  (ASSERT-TO-TOLERANCE (1/GAMMA 0.0d0) 0.0d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (1/GAMMA -1.0d0) 0.0d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (1/GAMMA -2.0d0) 0.0d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (1/GAMMA -3.0d0) 0.0d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (1/GAMMA -4.0d0) 0.0d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (1/GAMMA -10.5d0) #.(/ -2.640121820547716316d-07) +TEST-TOL2+)
  (ASSERT-TO-TOLERANCE (1/GAMMA -11.25d0) #.(/ 6.027393816261931672d-08) +TEST-TOL1+)
  (ASSERT-TO-TOLERANCE (1/GAMMA (+ (- 1.0d0) (/ 1.0d0 65536.0d0)))
		       #.(/ -65536.42280587818970d0) +TEST-TOL1+)
  (ASSERT-TO-TOLERANCE (LOG-GAMMA-COMPLEX #C(5.0d0 2.0d0))
		       '(2.7487017561338026749d0 3.0738434100497007915d0) +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (LOG-GAMMA-COMPLEX #C(100.0d0 100.0d0))
		       '(315.07804459949331323d0 2.0821801804113110099d0)
		       ;; we can't set tolerances separately, so set the widest
		       +TEST-TOL3+)
  (ASSERT-TO-TOLERANCE (LOG-GAMMA-COMPLEX #C(100.0d0 -1000.0d0))
		       '(-882.3920483010362817000d0 -2.1169293725678813270d0)
		       ;; we can't set tolerances separately, so set the widest
		       +TEST-TOL3+)
  (ASSERT-TO-TOLERANCE (LOG-GAMMA-COMPLEX #C(-100.0d0 -1.0d0))
		       '(-365.0362469529239516000d0 -3.0393820262864361140d0)
		       +TEST-TOL1+)
  (ASSERT-TO-TOLERANCE (TAYLOR-COEFFICIENT 10 (/ 1048576.0d0)) 1.7148961854776073928d-67
		       +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (TAYLOR-COEFFICIENT 10 (/ 1024.0d0)) 2.1738891788497900281d-37 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (TAYLOR-COEFFICIENT 10 1.0d0) 2.7557319223985890653d-07 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (TAYLOR-COEFFICIENT 10 5.0d0) 2.6911444554673721340d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (TAYLOR-COEFFICIENT 10 500.0d0) 2.6911444554673721340d+20 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (TAYLOR-COEFFICIENT 100 100.0d0) 1.0715102881254669232d+42 +TEST-TOL1+)
  (ASSERT-TO-TOLERANCE (TAYLOR-COEFFICIENT 1000 200.0d0) 2.6628790558154746898d-267 +TEST-TOL1+)
  (ASSERT-TO-TOLERANCE (TAYLOR-COEFFICIENT 1000 500.0d0) 2.3193170139740855074d+131 +TEST-TOL1+)
  (ASSERT-TO-TOLERANCE (FACTORIAL 0) 1.0d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (FACTORIAL 1) 1.0d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (FACTORIAL 7) 5040.0d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (FACTORIAL 33) 8.683317618811886496d+36 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (DOUBLE-FACTORIAL 0) 1.0d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (DOUBLE-FACTORIAL 1) 1.0d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (DOUBLE-FACTORIAL 7) 105.0d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (DOUBLE-FACTORIAL 33) 6.332659870762850625d+18 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (LOG-FACTORIAL 0) 0.0d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (LOG-FACTORIAL 1) 0.0d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (LOG-FACTORIAL 7) 8.525161361065414300d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (LOG-FACTORIAL 33) 85.05446701758151741d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (LOG-DOUBLE-FACTORIAL 0) 0.0d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (LOG-DOUBLE-FACTORIAL 7) 4.653960350157523371d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (LOG-DOUBLE-FACTORIAL 33) 43.292252022541719660d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (LOG-DOUBLE-FACTORIAL 34) 45.288575519655959140d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (LOG-DOUBLE-FACTORIAL 1034) 3075.6383796271197707d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (LOG-DOUBLE-FACTORIAL 1035) 3078.8839081731809169d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (LOG-CHOOSE 7 3) 3.555348061489413680d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (LOG-CHOOSE 5 2) 2.302585092994045684d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (CHOOSE 7 3) 35.0d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (CHOOSE 7 4) 35.0d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (CHOOSE 5 2) 10.0d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (CHOOSE 5 3) 10.0d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (CHOOSE 500 495) 255244687600.0d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (CHOOSE 500 5) 255244687600.0d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (CHOOSE 500 200) 5.054949849935532221d+144 +TEST-TOL5+)
  (ASSERT-TO-TOLERANCE (CHOOSE 500 300) 5.054949849935532221d+144 +TEST-TOL5+)
  (ASSERT-TO-TOLERANCE (LOG-POCHAMMER 5.0d0 0.0d0) 0.0d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (LOG-POCHAMMER 5.0d0 (/ 65536.0d0)) 0.000022981557571259389129d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (LOG-POCHAMMER 5.0d0 (/ 256.0d0)) 0.005884960217985189004d0 +TEST-TOL2+)
  (ASSERT-TO-TOLERANCE (LOG-POCHAMMER 7.0d0 3.0d0) 6.222576268071368616d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (LOG-POCHAMMER 5.0d0 2.0d0) 3.401197381662155375d0 +TEST-TOL0+)
  (assert-to-tolerance (log-pochammer-sign 5.0d0 0.0d0) '(0.0d0 1.0d0) +test-tol1+)
  (assert-to-tolerance (log-pochammer-sign -4.5d0 0.25d0)
		       '(0.7430116475119920117d0 1.0d0) +test-tol1+)
  (assert-to-tolerance (log-pochammer-sign -4.5d0 1.25d0)
		       '(2.1899306304483174731d0 -1.0d0) +test-tol1+)
  (ASSERT-TO-TOLERANCE (POCHAMMER 5.0d0 0.0d0) 1.0d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (POCHAMMER 7.0d0 3.0d0) 504.0d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (POCHAMMER 5.0d0 2.0d0) 30.0d0 +TEST-TOL1+)
  (ASSERT-TO-TOLERANCE (POCHAMMER 5.0d0 (/ 256.0d0)) 1.0059023106151364982d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (RELATIVE-POCHAMMER 5.0d0 0.0d0) 1.506117668431800472d0 +TEST-TOL1+)
  (ASSERT-TO-TOLERANCE (RELATIVE-POCHAMMER 7.0d0 3.0d0) #.(/ 503.0d0 3.0d0) +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (RELATIVE-POCHAMMER 5.0d0 2.0d0) #.(/ 29.0d0 2.0d0) +TEST-TOL1+)
  (ASSERT-TO-TOLERANCE (RELATIVE-POCHAMMER 5.0d0 0.01d0) 1.5186393661368275330d0 +TEST-TOL2+)
  (ASSERT-TO-TOLERANCE (RELATIVE-POCHAMMER -5.5d0 0.01d0) 1.8584945633829063516d0 +TEST-TOL1+)
  (ASSERT-TO-TOLERANCE (RELATIVE-POCHAMMER -5.5d0 (/ -8.0d0)) 1.0883319303552135488d0 +TEST-TOL1+)
  (ASSERT-TO-TOLERANCE (RELATIVE-POCHAMMER -5.5d0 (/ -256.0d0)) 1.7678268037726177453d0
		       +TEST-TOL1+)
  (ASSERT-TO-TOLERANCE (RELATIVE-POCHAMMER -5.5d0 -11.0d0) 0.09090909090939652475d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (POCHAMMER -9.0d0 -4.0d0) #.(/ 17160.0d0) +test-tol0+)
  (ASSERT-TO-TOLERANCE (POCHAMMER -9.0d0 -3.0d0) #.(/ -1320.0d0) +test-tol0+)
  (ASSERT-TO-TOLERANCE (POCHAMMER -9.0d0 -3.5d0) 0.0d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (POCHAMMER -9.0d0 4.0d0) 3024.0d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (POCHAMMER -9.0d0 3.0d0) -504.0d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (POCHAMMER -9.0d0 3.5d0) 0.0d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (POCHAMMER -9.0d0 0.0d0) 1.0d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (POCHAMMER -8.0d0 -4.0d0) #.(/ 11880.0d0) +test-tol0+)
  (ASSERT-TO-TOLERANCE (POCHAMMER -8.0d0 -3.0d0) #.(/ -990.0d0) +test-tol0+)
  (ASSERT-TO-TOLERANCE (POCHAMMER -8.0d0 +4.0d0) 1680.0d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (POCHAMMER -8.0d0 +3.0d0) -336.0d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (POCHAMMER -3.0d0 +4.0d0) 0.0d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (POCHAMMER -3.0d0 +3.0d0) -6.0d0 +TEST-TOL2+)
  (ASSERT-TO-TOLERANCE (POCHAMMER -4.0d0 +4.0d0) 24.0d0 +TEST-TOL2+)
  (ASSERT-TO-TOLERANCE (POCHAMMER -3.0d0 +100.0d0) 0.0d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (COMPLEMENTARY-INCOMPLETE-GAMMA 1.0d-100 0.001d0) 1.0d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (COMPLEMENTARY-INCOMPLETE-GAMMA 0.001d0 0.001d0) 0.9936876467088602902d0
		       +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (COMPLEMENTARY-INCOMPLETE-GAMMA 0.001d0 1.0d0) 0.9997803916424144436d0
		       +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (COMPLEMENTARY-INCOMPLETE-GAMMA 0.001d0 10.0d0) 0.9999999958306921828d0
		       +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (COMPLEMENTARY-INCOMPLETE-GAMMA 1.0d0 0.001d0) 0.0009995001666250083319d0
		       +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (COMPLEMENTARY-INCOMPLETE-GAMMA 1.0d0 1.01d0) 0.6357810204284766802d0
		       +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (COMPLEMENTARY-INCOMPLETE-GAMMA 1.0d0 10.0d0) 0.9999546000702375151d0
		       +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (COMPLEMENTARY-INCOMPLETE-GAMMA 10.0d0 10.01d0) 0.5433207586693410570d0
		       +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (COMPLEMENTARY-INCOMPLETE-GAMMA 10.0d0 20.0d0) 0.9950045876916924128d0
		       +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (COMPLEMENTARY-INCOMPLETE-GAMMA 1000.0d0 1000.1d0) 0.5054666401440661753d0
		       +TEST-TOL2+)
  (ASSERT-TO-TOLERANCE (COMPLEMENTARY-INCOMPLETE-GAMMA 1000.0d0 2000.0d0) 1.0d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (COMPLEMENTARY-INCOMPLETE-GAMMA 34.0d0 32.0d0)
		       0.3849626436463866776322932129d0 +TEST-TOL2+)
  (ASSERT-TO-TOLERANCE (COMPLEMENTARY-INCOMPLETE-GAMMA 37.0d0 3.499999999999999289d+01)
		       0.3898035054195570860969333039d0 +TEST-TOL2+)
  (ASSERT-TO-TOLERANCE (COMPLEMENTARY-INCOMPLETE-GAMMA 10.0d0 1.0d-16) 2.755731922398588814734648067d-167
		       +TEST-TOL2+)
  (ASSERT-TO-TOLERANCE (COMPLEMENTARY-INCOMPLETE-GAMMA 1263131.0d0 1261282.3637d0)
		       0.04994777516935182963821362168d0 +TEST-TOL4+)
  (ASSERT-TO-TOLERANCE (COMPLEMENTARY-INCOMPLETE-GAMMA 1263131.0d0 1263131.0d0)
		       0.500118321758657770672882362502514254d0 +TEST-TOL4+)
  (ASSERT-TO-TOLERANCE (INCOMPLETE-GAMMA 0.0d0 0.001d0) 0.0d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (INCOMPLETE-GAMMA 0.001d0 0.001d0) 0.006312353291139709793d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (INCOMPLETE-GAMMA 0.001d0 1.0d0) 0.00021960835758555639171d0 +TEST-TOL1+)
  (ASSERT-TO-TOLERANCE (INCOMPLETE-GAMMA 0.001d0 2.0d0) 0.00004897691783098147880d0 +TEST-TOL2+)
  (ASSERT-TO-TOLERANCE (INCOMPLETE-GAMMA 0.001d0 5.0d0) 1.1509813397308608541d-06 +TEST-TOL1+)
  (ASSERT-TO-TOLERANCE (INCOMPLETE-GAMMA 1.0d0 0.001d0) 0.9990004998333749917d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (INCOMPLETE-GAMMA 1.0d0 1.01d0) 0.3642189795715233198d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (INCOMPLETE-GAMMA 1.0d0 10.0d0) 0.00004539992976248485154d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (INCOMPLETE-GAMMA 10.0d0 10.01d0) 0.4566792413306589430d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (INCOMPLETE-GAMMA 10.0d0 100.0d0) 1.1253473960842733885d-31 +TEST-TOL2+)
  (ASSERT-TO-TOLERANCE (INCOMPLETE-GAMMA 1000.0d0 1000.1d0) 0.4945333598559338247d0 +TEST-TOL2+)
  (ASSERT-TO-TOLERANCE (INCOMPLETE-GAMMA 1000.0d0 2000.0d0) 6.847349459614753180d-136 +TEST-TOL2+)
  (ASSERT-TO-TOLERANCE (INCOMPLETE-GAMMA 100.0d0 99.0d0) 0.5266956696005394d0 +TEST-TOL2+)
  (ASSERT-TO-TOLERANCE (INCOMPLETE-GAMMA 200.0d0 199.0d0) 0.5188414119121281d0 +TEST-TOL2+)
  (ASSERT-TO-TOLERANCE (COMPLEMENTARY-INCOMPLETE-GAMMA 100.0d0 99.0d0) 0.4733043303994607d0 +TEST-TOL2+)
  (ASSERT-TO-TOLERANCE (COMPLEMENTARY-INCOMPLETE-GAMMA 200.0d0 199.0d0) 0.4811585880878718d0 +TEST-TOL2+)
  (ASSERT-TO-TOLERANCE (COMPLEMENTARY-INCOMPLETE-GAMMA 5670.0d0 4574.0d0) 3.063972328743934d-55 +TEST-TOL2+)
  (ASSERT-TO-TOLERANCE (INCOMPLETE-GAMMA 5670.0d0 4574.0d0) 1.0000000000000000d0 +TEST-TOL2+)
  (ASSERT-TO-TOLERANCE (INCOMPLETE-GAMMA (+ 1.0d+06 -1.0d0) (+ 1.0d+06 -2.0d0))
		       0.50026596175224547004d0 +TEST-TOL3+)
  (ASSERT-TO-TOLERANCE (INCOMPLETE-GAMMA (+ 1.0d+06 2.0d0) (+ 1.0d+06 1.0d0))
		       0.50026596135330304336d0 +TEST-TOL2+)
  (ASSERT-TO-TOLERANCE (INCOMPLETE-GAMMA 1.0d+06 (+ 1.0d+06 -2.0d0))
		       0.50066490399940144811d0 +TEST-TOL2+)
  (ASSERT-TO-TOLERANCE (INCOMPLETE-GAMMA 1.0d+07 (+ 1.0d+07 -2.0d0))
		       0.50021026104978614908d0 +TEST-TOL2+)
  (ASSERT-TO-TOLERANCE (NONNORMALIZED-INCOMPLETE-GAMMA (/ -1048576.0d0) (/ 1048576.0d0))
		       13.285819596290624271d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (NONNORMALIZED-INCOMPLETE-GAMMA -0.001d0 (/ 1048576.0d0))
		       13.381275128625328858d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (NONNORMALIZED-INCOMPLETE-GAMMA -1.0d0 (/ 1048576.0d0))
		       1.0485617142715768655d+06 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (NONNORMALIZED-INCOMPLETE-GAMMA -0.00001d0 0.001d0) 6.3317681434563592142d0
		       +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (NONNORMALIZED-INCOMPLETE-GAMMA -0.0001d0 0.001d0) 6.3338276439767189385d0
		       +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (NONNORMALIZED-INCOMPLETE-GAMMA -0.001d0 0.001d0) 6.3544709102510843793d0
		       +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (NONNORMALIZED-INCOMPLETE-GAMMA -0.5d0 0.001d0) 59.763880515942196981d0
		       +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (NONNORMALIZED-INCOMPLETE-GAMMA -1.0d0 0.001d0) 992.66896046923884234d0
		       +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (NONNORMALIZED-INCOMPLETE-GAMMA -3.5d0 0.001d0) 9.0224404490639003706d+09
		       +TEST-TOL1+)
  (ASSERT-TO-TOLERANCE (NONNORMALIZED-INCOMPLETE-GAMMA -10.5d0 0.001d0) 3.0083661558184815656d+30
		       +TEST-TOL2+)
  (ASSERT-TO-TOLERANCE (NONNORMALIZED-INCOMPLETE-GAMMA -0.001d0 0.1d0) 1.8249109609418620068d0
		       +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (NONNORMALIZED-INCOMPLETE-GAMMA -0.5d0 0.1d0) 3.4017693366916154163d0
		       +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (NONNORMALIZED-INCOMPLETE-GAMMA -10.0d0 0.1d0) 8.9490757483586989181d+08
		       +TEST-TOL1+)
  (ASSERT-TO-TOLERANCE (NONNORMALIZED-INCOMPLETE-GAMMA -10.5d0 0.1d0) 2.6967403834226421766d+09
		       +TEST-TOL1+)
  (ASSERT-TO-TOLERANCE (NONNORMALIZED-INCOMPLETE-GAMMA -0.001d0 1.0d0) 0.21928612679072766340d0
		       +TEST-TOL1+)
  (ASSERT-TO-TOLERANCE (NONNORMALIZED-INCOMPLETE-GAMMA -0.5d0 1.0d0) 0.17814771178156069019d0
		       +TEST-TOL1+)
  (ASSERT-TO-TOLERANCE (NONNORMALIZED-INCOMPLETE-GAMMA -1.0d0 1.0d0) 0.14849550677592204792d0
		       +TEST-TOL1+)
  (ASSERT-TO-TOLERANCE (NONNORMALIZED-INCOMPLETE-GAMMA -2.5d0 1.0d0) 0.096556648631275160264d0
		       +TEST-TOL1+)
  (ASSERT-TO-TOLERANCE (NONNORMALIZED-INCOMPLETE-GAMMA -1.0d0 10.0d0) 3.8302404656316087616d-07
		       +TEST-TOL1+)
  (ASSERT-TO-TOLERANCE (NONNORMALIZED-INCOMPLETE-GAMMA -0.001d0 10.0d0) 4.1470562324807320961d-06
		       +TEST-TOL1+)
  (ASSERT-TO-TOLERANCE (NONNORMALIZED-INCOMPLETE-GAMMA -0.5d0 10.0d0) 1.2609042613241570681d-06
		       +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (NONNORMALIZED-INCOMPLETE-GAMMA -1.0d0 10.0d0) 3.8302404656316087616d-07
		       +TEST-TOL1+)
  (ASSERT-TO-TOLERANCE (NONNORMALIZED-INCOMPLETE-GAMMA -10.5d0 10.0d0) 6.8404927328441566785d-17
		       +TEST-TOL1+)
  (ASSERT-TO-TOLERANCE (NONNORMALIZED-INCOMPLETE-GAMMA -100.0d0 10.0d0) 4.1238327669858313997d-107
		       +TEST-TOL2+)
  (ASSERT-TO-TOLERANCE (NONNORMALIZED-INCOMPLETE-GAMMA -200.0d0 10.0d0) 2.1614091830529343423d-207
		       +TEST-TOL2+)
  (ASSERT-TO-TOLERANCE (NONNORMALIZED-INCOMPLETE-GAMMA 0.0d0 0.001d0) 6.3315393641361493320d0
		       +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (NONNORMALIZED-INCOMPLETE-GAMMA 0.001d0 0.001d0) 6.3087159394864007261d0
		       +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (NONNORMALIZED-INCOMPLETE-GAMMA 1.0d0 0.001d0) 0.99900049983337499167d0
		       +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (NONNORMALIZED-INCOMPLETE-GAMMA 10.0d0 0.001d0) 362880.0d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (NONNORMALIZED-INCOMPLETE-GAMMA 0.0d0 1.0d0) 0.21938393439552027368d0
		       +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (NONNORMALIZED-INCOMPLETE-GAMMA 0.001d0 1.0d0) 0.21948181320730279613d0
		       +TEST-TOL1+)
  (ASSERT-TO-TOLERANCE (NONNORMALIZED-INCOMPLETE-GAMMA 1.0d0 1.0d0) 0.36787944117144232160d0
		       +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (NONNORMALIZED-INCOMPLETE-GAMMA 10.0d0 1.0d0) 362879.95956592242045d0
		       +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (NONNORMALIZED-INCOMPLETE-GAMMA 100.0d0 1.0d0) 9.3326215443944152682d+155
		       +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (NONNORMALIZED-INCOMPLETE-GAMMA 0.0d0 100.0d0) 3.6835977616820321802d-46
		       +TEST-TOL2+)
  (ASSERT-TO-TOLERANCE (NONNORMALIZED-INCOMPLETE-GAMMA 0.001d0 100.0d0) 3.7006367674063550631d-46
		       +TEST-TOL2+)
  (ASSERT-TO-TOLERANCE (NONNORMALIZED-INCOMPLETE-GAMMA 1.0d0 100.0d0) 3.7200759760208359630d-44
		       +TEST-TOL2+)
  (ASSERT-TO-TOLERANCE (NONNORMALIZED-INCOMPLETE-GAMMA 10.0d0 100.0d0) 4.0836606309106112723d-26
		       +TEST-TOL2+)
  (ASSERT-TO-TOLERANCE (NONNORMALIZED-INCOMPLETE-GAMMA 100.0d0 100.0d0) 4.5421981208626694294d+155
		       +TEST-TOL1+)
  (ASSERT-TO-TOLERANCE (LOG-BETA 1.0d-8 1.0d-8) 19.113827924512310617d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (LOG-BETA 1.0d-8 0.01d0) 18.420681743788563403d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (LOG-BETA 1.0d-8 1.0d0) 18.420680743952365472d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (LOG-BETA 1.0d-8 10.0d0) 18.420680715662683009d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (LOG-BETA 1.0d-8 1000.0d0) 18.420680669107656949d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (LOG-BETA 0.1d0 0.1d0) 2.9813614810376273949d0 +TEST-TOL1+)
  (ASSERT-TO-TOLERANCE (LOG-BETA 0.1d0 1.0d0) 2.3025850929940456840d0 +TEST-TOL1+)
  (ASSERT-TO-TOLERANCE (LOG-BETA 0.1d0 100.0d0) 1.7926462324527931217d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (LOG-BETA 0.1d0 1000.0d0) 1.5619821298353164928d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (LOG-BETA 1.0d0 1.00025d0) -0.0002499687552073570d0 +TEST-TOL4+)
  (ASSERT-TO-TOLERANCE (LOG-BETA 1.0d0 1.01d0) -0.009950330853168082848d0 +TEST-TOL3+)
  (ASSERT-TO-TOLERANCE (LOG-BETA 1.0d0 1000.0d0) -6.907755278982137052d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (LOG-BETA 100.0d0 100.0d0) -139.66525908670663927d0 +TEST-TOL2+)
  (ASSERT-TO-TOLERANCE (LOG-BETA 100.0d0 1000.0d0) -336.4348576477366051d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (LOG-BETA 100.0d0 1.0d+8) -1482.9339185256447309d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (BETA 1.0d0 1.0d0) 1.0d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (BETA 1.0d0 1.001d0) 0.9990009990009990010d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (BETA 1.0d0 5.0d0) 0.2d0 +TEST-TOL1+)
  (ASSERT-TO-TOLERANCE (BETA 1.0d0 100.0d0) 0.01d0 +TEST-TOL1+)
  (ASSERT-TO-TOLERANCE (BETA 10.0d0 100.0d0) 2.3455339739604649879d-15 +TEST-TOL2+)
  (ASSERT-TO-TOLERANCE (BETA 2.5d0 -0.1d0) -11.43621278354402041480d0 +TEST-TOL2+)
  (ASSERT-TO-TOLERANCE (BETA 2.5d0 -1.1d0) 14.555179906328753255202d0 +TEST-TOL2+)
  (ASSERT-TO-TOLERANCE (BETA -0.25d0 -0.1d0) -13.238937960945229110d0 +TEST-TOL2+)
  (ASSERT-TO-TOLERANCE (BETA -1.25d0 -0.1d0) -14.298052997820847439d0 +TEST-TOL2+)
  (ASSERT-TO-TOLERANCE (BETA -100.1d0 -99.1d0) -1.005181917797644630375787297d60 +TEST-TOL3+)
  (ASSERT-TO-TOLERANCE (BETA -100.1d0 99.3d0) 0.0004474258199579694011200969001d0 +TEST-TOL2+)
  (ASSERT-TO-TOLERANCE (BETA 100.1d0 -99.3d0) 1.328660939628876472028853747d0 +TEST-TOL2+)
  (ASSERT-TO-TOLERANCE (BETA -100.1d0 1.2d0) 0.00365530364287960795444856281d0 +TEST-TOL3+)
  (ASSERT-TO-TOLERANCE (BETA 100.1d0 -1.2d0) 1203.895236907821059270698160d0 +TEST-TOL2+)
  (ASSERT-TO-TOLERANCE (BETA -100.1d0 -1.2d0) -3236.073671884748847700283841d0 +TEST-TOL2+)
  (ASSERT-TO-TOLERANCE (BETA -100.001d0 0.0099d0) -853.946649365611147996495177d0 +TEST-TOL4+)
  (ASSERT-TO-TOLERANCE (BETA 1.0d-32 1.5d0) 1.0d32 +TEST-TOL2+)
  (ASSERT-TO-TOLERANCE (BETA 1.0d-6 0.5d0) 1000001.386293677092419390336d0 +TEST-TOL2+)
  (ASSERT-TO-TOLERANCE (BETA -1.5d0 0.5d0) 0.0d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (INCOMPLETE-BETA 1.0d0 1.0d0 0.0d0) 0.0d0 +TEST-TOL2+)
  (ASSERT-TO-TOLERANCE (INCOMPLETE-BETA 1.0d0 1.0d0 1.0d0) 1.0d0 +TEST-TOL2+)
  (ASSERT-TO-TOLERANCE (INCOMPLETE-BETA 0.1d0 0.1d0 1.0d0) 1.0d0 +TEST-TOL2+)
  (ASSERT-TO-TOLERANCE (INCOMPLETE-BETA 1.0d0 1.0d0 0.5d0) 0.5d0 +TEST-TOL2+)
  (ASSERT-TO-TOLERANCE (INCOMPLETE-BETA 0.1d0 1.0d0 0.5d0) 0.9330329915368074160d0 +TEST-TOL2+)
  (ASSERT-TO-TOLERANCE (INCOMPLETE-BETA 10.0d0 1.0d0 0.5d0) 0.0009765625000000000000d0 +TEST-TOL2+)
  (ASSERT-TO-TOLERANCE (INCOMPLETE-BETA 50.0d0 1.0d0 0.5d0) 8.881784197001252323d-16 +TEST-TOL2+)
  (ASSERT-TO-TOLERANCE (INCOMPLETE-BETA 1.0d0 0.1d0 0.5d0) 0.06696700846319258402d0 +TEST-TOL2+)
  (ASSERT-TO-TOLERANCE (INCOMPLETE-BETA 1.0d0 10.0d0 0.5d0) 0.99902343750000000000d0 +TEST-TOL2+)
  (ASSERT-TO-TOLERANCE (INCOMPLETE-BETA 1.0d0 50.0d0 0.5d0) 0.99999999999999911180d0 +TEST-TOL2+)
  (ASSERT-TO-TOLERANCE (INCOMPLETE-BETA 1.0d0 1.0d0 0.1d0) 0.10d0 +TEST-TOL2+)
  (ASSERT-TO-TOLERANCE (INCOMPLETE-BETA 1.0d0 2.0d0 0.1d0) 0.19d0 +TEST-TOL2+)
  (ASSERT-TO-TOLERANCE (INCOMPLETE-BETA 1.0d0 2.0d0 0.9d0) 0.99d0 +TEST-TOL2+)
  (ASSERT-TO-TOLERANCE (INCOMPLETE-BETA 50.0d0 60.0d0 0.5d0) 0.8309072939016694143d0 +TEST-TOL2+)
  (ASSERT-TO-TOLERANCE (INCOMPLETE-BETA 90.0d0 90.0d0 0.5d0) 0.5d0 +TEST-TOL2+)
  (ASSERT-TO-TOLERANCE (INCOMPLETE-BETA 500.0d0 500.0d0 0.6d0) 0.9999999999157549630d0 +TEST-TOL2+)
  (ASSERT-TO-TOLERANCE (INCOMPLETE-BETA 5000.0d0 5000.0d0 0.4d0) 4.518543727260666383d-91 +TEST-TOL5+)
  (ASSERT-TO-TOLERANCE (INCOMPLETE-BETA 5000.0d0 5000.0d0 0.6d0) 1.0d0 +TEST-TOL2+)
  (ASSERT-TO-TOLERANCE (INCOMPLETE-BETA 5000.0d0 2000.0d0 0.6d0) 8.445388773903332659d-89 +TEST-TOL5+)
  (ASSERT-TO-TOLERANCE (INCOMPLETE-BETA -0.1d0 -0.1d0 1.0d0) 1.0d0 +TEST-TOL2+)
  (ASSERT-TO-TOLERANCE (INCOMPLETE-BETA -0.1d0 -0.2d0 1.0d0) 1.0d0 +TEST-TOL2+)
  (ASSERT-TO-TOLERANCE (INCOMPLETE-BETA -0.2d0 -0.1d0 1.0d0) 1.0d0 +TEST-TOL2+)
  (ASSERT-TO-TOLERANCE (INCOMPLETE-BETA -0.1d0 -0.2d0 0.5d0) 0.675252001958389971991335d0 +TEST-TOL2+)
  (ASSERT-TO-TOLERANCE (INCOMPLETE-BETA -0.2d0 -0.1d0 0.5d0) 0.324747998041610028008665d0 +TEST-TOL2+)
  (ASSERT-TO-TOLERANCE (INCOMPLETE-BETA -0.1d0 -0.1d0 0.0d0) 0.0d0 +TEST-TOL2+)
  (ASSERT-TO-TOLERANCE (INCOMPLETE-BETA -0.1d0 -0.2d0 0.0d0) 0.0d0 +TEST-TOL2+)
  (ASSERT-TO-TOLERANCE (INCOMPLETE-BETA -0.2d0 -0.1d0 0.0d0) 0.0d0 +TEST-TOL2+)
  (ASSERT-TO-TOLERANCE (INCOMPLETE-BETA -0.1d0 -0.2d0 0.3d0) 0.7469186777964287252d0 +TEST-TOL2+)
  (ASSERT-TO-TOLERANCE (INCOMPLETE-BETA -0.2d0 -0.1d0 0.3d0) 0.3995299653262016818d0 +TEST-TOL2+)
  )
