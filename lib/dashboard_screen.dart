import 'package:flutter/material.dart';
// import 'spotifyScreen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 🔝 APP BAR
      appBar: AppBar(
        centerTitle: true,
        leading: const Icon(Icons.add_a_photo_outlined),
        actions: const [Icon(Icons.more_horiz)],
        title: const Text(
          "rupex.co",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),

      // 📱 BODY
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // 👤 PROFILE SECTION
            Padding(
              padding:  EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const CircleAvatar(
                    radius: 45,
                    backgroundImage: AssetImage("assets/images/user.png"),
                  ),

                  Column(
                    children: const [
                      Text("174", style: TextStyle(fontWeight: FontWeight.bold)),
                      Text("Posts"),
                    ],
                  ),

                  Column(
                    children: const [
                      Text("1M", style: TextStyle(fontWeight: FontWeight.bold)),
                      Text("Followers"),
                    ],
                  ),

                  Column(
                    children: const [
                      Text("174k", style: TextStyle(fontWeight: FontWeight.bold)),
                      Text("Following"),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 10),


            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Rupex Yadav",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text("Flutter Developer"),
                  SizedBox(height: 4),
                  Text("Hello guys, It me. I thank you to find me."),
                  SizedBox(height: 4),
                  Text.rich(
                      TextSpan(
                        style: TextStyle(color: Colors.black),
                        children: [
                          TextSpan(text: "Followed by "),
                          TextSpan(
                            text: "Justin_Bieber",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(text: ", "),
                          TextSpan(
                            text: "Salena_Gomez",
                            style: TextStyle(fontWeight: FontWeight.bold),

                          ),
                          TextSpan(text: " and"),
                          TextSpan( text: " 99+ ", style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(text: "more"),

                        ],
                      ),
                  ),

                  // SizedBox(height: 10),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text("Edit Profile"),
                          ),
                        ),
                        SizedBox(width: 8),
                        Expanded(
                          child: TextButton(
                            onPressed: () {
                            },

                            style: TextButton.styleFrom(
                              backgroundColor: Colors.blue,
                              foregroundColor: Colors.white,
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),

                            ),
                            child: Text("Share Profile"),
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),








          ],
        ),
      ),
    );
  }
}