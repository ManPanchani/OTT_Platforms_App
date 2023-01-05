import 'package:flutter/material.dart';

import 'ott_web_view.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "OTT Platforms App",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      drawer: Drawer(
        child: Column(
          children: [
            SizedBox(
              height: h * 0.3,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const WebView(),
                      settings: const RouteSettings(
                        arguments: "https://www.sonyliv.com/",
                      ),
                    ),
                  );
                });
              },
              child: const Text(
                "Sony Liv",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(
              height: h * 0.1,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const WebView(),
                      settings: const RouteSettings(
                        arguments:
                            "https://www.primevideo.com/?ref_=dvm_pds_amz_in_as_s_gm_28&gclid=Cj0KCQiA5NSdBhDfARIsALzs2ED2dZg2tXSMcyWZvF6YOLkQBr9lkyiUkIc5XSio78QKnUtBHEiiBfgaAjzcEALw_wcB",
                      ),
                    ),
                  );
                });
              },
              child: const Text(
                "Amazon Prime Video",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(
              height: h * 0.1,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const WebView(),
                        settings: const RouteSettings(
                          arguments: "https://www.hotstar.com/in",
                        ),
                      ),
                    );
                  });
                },
                child: const Text(
                  "Hotstar",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                )),
            SizedBox(
              height: h * 0.1,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const WebView(),
                      settings: const RouteSettings(
                        arguments: "https://www.jiocinema.com/",
                      ),
                    ),
                  );
                });
              },
              child: const Text(
                "Jio Cinema",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
