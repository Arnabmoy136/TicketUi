import 'package:flutter/material.dart';

import '../utlis/app_layout.dart';
class AppTicketTabs extends StatelessWidget {
  final String firstTab;
  final String secondTab;

  const AppTicketTabs(
      {Key? key, required this.firstTab, required this.secondTab})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return FittedBox(
      child: Container(
        padding: const EdgeInsets.all(3.5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            AppLayout.getHeigth(50),
          ),
          color: Colors.grey.shade400,
        ),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: size.width * .44,
                padding: EdgeInsets.symmetric(
                  vertical: AppLayout.getHeigth(7),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(AppLayout.getHeigth(50)),
                  ),
                  color: Colors.white,
                ),
                child: Center(child: Text(firstTab)),
              ),
              Container(
                width: size.width * .44,
                padding: EdgeInsets.symmetric(
                  vertical: AppLayout.getHeigth(7),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                    right: Radius.circular(AppLayout.getHeigth(50)),
                  ),
                  color: Colors.transparent,
                ),
                child: Center(child: Text(secondTab)),
              ),
            ]),
      ),
    );
  }
}

