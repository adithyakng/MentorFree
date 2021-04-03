import 'package:MentorFree/widgets/mentor_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.grey,
          ),
          onPressed: () {},
        ),
        centerTitle: true,
        title: new FlutterLogo(size: 30, textColor: Colors.green),
        actions: [
          IconButton(
            icon: Icon(
              Icons.menu_rounded,
              color: Colors.grey,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Stack(
            children: [
              Container(
                height: 100,
                alignment: Alignment(0.0, -0.4),
                decoration: BoxDecoration(color: Colors.white),
                child: Text(
                  'Mentor Free',
                  style: TextStyle(
                      fontFamily: 'DelaGothicOne',
                      color: Colors.black87,
                      fontSize: 20),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(25, 90, 25, 0.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                  // boxShadow: [BoxShadow(blurRadius: 2.0, color: Colors.grey)],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(25, 25, 5, 5),
                          child: Text(
                            'YOU HAVE',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(25, 50, 5, 25),
                          child: Text(
                            '206',
                            style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 125.0,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.blueAccent[100].withOpacity(0.4),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        "Buy More",
                        style: TextStyle(color: Colors.blueAccent),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'My Mentors',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  'View Past Sessions',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          GridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 4,
            crossAxisSpacing: 2,
            primary: false,
            shrinkWrap: true,
            children: [
              MentorCard(
                name: "Adithya KNG",
                status: "I provide free mentoring",
                available: true,
              ),
              MentorCard(
                name: "Adithya KNG",
                status: "Will be available tomorrow",
                available: false,
              ),
              MentorCard(
                name: "Adithya KNG",
                status: "I provide free mentoring",
                available: false,
              ),
              MentorCard(
                name: "Adithya KNG",
                status: "Will be available tomorrow",
                available: true,
              ),
              MentorCard(
                name: "Adithya KNG",
                status: "I provide free mentoring",
                available: true,
              ),
              MentorCard(
                name: "Adithya KNG",
                status: "Will be available tomorrow",
                available: true,
              ),
              MentorCard(
                name: "Adithya KNG",
                status: "I provide free mentoring",
                available: false,
              ),
              MentorCard(
                name: "Adithya KNG",
                status: "Will be available tomorrow",
                available: true,
              )
            ],
          )
        ],
      ),
    );
  }
}
