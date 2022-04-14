import 'package:flutter/material.dart';


class IctL1 extends StatelessWidget {
 
  const IctL1({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('L1'),
        
      ),
      body: 
        Center(
          child: Text('ICT-L1', style: Theme.of(context).textTheme.bodyText2,),
        )
    );
  }
}