import 'package:conference_app/Card.dart';
import 'package:flutter/material.dart';

class Session2day3 extends StatelessWidget {
  final List schedule;
  final Map topic;

  const Session2day3({Key? key, required this.schedule, required this.topic})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    String venue = schedule[8]["9"][0]["Room"];
    String topicTime = schedule[8]["9"][0]["Topic"];
    bool isFourth = schedule[8]["9"][0].containsKey("4");
    bool isFifth = schedule[8]["9"][0].containsKey("5");

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
              itemCount: schedule[8]["9"].length - 1,
              itemBuilder: (context, index) {
                return Container(
                    height: MediaQuery.of(context).size.height,
                    child: RoomCard(
                        first_time: schedule[8]["9"][0]["1"],
                        second_time: schedule[8]["9"][0]["2"],
                        third_time: schedule[8]["9"][0]["3"],
                        fourth_time: isFourth ? schedule[8]["9"][0]["4"] : "",
                        fifth_time: isFifth ? schedule[8]["9"][0]["5"] : "",
                        room: schedule[8]["9"][index + 1]["Room"],
                        topic: schedule[8]["9"][index + 1]["Topic"],
                        first: schedule[8]["9"][index + 1]["1"],
                        second: schedule[8]["9"][index + 1]["2"],
                        third: schedule[8]["9"][index + 1]["3"],
                        fourth: isFourth ? schedule[8]["9"][index + 1]["4"] : "",
                        fifth: isFifth ? schedule[8]["9"][index + 1]["5"] : "",
                        topicList: topic));
              },
            ),
          )
        ]));
  }
}





