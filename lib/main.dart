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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
      ),
      home: const MenuPage(title: 'Menu du Restaurant Le Comptoir'),
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
  String _categorieSelectionnee = categories.first.nom;

  void _changerCategorie(String nom) {
    setState(() {
      _categorieSelectionnee = nom;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Plat> platsAffiches = plats
        .where((plat) => plat.categorie == _categorieSelectionnee)
        .toList();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      // Column : barre des catégories en haut, liste des plats en dessous.
      body: SafeArea(
        child: Column(
          children: [
            CategorieBar(
              categories: categories,
              selection: _categorieSelectionnee,
              onSelection: _changerCategorie,
            ),
            const Divider(height: 1),
            // Expanded obligatoire : une ListView dans une Column doit avoir
            // une hauteur bornée, sinon Flutter lève une erreur de layout.
            Expanded(
              child: platsAffiches.isEmpty
                  ? const Center(child: Text('Aucun plat dans cette catégorie'))
                  : ListView.builder(
                      // La clé change avec la catégorie : la liste repart en haut
                      // au lieu de garder la position de scroll précédente.
                      key: ValueKey(_categorieSelectionnee),
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      itemCount: platsAffiches.length,
                      itemBuilder: (context, index) {
                        return PlatCard(plat: platsAffiches[index]);
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
