


import 'package:flutter/material.dart';

import 'loginpage.dart';

void main() {
  runApp(welcomepage());
}

class welcomepage extends StatelessWidget {
  final String paragraphText = '''
  Lorem Ipsum is simply dummy text of the
printing and typesetting industry. Lorem 
Ipsum has been the
  ''';
  /*List<String> paragraphs = [
  'Keep away your money',
  'Lorem Ipsum is simply dummy text of the printing'
  'Keep away your money'
  "Lorem' Ipsum is simply dummy text of the printing",
  'Keep away your money',
  'Lorem Ipsum is simply dummy text of the printing',
  ];*/
  //final List<String> gridItems = [
  //'Item 1',
  //'Item 2',

  // ];
  final String paragraph = '''
  Lorem Ipsum is simply dummy 
  text of the printing  ''';

  welcomepage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return /*//GestureDetector(
      //onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Responsive(
          mobile: body(),
          desktop: body(),
          tablet: body(),
          key:  Key("atma"),
        ),
      ),
    );
  }*/
  //Widget body(){
     MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints)
    {
      double screenHeight = constraints.maxHeight;
      double screenWidth = constraints.maxWidth;
      return Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            right: 0,
            bottom: 400,
            child: Container(
              height: screenHeight * 0.2,
              width: screenWidth * 0.7,
              //padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),

              //padding: EdgeInsets.all(14.0),
              decoration: BoxDecoration(
                border: const Border(),
                color: Colors.green,
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(
                        40.0), // Set the radius for the top-left corner
                    bottomRight: Radius.circular(40.0)),
              ),
              child: Image(
                image: AssetImage('images/img8.png'),
                fit: BoxFit.cover,

              ),
            ),
          ),
          Positioned(
            left: 20,
            top: 20,
            right: 20,
            bottom: 0,
            child: Container(
              height: screenHeight * 0.2,
              width: screenWidth * 0.7,
              //padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),

              //padding: EdgeInsets.all(14.0),
              decoration: BoxDecoration(
                border: const Border(),
                color: Colors.green.shade300,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(
                        40.0), // Set the radius for the top-left corner
                    topRight: Radius.circular(40.0)),
              ),

            ),
          ),
          Positioned(
            left: 0,
            top: 30,
            right: 0,
            bottom: 0,
            child: Container(
              height: screenHeight * 0.2,
              width:screenWidth * 0.7,
              //padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),

              //padding: EdgeInsets.all(14.0),
              decoration: BoxDecoration(
                border: const Border(),
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(
                        40.0), // Set the radius for the top-left corner
                    topRight: Radius.circular(40.0)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 238,
                    height: 39,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10.0),
                    child: Text(
                      'Welcome to ATMA',
                      style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          color: Colors.green),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10.0),
                    child: Text(
                      'Benifit for you',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          color: Colors.grey),
                    ),
                  ),
                  SizedBox(
                    width: 238,
                    height: 30,
                  ),

                  //Padding(
                  //padding: EdgeInsets.only(left: 20.0),
                  //),


                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      //Padding(padding: EdgeInsets.all(10.0)),
                      Container(
                        margin: EdgeInsets.all(16.0),
                        child: Text(
                          paragraphText,
                          style: const TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey,

                          ), textAlign: TextAlign.justify,
                          softWrap: true,
                        ),),

                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [

                      //Padding(padding: EdgeInsets.all(10.0)),
                      Container(
                        width: 200.0, // Set the width
                        height: 20.0,
                        margin: EdgeInsets.only(left: 70.0),
                        child: Text('Keep away your money', style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Colors.grey,
                        ),),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 70.0),
                        child: Text(paragraph, style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        ), textAlign: TextAlign.justify,
                        ),
                      ),


                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [

                      //Padding(padding: EdgeInsets.all(10.0)),
                      Container(
                        width: 200.0, // Set the width
                        height: 20.0,
                        margin: EdgeInsets.only(left: 70.0),
                        child: Text('Keep away your money', style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Colors.grey,
                        ),),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 70.0),
                        child: Text(paragraph, style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        ), textAlign: TextAlign.justify,
                        ),
                      ),


                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [

                      //Padding(padding: EdgeInsets.all(10.0)),
                      Container(
                        width: 200.0, // Set the width
                        height: 20.0,
                        margin: EdgeInsets.only(left: 70.0),
                        child: Text('Keep away your money', style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Colors.grey,
                        ),),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 70.0),
                        child: Text(paragraph, style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        ), textAlign: TextAlign.justify,
                        ),
                      ),


                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [

                      //Padding(padding: EdgeInsets.all(10.0)),
                      Container(
                        width: 200.0, // Set the width
                        height: 20.0,
                        margin: EdgeInsets.only(left: 70.0),
                        child: Text('Keep away your money', style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Colors.grey,
                        ),),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 70.0),
                        child: Text(paragraph, style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        ), textAlign: TextAlign.justify,
                        ),
                      ),
                      /*Column(
                          mainAxisAlignment: MainAxisAlignment.center,

                          children: [

                            //Padding(padding: EdgeInsets.all(10.0)),
                            Container(
                              width: 200.0, // Set the width
                              height: 20.0,
                              margin: EdgeInsets.only(left:70.0),
                              child: Text('Keep away your money',style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Colors.grey,
                              ),),
                            ),
                            Container(
                              margin: EdgeInsets.only(left:70.0),
                              child:Text(paragraph,style: TextStyle(
                                fontSize:  15,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey,
                              ),  textAlign: TextAlign.justify,
                              ),
                            ),





                          ],
                        ),*/
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 30.0, right: 30.0),
                    child: ElevatedButton(

                      onPressed: () {
                        // ignore: non_constant_identifier_names


                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Loginpage()),
                        );
                      },

                      /*InkWell(
                      onTap: () {},
                      splashColor: Colors.greenAccent,
                      child: Container(
                        height: 50,
                        width: 250,
                        margin: EdgeInsets.only(left:70.0),
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(20)),*/
                      child: Center(
                        child: Text(
                          'Continue',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),

                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              30.0), // Set border radius
                        ),
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 10.0), // Set padding
                      ),
                      // Makes the button circular
                      // Button background color
                    ),
                  ),


                ],

              ),
            ),
          ),
        ],
      );
    }
      ),
    ),);
  }
  }


