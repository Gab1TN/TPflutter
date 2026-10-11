import 'package:flutter/material.dart';

import '../models/categorie.dart';

class CategorieBar extends StatelessWidget {
  const CategorieBar({
    super.key,
    required this.categories,
    required this.selection,
    required this.onSelection,
  });

  final List<Categorie> categories;
  final String selection;
  final Function(String) onSelection;

  @override
  Widget build(BuildContext context) {
    // Un bouton par catégorie, rouge si c'est la catégorie sélectionnée
    List<Widget> boutons = [];
    for (Categorie categorie in categories) {
      boutons.add(
        Padding(
          padding: const EdgeInsets.all(4),
          child: ElevatedButton(
            onPressed: () => onSelection(categorie.nom),
            style: ElevatedButton.styleFrom(
              backgroundColor:
                  categorie.nom == selection ? Colors.red : Colors.grey[200],
            ),
            child: Text(
              categorie.nom,
              style: TextStyle(
                color: categorie.nom == selection ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
      );
    }

    // Row demandée par le sujet pour la barre de catégories.
    // On l'entoure d'un SingleChildScrollView horizontal pour que les
    // boutons restent accessibles s'ils dépassent la largeur de l'écran.
    return Padding(
      padding: const EdgeInsets.all(4),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(children: boutons),
      ),
    );
  }
}
