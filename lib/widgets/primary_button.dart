import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app_delivery/devices/enums.dart';
import 'package:food_app_delivery/devices/utilities/hex_color.dart';
import 'package:food_app_delivery/themes/animation.dart';
import 'package:food_app_delivery/themes/themes.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    required this.position,
    required this.label,
    required this.state,
    this.height,
    this.width,
    required this.action,
    this.image,
    this.padding,
    Key? key,
  }) : super(key: key);
  final int position;
  final String label;
  final double? height;
  final double? width;
  final Function action;
  final ButtonState state;
  final String? image;
  final EdgeInsets? padding;
  @override
  Widget build(BuildContext context) {
    Duration duration = const Duration(milliseconds: 500);
    return FoodAppAnimation(
      position: position,
      child: AnimatedContainer(
        duration: duration,
        height: state == ButtonState.loading ? 60 : height,
        width: state == ButtonState.loading ? 60 : width,
        padding: padding,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: state == ButtonState.disabled
                  ? Colors.transparent
                  : Colors.black38,
              blurRadius: state == ButtonState.disabled ? 0 : 3,
              offset: const Offset(1, 2),
            ),
          ],
        ),
        child: AnimatedOpacity(
          duration: duration,
          opacity: state == ButtonState.disabled ? 0.10 : 1,
          child: ElevatedButton(
            style: ButtonStyle(
              padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                const EdgeInsets.only(top: 5, bottom: 5, left: 20, right: 20),
              ),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              backgroundColor:
                  MaterialStateProperty.all<Color>(HexColor('#EC994B')),
            ),
            onPressed:
                state != ButtonState.disabled && state != ButtonState.loading
                    ? () => action()
                    : null,
            child: AnimatedSwitcher(
              duration: duration,
              child: buttonBody(state),
            ),
          ),
        ),
      ),
    );
  }

  Widget buttonBody(ButtonState state) {
    if (state == ButtonState.initial || state == ButtonState.disabled) {
      return FittedBox(
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Visibility(
              visible: (image != null),
              child: image != null
                  ? Image.asset(
                      image!,
                      height: 20,
                      width: 20,
                    )
                  : const SizedBox(),
            ),
            const SizedBox(width: 2),
            Text(
              label,
              style: FoodAppTheme.lightTheme.textTheme.labelLarge,
            ),
          ],
        ),
      );
    }

    if (state == ButtonState.loading) {
      return const CupertinoActivityIndicator(
        color: Colors.white,
      );
    } else {
      return const SizedBox();
    }
  }
}
