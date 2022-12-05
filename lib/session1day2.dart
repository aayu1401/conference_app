import 'package:flutter/material.dart';
import 'package:conference_app/Card.dart';

class Session1day2 extends StatelessWidget {
  final List schedule;
  final Map topic;
  const Session1day2({Key? key,required this.schedule, required this.topic}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String venue = schedule[3]["4"][0]["Room"];
    String topicTime = schedule[3]["4"][0]["Topic"];
    bool isFourth = schedule[3]["4"][0].containsKey("4");
    bool isFifth = schedule[3]["4"][0].containsKey("5");

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
              itemCount: schedule[3]["4"].length - 1,
              itemBuilder: (context, index) {
                return Container(
                    height: MediaQuery.of(context).size.height,
                    child: RoomCard(
                        first_time: schedule[3]["4"][0]["1"],
                        second_time: schedule[3]["4"][0]["2"],
                        third_time: schedule[3]["4"][0]["3"],
                        fourth_time: isFourth ? schedule[3]["4"][0]["4"] : "",
                        fifth_time: isFifth ? schedule[3]["4"][0]["5"] : "",
                        room: schedule[3]["4"][index + 1]["Room"],
                        topic: schedule[3]["4"][index + 1]["Topic"],
                        first: schedule[3]["4"][index + 1]["1"],
                        second: schedule[3]["4"][index + 1]["2"],
                        third: schedule[3]["4"][index + 1]["3"],
                        fourth: isFourth ? schedule[3]["4"][index + 1]["4"] : "",
                        fifth: isFifth ? schedule[3]["4"][index + 1]["5"] : "",
                        topicList: topic));
              },
            ),
          )
        ]));
  }
}




