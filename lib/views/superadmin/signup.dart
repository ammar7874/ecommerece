import 'package:ecommerece/utils/theme_data.dart';
import 'package:ecommerece/views/superadmin/login.dart';
import 'package:flutter/material.dart';

class WebAdminSignUp extends StatefulWidget {
  const WebAdminSignUp({Key? key}) : super(key: key);

  @override
  State<WebAdminSignUp> createState() => _WebAdminSignUpState();
}

class _WebAdminSignUpState extends State<WebAdminSignUp> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();
  TextEditingController namecontroller = TextEditingController();

  bool hide = true;
  bool islogin = false;
  String? errorMessage;
  var width;
//   final FirebaseAuth auth = FirebaseAuth.instance;

// //-------
// // Get TockenID Funtion

//   FirebaseMessaging firebasemessaging = FirebaseMessaging.instance;
//   void getToken() {
//     firebasemessaging.getToken().then((value) {
//       StaticDate.tockenId = value!;
//     });
//   }

//   /// WebAdminSignUp method
//   ///
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//   Future webAdminSignUp() async {
//     try {
//       UserCredential userCredential =
//           await _auth.createUserWithEmailAndPassword(
//               email: emailcontroller.text, password: passcontroller.text);
//       if (userCredential.user != null) {
//         // getToken();

//         //  print('we' + id.toString());
//         postdatatoDB(userCredential.user!.uid);
//       }
//     } on FirebaseAuthException catch (e) {
//       switch (e.code) {
//         case "invalid-email":
//           errorMessage = "Invalid Email!";
//           break;
//         case "wrong-password":
//           errorMessage = "Wrong Password";
//           break;
//         case "user-not-found":
//           errorMessage = "User with this email doesn't exist.";
//           break;
//         case "user-disabled":
//           errorMessage = "User with this email has been disabled.";
//           break;
//         case "too-many-requests":
//           errorMessage = "Too many requests";
//           break;
//         case "":
//           errorMessage = "Signing in with Email and Password is not enabled.";
//           break;
//         default:
//           errorMessage = "No internet connection?";
//       }
//       Fluttertoast.showToast(
//         msg: errorMessage!,
//         backgroundColor: Colors.red,
//         fontSize: 16.0,
//         gravity: ToastGravity.CENTER,
//         textColor: Colors.white,
//         timeInSecForIosWeb: 1,
//         toastLength: Toast.LENGTH_SHORT,
//       );
//     }
//   }

// // post datatoDB
//   final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
//   void postdatatoDB(String id) async {
//     AdminModel model = AdminModel(
//         email: emailcontroller.text,
//         password: passcontroller.text,
//         name: namecontroller.text,
//         tockenId: StaticDate.tockenId,
//         uid: id,
//         status: "Admin");
//     await firebaseFirestore.collection('Admins').doc(id).set(model.toMap());
//     Fluttertoast.showToast(
//       msg: "Registration Successfully",
//       backgroundColor: Colors.green,
//       fontSize: 16.0,
//       gravity: ToastGravity.CENTER,
//       textColor: Colors.white,
//       timeInSecForIosWeb: 1,
//       toastLength: Toast.LENGTH_SHORT,
//     );
//     print(' tocken id =${StaticDate.tockenId.toString()}');
//     Navigator.push(
//         context, MaterialPageRoute(builder: (context) => WebAdminHome()));
//   }

  @override
  void initState() {
    // // getToken();
    // print(" tocken id =${StaticDate.tockenId.toString()}");

    super.initState();
  }

  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: MyThemeClass.primaryColor,
        body: Container(
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
                        // color: Colors.amber,
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
                            height: height * 0.55,
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
                                        'SIGNUP',
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
                                                    WebAdminLogin()));
                                      },
                                      child: Text('LOGIN',
                                          style: TextStyle(
                                              fontSize: width * 0.03,
                                              color:
                                                  MyThemeClass.secoundryColor)),
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: width * 0.1,
                                    right: width * 0.1,
                                    bottom: height * 0.04,
                                    top: height * 0.02),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    // name fiel
                                    TextFormField(
                                        controller: namecontroller,
                                        decoration: InputDecoration(
                                          hintText: 'Name',
                                          prefixIcon: Icon(
                                            Icons.person,
                                            color: MyThemeClass.whiteColor,
                                          ),
                                        ),
                                        // inputaction: TextInputAction.continueAction,
                                        keyboardType:
                                            TextInputType.emailAddress,
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Please enter your name';
                                          }
                                          return null;
                                        }),

                                    SizedBox(
                                      height: height * 0.02,
                                    ),
                                    // email field
                                    TextFormField(
                                        controller: emailcontroller,
                                        decoration: InputDecoration(
                                          hintText: 'Email',
                                          prefixIcon: Icon(
                                            Icons.email,
                                            color: MyThemeClass.whiteColor,
                                          ),
                                        ),
                                        // inputaction: TextInputAction.continueAction,
                                        keyboardType:
                                            TextInputType.emailAddress,
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Please enter your name';
                                          }
                                          return null;
                                        }),
                                    //----------------
                                    // password field
                                    SizedBox(
                                      height: height * 0.02,
                                    ),
                                    TextFormField(
                                      controller: passcontroller,
                                      decoration: InputDecoration(
                                        hintText: 'Password',
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
                                      ),
                                      // inputaction: TextInputAction.continueAction,
                                      keyboardType: TextInputType.text,

                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter your password';
                                        }
                                        return null;
                                      },
                                    ),
                                    SizedBox(
                                      height: height * 0.023,
                                    ),

                                    Text(
                                      'The password should contain atleast 2 symbols',
                                      style: TextStyle(
                                          fontSize: width * 0.013,
                                          color: MyThemeClass.secoundryColor),
                                    ),

                                    ////-----------------
                                    /// login button
                                    ///
                                    InkWell(
                                      onTap: () {
                                        //     webAdminSignUp();
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
                                        padding:
                                            EdgeInsets.only(top: height * 0.02),
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
                                            'SIGN UP',
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
                            ]),
                          )),
                      // Padding(
                      //   padding: EdgeInsets.only(top: height * 0.02),
                      //   child: Center(
                      //       child: Text(
                      //     'Or Signup With',
                      //     style: TextStyle(
                      //         fontSize: width * 0.03,
                      //         color: MyThemeClass.secoundryColor),
                      //   )),
                      // ),
                      // SizedBox(
                      //   height: height * 0.01,
                      // ),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.center,
                      //   children: [
                      //     Container(
                      //       height: height * 0.08,
                      //       width: width * 0.13,
                      //       decoration: BoxDecoration(
                      //         shape: BoxShape.circle,
                      //         color: Colors.blue[900],
                      //       ),
                      //       child: Center(
                      //         child: Text(
                      //           'f',
                      //           style: TextStyle(
                      //             color: MyThemeClass.whiteColor,
                      //             fontSize: width * 0.05,
                      //             fontWeight: FontWeight.bold,
                      //           ),
                      //         ),
                      //       ),
                      //     ),
                      //     SizedBox(width: width * 0.03),
                      //     Container(
                      //       height: height * 0.08,
                      //       width: width * 0.13,
                      //       decoration: const BoxDecoration(
                      //           shape: BoxShape.circle,
                      //           image: DecorationImage(
                      //               fit: BoxFit.contain,
                      //               image: AssetImage('images/twitter.png'))),
                      //     ),
                      //   ],
                      // ),
                    ],

                    //                   ),
                    //                 ),
                    //   ],
                    // )
                    // )
                    //)
                    //]
                  )),
            ],
          ),
        ));
  }
}
