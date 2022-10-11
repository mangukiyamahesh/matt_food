import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List list = [
    'assets/images/burger1.png',
    'assets/images/burger2.png',
    'assets/images/burger3.png'
  ];
  List<Map<String, dynamic>> list4 = [
    {'image': 'assets/images/pizza.jpg', 'name': 'NYC Pizza'},
    {'image': 'assets/images/Hamburger.jpg', 'name': "John's Burgers"},
    {'image': 'assets/images/italian.png', 'name': 'Italian salad'},
  ];
  List<Map<String, dynamic>> list1 = [
    {'image': 'assets/images/burger.png', 'name': 'Burgers', 'time': '15 min'},
    {
      'image': 'assets/images/shushi-removebg-preview.png',
      'name': 'Shushi',
      'time': '30 min'
    },
    {'image': 'assets/images/pizza.png', 'name': 'Pizza', 'time': '20 min'},
  ];
  List<Map<String, dynamic>> list2 = [
    {'image': 'assets/images/burger.png', 'name': 'Burgers', 'time': '15 min'},
    {
      'image': 'assets/images/shushi-removebg-preview.png',
      'name': 'Shushi',
      'time': '30 min'
    },
    {'image': 'assets/images/pizza.png', 'name': 'Pizza', 'time': '20 min'},
  ];
  List<Map<String, dynamic>> list3 = [
    {'image': 'assets/images/burger.png', 'name': 'Burgers', 'time': '15 min'},
    {
      'image': 'assets/images/shushi-removebg-preview.png',
      'name': 'Shushi',
      'time': '30 min'
    },
    {'image': 'assets/images/pizza.png', 'name': 'Pizza', 'time': '20 min'},
  ];
  PageController pageController = PageController();
  PageController pageController1 = PageController();
  int select = 0;
  int pageselected = 0;
  int fav = 0;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: height * 0.02),
              child: Row(
                children: [
                  Icon(
                    Icons.sort,
                    size: height * 0.045,
                  ),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Welcome',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: height * 0.02,
                        ),
                      ),
                      Text(
                        'Matt',
                        style: TextStyle(
                          color: Colors.orange,
                          fontWeight: FontWeight.w600,
                          fontSize: height * 0.02,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: height * 0.015,
                  ),
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        height: height * 0.06,
                        width: height * 0.06,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(height * 0.015),
                          image: DecorationImage(
                              image: AssetImage(
                                'assets/images/yash.jpg',
                              ),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Positioned(
                        right: -height * 0.01,
                        top: -height * 0.004,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: height * 0.01,
                          child: CircleAvatar(
                              backgroundColor: Colors.orange,
                              radius: height * 0.005),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Stack(
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
            SizedBox(
              height: height * 0.01,
            ),
            Container(
              height: height * 0.19,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(height * 0.015),
              ),
              child: PageView(
                  onPageChanged: (value) {
                    setState(
                      () {
                        select = value;
                      },
                    );
                  },
                  controller: PageController(),
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                    3,
                    (index) => Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          height: height * 0.2,
                          width: double.infinity,
                          margin: EdgeInsets.only(
                              top: height * 0.02,
                              left: width * 0.05,
                              right: width * 0.05),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(height * 0.015),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: width * 0.1),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Hot Deals',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: height * 0.018,
                                  ),
                                ),
                                Text(
                                  'Free',
                                  style: TextStyle(
                                    color: Colors.orange,
                                    fontWeight: FontWeight.w600,
                                    fontSize: height * 0.037,
                                  ),
                                ),
                                Text(
                                  'Delivery',
                                  style: TextStyle(
                                    color: Colors.orange,
                                    fontWeight: FontWeight.w600,
                                    fontSize: height * 0.037,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          right: height * 0.03,
                          top: height * -0.09,
                          child: Image.asset(
                            list[index],
                            height: height * 0.3,
                            width: height * 0.2,
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                3,
                (index) => Padding(
                  padding: EdgeInsets.symmetric(horizontal: height * 0.005),
                  child: CircleAvatar(
                    backgroundColor:
                        select == index ? Colors.orange : Colors.grey,
                    radius: height * 0.004,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.05),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Favorites',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: height * 0.025,
                    ),
                  ),
                  Container(
                    height: height * 0.044,
                    width: height * 0.044,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      border: Border.all(
                          color: Colors.orange, width: height * 0.0025),
                    ),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      size: height * 0.02,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Container(
              height: height * 0.18,
              width: double.infinity,
              child: PageView(
                onPageChanged: (value) {
                  setState(
                    () {
                      pageselected = value;
                    },
                  );
                },
                controller: PageController(),
                physics: BouncingScrollPhysics(),
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(
                      3,
                      (index) => Container(
                        height: height * 0.18,
                        width: height * 0.12,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(height * 0.01),
                        ),
                        child: Column(
                          children: [
                            Image.asset(
                              list1[index]['image'],
                              height: height * 0.12,
                              width: height * 0.08,
                            ),
                            Text(
                              list1[index]['name'],
                              style: TextStyle(
                                  fontSize: height * 0.02,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              list1[index]['time'],
                              style: TextStyle(
                                  color: Colors.orange,
                                  fontSize: height * 0.02,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(
                      3,
                      (index) => Container(
                        height: height * 0.18,
                        width: height * 0.12,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(height * 0.01),
                        ),
                        child: Column(
                          children: [
                            Image.asset(
                              list2[index]['image'],
                              height: height * 0.12,
                              width: height * 0.08,
                            ),
                            Text(
                              list2[index]['name'],
                              style: TextStyle(
                                  fontSize: height * 0.02,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              list2[index]['time'],
                              style: TextStyle(
                                  color: Colors.orange,
                                  fontSize: height * 0.02,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(
                      3,
                      (index) => Container(
                        height: height * 0.18,
                        width: height * 0.12,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(height * 0.01),
                        ),
                        child: Column(
                          children: [
                            Image.asset(
                              list3[index]['image'],
                              height: height * 0.12,
                              width: height * 0.08,
                            ),
                            Text(
                              list3[index]['name'],
                              style: TextStyle(
                                  fontSize: height * 0.02,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              list3[index]['time'],
                              style: TextStyle(
                                  color: Colors.orange,
                                  fontSize: height * 0.02,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                3,
                (index) => Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.011),
                  child: CircleAvatar(
                    radius: height * 0.004,
                    backgroundColor:
                        pageselected == index ? Colors.orange : Colors.grey,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.05),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Near you',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: height * 0.025,
                    ),
                  ),
                  Container(
                    height: height * 0.044,
                    width: height * 0.044,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      border: Border.all(
                          color: Colors.orange, width: height * 0.0025),
                    ),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      size: height * 0.02,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Container(
              height: height * 0.18,
              width: double.infinity,
              // margin: EdgeInsets.symmetric(horizontal: width * 0.05),
              child: ListView.builder(
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.02),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: height * 0.14,
                          width: height * 0.175,
                          //margin: EdgeInsets.symmetric(horizontal: width * 0.02),
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(height * 0.02),
                            image: DecorationImage(
                                image: AssetImage(
                                  list4[index]['image'],
                                ),
                                fit: BoxFit.cover),
                          ),
                          child: Align(
                            alignment: Alignment.topRight,
                            child: GestureDetector(
                              onTap: () {
                                setState(
                                  () {
                                    fav = index;
                                  },
                                );
                              },
                              child: Container(
                                height: height * 0.05,
                                width: height * 0.05,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      bottomLeft:
                                          Radius.circular(height * 0.015),
                                      topRight:
                                          Radius.circular(height * 0.015)),
                                ),
                                child: fav == index
                                    ? Icon(
                                        Icons.favorite,
                                        color: Colors.orange,
                                        size: height * 0.025,
                                      )
                                    : Icon(
                                        Icons.favorite_outline,
                                        color: Colors.orange,
                                        size: height * 0.025,
                                      ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.015,
                        ),
                        Text(
                          list4[index]['name'],
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
