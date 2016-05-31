(defmodule balrog.app
  (behaviour application)
  (export (start 2) (stop 1)))

(include-lib "balrog/include/data.lfe")

(defun start [_type _args]
  "Start the webserver (cowboy)"
  (let* [(routes '[#(_ [#("/" balrog.handler.blog [])])])
	 (dispatch  (cowboy_router:compile routes))
	 (`#(ok ,_) (cowboy:start_http 'http 100 '[#(port 8080)] `[#(env [#(dispatch ,dispatch)])]))]
    (balrog.sup:start_link)))

(defun stop (_state)
  "Stops the webserver (cowboy)"
  'ok)
