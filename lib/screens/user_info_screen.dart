import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../controllers/data_controller.dart';

class UserInfoScreen extends StatelessWidget {
  const UserInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<DataController>(context);

    return Scaffold(
      appBar: AppBar(title: const Text("User Info")),
      body: Center(
        child: controller.isLoading
            ? const CircularProgressIndicator()
            : Text(controller.userInfo?.name ?? "No user info"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => controller.fetchUserInfo(),
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
