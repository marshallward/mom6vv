URL=http://lab.hakim.se/reveal-js
REPO=https://github.com/hakimel/reveal.js/archive/master.zip
THEME=gfdl
FLAGS=-s \
	  -f rst -t revealjs \
	  --slide-level=2 \
	  -V revealjs-url=./reveal.js \
	  -V theme=${THEME} \
	  -V slideNumber=true \
	  --template=gfdl.revealjs \
	  --no-highlight

all: index.html reveal.js

reveal.js:
	wget -N ${REPO}
	unzip master.zip
	mv reveal.js-master reveal.js
	cp gfdl.css reveal.js/css/theme/

index.html: slides.txt gfdl.revealjs
	pandoc ${FLAGS} $^ -o $@

clean:
	rm -f index.html 
