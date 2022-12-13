import 'package:conference_app/Card.dart';
import 'package:flutter/material.dart';

class SessionPage extends StatelessWidget {
  final List schedule;
  final Map topic;
  final String date;
  final int firstInt;
  final String stringInt;

  const SessionPage(
      {Key? key,
      required this.schedule,
      required this.topic,
      required this.date,
      required this.firstInt,
      required this.stringInt})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    String venue = schedule[firstInt][stringInt][0]["Room"];
    String topicTime = schedule[firstInt][stringInt][0]["Topic"];
    bool isFourth = schedule[firstInt][stringInt][0].containsKey("4");
    bool isFifth = schedule[firstInt][stringInt][0].containsKey("5");

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              height: 100,
              child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(49, 119, 115, 1),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      const Text(
                        "Venue :",
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontStyle: FontStyle.normal,
                          fontFamily: 'Poppins',
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        venue,
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.normal,
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          color: Color(0xFFE2D1F9),
                        ),
                      ),
                      Text(
                        topicTime,
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.normal,
                          fontFamily: 'Poppins',
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        date,
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.normal,
                          fontFamily: 'Poppins',
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      )
                    ],
                  )),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: schedule[firstInt][stringInt].length - 1,
              itemBuilder: (context, index) {
                bool isFourth_exist = schedule[firstInt][stringInt][index +1].containsKey("4");
                bool isFifth_exist = schedule[firstInt][stringInt][index +1].containsKey("5");
                return RoomCard(
                    first_time: schedule[firstInt][stringInt][0]["1"],
                    second_time: schedule[firstInt][stringInt][0]["2"],
                    third_time: schedule[firstInt][stringInt][0]["3"],
                    fourth_time:
                        isFourth ? schedule[firstInt][stringInt][0]["4"] : "",
                    fifth_time:
                        isFifth ? schedule[firstInt][stringInt][0]["5"] : "",
                    room: schedule[firstInt][stringInt][index + 1]["Room"],
                    topic: schedule[firstInt][stringInt][index + 1]["Topic"],
                    first: schedule[firstInt][stringInt][index + 1]["1"],
                    second: schedule[firstInt][stringInt][index + 1]["2"],
                    third: schedule[firstInt][stringInt][index + 1]["3"],
                    fourth: isFourth_exist
                        ? schedule[firstInt][stringInt][index + 1]["4"]
                        : "",
                    fifth: isFifth_exist
                        ? schedule[firstInt][stringInt][index + 1]["5"]
                        : "",
                    topicList: topic);
              },
            ),
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
