import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/models/all_expense_item.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({
    super.key,
    required this.data,
    required this.isSelect,
  });
  final AllExpenseItemData data;
  final bool isSelect;
  @override
  Widget build(BuildContext context) {
    if (isSelect) {
      return ActiveAllExpenseItem(data: data);
    } else {
      return InActiveAllExpenseItem(data: data);
    }
  }
}

class ActiveAllExpenseItem extends StatelessWidget {
  const ActiveAllExpenseItem({
    super.key,
    required this.data,
  });

  final AllExpenseItemData data;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
            side: const BorderSide(color: Color(0xffF8F8F8)),
            borderRadius: BorderRadius.circular(10)),
        color: const Color(0xff4EB7F2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                backgroundColor: const Color(0xff5FBEF3),
                child: SvgPicture.asset(data.image, color: Colors.white),
              ),
              Transform.flip(
                flipX: true,
                child: const Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          Text(data.title,
              style: AppStyles.styleMedium16(context).copyWith(
                color: Colors.white,
              )),
          const SizedBox(height: 8),
          Text(data.date,
              style: AppStyles.styleRegular14(context).copyWith(
                color: Colors.white,
              )),
          const SizedBox(height: 16),
          Text(data.balance,
              style: AppStyles.styleSemiBold24(context).copyWith(
                color: Colors.white,
              )),
        ],
      ),
    );
  }
}

class InActiveAllExpenseItem extends StatelessWidget {
  const InActiveAllExpenseItem({
    super.key,
    required this.data,
  });

  final AllExpenseItemData data;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
            side: const BorderSide(color: Color(0xffF8F8F8)),
            borderRadius: BorderRadius.circular(10)),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey[200],
                child: SvgPicture.asset(data.image),
              ),
              Transform.flip(
                flipX: true,
                child: const Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: Color(0xff064061),
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          Text(data.title, style: AppStyles.styleMedium16(context)),
          const SizedBox(height: 8),
          Text(data.date, style: AppStyles.styleRegular14(context)),
          const SizedBox(height: 16),
          Text(data.balance, style: AppStyles.styleSemiBold24(context)),
        ],
      ),
    );
  }
}
