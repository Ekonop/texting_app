import 'package:flutter/material.dart';
import 'package:metaverse/indivisual_chat_screen/indiv_chat_screen.dart';
import 'package:metaverse/presentation/camera_page/camera_page.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_image_view.dart';
import './widgets/chat_item_widget.dart';
import '../settings_page/settings_page.dart';


class ChatHomeScreen extends StatelessWidget {
  const ChatHomeScreen({Key? key}) : super(key: key);
  
  get onPressed => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.blackCustom,
      appBar: _buildAppBar(context),
      body: _buildChatList(),
      bottomNavigationBar: _buildBottomNavigationBar(context),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: appTheme.colorFF3A08,
      toolbarHeight: 90.h,
      automaticallyImplyLeading: false,
      title: Text(
        "CHATS",
        style: TextStyleHelper.instance.display48Jersey25.copyWith(height: 1.0),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 6.h),
          child: IconButton(
            onPressed: () {
              Navigator.of(context).push(
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) => SettingsPage(),
                  transitionsBuilder: (context, animation, secondaryAnimation, child) {
                    const begin = Offset(1.0, 0.0); // Start off-screen right
                    const end = Offset.zero;        // End at the screen's origin
                    final tween = Tween(begin: begin, end: end).chain(CurveTween(curve: Curves.ease));
                    return SlideTransition(
                      position: animation.drive(tween),
                      child: child,
                    );
                  },
                  transitionDuration: Duration(milliseconds: 400),
                ),
              );
            },
            icon: CustomImageView(
              className: "settingsIcon",
              imagePath: ImageConstant.imgSettings,
              height: 38.h,
              width: 38.h,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildChatList() {
    // Sample data for the chat list
    List<Map<String, String>> chatItems = [
      {"profileImage": ImageConstant.imgVector},
      {"profileImage": ImageConstant.imgVector},
      {"profileImage": ImageConstant.imgVector},
      {"profileImage": ImageConstant.imgVector},
    ];

    return ListView.builder(
      padding: EdgeInsets.only(top: 0.h, bottom: 0.h),
      itemCount: chatItems.length,
      itemBuilder: (context, index) {
        return ChatItemWidget(
          profileImage: (chatItems[index]["profileImage"]?.isNotEmpty ?? false)
              ? chatItems[index]["profileImage"]!
              : "assets/images/user_placeholder.png",
          onTapProfile: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => UserChatScreen()),
            );
          },
        );
      },
    );
  }

  Widget _buildBottomNavigationBar(BuildContext context) {
    return Container(
      height: 65.h,
      color: appTheme.colorFF3A08,
      padding: EdgeInsets.symmetric(horizontal: 6.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              // Handle new message button tap
            },
            icon: CustomImageView(
              className: "chatsIcon",
              imagePath: ImageConstant.imgChatbubble,
              height: 40.h,
              width: 40.h,
            ),
          ),
          IconButton(
            onPressed: () {
              // Handle camera button tap
                Navigator.of(context).push(
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) => CameraPage(),
                  transitionsBuilder: (context, animation, secondaryAnimation, child) {
                    const begin = Offset(1.0, 0.0); // Start off-screen right
                    const end = Offset.zero;        // End at the screen's origin
                    final tween = Tween(begin: begin, end: end).chain(CurveTween(curve: Curves.ease));
                    return SlideTransition(
                      position: animation.drive(tween),
                      child: child,
                    );
                  },
                  transitionDuration: Duration(milliseconds: 400),
                ),
              );
            },
            icon: CustomImageView(
              className: "cameraIcon",
              imagePath: ImageConstant.imgVectorBlack900,
              height: 40.h,
              width: 48.h,
              radius: BorderRadius.circular(20.h),
            ),
          ),
        ],
      ),
    );
  }
}

class RouteGenerator {
  static final RouteGenerator instance = RouteGenerator._internal();

  RouteGenerator._internal();

  void pushNamedToRoute(String routeName, BuildContext context) {
    Navigator.pushNamed(context, routeName);
  }
  void pop(BuildContext context) {
    Navigator.pop(context);
  }
  void pushNamedAndRemoveUntil(String routeName, BuildContext context) {
    Navigator.pushNamedAndRemoveUntil(context, routeName, (route) => false);
  }
  void pushNamedAndRemoveUntilWithArgs(
      String routeName, BuildContext context, Object args) {
    Navigator.pushNamedAndRemoveUntil(context, routeName, (route) => false,
        arguments: args);
  }
  void pushNamedWithArgs(String routeName, BuildContext context, Object args) {
    Navigator.pushNamed(context, routeName, arguments: args);
  } 
}