import 'package:apna_ai_app/common/widgets/appBar/appbar.dart';
import 'package:apna_ai_app/utils/constraints/size.dart';
import 'package:apna_ai_app/app_constant/image_constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'controller/chat_controller.dart';
import 'widget/dash_chat_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final ChatController chatController = Get.find<ChatController>();

    return Scaffold(
      appBar: WAppBar(
        leadingIcon: Icons.refresh,
        leadingOnPressed: () {
          chatController.clearMessages();
        },
        title: const Padding(
          padding: EdgeInsets.only(right: WSizes.appBarwidth),
          child: Center(
            child: Text(
              "Apna AI",
              style: TextStyle(
                fontSize: 32,
                fontFamily: "Euclid Circular A Bold Italic",
              ),
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          // Centered GIF Background with Low Opacity
          Center(
            child: Opacity(
              opacity: 0.2, // Adjust the opacity level
              child: Image.asset(
                ImageConstant.ai,
                fit: BoxFit.cover,
              ).animate().fadeIn(), // Add a fade-in animation
            ),
          ),
          // Chat Interface
          BuildUI(),
        ],
      ),
    );
  }
}

// =====================================================================
