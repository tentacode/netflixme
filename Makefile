.PHONY: help install up down restart ps shell-frontend shell-backend shell-db logs clean test

# Colors
CYAN = \033[0;36m
GREEN = \033[0;32m
YELLOW = \033[0;33m
NC = \033[0m # No Color

help: ## Display this help message
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

setup: ## Provision server
	ansible-playbook -i hosts setup.yml --extra-vars="@netflixme-vars.yml"
