import 'package:alohomora/transport/availableRides.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FindRide extends StatelessWidget {
  FindRide({Key? key}) : super(key: key);
  TextEditingController textController = TextEditingController();
  String displayText = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Transport Pooling",
                  style: GoogleFonts.prompt(
                      color: Colors.white,
                      textStyle: TextStyle(fontWeight: FontWeight.w400),
                      decoration: TextDecoration.none,
                      fontSize: 30),
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: 60,
                ),
                Text(
                  "Finding Ride                ",
                  style: GoogleFonts.prompt(
                      color: Colors.white,
                      textStyle: TextStyle(fontWeight: FontWeight.w400),
                      decoration: TextDecoration.none,
                      fontSize: 30),
                ),
                SizedBox(
                  height: 30,
                ),
                Align(
                  alignment: AlignmentDirectional(0, -0.77),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: TextFormField(
                      controller: textController,
                      autofocus: true,
                      obscureText: false,
                      decoration: InputDecoration(
                        hintText: 'Going To',
                        hintStyle: TextStyle(color: Colors.white),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      style: GoogleFonts.getFont(
                        'Roboto Condensed',
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: AlignmentDirectional(0, -0.77),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: TextFormField(
                      controller: textController,
                      autofocus: true,
                      obscureText: false,
                      decoration: InputDecoration(
                        hintText: 'Date And Time',
                        hintStyle: TextStyle(color: Colors.white),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      style: GoogleFonts.getFont(
                        'Roboto Condensed',
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AvailableRides()));
                  },
                  child: Image.asset('assets/next.png'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
