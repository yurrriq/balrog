(defmodule balrog.handler.blog
  (doc "")
  (export (init 2)))

(defun init (req opts)
  ""
  (let [(reply (cowboy_req:reply 200
                 '[#(#"content-type" #"text/plain")]
                 #"Hello world!" req)))
    `#(ok ,reply ,opts)))