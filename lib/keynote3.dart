import 'package:conference_app/Card.dart';
import 'package:conference_app/SingleCard.dart';
import 'package:flutter/material.dart';

class Keynote3 extends StatelessWidget {


  const Keynote3({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    String venue = "APJ Abdul Kalam Block";

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
                        "10:15 - 11:00",
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.normal,
                          fontFamily: 'Poppins',
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                      const Text(
                        "15 December 2022 (Thursday)",
                        style: TextStyle(
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
              itemCount: 3,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return const SingleCard(
                      room: "Hall D (L2-004)",
                      topic: "Liquid-vapor Phase-change phenomena in Miniature Devices",
                      speaker: "Prof. Manmohan Pandey, IIT Guwahati");
                } else if (index == 1) {
                  return const SingleCard(
                      room: "Hall E (L2-005)",
                      topic:
                      "Ionic wind generation by plasma discharge for flow control applications",
                      speaker: "Prof. Pradipta Kumar Panigrahi , IIT Kanpur ");
                } else {
                  return const SingleCard(
                      room: "Hall F (L2-103)",
                      topic:
                      "Dynamics and vortex structures of a near-wall flexible cylinder subjected to vortex-induced vibrations",
                      speaker:
                      "Prof. Chunning Ji, Tianjin University (Online)");
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
