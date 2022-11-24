import 'package:flutter/material.dart';
import 'package:fruit_shop/pages/home_page.dart';
import 'package:slide_to_act/slide_to_act.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'HAY MARKETS',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color(0xFFFD5D5D),
                ),
              ),
              SizedBox(height: 10),
              RichText(
                text: TextSpan(
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 60,
                  ),
                  children: [
                    TextSpan(
                      text: 'First Online ',
                      style: TextStyle(fontWeight: FontWeight.w300),
                    ),
                    TextSpan(
                      text: 'Market',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                  'Our market always provide fresh items from the local farmer, let\'s support local with us!'),
              Center(
                child: Image.asset('images/fruit.png'),
              ),
              SizedBox(
                height: 20,
              ),
              SlideAction(
                text: 'SWIPE TO START',
                textStyle: TextStyle(fontSize: 18, color: Colors.white),
                onSubmit: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return HomePage();
                      },
                    ),
                  );
                },
                elevation: 0,
                outerColor: Color(0xFFFD5D5D),
                sliderButtonIcon: Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFFFD5D5D),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('HOW TO SUPPORT '),
                  Text(
                    'LOCAL FARMERS',
                    style: TextStyle(color: Color(0xFFFD5D5D)),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
