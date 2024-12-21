import 'package:flutter/material.dart';

import '../../../../../core/utils/style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.textColor,
      required this.backgroundColor,
      required this.text,
      this.borderRadius,
      this.fontSize,
      this.onPressed});
  /* انا عملت ويدجت يمكن اغير بعد خصائصها 
  وحددت الخصائص دى كمتغيرات وضفتها فى الكونستركتور 
  وعدلت عليها وخليتها تاخد قيم المتغيرات زى التكست تحت كده
  */
  final Color textColor;
  final Color backgroundColor;
  final String text;
  final double? fontSize;
  final BorderRadius? borderRadius;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              // هنا بقى قولتله لو لم يعطيك قيمة خد انت قيمة 16
              borderRadius: borderRadius ??
                  const BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    topLeft: Radius.circular(16),
                  ),
            ),
            // هنا كمان متغير
            backgroundColor: backgroundColor,
          ),
          child: Text(
            //هنا اهو المتغير
            text,
            style: Styles.textStyle18
                .copyWith(color: textColor, fontSize: fontSize),
          )),
    );
  }
}
