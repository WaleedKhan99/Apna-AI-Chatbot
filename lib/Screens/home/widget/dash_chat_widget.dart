import 'package:flutter/material.dart';
import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:get/get.dart';
import 'package:apna_ai_app/Screens/home/controller/chat_controller.dart';
import 'package:apna_ai_app/utils/constraints/colors.dart';
import 'package:apna_ai_app/utils/helpers/helper_functions.dart';

class BuildUI extends StatelessWidget {
  BuildUI({super.key});

  final ChatController chatController = Get.put(ChatController());

  @override
  Widget build(BuildContext context) {
    final dark = WHelperfunction.isDarkMode(context);

    return Obx(
      () => DashChat(
        messageOptions: MessageOptions(
          currentUserContainerColor: dark ? WColors.info : WColors.dark,
          currentUserTextColor: dark ? WColors.light : WColors.light,
          textColor: dark ? WColors.white : WColors.dark,
          containerColor: dark ? WColors.dark : WColors.light,
          // Enable onLongPress for copying AI responses
          onLongPressMessage: (message) {
            if (message.user.id == chatController.geminiUser.id) {
              chatController.copyToClipboard(message.text);
            }
          },
        ),
        inputOptions: InputOptions(
          inputTextStyle:
              TextStyle(color: dark ? WColors.light : WColors.black),
          inputDecoration: InputDecoration(
            filled: true,
            fillColor: dark ? Colors.transparent : Colors.grey.shade200,
            hintText: "Message Apna AI",
            hintStyle:
                TextStyle(color: dark ? WColors.grey : WColors.textSecondary),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: BorderSide.none,
            ),
            contentPadding:
                EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
          ),
          trailing: [
            IconButton(
              onPressed: chatController.sendMediaMessage,
              icon: const Icon(Icons.image),
            ),
          ],
        ),
        currentUser: chatController.currentUser,
        onSend: chatController.sendMessage,
        messages: chatController.messages.toList(),
      ),
    );
  }
}
// ================================================================================
