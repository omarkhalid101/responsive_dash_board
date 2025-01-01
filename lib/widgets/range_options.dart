import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class RangeOptions extends StatelessWidget {
  const RangeOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "All Expenses",
          style: AppStyles.styleSemiBold20(context),
        ),
        Container(
          padding: const EdgeInsets.all(12),
          decoration: ShapeDecoration(
            color: const Color(0xffFFFFFF),
            shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.grey.shade200, width: 1),
                borderRadius: BorderRadius.circular(10)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Monthly",
                style: AppStyles.styleMedium16(context),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18),
                child: Transform.rotate(
                  angle: -1.57079633,
                  child: const Icon(
                    Icons.arrow_back_ios_new_outlined,
                    color: Color(0xff064061),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
