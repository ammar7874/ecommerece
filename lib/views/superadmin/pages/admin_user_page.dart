import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerece/models/admin_models/shop_model.dart';
import 'package:ecommerece/models/user_models/user_signup_model.dart';
import 'package:ecommerece/utils/theme_data.dart';
import 'package:flutter/material.dart';

class AdminUsersPage extends StatefulWidget {
  const AdminUsersPage({super.key});

  @override
  State<AdminUsersPage> createState() => _AdminUsersPageState();
}

class _AdminUsersPageState extends State<AdminUsersPage> {
  var height, width;
  int index = 2;

  late TextEditingController nameController;
  late TextEditingController gmailController;
  late TextEditingController storeController;

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
    gmailController = TextEditingController();
    storeController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    final Name = ['Ahad Dahir', 'Sami Chandio', 'Mohsin Fida'];
    final Status = ['User', 'User', 'User'];
    final Images = [
      CircleAvatar(backgroundImage: AssetImage("images/gojoo.jpg")),
      CircleAvatar(backgroundImage: AssetImage("images/gojoo.jpg")),
      CircleAvatar(backgroundImage: AssetImage("images/gojoo.jpg"))
    ];
    final Store = ['Times Store', 'Imtiaz Store', 'Shopping Store'];
    final Gmail = [
      'hamzanazir088@gmail.com',
      'samichandio@gmail.com',
      'mohsinfida9065@gmail.com'
    ];

