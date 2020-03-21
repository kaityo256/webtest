INDEX=$(shell ls README.md | sed 's/README.md/index.html/')
PANDOC_HTMLOPT=--mathjax -t html --template=template
TARGET=$(INDEX)

all: $(TARGET) index.html

index.html: README.md
	pandoc -s $< -o $@ $(PANDOC_HTMLOPT)

clean:
	rm -f $(TARGET) index.html
