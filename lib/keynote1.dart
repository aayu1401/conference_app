import 'package:conference_app/Card.dart';
import 'package:conference_app/SingleCard.dart';
import 'package:flutter/material.dart';

class Keynote1 extends StatelessWidget {
  const Keynote1({Key? key}) : super(key: key);

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
                      const Text(
                        "11:30 - 12:15",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.normal,
                          fontFamily: 'Poppins',
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                      const Text(
                        "14 December 2022 (Wednesday)",
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
                      topic:
                          "Recent insights on the flow behaviour of fluidic oscillators",
                      speaker:
                          "Dr. Venkatakrishnan L., CSIR-National Aerospace Laboratories");
                } else if (index == 1) {
                  return const SingleCard(
                      room: "Hall E (L2-005)",
                      topic:
                          "Influence of capillary forces on evolving jets during single drop impact and dynamics of two drops falling in tandem on a liquid pool",
                      speaker: "Prof. Gautam Biswas, IIT Kanpur");
                } else if (index == 2) {
                  return const SingleCard(
                      room: "Hall F (L2-103)",
                      topic: "Vorticity, Viscosity and Vibration",
                      speaker:
                          "Prof. Kerry Hourigan, Monash University (Online)");
                } else {
                  return const SingleCard(
                      room: "Hall G (L2-104)",
                      topic:
                          "Level-set based topology optimization of flow field using the lattice Boltzmann method",
                      speaker:
                          "Prof. Toshiro Matsumoto, Nagoya University (Online)");
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
