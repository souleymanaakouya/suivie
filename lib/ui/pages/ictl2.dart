import 'package:flutter/material.dart';

class IctL2 extends StatelessWidget {
  const IctL2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
             appBar: AppBar(
          title: Text('L2'),
        ),

        body: Center(
          child: Text(
            'ICT-L2',
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ));
  }
}
