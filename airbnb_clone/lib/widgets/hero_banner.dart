// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HeroBanner extends StatelessWidget {
  const HeroBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: MediaQuery.of(context).size.height / 2.1,
        child: Stack(
          children: [
            Image.network(
              "https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/airbnb%2Fairbnb_home.webp?alt=media&amp;token=27e4e303-eac2-4144-945f-73769bcb81f7&quot;",
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height / 2.1,
            ),
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 35,
                  ),
                  const Text(
                    "Not sure where to go?\nPerfect.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          alignment: Alignment.center,
                          padding: MaterialStateProperty.all(
                              const EdgeInsets.only(
                                  right: 50,
                                  left: 50,
                                  top: 12.5,
                                  bottom: 12.5)),
                          elevation: MaterialStateProperty.all(5),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                          overlayColor:
                              MaterialStateProperty.resolveWith((states) {
                            return states.contains(MaterialState.pressed)
                                ? Colors.grey.shade100
                                : null;
                          }),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25)))),
                      child: ShaderMask(
                        shaderCallback: ((bounds) => const LinearGradient(
                                colors: [Colors.purple, Colors.pink])
                            .createShader(Rect.fromLTWH(
                                0, 0, bounds.width, bounds.height))),
                        child: const Text(
                          "I'm flexible",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
