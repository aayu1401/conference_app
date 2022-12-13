import 'package:conference_app/Card.dart';
import 'package:conference_app/SingleCard.dart';
import 'package:flutter/material.dart';

class Keynote4 extends StatelessWidget {


  const Keynote4({Key? key})
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
                        "14:30 - 15:15",
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
              itemCount: 4,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return const SingleCard(
                      room: "Hall D (L2-004)",
                      topic: "Deep Learning Strategies for Predicting Fluid Forces in Particle Suspensions",
                      speaker: "Prof. Danesh Tafti, Virginia Tech.");
                } else if (index == 1) {
                  return const SingleCard(
                      room: "Hall E (L2-005)",
                      topic:
                      "Magic at the Interfaces: From fundamentals to applications",
                      speaker: "Prof. Sushanta Mitra, University of Waterloo ");
                } else if (index == 2) {
                  return const SingleCard(
                      room: "Hall F (L2-103)",
                      topic:
                      "Fluid dynamics innovations in hydrogen fusion and wind energy technologies",
                      speaker:
                      "Prof. Eldad Avital, Queen Mary Univ. of London (Online)");
                } else {
                  return const SingleCard(
                      room: "Hall G (L2-104)",
                      topic:
                      "Unsteady phenomena in high-speed aerodynamics",
                      speaker:
                      "Prof. Neil Sandham, University of Southampton (Online)");
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
