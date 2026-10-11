import 'package:flutter/material.dart';

import '../models/categorie.dart';
import '../models/plat.dart';

// Données codées en dur (autorisé par le sujet).
// Le champ "categorie" de chaque plat doit correspondre au nom d'une catégorie.

const List<Categorie> categories = [
  Categorie(nom: 'Formules', icone: Icons.restaurant_menu),
  Categorie(nom: 'Entrées', icone: Icons.soup_kitchen),
  Categorie(nom: 'Plats', icone: Icons.dinner_dining),
  Categorie(nom: 'Desserts', icone: Icons.cake),
  Categorie(nom: 'Boissons', icone: Icons.local_drink),
];

const List<Plat> plats = [
  // Formules
  Plat(
    nom: 'Formule Midi',
    description: 'Entrée + plat ou plat + dessert, café offert. Du lundi au vendredi.',
    prix: 16.90,
    image: 'https://www.themealdb.com/images/media/meals/uyqrrv1511553350.jpg',
    categorie: 'Formules',
  ),
  Plat(
    nom: 'Formule Complète',
    description: 'Entrée, plat et dessert au choix dans toute la carte.',
    prix: 24.50,
    image: 'https://www.themealdb.com/images/media/meals/vvpprx1487325699.jpg',
    categorie: 'Formules',
  ),
  Plat(
    nom: 'Formule Enfant',
    description: 'Mini burger, frites maison, boisson et une boule de glace.',
    prix: 9.50,
    image: 'https://www.themealdb.com/images/media/meals/44bzep1761848278.jpg',
    categorie: 'Formules',
  ),

  // Entrées
  Plat(
    nom: 'Velouté de tomates',
    description: 'Tomates rôties, crème fraîche et basilic.',
    prix: 6.50,
    image: 'https://www.themealdb.com/images/media/meals/stpuws1511191310.jpg',
    categorie: 'Entrées',
  ),
  Plat(
    nom: 'Gaspacho',
    description: 'Soupe froide de tomates, poivron et concombre.',
    prix: 6.90,
    image: 'https://www.themealdb.com/images/media/meals/h5qmn31763304965.jpg',
    categorie: 'Entrées',
  ),
  Plat(
    nom: 'Brie rôti',
    description: 'Brie au four, confiture d\'oseille et pain grillé.',
    prix: 8.50,
    image: 'https://www.themealdb.com/images/media/meals/fg7d641784666908.jpg',
    categorie: 'Entrées',
  ),
  Plat(
    nom: 'Salade de cœurs de palmier',
    description: 'Cœurs de palmier, tomates cerises et vinaigrette citronnée.',
    prix: 7.20,
    image: 'https://www.themealdb.com/images/media/meals/7whfgi1782678933.jpg',
    categorie: 'Entrées',
  ),

  // Plats
  Plat(
    nom: 'Bœuf bourguignon',
    description: 'Mijoté au vin rouge, carottes et champignons, purée maison.',
    prix: 18.50,
    image: 'https://www.themealdb.com/images/media/meals/vtqxtu1511784197.jpg',
    categorie: 'Plats',
  ),
  Plat(
    nom: 'Steak Diane',
    description: 'Pièce de bœuf, sauce crème et cognac, pommes sautées.',
    prix: 21.00,
    image: 'https://www.themealdb.com/images/media/meals/vussxq1511882648.jpg',
    categorie: 'Plats',
  ),
  Plat(
    nom: 'Saumon au four',
    description: 'Saumon, fenouil et tomates confites au four.',
    prix: 19.50,
    image: 'https://www.themealdb.com/images/media/meals/1548772327.jpg',
    categorie: 'Plats',
  ),
  Plat(
    nom: 'Poivrons farcis',
    description: 'Poivrons farcis à la feta et au fromage frais. Végétarien.',
    prix: 15.90,
    image: 'https://www.themealdb.com/images/media/meals/w0rsga1782683912.jpg',
    categorie: 'Plats',
  ),
  Plat(
    nom: 'Tacos de poisson',
    description: 'Poisson épicé cajun, chou croquant et sauce citron vert.',
    prix: 16.50,
    image: 'https://www.themealdb.com/images/media/meals/uvuyxu1503067369.jpg',
    categorie: 'Plats',
  ),

  // Desserts
  Plat(
    nom: 'Crème brûlée',
    description: 'Crème brûlée au chocolat blanc, caramel croquant.',
    prix: 7.50,
    image: 'https://www.themealdb.com/images/media/meals/uryqru1511798039.jpg',
    categorie: 'Desserts',
  ),
  Plat(
    nom: 'Gâteau au chocolat',
    description: 'Gâteau fondant au chocolat noir, crème anglaise.',
    prix: 7.90,
    image: 'https://www.themealdb.com/images/media/meals/tqtywx1468317395.jpg',
    categorie: 'Desserts',
  ),
  Plat(
    nom: 'Soufflé au chocolat',
    description: 'Préparé à la commande, compter 15 minutes.',
    prix: 8.50,
    image: 'https://www.themealdb.com/images/media/meals/twspvx1511784937.jpg',
    categorie: 'Desserts',
  ),
  Plat(
    nom: 'Tarte aux pommes',
    description: 'Tarte fine aux pommes et frangipane.',
    prix: 6.90,
    image: 'https://www.themealdb.com/images/media/meals/wxywrq1468235067.jpg',
    categorie: 'Desserts',
  ),

  // Boissons
  Plat(
    nom: 'Smoothie pomme fruits rouges',
    description: 'Pomme, mûres et framboises mixées.',
    prix: 5.50,
    image: 'https://www.thecocktaildb.com/images/media/drink/xwqvur1468876473.jpg',
    categorie: 'Boissons',
  ),
  Plat(
    nom: 'Milkshake banane',
    description: 'Banane, lait et glace vanille.',
    prix: 5.00,
    image: 'https://www.thecocktaildb.com/images/media/drink/rtwwsx1472720307.jpg',
    categorie: 'Boissons',
  ),
  Plat(
    nom: 'Chocolat chaud',
    description: 'Chocolat chaud épais à l\'espagnole.',
    prix: 4.00,
    image: 'https://www.thecocktaildb.com/images/media/drink/3nbu4a1487603196.jpg',
    categorie: 'Boissons',
  ),
  Plat(
    nom: 'Punch de fruits',
    description: 'Cocktail de jus de fruits sans alcool.',
    prix: 5.50,
    image: 'https://www.thecocktaildb.com/images/media/drink/wsyvrt1468876267.jpg',
    categorie: 'Boissons',
  ),
];
