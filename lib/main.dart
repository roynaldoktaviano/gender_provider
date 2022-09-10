import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_bwa/gender_prov.dart';

void main() => runApp(myApp());

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<GenderProvide>(
      create: (context) => GenderProvide(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Consumer<GenderProvide>(
                  builder: (context, GenderProvide, _) => Text(
                    'Gender Picker',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: GenderProvide.color,
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Consumer<GenderProvide>(
                        builder: (context, GenderProvide, _) => GestureDetector(
                          onTap: () {
                            GenderProvide.isMale = true;
                          },
                          child: Container(
                            height: 150,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: GenderProvide.borderMale),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/icon_male.png',
                                  height: 80,
                                  color: GenderProvide.borderMale,
                                ),
                                Text(
                                  'Male',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: GenderProvide.borderMale),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Consumer<GenderProvide>(
                        builder: (context, GenderProvide, _) => GestureDetector(
                          onTap: () {
                            GenderProvide.isMale = false;
                          },
                          child: Container(
                            height: 150,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: GenderProvide.borderFemale),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/icon_female.png',
                                  height: 80,
                                  color: GenderProvide.borderFemale,
                                ),
                                Text(
                                  'Female',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: GenderProvide.borderFemale),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
