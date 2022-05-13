(in-package :cl-user)
(defpackage wordle.utils
  (:use :cl))

(in-package :wordle.utils)

(defun find-char (char string)
  (find (coerce char 'character) string :test #'char-equal))
