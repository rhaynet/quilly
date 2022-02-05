import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quilly/constants.dart';
import 'package:quilly/screens/quiz/quiz_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SvgPicture.asset(
            'assets/bg.svg',
            fit: BoxFit.fill,
            width: 450.0,
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(flex: 2,),
                  Text('Lets Play Quiz,',
                  style: Theme.of(context).textTheme.headline4!
                      .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  const Text('Enter your information below'),
                  const Spacer(),
                  TextField(
                    decoration:InputDecoration(
                      filled: true,
                      fillColor: Color(0xFF1C2341),
                      hintText: 'Full Name',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0),),
                      ),
                    ),
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => QuizScreen()));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(kDefaultPadding * 0.75),
                      decoration: BoxDecoration(
                        gradient: kPrimaryGradient,
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      width: double.infinity,
                      child: Text('Lets Start Quiz',
                        style: Theme.of(context).textTheme.button!
                            .copyWith(color: Colors.black),
                      ),
                    ),
                  ),
                  const Spacer(flex: 2,),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
