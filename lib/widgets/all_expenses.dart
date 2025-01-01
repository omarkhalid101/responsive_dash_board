import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expense_item.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/all_expenses_item.dart';
import 'package:responsive_dash_board/widgets/range_options.dart';

class AllExpenses extends StatefulWidget {
  const AllExpenses({super.key});

  @override
  State<AllExpenses> createState() => _AllExpensesState();
}

class _AllExpensesState extends State<AllExpenses> {
  final List<AllExpenseItemData> expensesData = const [
    AllExpenseItemData(
      title: 'Balance',
      balance: "\$20,129",
      date: "April 2020",
      image: Assets.imagesBalance,
    ),
    AllExpenseItemData(
      title: 'Income',
      balance: "\$20,129",
      date: "April 2020",
      image: Assets.imagesIncome,
    ),
    AllExpenseItemData(
      title: 'Expenses',
      balance: "\$20,129",
      date: "April 2020",
      image: Assets.imagesExpenses,
    ),
  ];

  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: CustomContainer(
          child: Column(
        children: [
          const RangeOptions(),
          const SizedBox(
            height: 18,
          ),
          Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: expensesData.asMap().entries.map((e) {
                  int index = e.key;
                  var data = e.value;
                  return Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selected = index;
                        });
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: index == 1 ? 12.0 : 0),
                        child: AllExpensesItem(
                          data: data,
                          isSelect: index == selected,
                        ),
                      ),
                    ),
                  );
                }).toList()),
          // Expanded(
          //   child: Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //       children: expensesData.asMap().entries.map((e) {
          //         int index = e.key;
          //         var data = e.value;
          //         return Expanded(
          //           child: GestureDetector(
          //             onTap: () {
          //               setState(() {
          //                 selected = index;
          //               });
          //             },
          //             child: Padding(
          //               padding: EdgeInsets.symmetric(
          //                   horizontal: index == 1 ? 12.0 : 0),
          //               child: AllExpensesItem(
          //                 data: data,
          //                 isSelect: index == selected,
          //               ),
          //             ),
          //           ),
          //         );
          //       }).toList()),
          // ),
        ],
      )),
    );
  }
}

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    required this.child,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: ShapeDecoration(
          color: const Color(0xffFFFFFF),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
      child: child,
    );
  }
}
