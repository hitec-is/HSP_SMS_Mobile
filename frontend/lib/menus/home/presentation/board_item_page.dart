import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend/core/presentation/constants/constants.dart';
import 'package:frontend/core/presentation/routes/app_router.gr.dart';
import 'package:frontend/core/presentation/widgets/dialogs.dart';
import 'package:frontend/menus/home/application/board_details_notifier.dart';
import 'package:frontend/menus/home/shared/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BoardItemPage extends HookConsumerWidget {
  const BoardItemPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final boardState = ref.watch(safetyBoardItemDetailsStateNotifierProvider);

    final formKey = GlobalKey<FormState>();

    final titleController = useTextEditingController();
    final contentsController = useTextEditingController();

    ref.listen<BoardDetailsState>(
      safetyBoardItemDetailsStateNotifierProvider,
      (state) {
        state.maybeWhen(
          saving: (_) {
            // Dialogs.showLoadingDialog(context);
          },
          saved: (_) async {
            await Dialogs.showOneAnswerDialog(
              context,
              color: Theme.of(context).colorScheme.secondary,
              icon: Icons.check_circle,
              title: "저장 완료",
              message: "저장을 완료하였습니다",
              yesTitle: "확인",
              onYesPressed: () {},
              onDismissed: () {
                ref
                    .read(boardStateNotifierProvider.notifier)
                    .switchToEditedState();
                context.router.popTop();
              },
            );
          },
          failure: (_, failure) async {
            await Dialogs.showOneAnswerDialog(
              context,
              color: Theme.of(context).errorColor,
              title: "오류",
              message: failure.when(
                api: (code, message) =>
                    message ?? "데이터 전송 중 에러가 발생하였습니다. 관리자에게 문의하세요.\n",
                noConnection: () => "인터넷 연결 오류\n",
                internal: (String message) => "$message\n",
              ),
              yesTitle: "확인",
              onYesPressed: () {},
              onDismissed: () {
                failure.maybeWhen(
                  internal: (_) {},
                  orElse: () {
                    context.router.popTop();
                  },
                );
              },
            );
          },
          orElse: () {},
        );
      },
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(safetyTitle),
        foregroundColor: Theme.of(context).textTheme.bodyText1?.color,
      ),
      body: Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: LayoutConstants.paddingXL),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Form(
                key: formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFormField(
                      controller: titleController,
                      decoration: InputDecoration(
                        labelText: "제목 기재란",
                        border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(LayoutConstants.radiusM),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(LayoutConstants.radiusM),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(LayoutConstants.radiusM),
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: LayoutConstants.paddingL,
                          vertical: LayoutConstants.paddingM,
                        ),
                      ),
                      autocorrect: false,
                      validator: formValidator,
                    ),
                    const SizedBox(height: LayoutConstants.spaceL),
                    SizedBox(
                      height: 300,
                      child: TextFormField(
                        controller: contentsController,
                        maxLines: null,
                        expands: true,
                        textAlignVertical: TextAlignVertical.top,
                        decoration: InputDecoration(
                          labelText: "내용 기재란",
                          alignLabelWithHint: true,
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.circular(LayoutConstants.radiusM),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.circular(LayoutConstants.radiusM),
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.circular(LayoutConstants.radiusM),
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: LayoutConstants.paddingL,
                            vertical: LayoutConstants.paddingM,
                          ),
                        ),
                        autocorrect: false,
                        validator: formValidator,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: LayoutConstants.spaceM),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () async {
                      // route to image page
                      if (boardState.item.images.isNotEmpty) {
                        AutoRouter.of(context).push(
                          ImageCheckRoute(
                            images: boardState.item.images,
                          ),
                        );
                      }
                    },
                    child: Stack(
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: LayoutConstants.paddingS,
                          ),
                          child: Icon(
                            Icons.collections,
                          ),
                        ),
                        if (boardState.item.images.isEmpty)
                          const SizedBox()
                        else
                          Positioned(
                            top: 0,
                            right: 0,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(
                                    LayoutConstants.radiusM),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: (LayoutConstants.paddingXS +
                                          LayoutConstants.paddingS) /
                                      2),
                              child: Text(
                                boardState.item.images.length.toString(),
                                textAlign: TextAlign.center,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2!
                                    .copyWith(
                                      fontSize: 11,
                                      color: Colors.white,
                                    ),
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      Dialogs.showTwoAnswersDialog(
                        context,
                        color: Theme.of(context).colorScheme.secondary,
                        icon: Icons.help,
                        title: "이미지 추가",
                        message: "사진을 추가할 방법을 선택해주세요",
                        yesTitle: "카메라",
                        onYesPressed: () {
                          ref
                              .read(safetyBoardItemDetailsStateNotifierProvider
                                  .notifier)
                              .pickImageFromCamera();
                        },
                        noTitle: "앨범",
                        onNoPressed: () {
                          ref
                              .read(safetyBoardItemDetailsStateNotifierProvider
                                  .notifier)
                              .pickImagesFromGallery();
                        },
                        onDismissed: () {},
                      );
                    },
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: LayoutConstants.paddingS,
                      ),
                      child: Icon(
                        Icons.add_a_photo,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      ref
                          .read(safetyBoardItemDetailsStateNotifierProvider
                              .notifier)
                          .clearImages();
                    },
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: LayoutConstants.paddingS,
                      ),
                      child: Icon(
                        Icons.refresh,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: LayoutConstants.spaceM),
              ElevatedButton(
                onPressed: () {
                  if (formKey.currentState?.validate() == true) {
                    Dialogs.showTwoAnswersDialog(
                      context,
                      color: Theme.of(context).colorScheme.secondary,
                      icon: Icons.help,
                      title: "점검목록 저장",
                      message: "점검내용을 저장하시겠습니까?",
                      yesTitle: "저장",
                      onYesPressed: () {
                        ref
                            .read(safetyBoardItemDetailsStateNotifierProvider
                                .notifier)
                            .saveBoardItem(
                              titleController.text,
                              contentsController.text,
                            );
                      },
                      noTitle: "취소",
                      onNoPressed: () {},
                      onDismissed: () {},
                    );
                  }
                },
                child: const Text("등록"),
              )
            ],
          ),
        ),
      ),
    );
  }
}

String? formValidator(String? value) {
  if (value == null || value.isEmpty) {
    return "값을 입력하지 않았습니다";
  } else {
    return null;
  }
}
