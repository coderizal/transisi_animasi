import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:transisi_animasi/ui/page2.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page1"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.green),
                onPressed: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          duration: Duration(milliseconds: 500),
                          type: PageTransitionType.rightToLeft,
                          child: Page2()));
                },
                child:
                    Text("Go To Page 2", style: TextStyle(color: Colors.white)))
          ],
        ),
      ),
    );
  }
}
