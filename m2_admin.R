# Commande pour générer à la main le book du module 2

bookdown::render_book("index.Rmd", "bookdown::gitbook")

# Commande pour générer un support pdf du module 2
propre.rpls::creer_pdf_book(
  chemin_book = "_book/", nom_pdf = "M2_daprep.pdf",
  pages_html = c(
    "index.html",
    "le-tidyverse.html",
    "bien-commencer.html",
    "lire-des-données.html",
    "manipuler-des-données.html",
    "manipuler-plusieurs-tables.html",
    "structurer-ses-tables.html",
    "nettoyer-des-données-territoriales-gérer-les-évolutions-du-cog-code-officiel-géographique.html",
    "exercice-6-les-données-majic.html",
    "aller-plus-loin.html"
  ))