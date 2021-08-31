import 'package:flutter/material.dart';
import 'package:frontend/core/presentation/constants/constants.dart';
import 'package:frontend/core/presentation/widgets/custom_toggle_button/widgets.dart';

class CheckStandardRow extends StatefulWidget {
  const CheckStandardRow({
    Key? key,
    required this.label,
    required this.children,
  }) : super(key: key);

  final String label;

  final List<String> children;

  @override
  _CheckStandardRowState createState() => _CheckStandardRowState();
}

class _CheckStandardRowState extends State<CheckStandardRow> {
  late List<bool> _isSelected;

  @override
  void initState() {
    if (widget.children.isNotEmpty) {
      _isSelected = widget.children.map((_) => false).toList();
    } else {
      _isSelected = [false];
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      Text(
        widget.label,
        style: Theme.of(context).textTheme.bodyText1!.copyWith(
              color: Theme.of(context).hintColor,
            ),
      ),
      const SizedBox(height: LayoutConstants.spaceXS),
      CustomToggleButton(
        // alignment: WrapAlignment.start,
        constraints: const BoxConstraints(
          minHeight: 35,
          minWidth: 40,
        ),
        selectedColor: Theme.of(context).accentColor,
        fillColor: Theme.of(context).accentColor.withOpacity(.5),
        hoverColor: Theme.of(context).accentColor.withOpacity(.2),
        disabledBorderColor: Theme.of(context).disabledColor,
        disabledColor: Theme.of(context).disabledColor,
        selectedBorderColor: Theme.of(context).accentColor,

        borderWidth: 2,
        borderRadius: LayoutConstants.radiusM,
        isSelected: _isSelected,
        // ! this toggle button will be disabled when onPressed is null
        onPressed: widget.children.isNotEmpty
            ? (index) {
                setState(() {
                  for (var buttonIndex = 0;
                      buttonIndex < _isSelected.length;
                      buttonIndex++) {
                    if (buttonIndex == index) {
                      _isSelected[buttonIndex] = true;
                    } else {
                      _isSelected[buttonIndex] = false;
                    }
                  }
                });
              }
            : null,
        children: widget.children.isNotEmpty
            ? widget.children.map((itemNm) => Text(itemNm)).toList()
            : const [
                Text("없음"),
              ],
      ),
    ]);
  }
}