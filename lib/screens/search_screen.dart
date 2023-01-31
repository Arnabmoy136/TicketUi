import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:new_life/utlis/app_layout.dart';
import 'package:new_life/utlis/app_styles.dart';
import 'package:new_life/widgets/double_text_widget.dart';
import 'package:new_life/widgets/icon_text.dart';
import 'package:new_life/widgets/ticket_tab.dart';
class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20),vertical: AppLayout.getHeigth(20)),
        children: [
          Gap(AppLayout.getHeigth(50)),
          Text('What Are \nyou looking for?',
            style: Styles.headLineStyle1.copyWith(fontSize: 35),),
          Gap(AppLayout.getHeigth(20)),
          AppTicketTabs(firstTab: 'Airline Ticket', secondTab: 'hotels'),
          Gap(AppLayout.getHeigth(25)),
          const AppIconText(icon: Icons.flight_takeoff_rounded, text: 'Departure'),
          Gap(AppLayout.getHeigth(15)),
          const AppIconText(icon: Icons.flight_land_rounded, text: 'Arrival'),
          Gap(AppLayout.getHeigth(24)),
          Container(
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: Colors.blue),
            child: Center(
              child: Text(
                'Find Tickets',
                style: Styles.textStyle
                    .copyWith(color: Colors.white, fontSize: 24),
              ),
            ),

          ),
          Gap(AppLayout.getHeigth(24)),
          const AppDoubleTextWidget(bigText: "Upcoming Flight", smallText: 'view All'),
          Gap(AppLayout.getWidth(40)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: AppLayout.getHeigth(400),
                width: size.width*0.42,
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeigth(15), vertical: AppLayout.getWidth(14)),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(AppLayout.getHeigth(20)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 1,
                      spreadRadius: 1,

                    )
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeigth(190),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppLayout.getHeigth(12.0)),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            "assets/images/sit.jpg"
                          )
                        )
                      ),
                    ),
                    Gap(AppLayout.getHeigth(12)),
                    Text(
                        '20% discount on the early booking of this flight. Dont miss .',
                        style: Styles.headLineStyle2,
                    ),
                  ],
                ),

              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width * 0.44,
                        height: AppLayout.getHeigth(144),
                        decoration: BoxDecoration(
                          color: Color(0xFF3AB8B8),
                          borderRadius: BorderRadius.circular(AppLayout.getHeigth(18)),
                        ),
                        padding: EdgeInsets.symmetric(vertical: AppLayout.getHeigth(15),horizontal: AppLayout.getWidth(12)),
                        child: Column(
                          children: [
                            Text('Discount\nfor survey', style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.bold,color: Colors.white),),
                            Gap(AppLayout.getHeigth(10)),
                            Text('take the survey bout our services', style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.w500,color: Colors.white,fontSize: 18),),
                          ],
                        ),
                      ),
                      Positioned(
                        right: -45,
                        top: -40,
                        child: Container(
                        padding: EdgeInsets.all(AppLayout.getHeigth(30)),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(width: 18,color: Color(0xFF189999)),
                            color: Colors.transparent
                        ),
                      ),
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeigth(15)),
                  Container(
                    width: size.width * .44,
                    padding: const EdgeInsets.all(15),
                    height: AppLayout.getHeigth(210),
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(18)),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Take Love",
                            style: Styles.headLineStyle2.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Gap(AppLayout.getHeigth(15)),
                          RichText(
                            text: const TextSpan(children: [
                              TextSpan(
                                text: ':)',
                                style: TextStyle(fontSize: 38),
                              ),
                              TextSpan(
                                text: ':)',
                                style: TextStyle(fontSize: 50),
                              ),
                              TextSpan(
                                text: ':)',
                                style: TextStyle(fontSize: 38),
                              ),
                            ]),
                          ),
                        ]),
                  ),
                ],
              ),
            ],
          )

        ],
      ),
      
    );
  }
}
