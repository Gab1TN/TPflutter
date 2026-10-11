class Plat {
  final String nom;
  final String description;
  final double prix;
  final String image;
  final String categorie;

  const Plat({
    required this.nom,
    required this.description,
    required this.prix,
    required this.image,
    required this.categorie,
  });

  // Prix au format français : 12,50 €
  String get prixFormate => '${prix.toStringAsFixed(2).replaceAll('.', ',')} €';
}
