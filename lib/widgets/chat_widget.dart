import 'package:flutter/material.dart';
import 'package:inclusion_clinical_system/constants/constants.dart';
import 'package:inclusion_clinical_system/services/assets_manager.dart';
import 'package:inclusion_clinical_system/widgets/text_widget.dart';

class ChatWidget extends StatelessWidget {
  const ChatWidget({super.key, required this.msg, required this.chatIndex});

  final String msg;
  final int chatIndex;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Material(
        color: chatIndex == 0 ? scaffoldBackgroundColor : cardColor,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(children: [
            Image.asset(
              chatIndex == 0 ? AssetsManager.userImage : AssetsManager.botImage,
              height: 30,
              width: 30,
            ),
            const SizedBox(
              width: 8,
            ),
            const TextWidget(
              label: "Hello World!",
            )
          ]),
        ),
      )
    ]);
  }
}
