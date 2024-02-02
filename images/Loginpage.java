import 'package:flutter/material.dart';
import 'package:lenovarustisia/loginsignup/Profilecomplete.dart';
import 'package:lenovarustisia/loginsignup/forgetpassword.dart';
import 'package:lenovarustisia/loginsignup/signuppage.dart';

void main() {
  runApp(const Loginpage());
}

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginPageState();
}

class _LoginPageState extends State<Loginpage> {
  bool isHiddenPassword = true;
  bool isEmailIncorrect = false;
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) {
            double screenWidth = constraints.maxWidth;
            double screenHeight = constraints.maxHeight;

            return SingleChildScrollView(
              child: Container(
                height: screenHeight,
                width: screenWidth,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      right: 0,
                      bottom: screenHeight - 400,
                      child: Container(
                        height: 350,
                        width: screenWidth, // Use screenWidth to cover the full width
                        decoration: BoxDecoration(
                          border: Border(),
                          color: Colors.green,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0),
                          ),
                        ),
                        child: Image(
                          image: AssetImage('images/img_4.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 0,
                      right: 0,
                      bottom: screenHeight - 400,
                      child: Container(
                        height: 350,
                        width: screenWidth, // Use screenWidth to cover the full width
                        child: Image(
                          image: AssetImage('images/img8.png'),
                          height: 10,
                          width: 10,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 20,
                      top: 60,
                      right: 20,
                      bottom: 0,
                      child: Container(
                        height: 200,
                        width: screenWidth - 40, // Adjust the width
                        decoration: BoxDecoration(
                          border: const Border(),
                          color: Colors.green.shade300,
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(40.0),
                              topRight: Radius.circular(40.0)),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 80,
                      right: 0,
                      bottom: 0,
                      child: Container(
                        height: 250,
                        width: screenWidth - 40, // Adjust the width
                        decoration: BoxDecoration(
                          border: const Border(),
                          color: Colors.white,
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(40.0),
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
                              "Let's get something",
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
                              'Welcome back to account',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Poppins',
                                  color: Colors.grey),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Positioned(
                            child: Row(
                              children: [
                                Image(
                                  image: AssetImage('images/img.png'),
                                  width: 60, // Width of the image
                                  height: 60,
                                ),
                                Image(
                                  image: AssetImage('images/img_1.png'),
                                  width: 60, // Width of the image
                                  height: 60,
                                ) // Height of the imag),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          /*Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: TextFormField(
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
                              borderRadius: BorderRadius.circular(20)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xffC7C5C9),
                              ),
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                    ),*/
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: TextFormField(
                                  controller: emailController,
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
                              ),
                              if (isEmailIncorrect)
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Incorrect email address",
                                    style: TextStyle(
                                      color: Colors.red,
                                    ),
                                  ),
                                ),
                            ],
                          ),


                          SizedBox(
                            height: 1,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: TextFormField(
                              obscureText: isHiddenPassword,
                              decoration: InputDecoration(
                                hintText: 'Password',
                                fillColor: Color(0xffC7C5C9),
                                filled: true,
                                prefixIcon: Icon(
                                    Icons.lock, color: Colors.green),
                                suffixIcon: InkWell(
                                  onTap: _tooglePasswordView,
                                  child: Icon(Icons.visibility),
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xffC7C5C9),
                                    ),
                                    borderRadius: BorderRadius.circular(20)),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xffC7C5C9),
                                    ),
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                child: Text(
                                  "Remember me",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 280),
                                child: Icon(
                                  Icons.radio_button_on,
                                  color: Colors.green,
                                  size: 20,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  // Replace 'YourNavigationLogicHere' with your actual navigation logic.
                                  // For example, you can use Navigator.push() to navigate to a new screen.
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              Forgetpassword()));
                                },
                                child: Container(
                                  margin: EdgeInsets.only(right: 10),
                                  child: Text(
                                    "Forgot Password? ",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              // Check the email here, set isEmailIncorrect accordingly
                              if (checkEmail()) {
                                // Email is correct, navigate to the next screen
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Profilecomplete()),
                                );
                              } else {
                                // Email is incorrect, show error message
                                setState(() {
                                  isEmailIncorrect = true;
                                });
                              }
                            },
                            child: Center(
                              child: Text(
                                'Sign In',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 10.0),
                            ),
                          ),
                          /*Container(
                      margin: EdgeInsets.only(left: 90.0, right: 90.0),
                      child: ElevatedButton(
                        onPressed: () {
                          // ignore: non_constant_identifier_names
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Profilecomplete()),
                          );
                        },
                        child: Center(
                          child: Text(
                            'Sign In',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
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
                      ),
                    ),*/
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 5.0, right: 5.0),
                                child: Text("Don't have an account?"),
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                        left: 5.0, right: 5.0),
                                    child: ElevatedButton(
                                      onPressed: () {
                                        // ignore: non_constant_identifier_names
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Signup()),
                                        );
                                      },
                                      child: Text(
                                        'Sign Up',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.green,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              30.0), // Set border radius
                                        ),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10.0,
                                            vertical: 10.0), // Set padding
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
                  ),
                ],


              );

            }
      ),
    ));
  }

  void _tooglePasswordView() {
    setState(() {
      isHiddenPassword = !isHiddenPassword;
    });
  }
  // This function checks the email (you can replace it with your validation logic)
  bool checkEmail() {
    // Replace with your email validation logic
    // For example, you can use a regular expression to valida
String email = emailController.text;
    String emailPattern = r "^[w-]+(.[w-]+)*@[w-]+(.[w-]+)+$";
    RegExp regExp = new RegExp(emailPattern);
    return regExp.hasMatch(email);
  }
}
