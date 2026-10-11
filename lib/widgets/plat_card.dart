import 'package:flutter/material.dart';

import '../models/plat.dart';

// Carte réutilisable : la même pour tous les plats, quelle que soit la catégorie.
class PlatCard extends StatelessWidget {
  const PlatCard({super.key, required this.plat});

  final Plat plat;

  @override
  Widget build(BuildContext context) {
    // Image plus grande quand l'écran est large (paysage)
    final largeurEcran = MediaQuery.of(context).size.width;
    final double tailleImage = largeurEcran > 600 ? 140 : 100;

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(10),
        // Row : image à gauche, informations du plat à droite
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: tailleImage,
              height: tailleImage,
              color: Colors.grey.shade200,
              child: Image.asset(plat.image),
            ),
            const SizedBox(width: 12),
            // Expanded pour que le texte prenne la place restante
            // et passe à la ligne au lieu de dépasser de la carte
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          plat.nom,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text(
                        plat.prixFormate,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 6),
                  Text(
                    plat.description,
                    style: TextStyle(color: Colors.grey.shade700),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
