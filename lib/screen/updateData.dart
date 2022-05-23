import 'package:flutter/material.dart';

import '../models/updateDataModel.dart';
import '../services/updateDataServices.dart';

class UpdateDataScreen extends StatefulWidget {
  const UpdateDataScreen({Key? key}) : super(key: key);

  @override
  State<UpdateDataScreen> createState() => _UpdateDataScreenState();
}

class _UpdateDataScreenState extends State<UpdateDataScreen> {
  ///fetch api data and update data

  UpdateDataServices _dataServices = UpdateDataServices();
  late final TextEditingController _idController;
  late final TextEditingController _nameController;
  bool isUpdating = false;

  @override
  void initState() {
    _idController = TextEditingController();
    _nameController = TextEditingController();
    super.initState();
  }

  var userInfo;
  String token =
      '''eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjM4MjksImV4cCI6MTk2ODM4NTcyNH0.31XjyvMakf0cuMqVbfUKCBskxpnDOq7fleWHvmG9zH4''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Update-Data-Screen'),
      ),
      body: FutureBuilder<UpdateDataModel?>(
          future: _dataServices.getApiData(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Container(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(snapshot.data!.data!.user!.firstName.toString()),
                      const SizedBox(
                        height: 10,
                      ),
                      TextField(
                        controller: _nameController,
                        decoration: InputDecoration(
                          hintText: 'first Name',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      isUpdating
                          ? const CircularProgressIndicator()
                          : ElevatedButton(
                              onPressed: () async {
                                setState(() {
                                  isUpdating = true;
                                });
                                if (_nameController.text != '') {
                                  UpdateDataModel dataModel = UpdateDataModel(
                                    data: Data(
                                      user: User(
                                        firstName: _nameController.text,
                                      ),
                                    ),
                                  );
                                  UpdateDataModel? retrievedUser =
                                      await _dataServices.updateApiData(
                                    userInfo: dataModel
                                  );

                                  if (retrievedUser != null) {
                                    setState(() {
                                      userInfo = retrievedUser
                                          .data!.user!.firstName
                                          .toString();
                                      print(retrievedUser.data!.user!.firstName
                                          .toString());
                                    });
                                    // showDialog(
                                    //   context: context,
                                    //   builder: (context) => Dialog(
                                    //     child: Container(
                                    //       decoration: BoxDecoration(
                                    //         color: Colors.white,
                                    //         borderRadius:
                                    //             BorderRadius.circular(20),
                                    //       ),
                                    //       child: Padding(
                                    //         padding: const EdgeInsets.all(8.0),
                                    //         child: Column(
                                    //           crossAxisAlignment:
                                    //               CrossAxisAlignment.start,
                                    //           mainAxisSize: MainAxisSize.min,
                                    //           children: [
                                    //             Text(
                                    //               'Name: ${retrievedUser.data!.user!.fullName.toString()}',
                                    //             ),
                                    //           ],
                                    //         ),
                                    //       ),
                                    //     ),
                                    //   ),
                                    // );
                                  }
                                }

                                setState(() {
                                  isUpdating = false;
                                });
                              },
                              child: Text('UpdateDataScreen'),
                            ),
                      Text('${userInfo.toString()}')
                    ],
                  ),
                ),
              );
            } else {
              return const Center(child: LinearProgressIndicator());
            }
          }),
    );
  }
}
