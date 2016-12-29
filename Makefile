# If the content changes, so should the URL. Facebook caches this forever.
opengraph_fb = opengraph-fb-1.png

all: $(opengraph_fb)

clean:
	rm -f $(opengraph_fb) icon-transparent-630.png

# Facebook recommends a size of 1200x360.
# https://developers.facebook.com/docs/sharing/best-practices#images
$(opengraph_fb): icon-transparent-630.png
	convert -background "#174854" $< -gravity center -extent 1200x630 $@

icon-transparent-630.png: icon-transparent.svg
	rsvg -w 630 -h 630 -a $< $@
