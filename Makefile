.PHONY: dialyzer style
all: style dialyzer cover/excoveralls.html
style:
	mix format --check-formatted
	mix credo --all
dialyzer:
	mix dialyzer
cover/excoveralls.html: assets config deps lib test mix.exs
	mix coveralls.html
