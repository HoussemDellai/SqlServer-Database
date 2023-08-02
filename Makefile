##https://dev.to/jerrynsh/4-levels-of-how-to-use-makefile-4oad
NAME := sample-db-project
DOCKER := $(shell command -v docker 2> /dev/null)
ENV_VAR := $(shell echo $${ENV_VAR-development}) # NOTE: double $ for escaping
ENV_ANOTHER_VAR ?= bar
SLN_NAME := ./SqlServerDatabase/SqlServerDatabase.sqlproj
TARGET_PATH := /Users/gamu/.azuredatastudio/extensions/microsoft.sql-database-projects-1.2.0/BuildDirectory

.PHONY: build
build:
	@dotnet build $(SLN_NAME) --configuration Release  /p:NetCoreBuild=true /p:NETCoreTargetsPath=$(TARGET_PATH)
		