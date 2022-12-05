import 'package:conference_app/session_page.dart';
import 'package:flutter/material.dart';

class Day2 extends StatefulWidget {
  final List schedule;
  final Map topic;
  const Day2({Key? key, required this.schedule, required this.topic})
      : super(key: key);

  @override
  State<Day2> createState() => _Day2State();
}

class _Day2State extends State<Day2> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 1,
          backgroundColor: Colors.white,
          title: const TabBar(
            isScrollable: true,
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
              Tab(text: "SESSION 3"),
              Tab(text: "SESSION 4"),
            ],
          ),
        ),
        // body: TabBarView(children: [
        //   Session1day2(schedule: widget.schedule, topic: widget.topic),
        //   Session2day2(schedule: widget.schedule, topic: widget.topic),
        //   Session3day2(schedule: widget.schedule, topic: widget.topic),
        //   Session4day2(schedule: widget.schedule, topic: widget.topic)
        // ]),
        body: TabBarView(
          children: [
            SessionPage(
              schedule: widget.schedule,
              topic: widget.topic,
              firstInt: 3,
              stringInt: '4',
              date: '15 December 2022 (Thursday)',
            ),
            SessionPage(
              schedule: widget.schedule,
              topic: widget.topic,
              firstInt: 4,
              stringInt: '5',
              date: '15 December 2022 (Thursday)',
            ),
            SessionPage(
              schedule: widget.schedule,
              topic: widget.topic,
              firstInt: 5,
              stringInt: '6',
              date: '15 December 2022 (Thursday)',
            ),
            SessionPage(
              schedule: widget.schedule,
              topic: widget.topic,
              firstInt: 6,
              stringInt: '7',
              date: '15 December 2022 (Thursday)',
            ),
          ],
        ),
      ),
    );
  }
}
