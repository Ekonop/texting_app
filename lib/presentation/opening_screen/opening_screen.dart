import 'package:flutter/material.dart';
import '../../routes/app_routes.dart';



void main() {
  runApp(const FigmaToCodeApp());
}
class FigmaToCodeApp extends StatelessWidget {
  const FigmaToCodeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(children: [
          OpeningScreen(),
        ]),
      ),
    );
  }
}

class OpeningScreen extends StatefulWidget {
  const OpeningScreen({super.key});

  @override
  State<OpeningScreen> createState() => _OpeningScreenState();
}

class _OpeningScreenState extends State<OpeningScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
    Navigator.pushReplacementNamed(context, AppRoutes.chatHomeScreen);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(color: const Color(0xFF3A084B)),
                child: Stack(
                  children: [
                    Center(
                     child: Container(
                        width: 180,
                        height: 180,
                        
                        decoration: ShapeDecoration(
                   
                          image: DecorationImage(
                            image: AssetImage('assets/images/logo.png'),
                            fit: BoxFit.cover,
                            
                          ),
                          shape: RoundedRectangleBorder(
                           // side: BorderSide(width: 1, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}