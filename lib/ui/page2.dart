import 'package:flutter/material.dart';

import 'package:page_transition/page_transition.dart';
import 'package:transisi_animasi/ui/page3.dart';
class Page2 extends StatelessWidget {
  const Page2({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
        return Scaffold(
      appBar: AppBar(
        
        title: Text("Page2"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
               style: TextButton.styleFrom(
                backgroundColor: Colors.green
              ),
                onPressed: () {
                  Navigator.push(
                  context,
                  PageTransition(
                    curve: Curves.linear,
                    type: PageTransitionType.scale,
                    alignment: Alignment.topCenter,
                    child: Page3(),
                  ),
                );

                  // Navigator.push(
                  //     context,
                  //     PageTransition(
                  //         duration: Duration(milliseconds: 500),
                  //         type: PageTransitionType.bottomToTop,
                  //         child: Page3()));
                },
                child: Text("Go To Page 3",style: TextStyle(color: Colors.white),))
          ],
        ),
      ),
    );
  }
}