.PHONY: style
all: style cover/excoveralls.html
style:
	mix format --check-formatted
	mix credo --all
cover/excoveralls.html: assets config deps lib test mix.exs
	mix coveralls.html
