all: dist/Simple.html dist/Advanced.html test

dist/%.html: $(shell find src examples -type f -name '*.elm' -o -name '*.js') dist
	elm-make examples/$*/App.elm --yes --warn --output=$@

dist:
	@mkdir $@

.PHONY: test
test:
	elm-test
