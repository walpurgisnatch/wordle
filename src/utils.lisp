(in-package :cl-user)
(defpackage wordle.utils
  (:use :cl))

(in-package :wordle.utils)

(defun find-char (symb word)
  (find (to-char symb) word :test #'char-equal))

(defun duplicate (symb word)
  (let ((first (pos symb word)))
    (when first (pos symb word (1+ first)))))

(defun pos (symb word &optional (start 0))
  (position (to-char symb) word :test #'char-equal :start start))

(defun to-char (char)
  (coerce char 'character))
