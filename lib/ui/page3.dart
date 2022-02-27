import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class Page3 extends StatelessWidget {
  const Page3({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
       return Scaffold(
      appBar: AppBar(
        title: Text("Page3"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Page 3",style: TextStyle(
              color: Colors.black
            ),)
          ],
        ),
      ),
    );
  }
}