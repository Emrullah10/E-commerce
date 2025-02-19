import 'package:flutter/material.dart';

class Information {
  final String? nameOrTitle;
  final String? description;
  final String? surname;
  final IconData icon;

  Information({required this.nameOrTitle, this.description, required this.icon, this.surname});
}
