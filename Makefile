.PHONY: clean dialyzer outdated style test update-deps
all: clean style dialyzer test
clean:
	mix clean
	MIX_ENV=test mix clean
outdated:
	mix hex.outdated
update-deps:
	mix deps.update --all
style:
	mix format --check-formatted
	mix credo --all
dialyzer:
	mix dialyzer
test:
	MIX_ENV=test mix do compile --warnings-as-errors + coveralls.html --warnings-as-errors
