import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
                        Text(
                            snapshot.data!.data!.user!.profileSummary.toString()),
                        Text(snapshot.data!.data!.user!.fullName.toString()),
                        const SizedBox(
                          height: 10,
                        ),
                        TextField(
                          controller: _idController,
                          decoration: InputDecoration(
                            hintText: 'User Profile Summary',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextField(
                          controller: _nameController,
                          decoration: InputDecoration(
                            hintText: 'User Name',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        isUpdating
                            ? CircularProgressIndicator()
                            : ElevatedButton(
                                onPressed: () async {
                                  setState(() {
                                    isUpdating = true;
                                  });
                                  if (_nameController.text != '' &&
                                      _idController.text != '') {
                                    User dataModel = User(
                                        fullName: _nameController.text,
                                        profileSummary: _idController.text);
                                    User? retrievedUser = await _dataServices
                                        .updateApiData(userInfo: dataModel);

                                    if (retrievedUser != null) {
                                      showDialog(
                                        context: context,
                                        builder: (context) => Dialog(
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Text(
                                                      'Name: ${retrievedUser.profileSummary.toString()}'),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    }
                                  }

                                  setState(() {
                                    isUpdating = false;
                                  });
                                },
                                child: Text('UpdateDataScreen'),
                              )
                      ],
                    ),
                  ),
                );
              } else {
                return Center(child: LinearProgressIndicator());
              }
            }),
      ),
    );
  }
}
