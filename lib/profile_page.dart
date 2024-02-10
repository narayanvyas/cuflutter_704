import 'package:cuapp_704/stat_card_widget.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1B2AFF),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            )),
        actions: [
          GestureDetector(
            onTap: () {
              print('Heart Clicked');
            },
            child: Container(
              margin: EdgeInsets.only(right: 15),
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 1, color: Color(0xFFDCDCDC)),
                  borderRadius: BorderRadius.circular(12)),
              child: Row(
                children: [
                  Icon(
                    Icons.favorite,
                    color: Colors.red,
                    size: 20,
                  ),
                  Text(
                    '4',
                    style: TextStyle(color: Colors.red, fontSize: 20),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0,
            child: Image.asset(
              'assets/images/profile_image.png',
              height: 180,
            ),
          ),
          Positioned(
            top: 160,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 40),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height - 275,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(24)),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'John Doe',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700),
                          ),
                          Text('@johndoe'),
                          Text('24 Jan 2024'),
                        ],
                      ),
                      Spacer(),
                      Image.asset(
                        'assets/images/india_flag.png',
                        width: 38,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    height: 400,
                    child: GridView(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 12,
                          childAspectRatio: 2.2,
                          crossAxisSpacing: 12),
                      children: [
                        StatCardWidget(
                          statCount: 1212,
                          title: 'Points',
                        ),
                        StatCardWidget(
                          statCount: 4312,
                          title: 'Kwizzles',
                        ),
                        StatCardWidget(
                            statCount: 12, title: 'Current Streaks >'),
                        StatCardWidget(
                          statCount: 2312,
                          title: 'Global Rank >',
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
