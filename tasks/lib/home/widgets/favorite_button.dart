import 'package:flutter/material.dart';

class FavoriteButton extends StatelessWidget {
  bool isFavorite;
  void Function(bool value) onChanged;

  FavoriteButton({
    super.key,
    required this.isFavorite,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => onChanged(!isFavorite),
      icon: Icon(isFavorite ? Icons.star : Icons.star_border, size: 24),
    );
  }
}
