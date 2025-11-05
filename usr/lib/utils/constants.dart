import 'package:flutter/material.dart';

const appPrimaryColor = Color(0xFF0084FF);
const appScaffoldBackgroundColor = Color(0xFF121212);
const appAppBarColor = Color(0xFF1E1E1E);

// Extension pour ajouter des espacements de manière simple
extension SpaceXY on double {
  SizedBox get h => SizedBox(height: this);
  SizedBox get w => SizedBox(width: this);
}

// Affiche une SnackBar pour les erreurs ou les informations
void showSnackBar(BuildContext context, String message, {bool isError = false}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(message),
      backgroundColor: isError ? Theme.of(context).colorScheme.error : Colors.green[600],
    ),
  );
}
