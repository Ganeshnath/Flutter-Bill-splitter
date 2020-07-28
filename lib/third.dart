import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:productapp/colorss.dart';
class ThirdRoute extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
       // brightness: Brightness.light,
        //backgroundColor: primaryI,
      ),
      home:Geri() ,
    );
  }


}
class Geri extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: primaryI,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Center(child: Text("Created By [V.S.Ganeshnath]",
                          style: TextStyle(
                            color: Colors.white,
                            fontStyle: FontStyle.italic,
                            fontSize: 20,
                            fontWeight: FontWeight.w600
                          ),
                          )),
                        ]

                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Center(child: Text("version : 1.0.2",
                        style: TextStyle(
                          color: Colors.white,
                          fontStyle: FontStyle.italic,
                          fontSize: 20,
                          fontWeight: FontWeight.w600
                        ),

                        ))
                      ],
                    )
                  ],

                ),
              )
          ),
        ),
      ),
    );
  }
}


















//    return Scaffold(
//      body: Center(
//
//        child: Text(
//          "Created By V.S.Ganeshnath"
//
//
//          "version:1.0.0.1"
//          ,
//          style: TextStyle(
//              color: Colors.white,
//              fontWeight: FontWeight.w600
//          ),
//        ),
//
//
//
//
//      ),
//    );



