
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/models/education_model.dart';
import 'package:my_portfolio/models/experience_model.dart';
import 'package:my_portfolio/utils/constant.dart';
import 'package:my_portfolio/utils/screen_helper.dart';

final List<Experience> experienceList = [
  Experience(
    designation: "Mobile Developer",
    companyName: "VERIPARK",
    description: "I graduated in Computer Science from Iqra University, Karachi (2015-2018), specializing in Mobile App Development, Data Warehousing, and Design Patterns.",
    linkName: "https://www.veripark.com/",
    period: "AUG 2023 - PRESENT",
  ),
  Experience(
    designation: "iOS App Developer",
    companyName: "Towgrace".toUpperCase(),
    description: "I graduated in Computer Science from Iqra University, Karachi (2015-2018), specializing in Mobile App Development, Data Warehousing, and Design Patterns.",
    linkName: "https://towgrace.com/",
    period: "JAN 2023 - JUN 2023",
  ), Experience(
    designation: "Software Engineer",
    companyName: "Avanza Solutions".toUpperCase(),
    description: "I graduated in Computer Science from Iqra University, Karachi (2015-2018), specializing in Mobile App Development, Data Warehousing, and Design Patterns.",
    linkName: "https://avanzasolutions.com/",
    period: "NOV 2021 - JAN 2023",
  ), Experience(
    designation: "Software Engineer",
    companyName: "Golpik, Inc.".toUpperCase(),
    description: "I graduated in Computer Science from Iqra University, Karachi (2015-2018), specializing in Mobile App Development, Data Warehousing, and Design Patterns.",
    linkName: "https://golpik.com/",
    period: "MAR 2021 - OCT 2021",
  ), Experience(
    designation: "Software Engineer",
    companyName: "MUX Life".toUpperCase(),
    description: "I graduated in Computer Science from Iqra University, Karachi (2015-2018), specializing in Mobile App Development, Data Warehousing, and Design Patterns.",
    linkName: "https://mux.life/?srsltid=AfmBOopbx9HVFN3cKBFbEPb4734eqp6WyF1e7ecVnT3LU_hSAT9bn2Di",
    period: "SEP 2020 - MAR 2021",
  ), Experience(
    designation: "Attribe Solutions",
    companyName: "Attribe Solutions".toUpperCase(),
    description: "I graduated in Computer Science from Iqra University, Karachi (2015-2018), specializing in Mobile App Development, Data Warehousing, and Design Patterns.",
    linkName: "https://www.attribes.co.uk/",
    period: "MAY 2019 - SEP 2020",
  ),
];

class ExperienceSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ScreenHelper(
        desktop: _buildUi(kDesktopMaxWidth),
        tablet: _buildUi(kTabletMaxWidth),
        mobile: _buildUi(getMobileMaxWidth(context)),
      ),
    );
  }

  Widget _buildUi(double width) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Experience".toUpperCase(),
            style: GoogleFonts.oswald(
              color: Colors.white,
              fontWeight: FontWeight.w900,
              fontSize: 30.0,
              height: 1.3,
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Wrap(
            children: [
              Container(
                constraints: BoxConstraints(maxWidth: 400.0),
                child: Text(
                  "",
                  style: TextStyle(
                    color: Colors.white,
                    height: 1.5,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          LayoutBuilder(
            builder: (context, constraints) {
              return Container(
                child: Wrap(
                  spacing: 20.0,
                  runSpacing: 20.0,
                  children: experienceList
                      .map(
                        (experience) => Container(
                      width: constraints.maxWidth / 2.0 - 20.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            experience.period,
                            style: GoogleFonts.oswald(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 20.0,
                            ),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            experience.designation,
                            maxLines: 4,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: kCaptionColor,
                              height: 1.5,
                            ),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            experience.description,
                            maxLines: 4,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: kCaptionColor,
                              height: 1.5,
                            ),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              onTap: () {},
                              child: Text(
                                experience.linkName,
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 40.0,
                          )
                        ],
                      ),
                    ),
                  )
                      .toList(),
                ),
              );
            },
          )
        ],
      ),

    );
  }
}
