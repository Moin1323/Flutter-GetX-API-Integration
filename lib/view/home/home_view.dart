import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_api/res/routes/routes_name.dart';
import 'package:getx_api/view_models/controller/user_preferences/user_preferences_view_model.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  UserPreferences userPreferences = UserPreferences();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              userPreferences.removeUser().then((value) {
                Get.toNamed(RoutesName.loginView);
              });
            },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
    );
  }
}
