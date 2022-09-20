import 'package:dawnsapp/Services/Constants/constant_colors.dart';
import 'package:flutter/material.dart';

class CheckoutPageInputs extends StatelessWidget {
  final String hintText;
  final Function(String) onChanged;
  final Function(String) onSubmitted;
  final TextInputAction textInputAction;
  final bool isPasswordField;
  final FocusNode? focusNode;
  final bool isNumberField;
  final TextEditingController controller;

  const CheckoutPageInputs(
      {Key? key,
      required this.hintText,
      required this.onChanged,
      required this.onSubmitted,
      this.textInputAction = TextInputAction.next,
      this.isPasswordField = false,
      this.focusNode,
      this.isNumberField = false,
      required this.controller, validatonMessage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(bottom: 19),
        padding: const EdgeInsets.only(left: 5),
        decoration: BoxDecoration(
            color: ConstantColors().greySecondary.withOpacity(.07),
            borderRadius: BorderRadius.circular(6)),
        child: TextField(
          controller: controller,
          keyboardType:
              isNumberField ? TextInputType.number : TextInputType.text,
          focusNode: focusNode,
          onChanged: onChanged,
          onSubmitted: onSubmitted,
          textInputAction: textInputAction,
          obscureText: isPasswordField,
          style: const TextStyle(fontSize: 14),
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hintText,
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 13, vertical: 13)),
        ));
  }
}
