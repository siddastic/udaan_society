import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:udaan_society/constants/colors.dart';

class CampaignCard extends StatelessWidget {
  const CampaignCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Column(
        children: [
          Container(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Image.network(
              "https://images.newindianexpress.com/uploads/user/imagelibrary/2018/7/11/w900X450/WhatsApp_Ima_2018-03-23_at_1.jpeg",
              width: double.infinity,
              height: 150,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 5),
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "Donate for Hunger People",
              overflow: TextOverflow.ellipsis,
              textScaleFactor: 1.55,
              style: GoogleFonts.poppins(
                color: ConstantColors.primaryTextColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
