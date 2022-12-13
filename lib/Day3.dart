import 'package:conference_app/keynote5.dart';
import 'package:conference_app/planar3.dart';
import 'package:conference_app/session_page.dart';
import 'package:flutter/material.dart';

class Day3 extends StatefulWidget {
  final List schedule;
  final Map topic;
  const Day3({Key? key, required this.schedule, required this.topic})
      : super(key: key);

  @override
  State<Day3> createState() => _Day3State();
}

class _Day3State extends State<Day3> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
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
            isScrollable: true,
            tabs: [
              Tab(text: "SESSION 1"),
              Tab(text: "SESSION 2"),
              Tab(text: "SESSION 3"),
              Tab(text: "KEYNOTE-5"),
              Tab(text: "PLENARY-3")
            ],
          ),
        ),
        // body: TabBarView(children: [
        //   Session1day3(schedule: widget.schedule, topic: widget.topic),
        //   Session2day3(schedule: widget.schedule, topic: widget.topic),
        //   Session3day3(schedule: widget.schedule, topic: widget.topic),
        // ]),
        body: TabBarView(
          children: [
            SessionPage(
              schedule: widget.schedule,
              topic: widget.topic,
              firstInt: 7,
              stringInt: '8',
              date: '16 December 2022 (Friday)',
            ),
            SessionPage(
              schedule: widget.schedule,
              topic: widget.topic,
              firstInt: 8,
              stringInt: '9',
              date: '16 December 2022 (Friday)',
            ),
            SessionPage(
              schedule: widget.schedule,
              topic: widget.topic,
              firstInt: 9,
              stringInt: '10',
              date: '16 December 2022 (Friday)',
            ),
            const Keynote5(),
            const Plenary3()
          ],
        ),
      ),
    );
  }
}
