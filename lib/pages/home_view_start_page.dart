import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/components/carousel_view.dart';
import 'package:my_portfolio/components/cv_section_view.dart';
import 'package:my_portfolio/components/education_section_view.dart';
import 'package:my_portfolio/components/header_section_view.dart';
import 'package:my_portfolio/components/portfolio_stats_view.dart';
import 'package:my_portfolio/components/projects/app_one_section.dart';
import 'package:my_portfolio/components/projects/webApp_one_section.dart';
import 'package:my_portfolio/components/skill_section_view.dart';
import 'package:my_portfolio/components/testimonial_section_view.dart';
import 'package:my_portfolio/utils/constant.dart';

import '../components/experience_section_view.dart';
import '../components/footer_section_view.dart';
import '../components/sponsors_section_view.dart';
import '../utils/global.dart';

class HomeViewStartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: Globals.scaffoldKey,
      endDrawer: Drawer(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 24.0,
            ),
            child: ListView.separated(
              itemBuilder: (BuildContext context, int index) {
                return
                  headerItems[index].isButton
                    ? MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: Container(
                    decoration: BoxDecoration(
                      color: kDangerColor,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 28.0),
                    child: TextButton(
                      onPressed: headerItems[index].onTap,
                      child: Text(
                        headerItems[index].title,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                )
                    : ListTile(
                  title: Text(
                    headerItems[index].title,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  height: 10.0,
                );
              },
              itemCount: headerItems.length,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 20 , bottom: 20 , right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Header(),
              ),
              Carousel(),
              SizedBox(
                height: 20.0,
              ),
              ExperienceSection(),
              SizedBox(
                height: 20.0,
              ),
              SkillSection(),
              SizedBox(
                height: 20.0,
              ),
              CvSection(),
              Text(
                "PROJECTS:",
                style: GoogleFonts.oswald(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  height: 1.8,
                  fontSize: 25.0,
                ),
              ),
              IosAppAd(),
              SizedBox(
                height: 70.0,
              ),
              WebsiteAd(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 28.0),
                child: PortfolioStats(),
              ),
              SizedBox(
                height: 50.0,
              ),
              EducationSection(),
              SizedBox(
                height: 50.0,
              ),
              SizedBox(
                height: 50.0,
              ),
              // Sponsors(),
              SizedBox(
                height: 50.0,
              ),
              // TestimonialWidget(),
              Footer(),
            ],
          ),
        ),
    );
  }
}
