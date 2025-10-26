INTERPRETER = ./awkward
TEST_DIR = tests
DOCS_DIR = docs
DOCS_GEN = scripts/generate-docs.sh
DOCS_OUT = $(DOCS_DIR)/

.PHONY: all test install docs clean

all: test

test:
	@echo "Running tests..."
	@bash $(TEST_DIR)/run_tests.sh

install:
	@echo "Installing awkward..."
	@cp $(INTERPRETER) /usr/local/bin/awkward
	@chmod +x /usr/local/bin/awkward
	@echo "Installed to /usr/local/bin/awkward"

docs:
	@echo "Generating documentation..."
	@mkdir -p $(DOCS_DIR)
	@bash $(DOCS_GEN)
	@echo "Documentation generated at $(DOCS_OUT)"

clean:
	@echo "🧹 Cleaning..."
	@rm -f $(DOCS_OUT)
	@echo "Clean complete"
