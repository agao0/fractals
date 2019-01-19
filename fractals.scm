;;; Scheme Recursive Art Contest Entry
;;;
;;; Please do not include your name or personal info in this file.
;;;
;;; Title: <Your title here>
;;;
;;; Description:
;;;   <Be the very best
;;;    
;;;    Gotta catch them all.>

(define (draw)
  (speed 0)
  (setpos 1000 -500)

  (begin_fill)
  (color "black")
  (square 2000)
  (end_fill)  
  
  (setpos 0 0)
  (color "#FAF923")
  (pendown)
;  (lt 30)
;  (repeat 6
;    (lambda () (Koch 3 200) (rt 300)))
;  (SDragon 6 200 1)
;  (Heighway 10 200 1)
;  (Barnsley 5 200)
;  (Gasket 5 200)
;  (lt 30)
  (begin_fill)
  (polygon 200 3)
  (end_fill)
  (GasketTrema 5 200)





;  (display (random 10))

  (hideturtle)
  )

  ;(exitonclick))
(define (square x)
  (repeat 4
    (lambda () (fd x) (lt 90))))

(define (big)
    (repeat 60
       (lambda () (circle 200) (fd 100) (lt 80) (rt 30))))

(define (medium)
    (repeat 40
       (lambda () (circle 25) (fd 60) (lt 80) (rt 30))))
(define (small)
    (repeat 15
       (lambda () (circle 10) (fd 20) (lt 80) (rt 30))))

(define (polygon size n)
    (repeat n
      (lambda () (fd size) (lt (/ 360 n)))))


; For the fractals:
(define (Koch depth size)
  (if (= depth 0)
    (fd size)
    (begin 
      (Koch (- depth 1) (/ size 3))
      (lt 60)
      (Koch (- depth 1) (/ size 3))
      (rt 120)
      (Koch (- depth 1) (/ size 3))
      (lt 60)
      (Koch (- depth 1) (/ size 3)))))

(define (Heighway depth size parity)
  (define l (/ 1 (sqrt 2)))
  (if (= depth 0)
    (fd size)
    (begin 
      (lt (* parity 45))
      (Heighway (- depth 1) (* size l) 1)
      (rt (* parity 90))
      (Heighway (- depth 1) (* size l) (- 0 1))
      (lt (* parity 45)))))

(define (SDragon depth size parity)
  (if (= depth 0)
    (fd size)
    (begin 
      (lt (* 60 parity))
      (SDragon (- depth 1) (/ size 2) (- 0  parity))
      (rt (* 60 parity))
      (SDragon (- depth 1) (/ size 2) parity)
      (rt (* 60 parity))
      (SDragon (- depth 1) (/ size 2) (- 0 parity))
      (lt (* 60 parity)))))

(define (Barnsley depth size)
  (define stwo (sqrt 2))
  (if (< depth 1)
    (begin (fd (* 2 size)) (bk (* 2 size)))
    (begin
      (fd size)
      (Barnsley (- depth 2) (/ size 2))
      (bk size)
      (lt 45)
      (Barnsley (- depth 1) (/ size stwo))
      (rt 90)
      (Barnsley (- depth 1) (/ size stwo))
      (lt 45))))

; How to minimize line redraws??????
(define (Gasket depth size)
  (if (= depth 0)
    (polygon size 3)
    (begin
      (Gasket (- depth 1) (/ size 2))
      (fd (/ size 2))
      (Gasket (- depth 1) (/ size 2))
      (lt 60)
      (fd (/ size 2))
      (lt 120)
      (fd (/ size 2))
      (lt 180)
      (Gasket (- depth 1) (/ size 2))
      (rt 120)
      (fd (/ size 2))
      (lt 120))))

(define (GasketTrema depth size)
  (if (= depth 1)
    (begin
      (fd (/ size 2))
      (lt 60)
      (begin_fill)
      (color "black")
      (polygon (/ size 2) 3)
      (end_fill)
      (rt 60)
      (bk (/ size 2)))

      (begin
        (GasketTrema (- depth 1) size)
        (GasketTrema (- depth 1) (/ size 2))
        (fd (/ size 2))
        (GasketTrema (- depth 1) (/ size 2))
        (bk (/ size 2))
        (lt 60)
        (fd (/ size 2))
        (rt 60)
        (GasketTrema (- depth 1) (/ size 2))
        (lt 60)
        (bk (/ size 2))
        (rt 60))))

(define (repeat k fn)
    (if (> k 1)
        (begin (fn) (repeat (- k 1) fn)) (fn)))

; Please leave this last line alone.  You may add additional procedures above
; this line.
(draw)