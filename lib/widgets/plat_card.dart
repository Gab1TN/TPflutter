import 'package:flutter/material.dart';

import '../models/plat.dart';

// Carte réutilisable : la même pour tous les plats, quelle que soit la catégorie.
class PlatCard extends StatelessWidget {
  const PlatCard({super.key, required this.plat});

  final Plat plat;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      elevation: 3,
      // Clip pour que l'image suive les coins arrondis de la Card
      clipBehavior: Clip.antiAlias,
      // LayoutBuilder pour adapter la carte à la largeur disponible :
      // - écran étroit (portrait) : image au-dessus du texte (Column)
      // - écran large (paysage) : image à gauche du texte (Row)
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 500) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: 200, height: 140, child: _buildImage()),
                Expanded(child: _buildInfos(context)),
              ],
            );
          }

          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 160, child: _buildImage()),
              _buildInfos(context),
            ],
          );
        },
      ),
    );
  }

  Widget _buildImage() {
    return Image.network(
      plat.image,
      fit: BoxFit.cover,
      loadingBuilder: (context, child, progression) {
        if (progression == null) return child;
        return const Center(child: CircularProgressIndicator());
      },
      // Si l'image ne charge pas (pas de réseau), on affiche une icône à la place
      errorBuilder: (context, error, stackTrace) {
        return Container(
          color: Colors.grey.shade200,
          child: const Center(
            child: Icon(Icons.restaurant, size: 48, color: Colors.grey),
          ),
        );
      },
    );
  }

  Widget _buildInfos(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Nom à gauche, prix à droite. Expanded sur le nom pour qu'un nom
          // long passe à la ligne au lieu de pousser le prix hors de la carte.
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
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
              const SizedBox(width: 8),
              Text(
                plat.prixFormate,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ],
          ),
          const SizedBox(height: 6),
          // Description limitée à 2 lignes comme demandé
          Text(
            plat.description,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(color: Colors.grey.shade700),
          ),
        ],
      ),
    );
  }
}
