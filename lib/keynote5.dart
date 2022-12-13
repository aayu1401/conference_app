import 'package:conference_app/Card.dart';
import 'package:conference_app/SingleCard.dart';
import 'package:flutter/material.dart';

class Keynote5 extends StatelessWidget {


  const Keynote5({Key? key})
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
                        "16 December 2022 (Friday)",
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
              itemCount: 4,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return const SingleCard(
                      room: "Hall D (L2-004)",
                      topic: "Multi-phase flow modeling and analysis of liquid sprays",
                      speaker: "Prof. T. Sundararajan, IIT Palakkad");
                } else if (index == 1) {
                  return const SingleCard(
                      room: "Hall E (L2-005)",
                      topic:
                      "Vortex-bubble interactions: Towards understanding bubbly turbulent flows",
                      speaker: "Prof. Raghuram N. Govardhan, IISc Bengaluru ");
                } else if (index == 2) {
                  return const SingleCard(
                      room: "Hall P (L2-205)",
                      topic:
                      "Measurement of Laminar Burning Velocity of Combustible Gaseous Mixtures",
                      speaker: "Prof. M.R. Ravi, IIT Delhi");
                } else {
                  return const SingleCard(
                      room: "Hall F (L2-103)",
                      topic:
                      "Droplet impact",
                      speaker:
                      "Prof. Detlef Lohse, University of Twente (Online)");
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
