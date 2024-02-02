import 'package:atmafoodapp/welcomepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Firstpage());
}

class Firstpage extends StatelessWidget {
  const Firstpage({super.key});

  @override
  Widget build(BuildContext context) {
    /*GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          body: Responsive(
            mobile: body(),
            desktop: body(),
            tablet: body(),
            key: Key("atma"),
          ),
        ),
      );*/

    /* body() {
    Builder(
        builder: (BuildContext context) {
          // Use the new context here*/
    return Scaffold(body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      double screenHeight = constraints.maxHeight;
      double screenWidth = constraints.maxWidth;
      double fontSize = screenWidth < 600 ? 16.0 : 24.0;
      return Stack(
        children: [
          Positioned(
            left: 20,
            top: 20,
            right: 20,
            bottom: screenHeight * 0.7,
            child: Container(
              height: screenHeight * 0.2,
              width: screenWidth * 0.7,
              //padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),

              //padding: EdgeInsets.all(14.0),
              decoration: BoxDecoration(
                border: const Border(),
                color: Colors.green.shade300,
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(
                        40.0), // Set the radius for the top-left corner
                    bottomRight: Radius.circular(40.0)),
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 0,
            right: 0,
            bottom: screenHeight * 0.72,
            // Adjust the left position
            child: Container(
              width: screenWidth * 0.7,
              height: screenHeight * 0.2,
              decoration: const BoxDecoration(
                border: Border(),
                color: Colors.green,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50.0),
                    bottomRight: Radius.circular(50.0)),
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 0,
            right: 0,
            bottom: screenHeight * 0.75,
            // Adjust the left position
            child: Container(
              width: screenWidth * 0.7,
              height: screenHeight * 0.2,
              decoration: const BoxDecoration(
                border: Border(),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50.0),
                    bottomRight: Radius.circular(50.0)),
              ),
              child: Image(
                image: AssetImage('images/img8.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          //SizedBox(
          //height: 400,
          //),
          Positioned(
            //height: 20,
            top: screenHeight * 0.2,
            left: 120.0,
            //right: 50.0,

            width: screenHeight * 0.2, // Set the width to reduce image size
            //height: 100.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: screenWidth * 0.6,
                  height: screenHeight * 0.2,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.green.withOpacity(0.2),
                        // Shadow color
                        spreadRadius: 0.1,
                        // Spread radius
                        blurRadius: 10.0,
                        // Blur radius
                        offset: Offset(0, 0), // Offset
                      ),
                    ],
                  ),
                  //margin: EdgeInsets.only(bottom: -10.0),
                  child: Container(
                    child: Center(
                      child: Image(
                        image: AssetImage('images/img_3.png'),
                        width: screenWidth * 0.7,
                        height: screenHeight * 0.3,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 90,
                ),
                Container(
                  child: Text(
                    "Let's get started",
                    style: TextStyle(
                      fontSize: fontSize,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    'saving food',
                    style: TextStyle(
                        fontSize: fontSize, fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: 200,
                ),
                Center(
                  child: Container(
                    width: screenWidth * 0.4,
                    // Set the desired width to make it circular
                    height: 80,
                    // Set the same height to make it circular
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context as BuildContext,
                            // Add your button's click logic here
                            MaterialPageRoute(
                                builder: (context) => welcomepage()));
                      },
                      child: Icon(
                        Icons.arrow_upward,
                        // Icon inside the circular button
                        size: 50, // Icon size
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        backgroundColor: Colors.green,
                        // Makes the button circular
                        // Button background color
                      ),
                    ),
                  ),
                ),
                /*ElevatedButton(
          onPressed: () {
            // ignore: non_constant_identifier_names
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => welcomepage()),
            );
          },

            /*decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(10)),*/

                      child: Center(
                        child: Icon(
                          Icons.arrow_upward_outlined, // Arrow icon
                          size: 45.0, // Icon size
                          color: Colors.white, // Icon color
                        ),

                    ),

        ),*/
              ],
            ),
          ),
        ],
      );
    }));
  }
}
