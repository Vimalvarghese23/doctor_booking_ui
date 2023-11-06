import 'package:booking_app_ui/date.dart';
import 'package:booking_app_ui/icon.dart';
import 'package:booking_app_ui/time.dart';
import 'package:flutter/material.dart';

class MyHomeApp extends StatelessWidget {
  const MyHomeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios_new_outlined),
          color: Colors.black,
        ),
        title: Center(
          child: Text(
            "Appointment",
            style: TextStyle(
                color: Color.fromARGB(255, 9, 86, 150),
                fontWeight: FontWeight.bold,
                fontSize: 35),
          ),
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 20),
                child: Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25)),
                  child: Image.asset(
                    "images/doctor.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 7),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Dr. Upul",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Denteeth",
                      style: TextStyle(color: Colors.blueAccent, fontSize: 15),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 60),
                      child: Text(
                        "Payment",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 7),
                child: Column(
                  children: [
                    Row(
                      children: [
                        MyIcon(myOwnicon: Icon(Icons.messenger_outline)),
                        MyIcon(myOwnicon: Icon(Icons.call)),
                        MyIcon(myOwnicon: Icon(Icons.video_call)),
                      ],
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(top: 40, left: 40),
                      child: Text(
                        "\$ 200.00",
                        style: TextStyle(
                            color: Colors.lightBlue,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.only(
              right: 280,
            ),
            child: Text(
              "Details",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 17, top: 10),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text(
                          "Worem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur tempus urna at turpis condimentum lobortis. Ut commodo efficitur neque. Ut diam quam, semper iaculis condimentum ac, vestibulum eu nisl.")
                    ],
                  ),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 17),
                child: Text(
                  "Working Hours",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 15, top: 10),
                child: Text(
                  "See All",
                  style: TextStyle(fontSize: 20),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TimeContainer(
                    mycolor: Colors.white,
                    time: '10.00 AM',
                    fcolor: Colors.black),
                TimeContainer(
                    mycolor: Colors.lightBlue,
                    time: '11.00 AM',
                    fcolor: Colors.white),
                TimeContainer(
                    mycolor: Colors.white,
                    time: '12.00 PM',
                    fcolor: Colors.black),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 17),
                child: Text(
                  "Date",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 15, top: 10),
                child: Text(
                  "See All",
                  style: TextStyle(fontSize: 20),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DateContainer(
                    mycolor: Colors.lightBlue,
                    date: 'Mon 5',
                    fcolor: Colors.white),
                DateContainer(
                    mycolor: Colors.white, date: 'Wed 2', fcolor: Colors.black),
                DateContainer(
                    mycolor: Colors.white, date: 'Fri 7', fcolor: Colors.black),
              ],
            ),
          ),
          SizedBox(height: 50),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 17),
                child: Container(
                  height: 60,
                  width: 350,
                  decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      borderRadius: BorderRadius.circular(15)),
                  child: Center(
                      child: Text(
                    "Book an Appointment",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  )),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
