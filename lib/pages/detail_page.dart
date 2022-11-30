import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff49D0B0),
      appBar: AppBar(elevation: 0,
      backgroundColor: Color(0xff49D0B0),
      actions: [IconButton(onPressed: () {
        
      }, icon:const Icon(Icons.favorite_border_outlined))],
      ),
      
      body: Stack(children: [
        
      ]),
      
    );
  }
}