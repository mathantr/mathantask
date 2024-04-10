import 'package:flutter/material.dart';
import 'package:usertask/api/userservice.dart';
import 'package:usertask/controller/usercontroller.dart';
import 'package:usertask/model/userdata.dart';
import 'package:get/get.dart';

class UserPage extends StatelessWidget {
  final UserController userController = Get.put(UserController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'User List',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        centerTitle: false,
      ),
      body: Obx(() {
        if (userController.users.isEmpty) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return ListView.builder(
            itemCount: userController.users.length,
            itemBuilder: (context, index) {
              var user = userController.users[index];
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(user.avatar),
                ),
                title: Text('${user.firstName} ${user.lastName}'),
                subtitle: Text(user.email),
              );
            },
          );
        }
      }),
    );
  }
}
