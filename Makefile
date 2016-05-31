include resources/make/common.mk
include resources/make/otp.mk

# lfemacs-test: compile-no-deps compile-tests
#     @PATH=$(SCRIPT_PATH) ERL_LIBS=$(ERL_LIBS) \
#     erl -cwd "`pwd`" -listener eunit_progress -eval \
#     "case 'ltest-runner':all() of ok -> halt(0); _ -> halt(127) end" \
#     -noshell
