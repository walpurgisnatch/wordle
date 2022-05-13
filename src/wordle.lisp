(in-package :cl-user)
(defpackage wordle
  (:use :cl
        :wordle.utils))

(in-package :wordle)

(defparameter *dictionary* '("ооооо" "салат" "лыжня" "зерги" "ясбью" "номер" "вагон" "комар"))
(defparameter *popular* '("о" "у" "а" "и" "н" "т" "с" "р" "в" "л"))

(defun first-word ()
  (loop for i in *dictionary* do
    (when (find-char (elt *popular* 0) i)
        (return i))))

(defun random-word ()
  (apply #'concatenate 'string
         (loop for i to 4 collect
                          (elt *popular* (random (length *popular*))))))
