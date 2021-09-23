import 'package:flash/flash.dart';
import 'package:flutter/material.dart';

import 'package:frontend/core/presentation/constants/constants.dart';

class Dialogs {
  const Dialogs._();

  static void showOneAnswerDialog(
    BuildContext context, {
    String title = "Error",
    String message = "error occured!",
    IconData icon = Icons.error,
    Color? color,
    String? yesTitle,
    void Function()? onYesPressed,
    void Function()? onDismissed,
  }) {
    showFlash(
      context: context,
      transitionDuration: const Duration(milliseconds: 200),
      builder: (context, controller) {
        return NormalDialog(
          controller: controller,
          title: title,
          message: message,
          color: color ?? Theme.of(context).errorColor,
          leadingIcon: icon,
          yesTitle: yesTitle,
          onYesPressed: onYesPressed,
        );
      },
    ).then((_) {
      if (onDismissed != null) {
        onDismissed();
      }
    });
  }

  static void showTwoAnswersDialog(
    BuildContext context, {
    String title = "Error",
    String message = "error occured!",
    IconData icon = Icons.error,
    Color? color,
    String? yesTitle,
    void Function()? onYesPressed,
    String? noTitle,
    void Function()? onNoPressed,
    void Function()? onDismissed,
  }) {
    showFlash(
      context: context,
      transitionDuration: const Duration(milliseconds: 200),
      builder: (context, controller) {
        return NormalDialog(
          controller: controller,
          title: title,
          message: message,
          color: color ?? Theme.of(context).errorColor,
          leadingIcon: icon,
          yesTitle: yesTitle,
          onYesPressed: onYesPressed,
          noTitle: noTitle,
          onNoPressed: onNoPressed,
        );
      },
    ).then((_) {
      if (onDismissed != null) {
        onDismissed();
      }
    });
  }
}

class NormalDialog extends StatelessWidget {
  const NormalDialog({
    Key? key,
    required this.controller,
    required this.title,
    required this.message,
    required this.color,
    required this.leadingIcon,
    this.yesTitle,
    this.noTitle,
    this.onYesPressed,
    this.onNoPressed,
  })  : assert(
          yesTitle == null && onYesPressed == null ||
              yesTitle != null && onYesPressed != null,
          noTitle == null && onNoPressed == null ||
              noTitle != null && onNoPressed != null,
        ),
        super(key: key);

  final String title;
  final String message;
  final Color color;
  final IconData leadingIcon;

  final String? yesTitle;
  final String? noTitle;
  final void Function()? onYesPressed;
  final void Function()? onNoPressed;

  final FlashController<Object?> controller;

  @override
  Widget build(BuildContext context) {
    return Flash.dialog(
        controller: controller,
        backgroundColor: Colors.transparent,
        child: SingleChildScrollView(
          child: Container(
            width: 300,
            padding: const EdgeInsets.symmetric(
              horizontal: LayoutConstants.paddingS,
              vertical: LayoutConstants.paddingM,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(LayoutConstants.radiusL),
              color: color,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    const SizedBox(
                      width: LayoutConstants.spaceM,
                    ),
                    Icon(
                      leadingIcon,
                      color: Colors.white54,
                      size: 25,
                    ),
                    const SizedBox(
                      width: LayoutConstants.spaceM,
                    ),
                    Expanded(
                      child: Text(
                        title,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () => controller.dismiss(),
                      icon: const Icon(
                        Icons.close,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ],
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.symmetric(
                      horizontal: LayoutConstants.paddingL),
                  child: Text(
                    message,
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        letterSpacing: 1),
                  ),
                ),
                const SizedBox(
                  height: LayoutConstants.spaceL,
                ),
                if (yesTitle != null || noTitle != null)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const SizedBox(
                        width: LayoutConstants.spaceL,
                      ),
                      if (noTitle != null)
                        SizedBox(
                          width: 110,
                          child: ElevatedButton(
                            onPressed: () {
                              controller.dismiss();
                              onNoPressed!();
                            },
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                              color.withAlpha(200),
                            )),
                            child: Text(
                              noTitle!,
                              style: const TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      const Spacer(),
                      if (yesTitle != null)
                        SizedBox(
                          width: 110,
                          child: ElevatedButton(
                            onPressed: () {
                              controller.dismiss();
                              onYesPressed!();
                            },
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                              Colors.white,
                            )),
                            child: Text(
                              yesTitle!,
                              style: TextStyle(
                                color: color,
                              ),
                            ),
                          ),
                        ),
                      const SizedBox(
                        width: LayoutConstants.spaceL,
                      ),
                    ],
                  ),
                const SizedBox(
                  height: LayoutConstants.spaceL,
                )
              ],
            ),
          ),
        ));
  }
}