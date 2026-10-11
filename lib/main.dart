import 'package:flutter/material.dart';

import 'data/menu_data.dart';
import 'models/plat.dart';
import 'widgets/categorie_bar.dart';
import 'widgets/plat_card.dart';

void main() {
  runApp(const MenuApp());
}

class MenuApp extends StatelessWidget {
  const MenuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Menu du Restaurant',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // Rouge pour rappeler Buffalo Grill
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
      ),
      home: const MenuPage(title: 'Menu du Restaurant Buffalo Grill'),
    );
  }
}

// StatefulWidget car la catégorie sélectionnée change quand l'utilisateur clique
class MenuPage extends StatefulWidget {
  const MenuPage({super.key, required this.title});

  final String title;

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  String _categorieSelectionnee = categories[0].nom;

  void _changerCategorie(String categorie) {
    setState(() {
      _categorieSelectionnee = categorie;
    });
  }

  @override
  Widget build(BuildContext context) {
    // On garde seulement les plats de la catégorie sélectionnée
    List<Plat> platsAffiches = [];
    for (Plat plat in plats) {
      if (plat.categorie == _categorieSelectionnee) {
        platsAffiches.add(plat);
      }
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          widget.title,
          style: const TextStyle(color: Colors.white),
        ),
      ),
      // Column : barre des catégories en haut, liste des plats en dessous
      body: Column(
        children: [
          CategorieBar(
            categories: categories,
            selection: _categorieSelectionnee,
            onSelection: _changerCategorie,
          ),
          // Expanded obligatoire : une ListView dans une Column doit avoir
          // une hauteur limitée, sinon Flutter affiche une erreur de layout
          Expanded(
            child: ListView.builder(
              itemCount: platsAffiches.length,
              itemBuilder: (context, index) {
                return PlatCard(plat: platsAffiches[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