    return Scaffold(
      backgroundColor: MyThemeClass.primaryColor,
      body: SizedBox(
        height: height,
        width: width,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: height * 0.09,
                width: width,
                alignment: Alignment.center,
                child: Text(
                  "All Users",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: width * 0.018,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const Divider(
                color: Colors.white,
                thickness: 1,
              ),
              Expanded(
                child: StreamBuilder<QuerySnapshot>(
                    stream: FirebaseFirestore.instance
                        .collection('Users')
                        .snapshots(),
                    builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                      return Container(
                        height: height * 0.6,
                        width: width * 0.85,
                        color: Colors.black38,
                        child: Column(
                          children: [
                            SizedBox(
                              height: height * 0.07,
                              width: width,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      height: height,
                                      width: width * 0.05,
                                      child: Center(
                                        child: Text(
                                          'SL',
                                          style: TextStyle(
                                              fontSize: width * 0.009,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: SizedBox(
                                        height: height,
                                        width: width,
                                        child: Center(
                                          child: Text(
                                            'IMAGE',
                                            style: TextStyle(
                                                fontSize: width * 0.009,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: SizedBox(
                                        height: height,
                                        width: width,
                                        child: Center(
                                          child: Text(
                                            'NAME',
                                            style: TextStyle(
                                                fontSize: width * 0.009,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: SizedBox(
                                        height: height,
                                        width: width,
                                        child: Center(
                                          child: Text(
                                            'STATUS',
                                            style: TextStyle(
                                                fontSize: width * 0.009,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: SizedBox(
                                        height: height,
                                        width: width,
                                        child: Center(
                                          child: Text(
                                            'Number',
                                            style: TextStyle(
                                                fontSize: width * 0.009,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: SizedBox(
                                        height: height,
                                        width: width,
                                        child: Center(
                                          child: Text(
                                            'GMAIL',
                                            style: TextStyle(
                                                fontSize: width * 0.009,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: SizedBox(
                                        height: height,
                                        width: width,
                                        child: Center(
                                          child: Text(
                                            'ACTION',
                                            style: TextStyle(
                                                fontSize: width * 0.009,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: SizedBox(
                                height: height,
                                width: width,
                                child: !snapshot.hasData
                                    ? const Center(
                                        child: Text("No Record Found"))
                                    : ListView.builder(
                                        itemCount: snapshot.data!.docs.length,
                                        itemBuilder: (context, index) {
                                          UserModel model = UserModel.fromMap(
                                              snapshot.data!.docs[index].data()
                                                  as Map<String, dynamic>);
                                          return Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Container(
                                              height: height * 0.07,
                                              width: width,
                                              color: MyThemeClass.primaryColor,
                                              child: Row(
                                                children: [
                                                  SizedBox(
                                                    height: height,
                                                    width: width * 0.05,
                                                    child: Center(
                                                      child: Text(
                                                        "${index + 1}",
                                                        style: TextStyle(
                                                            fontSize:
                                                                width * 0.009,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color:
                                                                Colors.white),
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: SizedBox(
                                                      height: height,
                                                      width: width,
                                                      child: Center(
                                                        child: Container(
                                                          height: height,
                                                          width: width,
                                                          decoration: BoxDecoration(
                                                              shape: BoxShape
                                                                  .circle,
                                                              color: Colors
                                                                  .black38,
                                                              image: DecorationImage(
                                                                  fit: BoxFit
                                                                      .cover,
                                                                  image: NetworkImage(
                                                                      model
                                                                          .image!))),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: SizedBox(
                                                      height: height,
                                                      width: width,
                                                      child: Center(
                                                        child: Text(
                                                          model.name!,
                                                          style: TextStyle(
                                                              fontSize:
                                                                  width * 0.009,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color:
                                                                  Colors.white),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: SizedBox(
                                                      height: height,
                                                      width: width,
                                                      child: Center(
                                                        child: Text(
                                                          model.status == 0
                                                              ? 'Active'
                                                              : "Block",
                                                          style: TextStyle(
                                                              fontSize:
                                                                  width * 0.009,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color:
                                                                  Colors.white),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: SizedBox(
                                                      height: height,
                                                      width: width,
                                                      child: Center(
                                                        child: Text(
                                                          model.number!,
                                                          style: TextStyle(
                                                              fontSize:
                                                                  width * 0.009,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color:
                                                                  Colors.white),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: SizedBox(
                                                      height: height,
                                                      width: width,
                                                      child: Center(
                                                        child: Text(
                                                          model.email!,
                                                          style: TextStyle(
                                                              fontSize:
                                                                  width * 0.009,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color:
                                                                  Colors.white),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: SizedBox(
                                                      height: height,
                                                      width: width,
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceEvenly,
                                                          children: [
                                                            IconButton(
                                                              onPressed: () {},
                                                              icon: const Icon(
                                                                  Icons.edit,
                                                                  color: Colors
                                                                      .white),
                                                            ),
                                                            IconButton(
                                                              onPressed: () {},
                                                              icon: const Icon(
                                                                  Icons.delete,
                                                                  color: Colors
                                                                      .white),
                                                            ),
                                                            IconButton(
                                                              onPressed: () {},
                                                              icon: const Icon(
                                                                  Icons.block,
                                                                  color: Colors
                                                                      .white),
                                                            ),
                                                          ]),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                              ),
                            )
                          ],
                        ),

                        //   rows: List<DataRow>.generate(
                        //       snapshot.data!.docs.length, (index) {

                        //     return DataRow(
                        //       cells: [
                        //         DataCell(Text(
                        //           '${index + 1}',
                        //           style: const TextStyle(color: Colors.white),
                        //         )),
                        //         DataCell((Images[index])),
                        //         DataCell(Expanded(
                        //           child: Text(
                        //             model.name!,
                        //             style: TextStyle(
                        //                 color: Colors.white,
                        //                 fontSize: width * 0.007),
                        //           ),
                        //         )),
                        //         DataCell(Text(
                        //           Status[index],
                        //           style: const TextStyle(color: Colors.white),
                        //         )),
                        //         DataCell(Text(
                        //           Store[index],
                        //           style: const TextStyle(color: Colors.white),
                        //         )),
                        //         DataCell(Text(
                        //           Gmail[index],
                        //           style: const TextStyle(color: Colors.white),
                        //         )),
                        //         DataCell(
                        //           Row(
                        //             children: [
                        //               Container(
                        //                 height: height * 0.055,
                        //                 width: width * 0.03,
                        //                 decoration: BoxDecoration(
                        //                   color: Colors.blue,
                        //                   borderRadius:
                        //                       BorderRadius.circular(10),
                        //                 ),
                        //                 child: Center(
                        //                   child: IconButton(
                        //                     onPressed: () {},
                        //                     icon: const Icon(Icons.edit,
                        //                         color: Colors.white),
                        //                   ),
                        //                 ),
                        //               ),
                        //               const SizedBox(width: 8),
                        //               Container(
                        //                 height: height * 0.055,
                        //                 width: width * 0.03,
                        //                 decoration: BoxDecoration(
                        //                   color: Colors.red,
                        //                   borderRadius:
                        //                       BorderRadius.circular(10),
                        //                 ),
                        //                 child: Center(
                        //                   child: IconButton(
                        //                     onPressed: () {},
                        //                     icon: const Icon(Icons.delete,
                        //                         color: Colors.white),
                        //                   ),
                        //                 ),
                        //               ),
                        //               const SizedBox(width: 8),
                        //               Container(
                        //                 height: height * 0.055,
                        //                 width: width * 0.03,
                        //                 decoration: BoxDecoration(
                        //                   color: Colors.black,
                        //                   borderRadius:
                        //                       BorderRadius.circular(10),
                        //                 ),
                        //                 child: Center(
                        //                   child: IconButton(
                        //                     onPressed: () {},
                        //                     icon: const Icon(Icons.block,
                        //                         color: Colors.white),
                        //                   ),
                        //                 ),
                        //               ),
                        //             ],
                        //           ),
                        //         ),
                        //       ],
                        //     );
                        //   }),
                        // ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showEditDialog(String name, String gmail, String store) {
    nameController.text = name;
    gmailController.text = gmail;
    storeController.text = store;

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Edit User'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildTextField('Name', nameController),
              _buildTextField('Gmail', gmailController),
              _buildTextField('Store', storeController),
            ],
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text('Discard Changes'),
            ),
            TextButton(
              onPressed: () {
                // Perform update operation with edited values
                // For simplicity, we'll just print them for now
                var editedName = nameController.text;
                var editedGmail = gmailController.text;
                var editedStore = storeController.text;

                print('Edited Name: $editedName');
                print('Edited Gmail: $editedGmail');
                print('Edited Store: $editedStore');

                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text('Save'),
            ),
          ],
        );
      },
    );
  }

  Widget _buildTextField(String label, TextEditingController controller) {
    return TextField(
      decoration: InputDecoration(labelText: label),
      controller: controller,
    );
  }
}
