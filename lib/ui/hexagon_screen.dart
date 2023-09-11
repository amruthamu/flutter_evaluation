import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../anim_bloc/anim_bloc.dart';
import '../anim_bloc/anim_event.dart';
import '../anim_bloc/anim_state.dart';
import 'hexagon_create.dart';
import 'dottedLine_painter_data.dart';

class HexagonScreen extends StatefulWidget {
  const HexagonScreen({super.key});
  @override
  State<HexagonScreen> createState() => _HexagonScreen();
}

class _HexagonScreen extends State<HexagonScreen> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  @override
  initState() {
    super.initState();
    BlocProvider.of<AnimBloc>(context).add(AnimationBeginEvent());
    animationController = AnimationController(
      duration: const Duration(seconds: 6),vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AnimBloc, AnimationState>(
      listener: (context, state) {
        animationController.forward();
      },
      child: Scaffold(
          appBar: AppBar(
            title: const Center(child: Text("Hexagon Application" ,style: TextStyle(fontSize:35))),
          ),
          body: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    FadeTransition(
                        opacity: Tween(begin: -10.0, end: 100.0)
                            .animate(animationController),
                        child: hexagonCreate(context,
                            "Windows", "Windows is a widely used operating system developed by Microsoft. It is known for its user-friendly interface and compatibility with a wide range of software applications. There are different versions of Windows, with Windows 10 and Windows 11 being the latest as of my knowledge cutoff date in September 2021.",
                            [Colors.orange,Colors.orange,Colors.orange,Colors.orange,Colors.orange,Colors.orange])),
                    FadeTransition(
                        opacity: Tween(begin: -40.0, end: 200.0)
                            .animate(animationController),
                        child: hexagonCreate(context,
                        "Linux", "Linux is an open-source operating system kernel that serves as the foundation for various Linux distributions (distros). Linux is known for its security, stability, and flexibility. Popular Linux distributions include Ubuntu, Debian, and Fedora.",
                            [Colors.blue,Colors.blue,Colors.blue,Colors.blue,Colors.blue,Colors.blue])),
                    FadeTransition(
                        opacity: Tween(begin: -99.0, end: 301.0)
                            .animate(animationController),
                        child: hexagonCreate(context,
                           "macOs", "macOS is the operating system developed by Apple Inc. for their Macintosh computers. It is known for its elegant and user-friendly interface, as well as tight integration with Apple's hardware and software ecosystem.",
                            [Colors.orange,Colors.orange,Colors.orange,Colors.orange,Colors.orange,Colors.orange])),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FadeTransition(
                        opacity: Tween(begin: -150.0, end: 400.0)
                            .animate(animationController),
                        child: CustomPaint(
                          painter: const PainterData(
                            primaryOffset: Offset(32, -29),
                            secondaryOffset: Offset(69, 19),
                          ),
                          child: CustomPaint(
                            painter: const PainterData(
                              primaryOffset: Offset(94, -29),
                              secondaryOffset: Offset(59, 19),
                            ),
                            child: hexagonCreate(context,
                                "Ubuntu", "Ubuntu is a popular Linux distribution based on Debian. It is known for its ease of use and comes with a wide range of pre-installed software. Ubuntu is widely used both for desktop and server environments.",
                                [Colors.blue,Colors.blue,Colors.blue,Colors.blue,Colors.blue,Colors.blue]),
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: Tween(begin: -240.0, end: 400.0)
                            .animate(animationController),
                        child: CustomPaint(
                          painter: const PainterData(
                            primaryOffset: Offset(33, -30),
                            secondaryOffset: Offset(70, 20),
                          ),
                          child: CustomPaint(
                            painter: const PainterData(
                              primaryOffset: Offset(93, -30),
                              secondaryOffset: Offset(60, 20),
                            ),
                            child: hexagonCreate(context,
                                "Debian"," Debian is a stable and highly customizable Linux distribution. It is known for its commitment to free and open-source software principles and has a large community of developers." ,
                                [Colors.blue,Colors.blue,Colors.blue,Colors.blue,Colors.blue,Colors.blue]),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FadeTransition(
                        opacity: Tween(begin: -400.0, end: 600.0)
                            .animate(animationController),
                        child: CustomPaint(
                          painter: const PainterData(
                            primaryOffset: Offset(60, -30),
                            secondaryOffset: Offset(60, 20),
                          ),
                          child: hexagonCreate(context,
                              "Fedora", "Fedora is another popular Linux distribution that focuses on delivering the latest open-source technologies. It is often used by developers and enthusiasts who want access to cutting-edge software.",
                              [Colors.purple,Colors.purple,Colors.purple,Colors.purple,Colors.purple,Colors.purple]),
                        ),
                      ),
                      FadeTransition(
                        opacity: Tween(begin: -600.0, end: 700.0)

                            .animate(animationController),
                        child: CustomPaint(
                          painter: const PainterData(
                            primaryOffset: Offset(60, -30),
                            secondaryOffset: Offset(60, 20),
                          ),
                          child: hexagonCreate(context,
                              "openSUSE", "openSUSE is a Linux distribution known for its stability and robustness. It is available in two main flavors: openSUSE Leap (stable) and openSUSE Tumbleweed (rolling release).",
                              [Colors.purple,Colors.purple,Colors.purple,Colors.purple,Colors.purple,Colors.purple]),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }






}