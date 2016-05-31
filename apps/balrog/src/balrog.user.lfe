(defmodule balrog.user
  (behaviour gen_server)
  (export (init 0) (loop 0)))

(eval-when-compile (lfe_io:format "~p\n" (list (code:lib_dir 'balrog 'include))))


(include-lib "lutil/include/mnesia-macros.lfe")
(include-lib "balrog/include/data.lfe")

(defun get [id]
  ())

(defun update [id fields]
  ())

(defun create [id pass email data enabled]
  ())

(defun init []
  ())

(defun loop []
  (receive
    [(tuple from (tuple 'get id))
     (get id)]
    [(tuple from (tuple 'update id fields))
     (update id fields)]
    [(tuple from (tuple 'create id pass email data enabled))
     (create id pass email data enabled)]
      ))

