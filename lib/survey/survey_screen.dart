import 'package:flutter/material.dart';

class SurveyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const List<String> list = <String>['One', 'Two', 'Three', 'Four'];
    String dropdownValue = list.first;


    return Scaffold(
        body: Container(
            child: Column(
                children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Icon(Icons.arrow_back),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Start New Village Survey ',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter Village Name here',
              suffixIcon: Align(
                widthFactor: 2.0,
                heightFactor: 2.0,
                child: Icon(
                  Icons.search_outlined,
                ),
              ),
              prefixIcon: Align(
                widthFactor: 1.0,
                heightFactor: 1.0,
                child: Icon(
                  Icons.dehaze_rounded,
                ),
              ),

            ),
          ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter Village Name here',
                      suffixIcon: Align(
                        widthFactor: 2.0,
                        heightFactor: 2.0,
                        child: DropdownButton<String>(
                          value: dropdownValue,
                          icon: const Icon(Icons.arrow_downward),
                          elevation: 16,
                          onChanged: (String? value) {
                            // This is called when the user selects an item.
                            setState(() {
                              dropdownValue = value!;
                            });
                          },
                          items: list.map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                      ),


                    ),

                  ),),


                ])));
  }
}

void setState(Null Function() param0) {
}
