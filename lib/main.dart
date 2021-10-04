import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.grey,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Stack(
                          children: [
                            Icon(
                              Icons.more_horiz,
                              size: 17,
                              color: Colors.grey,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "English",
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.grey),
                                ),
                                Icon(Icons.keyboard_arrow_down,
                                    size: 17, color: Colors.grey)
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50.0, right: 50),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 48,
                            ),
                            Image.asset(
                              'assets/instagram_logo.png',
                              width: 180,
                            ),
                            SizedBox(
                              height: 48,
                            ),
                            GestureDetector(
                              onTap: () {
                                showDialog(
                                  barrierDismissible: false,
                                  context: context,
                                  builder: (context) {
                                    return Dialog(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      elevation: 16,
                                      child: Container(
                                        height: 100,
                                        child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            SizedBox(
                                                width: 30,
                                                height: 30,
                                                child:
                                                    CircularProgressIndicator()),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                );

                                Future.delayed(const Duration(seconds: 3), () {
                                  Navigator.pop(context);
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return Dialog(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        elevation: 16,
                                        child: Container(
                                          height: 100,
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(16.0),
                                                child: Text(
                                                    "Sorry, there was a problem with your request."),
                                              ),
                                              Divider(
                                                color: Colors.black12,
                                                height: 1,
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  Navigator.pop(context);
                                                },
                                                child: Container(
                                                  width: double.infinity,
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 0.02),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: Center(
                                                      child: Text(
                                                        "Dismiss",
                                                        style: TextStyle(
                                                            color:
                                                                Colors.black87,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(4)),
                                    color: Colors.blueAccent),
                                child: Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'assets/facebook_icon.png',
                                        height: 15,
                                        width: 15,
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        "Continue with Facebook",
                                        style: TextStyle(color: Colors.white),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Container(
                                    color: Colors.black12,
                                    height: 1,
                                    width: double.infinity,
                                  ),
                                ),
                                Text(
                                  "   OR   ",
                                  style: TextStyle(color: Colors.black54),
                                ),
                                Expanded(
                                  child: Container(
                                    color: Colors.black12,
                                    height: 1,
                                    width: double.infinity,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Container(
                              height: 45,
                              child: TextField(
                                decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    enabledBorder: const OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Colors.black54, width: 0.0),
                                    ),
                                    focusedBorder: const OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Colors.black, width: 0.0),
                                    ),
                                    hintStyle: TextStyle(
                                      fontSize: 13,
                                    ),
                                    hintText:
                                        'Phone number,username, or email'),
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Container(
                              height: 45,
                              child: TextField(
                                obscureText: true,
                                decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    enabledBorder: const OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Colors.black54, width: 0.0),
                                    ),
                                    focusedBorder: const OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Colors.black, width: 0.0),
                                    ),
                                    hintStyle: TextStyle(
                                      fontSize: 13,
                                    ),
                                    hintText: 'Password'),
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Align(
                                alignment: Alignment.centerRight,
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const ForgotPassword()));
                                  },
                                  child: Text(
                                    "Forgot password?",
                                    style: TextStyle(color: Colors.lightBlue),
                                  ),
                                )),
                            SizedBox(
                              height: 32,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4)),
                                color: Color.fromARGB(255, 62, 163, 239),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Login",
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Don't have an account?",
                                  style: TextStyle(color: Colors.black54),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const SignUp()));
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 2.0),
                                    child: Text(
                                      "Sign up",
                                      style: TextStyle(
                                          color: Colors.lightBlue,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // IntrinsicHeight

              Column(
                children: [
                  Divider(
                    color: Colors.black12,
                    height: 1,
                  ),
                  Container(
                    width: double.infinity,
                    color: Color.fromRGBO(0, 0, 0, 0.02),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "from",
                            style: TextStyle(color: Colors.black54),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "F A C E B O O K",
                            style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: false,
        title: const Text("Login help"),
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Text(
            "Find Your Account",
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            "Enter your Instagram username or the\n email address or phone number linked to\n your account.",
            style: TextStyle(fontSize: 11),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 50),
            height: 45,
            child: TextField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  enabledBorder: const OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.black54, width: 0.0),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.black, width: 0.0),
                  ),
                  hintStyle: TextStyle(
                    fontSize: 13,
                  ),
                  hintText: 'Phone number,username, or email'),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          GestureDetector(
            onTap: () {
              showDialog(
                barrierDismissible: false,
                context: context,
                builder: (context) {
                  return Dialog(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    elevation: 16,
                    child: Container(
                      height: 100,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          SizedBox(
                              width: 30,
                              height: 30,
                              child: CircularProgressIndicator()),
                        ],
                      ),
                    ),
                  );
                },
              );

              Future.delayed(const Duration(seconds: 3), () {
                Navigator.pop(context);
                showDialog(
                  context: context,
                  builder: (context) {
                    return Dialog(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      elevation: 16,
                      child: Container(
                        height: 100,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text(
                                  "Sorry, there was a problem with your request."),
                            ),
                            Divider(
                              color: Colors.black12,
                              height: 1,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Container(
                                width: double.infinity,
                                color: Color.fromRGBO(0, 0, 0, 0.02),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Center(
                                    child: Text(
                                      "Dismiss",
                                      style: TextStyle(
                                          color: Colors.black87,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                );
              });
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 50),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(4)),
                color: Color.fromARGB(255, 62, 163, 239),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Next",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 12, left: 50.0, right: 50.0, bottom: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    color: Colors.black12,
                    height: 1,
                    width: double.infinity,
                  ),
                ),
                Text(
                  "   OR   ",
                  style: TextStyle(color: Colors.black54),
                ),
                Expanded(
                  child: Container(
                    color: Colors.black12,
                    height: 1,
                    width: double.infinity,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (context) {
                    return Dialog(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      elevation: 16,
                      child: Container(
                        height: 100,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            SizedBox(
                                width: 30,
                                height: 30,
                                child: CircularProgressIndicator()),
                          ],
                        ),
                      ),
                    );
                  },
                );

                Future.delayed(const Duration(seconds: 3), () {
                  Navigator.pop(context);
                  showDialog(
                    context: context,
                    builder: (context) {
                      return Dialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        elevation: 16,
                        child: Container(
                          height: 100,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Text(
                                    "Sorry, there was a problem with your request."),
                              ),
                              Divider(
                                color: Colors.black12,
                                height: 1,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  width: double.infinity,
                                  color: Color.fromRGBO(0, 0, 0, 0.02),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Center(
                                      child: Text(
                                        "Dismiss",
                                        style: TextStyle(
                                            color: Colors.black87,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  );
                });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/facebook_icon.png',
                    height: 15,
                    width: 15,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    "Login with Facebook",
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "For more help, visit the instagram Help Center.",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey, fontSize: 11),
            ),
          )
        ],
      ),
    );
  }
}

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 48,
                  ),
                  Image.asset(
                    'assets/instagram_logo.png',
                    width: 180,
                  ),
                  SizedBox(
                    height: 48,
                  ),
                  GestureDetector(
                    onTap: () {
                      showDialog(
                        barrierDismissible: false,
                        context: context,
                        builder: (context) {
                          return Dialog(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            elevation: 16,
                            child: Container(
                              height: 100,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  SizedBox(
                                      width: 30,
                                      height: 30,
                                      child: CircularProgressIndicator()),
                                ],
                              ),
                            ),
                          );
                        },
                      );

                      Future.delayed(const Duration(seconds: 3), () {
                        Navigator.pop(context);
                        showDialog(
                          context: context,
                          builder: (context) {
                            return Dialog(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              elevation: 16,
                              child: Container(
                                height: 100,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Text(
                                          "Sorry, there was a problem with your request."),
                                    ),
                                    Divider(
                                      color: Colors.black12,
                                      height: 1,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Container(
                                        width: double.infinity,
                                        color: Color.fromRGBO(0, 0, 0, 0.02),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Center(
                                            child: Text(
                                              "Dismiss",
                                              style: TextStyle(
                                                  color: Colors.black87,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 50),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          color: Colors.blueAccent),
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/facebook_icon.png',
                              height: 15,
                              width: 15,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "Continue with Facebook",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 50.0, right: 50.0, top: 16.0, bottom: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Container(
                            color: Colors.black12,
                            height: 1,
                            width: double.infinity,
                          ),
                        ),
                        Text(
                          "   OR   ",
                          style: TextStyle(color: Colors.black54),
                        ),
                        Expanded(
                          child: Container(
                            color: Colors.black12,
                            height: 1,
                            width: double.infinity,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 50),
                    height: 45,
                    child: TextField(
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.black54, width: 0.0),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.black, width: 0.0),
                          ),
                          hintStyle: TextStyle(
                            fontSize: 13,
                          ),
                          hintText: 'Mobile Number or Email'),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 50),
                    height: 45,
                    child: TextField(
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.black54, width: 0.0),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.black, width: 0.0),
                          ),
                          hintStyle: TextStyle(
                            fontSize: 13,
                          ),
                          hintText: 'Full Name'),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 50),
                    height: 45,
                    child: TextField(
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.black54, width: 0.0),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.black, width: 0.0),
                          ),
                          hintStyle: TextStyle(
                            fontSize: 13,
                          ),
                          hintText: 'Username'),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 50),
                    height: 45,
                    child: TextField(
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.black54, width: 0.0),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.black, width: 0.0),
                          ),
                          hintStyle: TextStyle(
                            fontSize: 13,
                          ),
                          hintText: 'Password'),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 50),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      color: Color.fromARGB(255, 62, 163, 239),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Sign up",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "By singing up. you agree to our\n Terms. Data Policy and Cookies\n Policy.",
                    style: TextStyle(color: Colors.grey),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          Divider(
            color: Colors.black12,
            height: 1,
          ),
          Container(
            width: double.infinity,
            color: Color.fromRGBO(0, 0, 0, 0.02),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Have a account? ",
                    style: TextStyle(color: Colors.black54),
                  ),
                  SizedBox(height: 4),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Log in",
                      style: TextStyle(
                          color: Color.fromARGB(255, 62, 163, 239),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

Widget _buildPopupDialog(BuildContext context) {
  return new AlertDialog(
    title: const Text('Popup example'),
    content: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("Hello"),
      ],
    ),
    actions: <Widget>[
      new FlatButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        textColor: Theme.of(context).primaryColor,
        child: const Text('Close'),
      ),
    ],
  );
}
