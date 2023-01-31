import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:new_life/screens/hotel_screen.dart';
import 'package:new_life/screens/ticket_view.dart';
import 'package:new_life/utlis/app_info_list.dart';
import 'package:new_life/utlis/app_styles.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:new_life/widgets/double_text_widget.dart';

class HomeScreen extends StatelessWidget {

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        Text(
                            'Good morning', style: Styles.headLineStyle3,
                        ),
                        const Gap(5),
                        Text(
                            'Book Tickets', style: Styles.headLineStyle1,
                        ),
                      ],
                    ),


                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            "assets/images/img_1.png"
                          )
                        )
                      ),
                    )

                  ],
                ),
                const Gap(25),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    children: [
                      const Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Color(0xFFBFC205),
                      ),
                      Text(
                        'Search',
                        style: Styles.headLineStyle4,
                      )
                    ],
                  ),
                ),
                const Gap(40),
                AppDoubleTextWidget(bigText: 'Upcoming Flight', smallText: 'View All')
              ],
            ),
          ),
          //Gap(15),

          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: ticketList.map((singleTicket) => TicketView(ticket: singleTicket,)).toList(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: AppDoubleTextWidget(bigText: "Hotel", smallText: "View All"),
          ),

          const Gap(15),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: hotelList.map((singleHotel) => HotelScreen(hotel: singleHotel)).toList()
              ),
          ),
        ],
      ),
    );
  }
}
