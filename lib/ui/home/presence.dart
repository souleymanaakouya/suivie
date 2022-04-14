import 'package:flutter/material.dart';

class Presence extends StatelessWidget {
  const Presence({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       
        body: Center(
          child: Text(
            'Presence',
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ));
  }
}
