# Menu du Restaurant – Flutter

DS Flutter Layouts & Scrolls : application mobile qui affiche le menu d'un restaurant.

## Fonctionnalités

- Catégories (Formules, Entrées, Plats, Desserts, Boissons) dans une barre qui défile horizontalement
- Au clic sur une catégorie, la liste verticale des plats correspondants s'affiche
- Chaque plat est présenté dans une carte : image, nom, prix et courte description
- Fonctionne en portrait et en paysage (en paysage l'image passe à gauche du texte)

## Structure

```
lib/
├── main.dart                 # application + écran principal (sélection de catégorie)
├── data/menu_data.dart       # catégories et plats codés en dur
├── models/
│   ├── categorie.dart
│   └── plat.dart
└── widgets/
    ├── categorie_bar.dart    # barre de catégories (Row + scroll horizontal)
    └── plat_card.dart        # carte réutilisable pour un plat
```

## Lancer le projet

```
flutter pub get
flutter run
```

Les images sont chargées depuis internet, l'émulateur doit avoir une connexion.

## Captures d'écran

![Catégorie Plats](screenshots/plats.png)
![Paysage](screenshots/paysage.png)

## Vidéo

[Démonstration](screenshots/demo.mp4)
