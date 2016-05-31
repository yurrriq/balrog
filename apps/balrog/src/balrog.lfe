(defmodule balrog
  (export (start 0)))

(defun start []
  ""
  (application:ensure_all_started 'balrog))