# Nom du fichier README
README = README.md
# Nom du script
SCRIPT = guessinggame.sh
# Date actuelle
DATE = $(shell date)

# Règle par défaut
all: $(README)

$(README):
	echo "# Projet Guessing Game" > $(README)
	echo "" >> $(README)
	echo "Date et heure d'exécution de make : $(DATE)" >> $(README)
	echo "" >> $(README)
	echo "Nombre de lignes de code dans $(SCRIPT) :" >> $(README)
	wc -l < $(SCRIPT) >> $(README)
