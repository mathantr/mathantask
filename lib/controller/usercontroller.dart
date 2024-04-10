// user_controller.dart

import 'package:get/get.dart';
import 'package:usertask/api/userservice.dart';
import 'package:usertask/model/userdata.dart';

class UserController extends GetxController {
  final ApiService apiService = ApiService();
  var users = <UserModel>[].obs;

  @override
  void onInit() {
    fetchUsers();
    super.onInit();
  }

  Future<void> fetchUsers() async {
    try {
      var userList = await apiService.fetchUsers(); // Fetch users for page 1
      users.assignAll(userList);
    } catch (e) {
      print(e);
    }
  }
}
