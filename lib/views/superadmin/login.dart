import 'package:ecommerece/utils/theme_data.dart';
import 'package:ecommerece/views/superadmin/dashboard.dart';
import 'package:ecommerece/views/superadmin/signup.dart';
import 'package:flutter/material.dart';

class WebAdminLogin extends StatefulWidget {
  static String id = "weblogin";
  @override
  _WebAdminLoginState createState() => _WebAdminLoginState();
}

class _WebAdminLoginState extends State<WebAdminLogin> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();

  // FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  var height, width;
  bool islogin = false;
  bool hide = true;

  @override
  void initState() {
    emailcontroller.text.isEmpty;
    passcontroller.text.isEmpty;
    setState(() {
      islogin = true;
    });
    super.initState();
  }

  // // shared prefrence
  // void addloginDataToSf() async {
  //   final prefs = await SharedPreferences.getInstance();
  //   prefs.setString('UserId', AdminStaticVeriable.uid);
  // }

  final _formKey = GlobalKey<FormState>();
  String? errorMessage;
  // final FirebaseAuth _auth = FirebaseAuth.instance;

  // webAdminSignin() async {
  //   try {
  //     UserCredential userCredential = await _auth.signInWithEmailAndPassword(
  //         email: emailcontroller.text, password: passcontroller.text);
  //     var user = await _auth.currentUser;
  //     AdminStaticVeriable.uid = user!.uid;
  //     await firebaseFirestore
  //         .collection("Admins")
  //         .doc(AdminStaticVeriable.uid)
  //         .get()
  //         .then((value) {
  //       setState(() {
  //         if (value.data() == null) {
  //           Fluttertoast.showToast(
  //               msg: "signing on user side ",
  //               backgroundColor: Colors.red,
  //               textColor: Colors.white,
  //               gravity: ToastGravity.CENTER,
  //               fontSize: 17,
  //               timeInSecForIosWeb: 1,
  //               toastLength: Toast.LENGTH_SHORT);
  //           addloginDataToSf();
  //         } else {
  //           var adminmodel = AdminModel.fromMap(value.data()!);
  //           String status = adminmodel.status!;
  //           if (user != null) {
  //             if (status == "Admin") {
  //               Navigator.push(context,
  //                   MaterialPageRoute(builder: (context) => WebAdminHome()));

  //               Fluttertoast.showToast(
  //                   msg: " Admin Login Successfully",
  //                   backgroundColor: Colors.green,
  //                   textColor: Colors.white,
  //                   gravity: ToastGravity.CENTER,
  //                   fontSize: 17,
  //                   timeInSecForIosWeb: 1,
  //                   toastLength: Toast.LENGTH_SHORT);
  //               addloginDataToSf();
  //             }
  //           }
  //         }
  //       });
  //     });
  //   } on FirebaseAuthException catch (e) {
  //     switch (e.code) {
  //       case "invalid-email":
  //         errorMessage = "Invalid Email!";
  //         break;
  //       case "wrong-password":
  //         errorMessage = "Wrong Password";
  //         break;
  //       case "user-not-found":
  //         errorMessage = "User with this email doesn't exist.";
  //         break;
  //       case "user-disabled":
  //         errorMessage = "User with this email has been disabled.";
  //         break;
  //       case "too-many-requests":
  //         errorMessage = "Too many requests";
  //         break;
  //       case "":
  //         errorMessage = "Signing in with Email and Password is not enabled.";
  //         break;
  //       default:
  //         errorMessage = "No internet connection?";
  //     }

  //     Fluttertoast.showToast(
  //         msg: errorMessage!,
  //         toastLength: Toast.LENGTH_SHORT,
  //         gravity: ToastGravity.CENTER,
  //         timeInSecForIosWeb: 1,
  //         backgroundColor: Colors.red,
  //         textColor: Colors.white,
  //         fontSize: 16.0);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: MyThemeClass.primaryColor,
        body: SizedBox(
          height: height,
          width: width,
          child: Stack(
            children: [
              Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('images/splash.jpg'))),
                height: height,
                width: width,
              ),
              Container(
                height: height,
                width: width,
                color: MyThemeClass.primaryColor.withOpacity(0.8),
              ),
              Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: SizedBox(
                          height: height * 0.27,
                          width: width * 0.5,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.06,
                        width: width,
                        child: Center(
                            child: Text(
                          'WELCOME BACK Admin!',
                          style: TextStyle(
                              fontSize: width * 0.03,
                              color: MyThemeClass.secoundryColor),
                        )),
                      ),
                      Card(
                        color: MyThemeClass.lightsecoundryColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        elevation: 14,
                        child: SizedBox(
                            height: height * 0.42,
                            width: width * 0.5,
                            child: Column(children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: width * 0.03,
                                          top: height * 0.01),
                                      child: Text(
                                        'LOGIN',
                                        style: TextStyle(
                                            fontSize: width * 0.03,
                                            fontWeight: FontWeight.bold,
                                            color: MyThemeClass.secoundryColor),
                                      )),
                                  // ///------------------
                                  //      /// signup screen
                                  //     ///
                                  Padding(
                                    padding: EdgeInsets.only(
                                        right: width * 0.03,
                                        top: height * 0.01),
                                    child: TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const WebAdminSignUp()));
                                      },
                                      child: Text('SignUp',
                                          style: TextStyle(
                                              fontSize: width * 0.03,
                                              color:
                                                  MyThemeClass.secoundryColor)),
                                    ),
                                  )
                                ],
                              ),
                              //
                              // email field

                              Padding(
                                padding: EdgeInsets.only(
                                    left: width * 0.1,
                                    right: width * 0.1,
                                    bottom: height * 0.01,
                                    top: height * 0.024),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    TextFormField(
                                      keyboardType: TextInputType.emailAddress,
                                      controller: emailcontroller,
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter your name';
                                        }
                                        return null;
                                      },
                                      decoration: InputDecoration(
                                        hintText: 'Email',
                                        prefixIcon: Icon(
                                          Icons.email,
                                          color: MyThemeClass.whiteColor,
                                        ),
                                      ),

                                      // inputaction: TextInputAction.continueAction,
                                    ),
                                    //----------------
                                    // password field
                                    SizedBox(
                                      height: height * 0.02,
                                    ),
                                    TextFormField(
                                      controller: passcontroller,
                                      keyboardType: TextInputType.text,
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter your password';
                                        }
                                        return null;
                                      },
                                      decoration: InputDecoration(
                                        prefixIcon: Icon(
                                          Icons.key,
                                          color: MyThemeClass.whiteColor,
                                        ),
                                        suffixIcon: IconButton(
                                          icon: Icon(
                                            hide == true
                                                ? Icons.visibility_off
                                                : Icons.visibility,
                                            color: MyThemeClass.whiteColor,
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              hide = !hide;
                                            });
                                          },
                                        ),
                                        hintText: 'Password',
                                      ),

                                      // inputaction: TextInputAction.continueAction,
                                    ),
                                    SizedBox(
                                      height: height * 0.01,
                                    ),

                                    ///---------
                                    /// forget button

                                    InkWell(
                                      child: Center(
                                        child: Text(
                                          'Forget Password?',
                                          style: TextStyle(
                                              color:
                                                  MyThemeClass.secoundryColor),
                                        ),
                                      ),
                                      onTap: () {
                                        //    Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgetScreen()));
                                      },
                                    ),

                                    ////-----------------
                                    /// login button
                                    ///
                                    InkWell(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const AdminDashBoardScreen()));
                                        //  webAdminSignin();
                                        //   addloginDataToSf();

                                        //   if (_formKey.currentState!
                                        //       .validate()) {
                                        //     ScaffoldMessenger.of(context)
                                        //         .showSnackBar(
                                        //       const SnackBar(
                                        //           content: Text(
                                        //               'Processing Data')),
                                        //     );
                                        //  signin();
                                      },
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            top: height * 0.015),
                                        child: Container(
                                          height: height * 0.055,
                                          width: width * 0.34,
                                          decoration: BoxDecoration(
                                              color:
                                                  MyThemeClass.secoundryColor,
                                              borderRadius:
                                                  BorderRadius.circular(15)),
                                          child: Center(
                                              child: Text(
                                            'LOGIN',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: width * 0.02,
                                            ),
                                          )),
                                        ),
                                      ),
                                    )
                                    //     ],
                                    //   ),
                                    // ),
                                  ],
                                ),
                              ),
                            ])),
                      ),
                    ],
                  )),
            ],
          ),
        ));
  }
}
