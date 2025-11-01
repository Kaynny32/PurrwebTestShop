import 'package:flutter/material.dart';

class CareCategoryGrid extends StatefulWidget {
  const CareCategoryGrid({super.key});

  @override
  State<CareCategoryGrid> createState() => _CareCategoryGridState();
}

class _CareCategoryGridState extends State<CareCategoryGrid> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: SizedBox(
        width: 345,
        height: 130,
        child: Column(
          spacing: 10,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 168,
                  height: 60,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(Colors.white),
                      foregroundColor: WidgetStateProperty.all(Colors.black.withAlpha(10)),
                      side: WidgetStateProperty.all(
                        BorderSide(color: Colors.grey, width: 1),
                      ),
                      shape: WidgetStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      elevation: WidgetStateProperty.all(0),
                    ),
                    onPressed: () {},
                    child: Text('Для очищения',style: TextStyle(color: Colors.black,fontSize: 14, fontWeight: FontWeight.w500)),
                  ),
                ),
                SizedBox(
                  width: 168,
                  height: 60,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(Colors.white),
                      foregroundColor: WidgetStateProperty.all(Colors.black.withAlpha(10)),
                      side: WidgetStateProperty.all(
                        BorderSide(color: Colors.grey, width: 1),
                      ),
                      shape: WidgetStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      elevation: WidgetStateProperty.all(0),
                    ),
                    onPressed: () {},
                    child: Text('Для увлажнения',style: TextStyle(color: Colors.black,fontSize: 14, fontWeight: FontWeight.w500)),
                  ),
                ),
              ],
            ),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 168,
                  height: 60,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(Colors.white),
                      foregroundColor: WidgetStateProperty.all(Colors.black.withAlpha(10)),
                      side: WidgetStateProperty.all(
                        BorderSide(color: Colors.grey, width: 1),
                      ),
                      shape: WidgetStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      elevation: WidgetStateProperty.all(0),
                    ),
                    onPressed: () {},
                    child: Text('Для питания',style: TextStyle(color: Colors.black,fontSize: 14, fontWeight: FontWeight.w500),),
                  ),
                ),
                SizedBox(
                  width: 168,
                  height: 60,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(Colors.white),
                      foregroundColor: WidgetStateProperty.all(Colors.black.withAlpha(10)),
                      side: WidgetStateProperty.all(
                        BorderSide(color: Colors.grey, width: 1),
                      ),
                      shape: WidgetStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      elevation: WidgetStateProperty.all(0),
                    ),
                    onPressed: () {},
                    child: Text('Для омоложения',style: TextStyle(color: Colors.black,fontSize: 14, fontWeight: FontWeight.w500)),
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