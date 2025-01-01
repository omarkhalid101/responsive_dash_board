import 'package:flutter/material.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(25),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: ShapeDecoration(
            color: const Color(0xffFFFFFF),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        child: Column(
          children: [
            
          ],
        ),
      ),
    );
  }
}
