import 'package:atmafoodapp/Profilecomplete.dart';
import 'package:atmafoodapp/loginpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Signup());
}

class Signup extends StatelessWidget {
  const Signup({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) {
            double screenWidth = constraints.maxWidth;
            double screenHeight = constraints.maxHeight;

            return Stack(
              children: [
                // Background Image
                Positioned(
                  left: 0,
                  top: 0,
                  right: 0,
                  bottom: screenHeight * 0.6,
                  child: Container(
                    height: screenHeight * 2.5,
                    width: screenWidth * 3.8,
                    decoration: BoxDecoration(
                      border: Border(),
                      color: Colors.green,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0),
                      ),
                    ),
                    child: Container(
                      margin: EdgeInsets.only(right: screenWidth * 0.35, top: 1, bottom: screenHeight * 0.35),
                      child: Image(
                        image: AssetImage('images/img_4.png'),
                        height: screenHeight * 0.02,
                        width: screenWidth * 0.02,
                      ),
                    ),
                  ),
                ),

                // Green Box
                Positioned(
                  left: 20,
                  top: 20,
                  right: 20,
                  bottom: 0,
                  child: Container(
                    height: screenHeight * 0.2,
                    width: screenWidth * 0.7,
                    decoration: BoxDecoration(
                      border: const Border(),
                      color: Colors.green.shade300,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(40.0),
                        topRight: Radius.circular(40.0),
                      ),
                    ),
                  ),
                ),

                // White Box
                Positioned(
                  left: 0,
                  top: screenHeight * 0.05,
                  right: 0,
                  bottom: 0,
                  child: Container(
                    height: screenHeight * 0.7,
                    width: screenWidth * 0.7,
                    decoration: BoxDecoration(
                      border: const Border(),
                      color: Colors.white,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(40.0),
                        topRight: Radius.circular(40.0),
                      ),
                    ),
                    child: SingleChildScrollView(
                      padding: EdgeInsets.all(screenWidth * 0.05),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: screenHeight * 0.015),

                          // Create Account Text
                          Text(
                            "Create Account",
                            style: TextStyle(
                              fontSize: screenWidth * 0.065,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Poppins',
                              color: Colors.green,
                            ),
                          ),

                          // Description Text
                          Text(
                            'Create an account to unlock all features',
                            style: TextStyle(
                              fontSize: screenWidth * 0.055,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Poppins',
                              color: Colors.grey,
                            ),
                          ),

                          SizedBox(height: screenHeight * 0.02),

                          // Name Field
                          Text(
                            "Name",
                            style: TextStyle(
                              color: Colors.grey.shade700,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Name',
                              fillColor: Color(0xffC7C5C9),
                              filled: true,
                              prefixIcon: Icon(
                                Icons.person,
                                color: Colors.green,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xffC7C5C9),
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xffC7C5C9),
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),

                          SizedBox(height: screenHeight * 0.02),

                          // Email Field
                          Text(
                            "Email",
                            style: TextStyle(
                              color: Colors.grey.shade700,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Email',
                              fillColor: Color(0xffC7C5C9),
                              filled: true,
                              prefixIcon: Icon(
                                Icons.email,
                                color: Colors.green,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xffC7C5C9),
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xffC7C5C9),
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),

                          SizedBox(height: screenHeight * 0.02),

                          // Confirm Email Field
                          Text(
                            "Confirm Email",
                            style: TextStyle(
                              color: Colors.grey.shade700,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Confirm Email',
                              fillColor: Color(0xffC7C5C9),
                              filled: true,
                              prefixIcon: Icon(
                                Icons.email,
                                color: Colors.green,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xffC7C5C9),
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xffC7C5C9),
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),

                          SizedBox(height: screenHeight * 0.02),

                          // Password Field
                          Text(
                            "Password",
                            style: TextStyle(
                              color: Colors.grey.shade700,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Password',
                              fillColor: Color(0xffC7C5C9),
                              filled: true,
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Colors.green,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xffC7C5C9),
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xffC7C5C9),
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),

                          SizedBox(height: screenHeight * 0.02),

                          // PhoneNumber Field
                          Text(
                            "PhoneNumber",
                            style: TextStyle(
                              color: Colors.grey.shade700,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: 'PhoneNumber',
                              fillColor: Color(0xffC7C5C9),
                              filled: true,
                              prefixIcon: Icon(
                                Icons.phone,
                                color: Colors.green,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xffC7C5C9),
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xffC7C5C9),
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),

                          SizedBox(height: screenHeight * 0.02),

                          // Terms and Conditions Text
                          Row(
                            children: [
                              Icon(
                                Icons.check_circle,
                                size: screenHeight * 0.03,
                                color: Colors.green,
                              ),
                              SizedBox(width: screenWidth * 0.001),
                              Text("By creating an account you agree to our ",style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w700,
                              ),),
                              InkWell(
                                onTap: () {
                                  // Handle Terms and Conditions tap
                                },
                                child: Text(
                                  'Terms and Conditions',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.green,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ],
                          ),

                          SizedBox(height: screenHeight * 0.03),

                          // Sign Up Button
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.25),
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Profilecomplete()),
                                );
                              },
                              child: Text(
                                'Sign Up',
                                style: TextStyle(
                                  fontSize: screenWidth * 0.065,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                              ),
                            ),
                          ),

                          SizedBox(height: screenHeight * 0.02),

                          // Sign In Link
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Already have an account?"),
                              InkWell(
                                onTap: () {
                                  // Handle Sign In tap
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Loginpage()),
                                  );
                                },
                                child: Text(
                                  ' Sign In',
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
