(defmodule tut
  (export (fac 1) (tail-fac 1)))

(defun fac
  ((1) 1)
  ((n) (* n (fac (- n 1)))))

(defun tail-fac
  ((1 t) t)
  ((n t) (tail-fac (- n 1) (* n t)))
  )

(defun tail-fac
  ((n) (tail-fac n 1)))