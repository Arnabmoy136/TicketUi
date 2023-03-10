import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:new_life/screens/ticket_view.dart';
import 'package:new_life/utlis/app_info_list.dart';
import 'package:new_life/utlis/app_layout.dart';
import 'package:new_life/utlis/app_styles.dart';
import 'package:new_life/widgets/ticket_tab.dart';
import 'package:barcode_widget/barcode_widget.dart';
class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    //final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.all(AppLayout.getHeigth(20)),
            children: [
              Gap(AppLayout.getHeigth(40)),
              Text(
                "Hotels",
                style: Styles.headLineStyle1
                    .copyWith(fontSize: AppLayout.getHeigth(35)),
              ),
              Gap(AppLayout.getHeigth(20)),
              AppTicketTabs(firstTab: "Upcoming", secondTab: "Previous"),
              Gap(AppLayout.getHeigth(20)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeigth(15)),
                child: TicketView(ticket: ticketList[0], isColor: true),
              ),
              const TicketData(
                textBig1: 'Flutter DB',
                textSmall1: 'Passenger',
                textBig2: '5221 364869',
                textSmall2: 'passport',
              ),
              const TicketData(
                textBig1: '0055 444 77147',
                textSmall1: 'Number of E-ticket',
                textBig2: 'B2SG28',
                textSmall2: 'Boking code',
              ),
              const TicketData(
                textBig1: '*** 2426',
                textSmall1: 'Payment Method',
                textBig2: '\$249.99',
                textSmall2: 'Price',
              ),
              Container(
                margin: EdgeInsets.only(
                    left: AppLayout.getHeigth(15),
                    right: AppLayout.getHeigth(15)),
                padding: EdgeInsets.all(AppLayout.getHeigth(15)),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: BarcodeWidget(
                  data: '0055 444 77147',
                  barcode: Barcode.code128(),
                ),
              ),
              Gap(AppLayout.getHeigth(20)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeigth(15)),
                child: TicketView(ticket: ticketList[0]),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class TicketData extends StatelessWidget {
  const TicketData({
    Key? key,
    required this.textBig1,
    required this.textBig2,
    required this.textSmall1,
    required this.textSmall2,
  }) : super(key: key);

  final String textBig1;
  final String textBig2;
  final String textSmall1;
  final String textSmall2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      padding: EdgeInsets.all(AppLayout.getHeigth(15)),
      margin: EdgeInsets.only(
          left: AppLayout.getHeigth(15), right: AppLayout.getHeigth(16)),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(textBig1, style: Styles.headLineStyle3),
                Gap(AppLayout.getHeigth(5)),
                Text(textSmall1, style: Styles.headLineStyle4),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(textBig2, style: Styles.headLineStyle3),
                Gap(AppLayout.getHeigth(5)),
                Text(textSmall2, style: Styles.headLineStyle4),
              ],
            ),
          ],
        ),
      ]),
    );
  }
}

