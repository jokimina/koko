

BRANCH := $(shell git symbolic-ref HEAD 2>/dev/null | cut -d"/" -f 3)
BUILD := $(shell git rev-parse --short HEAD)
VERSION = $(BRANCH)-$(BUILD)

NAME := koko
DIRNAME := kokodir
BASEPATH := $(shell pwd)
CGO_ENABLED = 0
GOCMD = go
GOBUILD = $(GOCMD) build

SOFTWARENAME=$(NAME)-$(VERSION)
KOKOSRCFILE= cmd/koko.go
BUILDDIR:=$(BASEPATH)/build
ASSETS=cmd/locale cmd/static cmd/templates cmd/config_example.yml

PLATFORMS := linux darwin

.PHONY: release
release: linux darwin


.PHONY:Asset
Asset:
	@[ -d $(BUILDDIR) ] || mkdir -p $(BUILDDIR)
	@[ -d $(DIRNAME) ] || mkdir -p $(DIRNAME)
	cp -r $(ASSETS) $(DIRNAME)

.PHONY: $(PLATFORMS)
$(PLATFORMS): Asset
	@echo "编译" $@
	GOOS=$@ GOARCH=amd64 go build -o $(NAME) $(KOKOSRCFILE)
	cp -f $(NAME) $(DIRNAME)
	tar czvf $(BUILDDIR)/$(SOFTWARENAME)-$@-amd64.tar.gz $(DIRNAME)

.PHONY: docker
docker:
	@echo "build docker images"
	docker build -t koko --build-arg http_proxy=$(http_proxy) --build-arg https_proxy=$(https_proxy) $(BASEPATH)/../

.PHONY: clean
clean:
	-rm -rf $(NAME)
	-rm -rf $(DIRNAME)
	-rm -rf $(BUILDDIR)


