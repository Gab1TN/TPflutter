import '../models/categorie.dart';
import '../models/plat.dart';

// Données codées en dur (autorisé par le sujet), inspirées de la carte Buffalo Grill.
// Le champ "categorie" de chaque plat doit correspondre au nom d'une catégorie.

const List<Categorie> categories = [
  Categorie(nom: 'Formules'),
  Categorie(nom: 'Entrées'),
  Categorie(nom: 'Plats'),
  Categorie(nom: 'Desserts'),
  Categorie(nom: 'Boissons'),
];

const List<Plat> plats = [
  // Formules
  Plat(
    nom: 'Hold-Up',
    description: 'Salade, plat au choix, puis dessert ou boisson.',
    prix: 9.99,
    image: 'assets/images/hold_up.jpg',
    categorie: 'Formules',
  ),
  Plat(
    nom: 'Eldorado',
    description: 'Salade, plat au choix, dessert et boisson.',
    prix: 14.90,
    image: 'assets/images/eldorado.jpg',
    categorie: 'Formules',
  ),
  Plat(
    nom: 'Shérif',
    description: 'Salade, entrée ou dessert, plat au choix et boisson.',
    prix: 18.90,
    image: 'assets/images/sherif.jpg',
    categorie: 'Formules',
  ),
  Plat(
    nom: 'Shérif +',
    description: 'Salade, entrée, plat au choix, dessert et boisson.',
    prix: 22.90,
    image: 'assets/images/sherif_plus.jpg',
    categorie: 'Formules',
  ),
  Plat(
    nom: 'Kids',
    description: 'Plat enfant, dessert et une surprise.',
    prix: 7.90,
    image: 'assets/images/kids.jpg',
    categorie: 'Formules',
  ),

  // Entrées
  Plat(
    nom: 'Chicken wings',
    description: 'Ailes de poulet croustillantes, sauce barbecue.',
    prix: 6.90,
    image: 'assets/images/chicken_wings.jpg',
    categorie: 'Entrées',
  ),
  Plat(
    nom: 'Chili maison',
    description: 'Chili mijoté aux haricots rouges et épices.',
    prix: 6.50,
    image: 'assets/images/chili.jpg',
    categorie: 'Entrées',
  ),
  Plat(
    nom: 'Salade fraîcheur',
    description: 'Tomates, concombre, poivron et fromage frais.',
    prix: 5.90,
    image: 'assets/images/salade.jpg',
    categorie: 'Entrées',
  ),

  // Plats
  Plat(
    nom: 'Faux-filet grillé',
    description: 'Pièce de bœuf grillée, frites et sauce au choix.',
    prix: 19.90,
    image: 'assets/images/faux_filet.jpg',
    categorie: 'Plats',
  ),
  Plat(
    nom: 'Burger du ranch',
    description: 'Steak haché, cheddar, oignons et sauce barbecue.',
    prix: 15.50,
    image: 'assets/images/burger.jpg',
    categorie: 'Plats',
  ),
  Plat(
    nom: 'Brochettes de poulet',
    description: 'Poulet mariné et grillé, légumes de saison.',
    prix: 16.90,
    image: 'assets/images/brochettes.jpg',
    categorie: 'Plats',
  ),
  Plat(
    nom: 'Saumon grillé',
    description: 'Pavé de saumon, fenouil et tomates rôties.',
    prix: 18.50,
    image: 'assets/images/saumon.jpg',
    categorie: 'Plats',
  ),

  // Desserts
  Plat(
    nom: 'Brownie',
    description: 'Brownie au chocolat et framboises.',
    prix: 6.50,
    image: 'assets/images/brownie.jpg',
    categorie: 'Desserts',
  ),
  Plat(
    nom: 'Cheesecake',
    description: 'Cheesecake façon New York.',
    prix: 6.90,
    image: 'assets/images/cheesecake.jpg',
    categorie: 'Desserts',
  ),
  Plat(
    nom: 'Gâteau au chocolat',
    description: 'Gâteau fondant au chocolat noir, crème anglaise.',
    prix: 6.90,
    image: 'assets/images/gateau_chocolat.jpg',
    categorie: 'Desserts',
  ),

  // Boissons
  Plat(
    nom: 'Limonade fraise',
    description: 'Limonade maison à la fraise.',
    prix: 4.50,
    image: 'assets/images/limonade.jpg',
    categorie: 'Boissons',
  ),
  Plat(
    nom: 'Milkshake banane',
    description: 'Banane, lait et glace vanille.',
    prix: 5.00,
    image: 'assets/images/milkshake.jpg',
    categorie: 'Boissons',
  ),
  Plat(
    nom: 'Chocolat chaud',
    description: 'Chocolat chaud épais.',
    prix: 3.90,
    image: 'assets/images/chocolat_chaud.jpg',
    categorie: 'Boissons',
  ),
];
