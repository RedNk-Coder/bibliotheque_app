[app]

# Nom et package
title = Bibliotheque Pro
package.name = bibliothequepro
package.domain = org.jared
source.dir = .
source.include_exts = py,kv,png,ttf,db
version = 1.0
orientation = portrait
fullscreen = 1
# icône de l'appli (facultatif)
icon.filename = logo.png

# Modules Python requis
requirements = python3,kivy==2.1.0,sqlite3,pillow,appdirs

# Fichiers supplémentaires à inclure
# (images, polices, base de données)
android.include_exts = png,ttf,db,kv

# Permissions Android
android.permissions = WRITE_EXTERNAL_STORAGE,READ_EXTERNAL_STORAGE,INTERNET

# Configuration de Buildozer
# NDk API minimale
android.ndk_api = 21
# Java SDK
android.sdk = 24
android.ndk = 23b

# Mode debug
log_level = 2
debug = 1

# Splash screen
# Pas de splash supplémentaire, car tu as ton SplashScreen KV

# Assets & fichiers
# Inclut tous les fichiers dans le dossier source
source.include_patterns = *.py,*.kv,*.png,*.ttf,*.db

[buildozer]

# Chemin des fichiers de build
build_dir = .buildozer
