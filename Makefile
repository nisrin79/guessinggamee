# Makefile pour générer README.md automatiquement

README := README.md
SCRIPT := guessinggame.sh

all: $(README)

$(README): $(SCRIPT)
	@echo "# Projet Guessing Game" > $(README)
	@echo "" >> $(README)
	@echo "Date et heure de génération : $$(date)" >> $(README)
	@echo "" >> $(README)
	@echo "Nombre de lignes dans $(SCRIPT) : $$(wc -l < $(SCRIPT))" >> $(README)
