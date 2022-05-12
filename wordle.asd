(defsystem "wordle"
  :version "0.1.0"
  :author "Walpurgisnatch"
  :license "MIT"
  :depends-on ("stepster")
  :components ((:module "src"
                :components
                ((:file "wordle"))))
  :description ""
  :in-order-to ((test-op (test-op "wordle/tests"))))
