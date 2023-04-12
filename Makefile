FLAGS += --bundle
FLAGS += --external:*.svg
FLAGS += --inject:src/inject.ts
FLAGS += --loader:.html=copy
FLAGS += --mangle-props=_$$
FLAGS += --minify
FLAGS += --outdir=public
FLAGS += --target=chrome51
FLAGS += src/index.html
FLAGS += src/index.ts

build:
	npx esbuild $(FLAGS) --define:LIVE_RELOAD=false
