import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:udaan_society/screens/tabs/home.dart';
import 'package:udaan_society/widgets/raised_gradient_button.dart';

class WalkthroughScreen extends StatefulWidget {
  static const routeName = "/walkthrough";
  const WalkthroughScreen({Key? key}) : super(key: key);

  @override
  _WalkthroughScreenState createState() => _WalkthroughScreenState();
}

class _WalkthroughScreenState extends State<WalkthroughScreen> {
  final PageController pageViewController = PageController(initialPage: 0);
  int _selectedPageViewIndex = 0;

  Widget _buildPageViewDot(
      {required int currentIndex,
      required int selectedIndex,
      bool isTransparent = false}) {
    return GestureDetector(
      onTap: () {
        // Absolute value is calculated to ensure smooth transition even if page to transition to is close or far
        pageViewController.animateToPage(currentIndex,
            duration: Duration(
                milliseconds: 100 * (selectedIndex - currentIndex).abs()),
            curve: Curves.easeInOut);
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        width: currentIndex == selectedIndex ? 25 : 10,
        height: 10,
        margin: EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: currentIndex == selectedIndex
                ? Theme.of(context).accentColor
                : Colors.transparent,
            borderRadius: BorderRadius.circular(25),
            border: currentIndex == selectedIndex
                ? null
                : Border.all(color: Theme.of(context).primaryColor)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: Colors.white,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            // height: MediaQuery.of(context).size.height * 0.55,
            // width: double.infinity,
            // color: Colors.red,
            child: Container(
              // color: Colors.red,
              child: PageView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                controller: pageViewController,
                children: [
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Expanded(
                          child: Container(
                        child: Image.network(
                            "https://cdn3d.iconscout.com/3d/premium/thumb/donation-3311970-2764522.png"),
                      )),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          "We Are In A Mission To Help the Helpless",
                          textScaleFactor: 2.25,
                          style: GoogleFonts.poppins(
                            color: Color(0xFF3B3B5D),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 8),
                        child: Text(
                          "When people aren't looking for help in times of need, they're always interested in self improvement.",
                          textScaleFactor: 1.25,
                          style: GoogleFonts.poppins(
                            color: Color(0xFF9EA0AF),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(height: 50),
                    ],
                  ),
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Expanded(
                          child: Container(
                        child: Image.network(
                            "https://cdn3d.iconscout.com/3d/premium/thumb/deal-done-3311983-2764534.png"),
                      )),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          "We Are In A Mission To Help the Helpless",
                          textScaleFactor: 2.25,
                          style: GoogleFonts.poppins(
                            color: Color(0xFF3B3B5D),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 8),
                        child: Text(
                          "When people aren't looking for help in times of need, they're always interested in self improvement.",
                          textScaleFactor: 1.25,
                          style: GoogleFonts.poppins(
                            color: Color(0xFF9EA0AF),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(height: 50),
                    ],
                  ),
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Expanded(
                          child: Container(
                        child: Image.network(
                            "https://cdn3d.iconscout.com/3d/premium/thumb/heart-hand-gesture-3311973-2764511.png"),
                      )),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          "We Are In A Mission To Help the Helpless",
                          textScaleFactor: 2.25,
                          style: GoogleFonts.poppins(
                            color: Color(0xFF3B3B5D),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 8),
                        child: Text(
                          "When people aren't looking for help in times of need, they're always interested in self improvement.",
                          textScaleFactor: 1.25,
                          style: GoogleFonts.poppins(
                            color: Color(0xFF9EA0AF),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(height: 50),
                    ],
                  ),
                ],
                onPageChanged: (value) {
                  setState(() {
                    _selectedPageViewIndex = value;
                  });
                },
              ),
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RaisedGradientButton(
                  width: 180,
                  height: 55,
                  onPressed: () {
                    if (_selectedPageViewIndex != 2) {
                      print(pageViewController.page);
                      pageViewController.animateToPage(
                        _selectedPageViewIndex + 1,
                        duration: Duration(milliseconds: 250),
                        curve: Curves.ease,
                      );
                    } else {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomeTab()),
                      );
                    }
                  },
                  showIcon: _selectedPageViewIndex != 2,
                  icon: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 20,
                    color: Colors.white,
                  ),
                  child: Text(
                    "${_selectedPageViewIndex != 2 ? "Next" : "Get Started"}  ",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  borderRadiusNumber: 25,
                ),
                Row(
                  children: [
                    for (int i = 0; i < 3; i++)
                      _buildPageViewDot(
                          currentIndex: i,
                          selectedIndex: _selectedPageViewIndex),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 25),
        ],
      ),
    );
  }
}
