(in-package :cl-user)
(defpackage wordle
  (:use :cl
        :wordle.utils))

(in-package :wordle)

(defparameter *dictionary* '("ооооо" "салат" "лыжня" "зерги" "ясбью" "номер" "вагон" "комар"))
(defparameter *alphabet* '(("а" . 2172) ("о" . 1476) ("к" . 1237) ("р" . 1100) ("и" . 935)
 ("т" . 913) ("е" . 891) ("л" . 837) ("н" . 810) ("с" . 792) ("у" . 644)
 ("п" . 588) ("м" . 546) ("в" . 470) ("б" . 462) ("д" . 445) ("з" . 357)
 ("г" . 335) ("я" . 275) ("ь" . 271) ("ш" . 263) ("ч" . 213) ("х" . 199)
 ("ы" . 197) ("ж" . 179) ("ф" . 173) ("ц" . 156) ("й" . 152) ("ё" . 151)
 ("ю" . 90) ("щ" . 45) ("э" . 35) ("ъ" . 5)))
(defparameter *popular* '("о" "у" "а" "и" "н" "т" "с" "р" "в" "л"))

(defun first-word ()
  (let ((words nil))
    (loop for word in *dictionary* collect
      (cons word (check-word word)))))

(defun check-word (word)
  (let ((rate 0))
    (loop for i in *popular* do
      (cond ((and (find-char i word)
                  (not (duplicate i word)))
             (incf rate))
            ((duplicate i word)
             (decf rate))))
    rate))

(defun random-word ()
  (apply #'concatenate 'string
         (loop for i to 4 collect
                          (elt *popular* (random (length *popular*))))))
