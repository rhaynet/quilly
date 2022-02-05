import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quilly/constants.dart';
import 'package:quilly/screens/quiz/components/progress_bar.dart';
import 'package:quilly/model/questions.dart';
import 'package:quilly/screens/quiz/components/question_card.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(
          'assets/bg.svg',
          fit: BoxFit.fill,
          width: 450.0,
        ),
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: ProgressBar(),
              ),
              const SizedBox(
                height: kDefaultPadding,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),                child: Text.rich(
                  TextSpan(
                    text: 'Question 1',
                    style: Theme.of(context)
                        .textTheme
                        .headline4!
                        .copyWith(color: kSecondaryColor),
                    children: [
                      TextSpan(
                        text: '/10',
                        style: Theme.of(context)
                            .textTheme
                            .headline5!
                            .copyWith(color: kSecondaryColor),
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(
                thickness: 1.5,
              ),
              const SizedBox(
                height: kDefaultPadding,
              ),
              Expanded(
                child: PageView.builder(
                  itemBuilder: (context, index) => QuestionCard(),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
