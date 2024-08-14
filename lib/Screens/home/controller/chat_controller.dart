import 'dart:io';
import 'package:apna_ai_app/app_constant/image_constant.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:image_picker/image_picker.dart';

class ChatController extends GetxController {
  final Gemini gemini = Gemini.instance;

  RxList<ChatMessage> messages = <ChatMessage>[].obs;

  ChatUser currentUser = ChatUser(id: "0", firstName: "User");
  ChatUser geminiUser =
      ChatUser(id: "1", firstName: "Apna AI", profileImage: ImageConstant.user);

  /// ==== This function sends a message to the Gemini API ====
  void sendMessage(ChatMessage chatMessage) {
    messages.insert(0, chatMessage);

    try {
      String question = chatMessage.text;
      List<Uint8List>? images;
      if (chatMessage.medias?.isNotEmpty ?? false) {
        images = [File(chatMessage.medias!.first.url).readAsBytesSync()];
      }

      StringBuffer responseBuffer = StringBuffer(); // To collect response parts

      gemini.streamGenerateContent(question, images: images).listen(
        (event) {
          String partResponse =
              event.content?.parts?.map((part) => part.text).join(" ") ?? "";

          // Append the received part to the buffer
          responseBuffer.write(partResponse);
        },
        onDone: () {
          // Once all parts are received, insert the full response
          String fullResponse = responseBuffer.toString();
          ChatMessage message = ChatMessage(
            user: geminiUser,
            createdAt: DateTime.now(),
            text: fullResponse,
          );
          messages.insert(0, message);
        },
        onError: (error) {
          messages.insert(
            0,
            ChatMessage(
              user: geminiUser,
              createdAt: DateTime.now(),
              text: "There was an error processing your request.",
            ),
          );
        },
      );
    } catch (e) {
      messages.insert(
        0,
        ChatMessage(
          user: geminiUser,
          createdAt: DateTime.now(),
          text: "Sorry, there was an error processing your request.",
        ),
      );
    }
  }

  // === This method is for sending image messages ===
  void sendMediaMessage() async {
    ImagePicker picker = ImagePicker();
    XFile? file = await picker.pickImage(source: ImageSource.gallery);
    if (file != null) {
      ChatMessage chatMessage = ChatMessage(
        user: currentUser,
        createdAt: DateTime.now(),
        text: "Tell me something about this picture",
        medias: [
          ChatMedia(
            url: file.path,
            fileName: file.name,
            type: MediaType.image,
          )
        ],
      );
      sendMessage(chatMessage);
    }
  }

  // === Clear messages when user presses refresh icon ===
  void clearMessages() {
    messages.clear();
  }

  // === Function to copy text to clipboard ===
  void copyToClipboard(String text) {
    Clipboard.setData(ClipboardData(text: text));
    Get.snackbar('Copied!', 'Text has been copied to clipboard',
        snackPosition: SnackPosition.BOTTOM);
  }
}

//=========================================================
