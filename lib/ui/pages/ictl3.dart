import 'package:flutter/material.dart';


class IctL3 extends StatelessWidget {
 
  const IctL3({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
           appBar: AppBar(
          title: Text('L3'),
        ),

      body: 
        Center(
          child: Text('ICT-L3', style: Theme.of(context).textTheme.bodyText2,),
        )
    );
  }
}