import 'package:conference_app/Card.dart';
import 'package:conference_app/SingleCard.dart';
import 'package:flutter/material.dart';

class Keynote2 extends StatelessWidget {
  const Keynote2({Key? key}) : super(key: key);

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
              itemCount: 5,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return const SingleCard(
                      room: "Hall D (L2-004)",
                      topic: "Diffusive Flux Modeling of Blood Viscosity",
                      speaker: "Prof. K. Muralidhar, IIT Kanpur");
                } else if (index == 1) {
                  return const SingleCard(
                      room: "Hall E (L2-005)",
                      topic:
                          "Natural circulation cooling in nuclear reactor safety systems- Experimental tests for large scale system",
                      speaker: "Prof. Shripad Revankar, Purdue University ");
                } else if (index == 2) {
                  return const SingleCard(
                      room: "Hall P (L2-205)",
                      topic:
                          "Performance evaluation of a Coupled Twin-rotor Vertical Axis Wind Turbine ",
                      speaker: "Prof. S.N. Singh, IIT Delhi");
                } else if (index == 3) {
                  return const SingleCard(
                      room: "Hall F (L2-103)",
                      topic:
                          "From beating hearts to flapping fins: Insights into biological flows empowered by high-fidelity Immersed Boundary Methods",
                      speaker:
                          "Prof. Rajat Mittal, Johns Hopkins University (Online)");
                } else {
                  return const SingleCard(
                      room: "Hall G (L2-104)",
                      topic:
                          "About the underlying logic and the strategy of the winning thesis/paper in applied mechanics",
                      speaker:
                          "Prof. An-Bang Wang, National Taiwan University (Online)");
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
