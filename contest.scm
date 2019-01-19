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
  (setpos 893 -500)

  (begin_fill)
  (color "black")
  (square 1000)
  (end_fill)  
  
  (setpos 0 0)
  (color "#006699")
  (big)
  (penup)
  (color "#368A86")
  (setpos -178 58)
  (pendown)
  (medium)
  (penup)
  (color "#99FFEE")
  (setpos -85 59)
  (pendown)
  (small)
  (penup)
  (color "#368A86")
  (setpos 400 100)
  (pendown)
  (medium)
  (penup)
  (color "#99FFEE")
  (setpos 340 30)
  (pendown)
  (small)
  (penup)
  (color "#99FFEE")
  (setpos 500 27)
  (pendown)
  (small)
  (penup)
  (color "#368A86")
  (setpos -527 -10)
  (pendown)
  (medium)
  (penup)
  (color "#99FFEE")
  (setpos -587 62)
  (pendown)
  (small)

  (hideturtle)
  )

  ;(exitonclick))
(define (square x)
  (repeat 4
    (lambda () (fd x) (lt 90))))

(define (big)
    (repeat 40
       (lambda () (circle 200) (fd 100) (lt 80) (rt 30))))

(define (medium)
    (repeat 40
       (lambda () (circle 25) (fd 60) (lt 80) (rt 30))))
(define (small)
    (repeat 15
       (lambda () (circle 10) (fd 20) (lt 80) (rt 30))))


(define (repeat k fn)
    (if (> k 1)
        (begin (fn) (repeat (- k 1) fn)) (fn)))


; Please leave this last line alone.  You may add additional procedures above
; this line.
(draw)