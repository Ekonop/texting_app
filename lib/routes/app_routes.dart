import 'package:flutter/material.dart';
import 'package:metaverse/indivisual_chat_screen/indiv_chat_screen.dart';
import '../presentation/chat_home_screen/chat_home_screen.dart';
import '../presentation/opening_screen/opening_screen.dart';
import '../presentation/settings_page/settings_page.dart';
import '../presentation/camera_page/camera_page.dart';


class AppRoutes {
  static const String chatHomeScreen = '/chat_home_screen';
  static const String opening_screen = '/opening_screen';
  static const String initialRoute = '/initialRoute';
  static const String unknownRoute = '/unknownRoute';
  static const String settings_page = '/settings_page';
  static const String settingsIcon = '/settingsIcon';
  static const String camera_page = '/camera_page';
  static const String cameraIcon = '/cameraIcon';
  static const String IndivChatScreen = '/IndivChatScreen';
 // static const String _buildChatList = '/_buildChatList';
  static const String chatItemWidget = '/chatItemWidget';
  static const String userChatScreen = '/userChatScreen';
  static const String chatItems = '/chatItems';



  static Map<String, WidgetBuilder> get routes => {
    chatHomeScreen: (context) => ChatHomeScreen(),
    opening_screen: (context) => OpeningScreen(),
    initialRoute: (context) => OpeningScreen(),
    unknownRoute: (context) => OpeningScreen(),
    settings_page: (context) => SettingsPage(),
    cameraIcon: (context) => CameraPage(),
    chatItems: (context) => UserChatScreen(),
   
  };
}
