import 'package:flutter/material.dart';
import 'package:purrweb_test_shop/widgets/scroll_horizontal/scroll_horizontal_setup.dart';

class PersonalCarePlan extends StatefulWidget {
  const PersonalCarePlan({super.key});

  @override
  State<PersonalCarePlan> createState() => _PersonalCarePlanState();
}

class _PersonalCarePlanState extends State<PersonalCarePlan> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/BgBlock.png'),fit: BoxFit.cover),
      ),
      width: MediaQuery.of(context).size.width,
      height: 250,
      child: Padding(
        padding: const EdgeInsets.only(left: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Text('Моя схема домашнего ухода',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),

            const SizedBox(
              height: 20,
            ),

            SizedBox(
              width: 364,
              height: 101,
              child: ScrollHorizontalSetup(),
            ),

            const SizedBox(
              height: 20,
            ),

            Row(
              children: [
                SizedBox(
                  width: 201,
                  height: 35,
                  child: Text(
                    'Ответьте на 10 вопросов, и мы подберем нужный уход',
                    maxLines: 2,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(width: 20),
                SizedBox(
                  width: 120,
                  height: 40,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(Color.fromRGBO(43, 43, 43, 1)),
                      shape: WidgetStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Пройти тест',
                      maxLines: 1,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}