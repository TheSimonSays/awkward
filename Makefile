INTERPRETER = ./awkward
TEST_DIR = tests

.PHONY: all test

all: test

test:
	@echo "Running tests..."
	@bash $(TEST_DIR)/run_tests.sh

install:
	@echo "Installing awkward..."
	@cp $(INTERPRETER) /usr/local/bin/awkward
	@chmod +x /usr/local/bin/awkward
