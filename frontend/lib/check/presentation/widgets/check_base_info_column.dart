import 'package:flutter/material.dart';
import 'package:frontend/check/domain/check_info.dart';
import 'package:frontend/check/shared/providers.dart';
import 'package:frontend/core/presentation/constants/constants.dart';
import 'package:frontend/core/presentation/widgets/dialogs.dart';
import 'package:frontend/core/presentation/widgets/responsive.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../widgets.dart';

class CheckBaseInfoColumn extends StatelessWidget {
  const CheckBaseInfoColumn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("base info built");
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const CheckTitle(),
        const SizedBox(height: LayoutConstants.spaceL),
        const CheckInfoSection(),
        const SizedBox(height: LayoutConstants.spaceL),
        Consumer(builder: (context, ref, child) {
          print("회차 built");

          final state = ref.watch(checkInfoStateNotifierProvider);

          return state.maybeWhen(
            loaded: (tagId, data) => CheckStandardRow(
              label: "회차",
              isSelected: data.intervals
                  .map((item) => item.id == data.header.interval)
                  .toList(),
              children: data.intervals.map((item) => item.name).toList(),
              onPressed: (index) {
                ref
                    .read(checkInfoStateNotifierProvider.notifier)
                    .setCheckInfo(data.copyWith.header(
                      interval: data.intervals[index].id,
                    ));
                ref
                    .read(checkInfoStateNotifierProvider.notifier)
                    .getCheckInfo(tagId, data.intervals[index].id);
              },
            ),
            orElse: () => const SizedBox(),
          );
        }),
        const SizedBox(height: LayoutConstants.spaceM),
        Consumer(builder: (context, ref, child) {
          print("점검주기 built");

          final state = ref.watch(checkInfoStateNotifierProvider);

          return state.maybeWhen(
              loaded: (_, data) => CheckStandardRow(
                    label: "점검주기",
                    isSelected: data.sessions
                        .map((item) => item.id == data.header.chasu)
                        .toList(),
                    onPressed: (index) {
                      ref
                          .read(checkInfoStateNotifierProvider.notifier)
                          .setCheckInfo(
                            data.copyWith.header(
                              chasu: data.sessions[index].id,
                            ),
                          );
                    },
                    children: data.sessions.map((item) => item.name).toList(),
                  ),
              orElse: () => const SizedBox());
        }),
        if (!Responsive.isMobile(context))
          Consumer(builder: (context, ref, child) {
            final data = ref.watch(
                checkInfoStateNotifierProvider.select((value) => value.info));

            return Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: LayoutConstants.paddingM),
              child: ElevatedButton(
                onPressed: () {
                  print("pressed");

                  Dialogs.showTwoAnswersDialog(
                    context,
                    color: Theme.of(context).colorScheme.secondary,
                    icon: Icons.help,
                    title: "점검목록 저장",
                    message: "점검내용을 저장하시겠습니까?",
                    yesTitle: "저장",
                    onYesPressed: () {
                      final params = {
                        "compCd": LogicConstants.companyCd,
                        "sysFlag": LogicConstants.systemFlag,
                        // TODO: USERID 변경
                        "userId": "dev",
                        "xmlH": data.toHeaderXml,
                        "xmlD": data.toResultsXml,
                        "xmlI": data.toImgsXml,
                      };

                      final images = <CheckImage>[];
                      for (final detail in data.details) {
                        images.addAll(detail.images);
                      }

                      ref
                          .read(checkInfoStateNotifierProvider.notifier)
                          .saveCheckInfo(
                            params,
                            images,
                          );
                    },
                    noTitle: "취소",
                    onNoPressed: () {},
                    onDismissed: () {},
                  );
                },
                child: const Text(
                  "저장",
                ),
              ),
            );
          }),
      ],
    );
  }
}