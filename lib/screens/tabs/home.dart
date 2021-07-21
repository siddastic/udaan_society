import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:udaan_society/constants/colors.dart';
import 'package:udaan_society/widgets/campaign_card.dart';
import 'package:udaan_society/widgets/raised_gradient_button.dart';

class HomeTab extends StatelessWidget {
  HomeTab({Key? key}) : super(key: key);
  List chips = [
    {
      "img":
          "https://cdn3d.iconscout.com/3d/premium/thumb/burger-3495477-2928755.png",
      "label": "Food",
    },
    {
      "img":
          "https://cdn3d.iconscout.com/3d/premium/thumb/books-3408558-2838154.png",
      "label": "Education",
    },
    {
      "img":
          "https://cdn3d.iconscout.com/3d/premium/thumb/drink-water-4036294-3342355.png",
      "label": "Water",
    },
    {
      "img":
          "https://cdn3d.iconscout.com/3d/premium/thumb/camping-house-3485494-2918607.png",
      "label": "Home",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        title: Text(
          "Udaan Society",
          style: GoogleFonts.poppins(
            color: Color(0xFF3B3B5D),
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          CircleAvatar(
            backgroundImage: NetworkImage(
                "https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80"),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  color: ConstantColors.skinColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 150,
                        height: 190,
                        child: Image.network(
                            "https://i.ibb.co/Zgdd6hT/rsz-60f79fd81b4a7.png"),
                      ),
                    ),
                    Expanded(
                      // padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "We rise by\nlifting others",
                            textScaleFactor: 1.5,
                            style: GoogleFonts.poppins(
                              color: ConstantColors.primaryTextColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          RaisedGradientButton(
                            width: 150,
                            height: 50,
                            onPressed: () {},
                            child: Text(
                              "Donate Now",
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            borderRadiusNumber: 25,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Causes",
                    textScaleFactor: 1.5,
                    style: GoogleFonts.poppins(
                      color: ConstantColors.primaryTextColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "See All",
                    textScaleFactor: 1.5,
                    style: GoogleFonts.poppins(
                      color: Theme.of(context).accentColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  for (var e in chips)
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                      decoration: BoxDecoration(
                        color: Color(0xffF7F6FE),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.network(
                            e["img"],
                            width: 50,
                            height: 50,
                          ),
                          Text(
                            e["label"],
                            style: GoogleFonts.poppins(
                              color: Color(0xFF9EA0AF),
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                    )
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Text(
                "Emergency Help",
                textScaleFactor: 1.5,
                style: GoogleFonts.poppins(
                  color: ConstantColors.primaryTextColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            CampaignCard(),
          ],
        ),
      ),
    );
  }
}
