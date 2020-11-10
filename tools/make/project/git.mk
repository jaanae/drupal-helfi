MODULES := $(shell find public/modules/custom -type d -name ".git" -print0 | xargs -0 dirname ) .

PHONY += copy-commit-message-script
copy-commit-message-script:
	$(foreach name,$(MODULES),cp tools/commit-message $(name)/.git/hooks;)
