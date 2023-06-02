.PHONY: clean dialyzer style test
all: clean style dialyzer test
clean:
	mix clean
	MIX_ENV=test mix clean
style:
	mix format --check-formatted
	mix credo --all
dialyzer:
	mix dialyzer
test:
	MIX_ENV=test mix do compile --warnings-as-errors + coveralls.html --warnings-as-errors
