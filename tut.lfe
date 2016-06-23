(defmodule tut
  (export [fac 1] [tail-fac 1]
	  [convert 2] [convert-length 1] [list-length 1]
	  ))

(defun fac
  ([1] 1)
  ([n] (* n (fac (- n 1)))))

(defun tail-fac
  ([1 t] t)
  ([n t] (tail-fac (- n 1) (* n t))))

(defun tail-fac
  ([n] (tail-fac n 1)))

(defun convert
  ([m 'inch] (/ m 2.54))
  ([n 'centimeter] (* n 2.54)))

(defun convert-length
  ([(tuple 'centimeter x)] (tuple 'inch (/ x 2.54)))
  ([(tuple 'inch y)] (tuple 'centimeter (* y 2.54))))

(defun list-length
  ([()] 0)
  ([(cons first rest)]
   (+ 1 (list-length rest))))