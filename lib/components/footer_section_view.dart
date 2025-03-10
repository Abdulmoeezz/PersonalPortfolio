import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/utils/constant.dart';
import 'package:my_portfolio/utils/screen_helper.dart';

import '../models/footer_item_model.dart';

final List<FooterItem> footerItems = [
  FooterItem(
    iconPath: "assets/mappin.png",
    title: "ADDRESS",
    text1: "Karachi,Pakistan",
    text2: "",
  ),

  FooterItem(
    iconPath: "assets/phone.png",
    title: "PHONE",
    text1: "+92 305-582-4659",
    text2: "",
  ),
  FooterItem(
    iconPath: "assets/email.png",
    title: "EMAIL",
    text1: "liveabdulmoiziu@gmail.com",
    text2: "",
  ),
  FooterItem(
    iconPath: "assets/whatsapp.png",
    title: "WHATSAPP",
    text1: "+92 305-582-4659",
    text2: "",
  )
];

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ScreenHelper(
        desktop: _buildUi(kDesktopMaxWidth, context),
        tablet: _buildUi(kTabletMaxWidth, context),
        mobile: _buildUi(getMobileMaxWidth(context), context),
      ),
    );
  }
}

Widget _buildUi(double width, BuildContext context) {
  return Center(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 50.0),
          child: Wrap(
            spacing: 20.0,
            runSpacing: 20.0,
            children: footerItems
                .map(
                  (footerItem) => Container(
                height: 120.0,
                width: ScreenHelper.isMobile(context)
                    ? MediaQuery.of(context).size.width / 2.0 - 20.0
                    : MediaQuery.of(context).size.width / 4.0 - 20.0,

                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            footerItem.iconPath,
                            width: 25.0,
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                          Text(
                            footerItem.title,
                            style: GoogleFonts.oswald(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      RichText(
                        textAlign: TextAlign.start,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "${footerItem.text1}\n",
                              style: TextStyle(
                                color: kCaptionColor,
                                height: 1.8,
                              ),
                            ),
                            TextSpan(
                              text: "${footerItem.text2}\n",
                              style: TextStyle(
                                color: kCaptionColor,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
                .toList(),
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Flex(
          direction: ScreenHelper.isMobile(context)
              ? Axis.vertical
              : Axis.horizontal,
          mainAxisAlignment: ScreenHelper.isMobile(context)
              ? MainAxisAlignment.center
              : MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: Text(
                "Copyright (c) 2025 Abdul Moiz. All rights Reserved",
                style: TextStyle(
                  color: kCaptionColor,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: Text(
                      "Privacy Policy",
                      style: TextStyle(
                        color: kCaptionColor,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    "|",
                    style: TextStyle(
                      color: kCaptionColor,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: Text(
                      "Terms & Conditions",
                      style: TextStyle(
                        color: kCaptionColor,
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        )
      ],
    ),
  );
}
