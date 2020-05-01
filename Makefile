help:
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ".:*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

fabian:
fabian: ## asi es que voy a actualizar los paquetes locales e flutter
	flutter packages get

nayive:
nayive: ## voy a hacer commit automatico con este comando
	git add .
	git commit -m "$(mensaje)"

