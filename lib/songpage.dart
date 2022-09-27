import 'package:flutter/material.dart';
import 'package:musicui1/neu_box.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class SongPage extends StatefulWidget {
  const SongPage({super.key});

  @override
  State<SongPage> createState() => _SongPageState();
}

class _SongPageState extends State<SongPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 25,
                ),
                //back button and menu button
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    SizedBox(
                      height: 60,
                      width: 60,
                      child: NeuBox(child: Icon(Icons.arrow_back)),
                    ),
                    Text("P L A Y L I S T"),
                    SizedBox(
                      height: 60,
                      width: 60,
                      child: NeuBox(child: Icon(Icons.menu)),
                    ),
                  ],
                ),
                const SizedBox(height: 25),

                // cover art,artist name, song name
                NeuBox(
                  child: Column(
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset("assets/counting.png")),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "OneRepublic",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.grey.shade700,
                                  ),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                const Text(
                                  "CountingStars",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22,
                                  ),
                                ),
                              ],
                            ),
                            const Icon(
                              Icons.favorite,
                              color: Colors.red,
                              size: 32,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text("0:00"),
                    Icon(Icons.shuffle),
                    Icon(Icons.repeat),
                    Text("4:22"),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                NeuBox(
                  child: LinearPercentIndicator(
                    barRadius: const Radius.circular(20),
                    lineHeight: 8,
                    percent: 0.5,
                    progressColor: Colors.green,
                    backgroundColor: Colors.transparent,
                  ),
                ),

                const SizedBox(
                  height: 25,
                ),
                SizedBox(
                  height: 70,
                  child: Row(
                    children: const [
                      Expanded(
                        child: NeuBox(
                            child: Icon(
                          Icons.skip_previous,
                          size: 32,
                        )),
                      ),
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.0),
                          child: NeuBox(
                              child: Icon(
                            Icons.play_arrow,
                            size: 32,
                          )),
                        ),
                      ),
                      Expanded(
                        child: NeuBox(
                            child: Icon(
                          Icons.skip_next,
                          size: 32,
                        )),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
