import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/utils/constant.dart';
import 'package:my_portfolio/utils/screen_helper.dart';

import '../models/design_process_model.dart';

final List<DesignProcess> designProcesses = [
  DesignProcess(
    title: "DESIGN",
    imagePath: "assets/design.png",
    subtitle:
    "A full stack allround designer thay may or may not include a guide for specific creative",
  ),
  DesignProcess(
    title: "DEVELOP",
    imagePath: "assets/develop.png",
    subtitle:
    "A full stack allround developer thay may or may not include a guide for specific creative",
  ),
  DesignProcess(
    title: "WRITE",
    imagePath: "assets/write.png",
    subtitle:
    "A full stack allround writer thay may or may not include a guide for specific creative",
  ),
  DesignProcess(
    title: "PROMOTE",
    imagePath: "assets/promote.png",
    subtitle:
    "A full stack allround promoter thay may or may not include a guide for specific creative",
  ),
];

class CvSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ScreenHelper(
        desktop: _buildUi(context, kDesktopMaxWidth),
        tablet: _buildUi(context, kTabletMaxWidth),
        mobile: _buildUi(context, getMobileMaxWidth(context)),
      ),
    );
  }

  Widget _buildUi(BuildContext context, double width) {
    // we need the context to get maxWidth before the constraints below
    return  Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "BETTER DESIGN,\nBETTER EXPERIENCES",
                style: GoogleFonts.oswald(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  height: 1.8,
                  fontSize: 18.0,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: Text(
                    "DOWNLOAD CV",
                    style: GoogleFonts.oswald(
                      color: kPrimaryColor,
                      fontWeight: FontWeight.w900,
                      fontSize: 25.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 50.0,
          ),
          Container(
            child: LayoutBuilder(
              builder: (_context, constraints) {
                return


                  GridView.builder(
                    padding: EdgeInsets.all(0.0),
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: ScreenHelper.isTablet(context) || ScreenHelper.isMobile(context)
                          ? MediaQuery.of(context).size.width / 2  // Half screen width for mobile/tablet
                          : 250.0,  // Fixed width for desktop
                      mainAxisSpacing: 20.0,
                      crossAxisSpacing: 20.0,
                      childAspectRatio: ScreenHelper.isDesktop(context)
                          ? 1  // Square aspect ratio for desktop
                          : MediaQuery.of(context).size.aspectRatio * 1.5,  // Dynamic ratio for mobile/tablet
                    ),
                    itemCount: designProcesses.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset(
                                  designProcesses[index].imagePath,
                                  width: 40.0,
                                ),
                                SizedBox(width: 15.0),
                                Text(
                                  designProcesses[index].title,
                                  style: GoogleFonts.oswald(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 15.0),
                            Text(
                              designProcesses[index].subtitle,
                              style: TextStyle(
                                color: kCaptionColor,
                                height: 1.5,
                                fontSize: 14.0,
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  );
              },












            ),
          )
        ],
      );
  }
}
