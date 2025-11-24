import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather/pages/current_weather.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [(Colors.black), (Colors.indigo.shade900)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            Image.asset("assets/images/weather_day.png", height: 300),
            SizedBox(height: 50),
            Text(
              "Weather",
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              "ForeCasts",
              style: GoogleFonts.poppins(
                color: Colors.yellow.shade700,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.37,
              ),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CurrentWeather()),
                );
              },
              child: Text(
                "Get Start",
                style: GoogleFonts.openSans(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
