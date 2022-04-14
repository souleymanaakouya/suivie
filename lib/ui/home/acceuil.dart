import 'package:flutter/material.dart';

class Acceuil extends StatelessWidget {
  const Acceuil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text(
        'Acceuil',
        style: Theme.of(context).textTheme.bodyText2,
      ),
    ));
  }
}
