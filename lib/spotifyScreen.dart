import 'package:flutter/material.dart';

class SpotifyScreen extends StatelessWidget {
  const SpotifyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,


      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,

        leading: IconButton(onPressed: (){ Navigator.pop(context);} , icon: const Icon(Icons.arrow_back, color: Colors.white,)),
        title: const Text(
          "Spotify",
          style: TextStyle(
              fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        actions: const [
          Icon(Icons.settings, color: Colors.white),
          SizedBox(width: 10),

        ],
      ),

      // 📱 BODY
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // 👋 GREETING
              const Text(
                "Good Evening",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 15),

              // 🎧 QUICK PICKS (GRID)
              GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                childAspectRatio: 3,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                children: List.generate(6, (index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[900],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Expanded(
                          child: Text(
                            "Top Hits",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
              ),

              const SizedBox(height: 20),

              // 🔥 TRENDING SECTION
              const Text(
                "Trending Now",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              SizedBox(
                height: 160,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 120,
                      margin: const EdgeInsets.only(right: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 110,
                            decoration: BoxDecoration(
                              color: Colors.grey[800],
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            "Playlist",
                            style: TextStyle(color: Colors.white),
                          ),
                          const Text(
                            "Top songs",
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),

              const SizedBox(height: 20),

              // 🎵 RECENTLY PLAYED
              const Text(
                "Recently Played",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 5,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey[800],
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    title: const Text(
                      "Song Title",
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: const Text(
                      "Artist Name",
                      style: TextStyle(color: Colors.grey),
                    ),
                    trailing: const Icon(Icons.more_vert, color: Colors.white),
                  );
                },
              ),
            ],
          ),
        ),
      ),

      // ▶️ PLAY BUTTON
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {},
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}