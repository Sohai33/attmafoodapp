import 'package:atmafoodapp/goolemap.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Profilecomplete());
}

class  Profilecomplete extends StatelessWidget {
  /*final String paragraphText = '''
  Before you can share your
spare, we need to know your
location
  ''';
  final String paragraph = '''
  So we show nearby listing & how many other
  people are waiting to share with you
  ''';*/
  const  Profilecomplete({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            Positioned(
              left: 0,
              top: 0,
              right: 0,
              bottom: 400,
              child: Container(
                height: 250,
                width: 380,
                //padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),

                //padding: EdgeInsets.all(14.0),
                decoration: BoxDecoration(
                  border: Border(),
                  color: Colors.green,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(
                          20.0), // Set the radius for the top-left corner
                      bottomRight: Radius.circular(20.0)),
                ),
                child: Image(
                  image: AssetImage('images/img8.png'),
                  fit: BoxFit.cover,
                ),
              ),


            ),
            Positioned(
              left: 20,
              top: 100,
              right: 20,
              bottom: 0,
              child: Container(
                height: 200,
                width: 380,
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
              top: 120,
              right: 0,
              bottom: 0,
              child: Container(
                height: 250,
                width: 380,
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10.0,top: 200),
                      child: Text(
                        "Hi, Mr/Mrs",
                        style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins',
                            color: Colors.green),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text.rich(
                        TextSpan(
                          text: 'So we show  ',
                          children: <TextSpan>[
                            TextSpan(
                              text: 'nearby listing',
                              style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green),
                            ),
                            TextSpan(text: ' & how many '),
                            TextSpan(
                              text: 'other people',
                              style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,),
                            ),
                            TextSpan(text: ' are waiting to share with you'),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    /*Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //Padding(padding: EdgeInsets.all(10.0)),
                        Container(
                          margin: EdgeInsets.all(16.0),
                          child: Text(
                            paragraphText,
                            style: const TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                            ),
                            textAlign: TextAlign.center,
                            softWrap: true,
                          ),
                        ),
                      ],
                    ),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 20.0),
                            child: Text(
                              paragraph,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                    ),*/
                    //SizedBox(
                    //height: 250,
                    //),
                    Container(
                      margin: EdgeInsets.only(left: 90.0,right: 90.0),
                      child:ElevatedButton(

                        onPressed: () {
                          // ignore: non_constant_identifier_names
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  googlemap()),
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
                            'OK, Let’s go!',
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
                            borderRadius: BorderRadius.circular(30.0), // Set border radius
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0), // Set padding
                        ),
                        // Makes the button circular
                        // Button background color
                      ),
                    ),
                    /*Padding(
                      padding: const EdgeInsets.only(left: 30.0,top: 100,bottom: 20),
                      child: InkWell(
                        onTap: () {},
                        splashColor: Colors.greenAccent,
                        child: Container(
                          height: 50,
                          width: 300,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                            child: Text(
                              'OK, Let’s go!',
                              style: TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),*/
                  ],
                ),
              ),

            ),
          ],
        ),
      ),
    );
  }
}
