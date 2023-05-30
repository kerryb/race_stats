all: cover/excoveralls.html

cover/excoveralls.html: assets config deps lib test mix.exs
	mix coveralls.html
