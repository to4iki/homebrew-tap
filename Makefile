.PHONY: update new

update:
	maltmill -w $$(find Formula -name '*.rb' -type f)

# Create a new formula from a GitHub repository.
# Usage: make new SLUG=owner/repo [NAME=formula-name]
new:
	@test -n "$(SLUG)" || (echo "SLUG is required, e.g. make new SLUG=owner/repo" && exit 1)
	$(eval NAME ?= $(notdir $(SLUG)))
	maltmill new -o Formula/$(NAME).rb $(SLUG)
