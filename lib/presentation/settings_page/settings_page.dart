import 'package:flutter/material.dart';
import 'package:metaverse/core/app_export.dart';
//import 'package:metaverse/core/utils/image_constant.dart';
//import 'package:metaverse/presentation/chat_home_screen/chat_home_screen.dart';
import 'package:metaverse/widgets/custom_image_view.dart';
//import '../../routes/app_routes.dart';


void main() {
  runApp(const SettingsPage());
}

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Do NOT wrap in MaterialApp here in real app, but keeping as per your code
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 0, 0, 0),
      ),
      home: Scaffold(
        appBar: _buildAppBar(context),
        body: ListView(
          children: [
            // Replace the recursive call with your actual content
            // For example:
            Center(child: Text('', style: TextStyle(color: Colors.white))), // add text here like settings content
          ],
        ),
        bottomNavigationBar: _buildBottomNavigationBar(context),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: appTheme.colorFF3A08,
      toolbarHeight: 90.h,
      automaticallyImplyLeading: false,
      title: Text(
        "SETTINGS",
        style: TextStyleHelper.instance.display48Jersey25.copyWith(height: 1.0),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 6.h),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: CustomImageView(
              className: "returnIcon",
              imagePath: "assets/images/return.png",
              height: 38.h,
              width: 38.h,
            ),
          ),
        ),
      ],
    );
  }
}

Widget _buildBottomNavigationBar(BuildContext context) {
  return Container(
    height: 65.h,
    color: appTheme.colorFF3A08,
    padding: EdgeInsets.symmetric(horizontal: 6.h),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
       
      ],
    ),
  );
}

