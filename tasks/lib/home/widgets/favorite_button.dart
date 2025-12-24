import 'package:flutter/material.dart';

class FavoriteButton extends StatelessWidget {
  FavoriteButton({required this.isFavorite, required this.onChanged});

  bool isFavorite;
  void Function(bool value) onChanged;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        onChanged(!isFavorite);
      },
      icon: Icon(isFavorite ? Icons.star : Icons.star_border, size: 24),
    );
  }
}
