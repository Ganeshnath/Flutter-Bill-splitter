import 'package:flutter/material.dart';
import 'package:productapp/colorss.dart';
//import 'package:flutter_read_more_text/flutter_read_more_text.dart';
class SecondRoute extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
        //brightness: Brightness.dark,
      ),
      home:Gani() ,
    );
  }


}
class Gani extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: primaryI,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RichText(text: TextSpan(
                      text: "Tip Calculator is done with simple UI framework it can be used at places"
                          ,
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 20,
                      ),

                      children: <TextSpan>[
                        TextSpan(
                       text: (" like  hotels,malls,etc .They reduces the time and correct calculation "
                       ),
                        ),
                        TextSpan(
                          text: ("Hope u guys are using and having fun  "),

                        ),



                      ]
                    ),),
                  ),
                )
              ],
            ),
          ),
        ),
      ),

    );
  }
}




