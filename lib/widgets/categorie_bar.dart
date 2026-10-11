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
  final ValueChanged<String> onSelection;

  @override
  Widget build(BuildContext context) {
    // Row demandée par le sujet pour la barre de catégories.
    // On l'entoure d'un SingleChildScrollView horizontal pour que les
    // étiquettes restent accessibles même si elles dépassent la largeur de l'écran.
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Row(
        children: categories.map((categorie) {
          final bool estSelectionnee = categorie.nom == selection;

          return Padding(
            padding: const EdgeInsets.only(right: 8),
            child: ChoiceChip(
              avatar: Icon(categorie.icone, size: 18),
              label: Text(categorie.nom),
              selected: estSelectionnee,
              showCheckmark: false,
              onSelected: (_) => onSelection(categorie.nom),
            ),
          );
        }).toList(),
      ),
    );
  }
}
