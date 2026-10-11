Bonjour Monsieur, pour consulter les éléments demandés (**captures d'écran** et **vidéo de démonstration**), rendez-vous dans le dossier **`rendu`**.

# Menu du Restaurant – Flutter

DS Flutter Layouts & Scrolls : application mobile qui affiche le menu d'un restaurant, **inspirée de la carte Buffalo Grill** (projet scolaire, prix indicatifs).

## Fonctionnalités

- **Catégories** (Formules, Entrées, Plats, Desserts, Boissons) dans une barre qui défile **horizontalement**
- Au clic sur une catégorie, la **liste verticale** des plats correspondants s'affiche
- Chaque plat est présenté dans une **carte** : image, nom, prix et courte description
- Fonctionne en **portrait** et en **paysage** (en paysage, les images sont plus grandes)

## Structure

```
lib/
├── main.dart                 écran principal et sélection de catégorie
├── data/menu_data.dart       catégories et plats
├── models/
│   ├── categorie.dart
│   └── plat.dart
└── widgets/
    ├── categorie_bar.dart    barre de catégories (Row + scroll horizontal)
    └── plat_card.dart        carte réutilisable pour un plat
assets/images/                photos des plats
```

## Lancer le projet

```
flutter pub get
flutter run
```

## Rendu

- **`rendu/image`** : capture d'écran de l'application (catégorie **Formules** sélectionnée, plusieurs plats affichés)
- **`rendu/video`** : vidéo de démonstration ([presentation_video.mp4](rendu/video/presentation_video.mp4))

![Capture de l'application](rendu/image/Capture%20d'%C3%A9cran%202026-10-11%20194617.png)
