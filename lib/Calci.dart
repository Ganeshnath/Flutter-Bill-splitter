import 'package:flutter/material.dart';
import 'package:productapp/colorss.dart';
import 'package:productapp/hexcolor.dart';
import 'package:productapp/multi.dart';
import 'package:productapp/second.dart';
import 'package:productapp/third.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class Ova extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     theme: ThemeData(
      brightness: Brightness.dark,
     ),
     home: Calci(),
   );
  }
}





class Calci extends StatefulWidget
{
  @override
  _CalcuState createState() => _CalcuState();
}
class _CalcuState extends State<Calci> {
  int tipPercent = 0;
  int personCount = 2;
  double billAmount = 0.0;
  Color purple = HexColor("#6908D6");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BILL SPLITTER",style: TextStyle(
          fontStyle: FontStyle.italic,
          fontSize: 20.0,
          color: Colors.black,
        ),),
        centerTitle: true,
        backgroundColor: primaryIndigoP,
        //backgroundColor:Colors.cyan ,
      ),
      backgroundColor:primaryV,
      drawer:Drawer(

        child: ListView(
            children: <Widget>[
        UserAccountsDrawerHeader(

        accountName: Text('HELLO USERS',
        style: TextStyle(
          fontSize: 20.0,
        ),
        ),
        //accountEmail: Text('ganeshbrucce@gmail.com'),
        currentAccountPicture: CircleAvatar(
            backgroundColor: primaryIndigoP,
            child: Text("G",
            style: TextStyle(
              //backgroundColor: Colors.black,
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
            ),
        ),
      ),
//           ListTile(
//        leading: FaIcon(FontAwesomeIcons.home),
//        title: Text('Home',
//        ),
//        onTap: (){}
////        {
////          Navigator.push(
////                       context,
////                        MaterialPageRoute(builder: (context) => Multi()),
////                    );//add routes to navigatedd routes to navigate
////        },
//      ),
//      ListTile(
//        leading: FaIcon(FontAwesomeIcons.servicestack),
//        title: Text('Services'),
//        onTap: () {
//          //add routes to navigate
//        },
//      ),
      Divider(
        color: Colors.white70,
      ),
      ListTile(
        leading: FaIcon(FontAwesomeIcons.cogs),
        title: Text('pros'),
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondRoute()),
          );//add routes to navigate
        },
      ),


      ListTile(
        leading: FaIcon(FontAwesomeIcons.exclamation),
        title: Text('Info'),
        onTap: () {
           Navigator.push(
                        context,
                       MaterialPageRoute(builder: (context) => ThirdRoute()),
                  );//add routes to navigateroutes to navigate
        },
      ),
      ],
        ),
      ),

      body: Container( //parent main box
        margin: EdgeInsets.only(top: MediaQuery//margin mnz it ll come down//dynamic height ch
            .of(context)
            .size
            .height * 0.2),
        alignment: Alignment.center,
        color: primaryV,
        child: ListView( //multi values
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.all(20.5),//to cone center
          children: <Widget>[
            Container(//box
              height: 150,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.1),
                borderRadius: BorderRadius.circular(20.5),

              ),
              child: Center(
                child: Column( //when we enter a text inside block
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[  // text

                    Text(" total per person",style: TextStyle(fontStyle: FontStyle.italic,
                      fontSize: 20,
                      color: Colors.black,

                    ),),
                    Padding(// second text inside gap
                      padding: const EdgeInsets.all(10.0),
                      child:  Text("\$ ${calculateTotalPer(billAmount, personCount,tipPercent )}",style: TextStyle(fontSize:40.0 ,
                      color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),),
                    ),


                  ],

                ),
              ),


            ),

            Container(
              margin: EdgeInsets.only(top: 20.2),
              padding: EdgeInsets.all(10.2),
              decoration: BoxDecoration(
                color: Colors.white70,
                border: Border.all(
                  color: Colors.black12,
                  style: BorderStyle.solid,

                ),
                borderRadius: BorderRadius.circular(12.5),
              ),


              child: Column(
                children: <Widget>[
                  TextField(///many methods
                    keyboardType: TextInputType.numberWithOptions(
                        decimal: true),
                    style: TextStyle(color: Colors.redAccent,fontStyle: FontStyle.italic,fontWeight: FontWeight.w600,fontSize: 20.0),
                    decoration: InputDecoration(//text inside decoration
                      prefixText: "bill amt:",prefixStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                      prefixIcon: Icon(Icons.attach_money,
                      color: primaryJ,
                      ),


                    ),
                    onChanged: (String value) {
                      try {
                        billAmount = double.parse(value);//value with get after paring
                      }
                      catch (exception) {
                        billAmount = 0.0;
                      }
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("split", style: TextStyle(
                        fontSize: 15.0,
                        fontStyle: FontStyle.italic,
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                      ),),
                      Row(
                        children: <Widget>[
                          InkWell(//to working of bocxxx
                            onTap: () {
                              setState(() {
                                if (personCount > 1) {
                                  personCount--;
                                }
                                else {
                                  //niog
                                }
                              });
                            },
                            child: Container(
                              width: 40.0,
                              height: 30.0,
                              margin: EdgeInsets.all(10.5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.5),
                                color: Colors.purple.withOpacity(0.2),

                              ),
                              child: Center(
                                child: Text("-", style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 20.0,

                                ),),
                              ),


                            ),

                          ),
                          Text("$personCount", style: TextStyle(
                            color: Colors.black,
                            fontStyle: FontStyle.italic,fontWeight: FontWeight.bold,

                          ),),
                          InkWell(
                            onTap: () {
                              setState(() {
                                personCount++;
                              });
                            },
                            child: Container(
                              width: 40.0,
                              height: 30.0,
                              margin: EdgeInsets.all(10.5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.5),
                                color: purple.withOpacity(0.2),
                              ),
                              child: Center(
                                child: Text("+", style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 17.0,
                                ),),
                              ),
                            ),



                          ),


                        ],
                      ),

                    ],
                  ),
                ],

              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:  Text("tip", style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    fontStyle: FontStyle.italic,
                  ),),
                ),
                Text("\$ ${calculateTotal(billAmount, personCount, tipPercent)}",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 20.0
                ),),
              ],

            ),
            Column(
              children: <Widget>[
                Text("$tipPercent%", style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.brown,
                  fontWeight: FontWeight.w900,
                ),),
                Slider(
                  min: 0,
                  max: 100,
                  activeColor: Colors.blueGrey,
                  inactiveColor: secondaryD,
                  divisions: 100,
                  value: tipPercent.toDouble(),
                  onChanged: (double newValue) {
                    setState(() {
                      tipPercent = newValue.round();//it will run fully
                    });
                  },


                )


              ],


            ),
          ],

        ),
      ),
    );


  }



  calculateTotalPer(double billAmount,int splitBy,int tipPercent) {
    var totalPeer = (calculateTotal(billAmount, splitBy, tipPercent) + billAmount)/splitBy;
    return totalPeer.toStringAsFixed(2);
  }

  calculateTotal(double billAmount, int splitBy, int tipPercent) {
    double totTip = 0.0;
    if (billAmount < 0 || billAmount
        .toString()
        .isEmpty || billAmount == null) {
//no
    }
    else {
      totTip = (tipPercent * billAmount) / 100;
    }
    return totTip;
  }

}




