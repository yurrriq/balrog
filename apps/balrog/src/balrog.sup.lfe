(defmodule balrog.sup
  (behaviour supervisor)
  ;; API
  (export (start_link 0))
  ;; Supervisor
  (export (init 1)))

(defun start_link ()
  "Create a supervisor process as part of a supervision tree."
  (supervisor:start_link `#(local ,(MODULE)) (MODULE) []))

(defun init
  "Return the supervisor flags and child specifications."
  (['()]
   (let ((children []))
     `#(ok #(,(map 'strategy  'one_for_one
                   'intensity 10
                   'period    10)
             ,children)))))
