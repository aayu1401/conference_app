import 'package:conference_app/Card.dart';
import 'package:flutter/material.dart';

class Session3day1 extends StatelessWidget {
  final List schedule;
  final Map topic;
  const Session3day1({Key? key,required this.schedule, required this.topic}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String venue = schedule[2]["3"][0]["Room"];
    String topicTime = schedule[2]["3"][0]["Topic"];
    bool isFourth = schedule[2]["3"][0].containsKey("4");
    bool isFifth = schedule[2]["3"][0].containsKey("5");

    return Center(
        child: Column( children: [
          SizedBox(
            width: 328,
            height: 100,
            child: DecoratedBox(
                decoration:  BoxDecoration(
                  color: const Color.fromRGBO(49, 119, 115,1),
                  borderRadius: BorderRadius.circular(4),

                ),
                child: Column(children: <Widget>[
                  const Text("Venue :",
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontStyle: FontStyle.normal,
                        fontFamily: 'Poppins',
                        fontSize: 12),),
                  Text(venue,
                    style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                        fontFamily: 'Poppins',
                        fontSize: 16),
                  ),
                  Text(topicTime,
                    style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                        fontFamily: 'Poppins',
                        fontSize: 12),),
                  const Text("14 December 2022 (Wednesday)",
                    style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                        fontFamily: 'Poppins',
                        fontSize: 12),)
                ])
            ),

          ),
          Container(
            height: MediaQuery.of(context).size.height,
            child: ListView.builder(
              itemCount: schedule[2]["3"].length - 1,
              itemBuilder: (context, index) {
                bool isFourth_exist = schedule[2]["3"][index +1].containsKey("4");
                bool isFifth_exist = schedule[2]["3"][index +1].containsKey("5");
                return Container(
                    height: MediaQuery.of(context).size.height,
                    child: RoomCard(
                        first_time: schedule[2]["3"][0]["1"],
                        second_time: schedule[2]["3"][0]["2"],
                        third_time: schedule[2]["3"][0]["3"],
                        fourth_time: isFourth ? schedule[2]["3"][0]["4"] : "",
                        fifth_time: isFifth ? schedule[2]["3"][0]["5"] : "",
                        room: schedule[2]["3"][index + 1]["Room"],
                        topic: schedule[2]["3"][index + 1]["Topic"],
                        first: schedule[2]["3"][index + 1]["1"],
                        second: schedule[2]["3"][index + 1]["2"],
                        third: schedule[2]["3"][index + 1]["3"],
                        fourth: isFourth_exist ? schedule[2]["3"][index + 1]["4"] : "",
                        fifth: isFifth_exist ? schedule[2]["3"][index + 1]["5"] : "",
                        topicList: topic));
              },
            ),
          )
        ]));
  }
}


