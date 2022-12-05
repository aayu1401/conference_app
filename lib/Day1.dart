import 'package:conference_app/session_page.dart';
import 'package:flutter/material.dart';

class Day1 extends StatefulWidget {
  final List schedule;
  final Map topic;

  const Day1({Key? key, required this.schedule, required this.topic})
      : super(key: key);

  @override
  State<Day1> createState() => _Day1State();
}

class _Day1State extends State<Day1> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 1,
          backgroundColor: Colors.white,
          title: const TabBar(
            labelPadding: EdgeInsets.all(15),
            labelColor: Colors.teal,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.teal,
            labelStyle: TextStyle(
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.normal,
                fontFamily: 'Poppins',
                fontSize: 14),
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(width: 4, color: Colors.teal),
              insets: EdgeInsets.only(bottom: 10),
            ),
            tabs: [
              Tab(text: "SESSION 1"),
              Tab(text: "SESSION 2"),
              Tab(text: "SESSION 3")
            ],
          ),
        ),
        // body: TabBarView(children: [
        //   Session1day1(schedule: widget.schedule, topic: widget.topic),
        //   Session2day1(schedule: widget.schedule, topic: widget.topic),
        //   Session3day1(schedule: widget.schedule, topic: widget.topic)
        // ]),
        body: TabBarView(
          children: [
            SessionPage(
              schedule: widget.schedule,
              topic: widget.topic,
              firstInt: 0,
              stringInt: '1',
              date: '14 December 2022 (Wednesday)',
            ),
            SessionPage(
              schedule: widget.schedule,
              topic: widget.topic,
              firstInt: 1,
              stringInt: '2',
              date: '14 December 2022 (Wednesday)',
            ),
            SessionPage(
              schedule: widget.schedule,
              topic: widget.topic,
              firstInt: 2,
              stringInt: '3',
              date: '14 December 2022 (Wednesday)',
            ),
          ],
        ),
      ),
    );
  }
}
