.PHONY: get build run analyze

get:
	dart pub get

build:
	dart run jaspr_cli:jaspr build

run: build
	cd build/jaspr && python3 -m http.server 8080

analyze:
	dart analyze
