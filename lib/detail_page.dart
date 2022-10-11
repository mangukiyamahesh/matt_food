import 'package:dotted_line/dotted_line.dart';
import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  List<Map<String, dynamic>> list1 = [
    {
      'image': 'assets/images/burger.png',
      'country': 'New York City Pizza',
      'rating': '4.5',
      'time': '20 min',
      'name': 'Pizza'
    },
    {
      'image': 'assets/images/burger1.png',
      'country': 'Italianoman',
      'rating': '4.9',
      'time': '25 min',
      'name': 'Italian'
    },
    {
      'image': 'assets/images/burger1.png',
      'country': 'Italianoman',
      'rating': '4.9',
      'time': '25 min',
      'name': 'Italian'
    },
    {
      'image': 'assets/images/burger2.png',
      'country': "John's Burgers",
      'rating': '4.6',
      'time': '23 min',
      'name': 'Burgers'
    },
    {
      'image': 'assets/images/burger3.png',
      'country': 'SushiMaster',
      'rating': '4.4',
      'time': '35 min',
      'name': 'Sushi'
    },
  ];
  List list = ['All', 'Burgers', 'Pizza', 'Sushi', 'Thai', 'Tea'];
  int sel = 0;
  int select = 0;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: height * 0.02,
            ),
            Center(
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: height * 0.06,
                    width: width * 0.85,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(height * 0.04),
                    ),
                    child: Center(
                      child: Text(
                        'East 42nd St, New York',
                        style: TextStyle(
                          fontSize: height * 0.02,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: height * -0.002,
                    left: -height * 0.002,
                    child: CircleAvatar(
                      backgroundColor: Colors.orange,
                      radius: height * 0.031,
                      child: Icon(
                        Icons.location_on,
                        color: Colors.white,
                        size: height * 0.035,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Container(
              height: height * 0.17,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: height * 0.001,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: height * 0.02),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '321',
                          style: TextStyle(
                              color: Colors.orangeAccent,
                              fontSize: height * 0.025,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Restaurants',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: height * 0.025,
                              fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        CircleAvatar(
                          backgroundColor: Colors.orangeAccent,
                          radius: height * 0.018,
                          child: Text(
                            '0',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          width: width * 0.01,
                        ),
                        Text(
                          'Filter',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: height * 0.02,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          width: width * 0.01,
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * 0.015,
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: width * 0.03),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 6,
                        physics: BouncingScrollPhysics(),
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(
                                    () {
                                      sel = index;
                                    },
                                  );
                                },
                                child: Container(
                                  height: height * 0.05,
                                  width: width * 0.17,
                                  margin: EdgeInsets.symmetric(
                                      horizontal: width * 0.01),
                                  decoration: BoxDecoration(
                                    color: sel == index
                                        ? Colors.black
                                        : Colors.transparent,
                                    borderRadius:
                                        BorderRadius.circular(height * 0.02),
                                    border: Border.all(
                                      color: sel == index
                                          ? Colors.transparent
                                          : Colors.grey,
                                      width: height * 0.001,
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      list[index],
                                      style: TextStyle(
                                          color: sel == index
                                              ? Colors.white
                                              : Colors.black,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return index == 2
                      ? Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: width * 0.03,
                              vertical: height * 0.01),
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                height: height * 0.09,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius:
                                      BorderRadius.circular(height * 0.015),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: width * 0.13,
                                    ),
                                    Text(
                                      'Get 10% ',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w700,
                                          fontSize: height * 0.025),
                                    ),
                                    Text(
                                      'Off Code',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700,
                                          fontSize: height * 0.025),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                right: width * 0.06,
                                top: height * -0.035,
                                child: Image.asset(
                                  'assets/images/popcorn-removebg-preview.png',
                                  height: height * 0.13,
                                  width: width * 0.22,
                                ),
                              ),
                            ],
                          ),
                        )
                      : Row(
                          children: [
                            Container(
                              height: height * 0.13,
                              width: height * 0.13,
                              margin: EdgeInsets.symmetric(
                                  horizontal: width * 0.03,
                                  vertical: height * 0.01),
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius:
                                    BorderRadius.circular(height * 0.02),
                                image: DecorationImage(
                                  image: AssetImage(
                                    list1[index]['image'],
                                  ),
                                ),
                              ),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  height: height * 0.045,
                                  width: height * 0.045,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                      bottomRight:
                                          Radius.circular(height * 0.02),
                                      topLeft: Radius.circular(height * 0.018),
                                    ),
                                  ),
                                  child: FavoriteButton(
                                    iconSize: height * 0.04,
                                    valueChanged: (_isFavorite) {
                                      print('Is Favorite $_isFavorite)');
                                    },
                                  ),
                                ),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  list1[index]['country'],
                                  style: TextStyle(
                                      fontSize: height * 0.02,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: height * 0.01,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.star_border,
                                      color: Colors.orange,
                                      size: height * 0.025,
                                    ),
                                    SizedBox(
                                      width: width * 0.01,
                                    ),
                                    Text(
                                      list1[index]['rating'],
                                      style: TextStyle(
                                          fontSize: height * 0.02,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: width * 0.03,
                                    ),
                                    Icon(
                                      Icons.access_time_outlined,
                                      color: Colors.orange,
                                      size: height * 0.025,
                                    ),
                                    SizedBox(
                                      width: width * 0.01,
                                    ),
                                    Text(
                                      list1[index]['time'],
                                      style: TextStyle(
                                          fontSize: height * 0.018,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      width: width * 0.2,
                                    ),
                                    Text(
                                      list1[index]['name'],
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: height * 0.017,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        );
                },
                itemCount: 5,
                separatorBuilder: (BuildContext context, int index) {
                  return Padding(
                      padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                      child: DottedLine());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
