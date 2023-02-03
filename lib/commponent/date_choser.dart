import 'package:flutter/material.dart';
import 'package:travel_app_ui/constants.dart';
import 'package:travel_app_ui/responsive.dart';

class DateChooser extends StatefulWidget {

  @override
  State<DateChooser> createState() => _DateChooserState();
}

class _DateChooserState extends State<DateChooser> {
   int days = 1;

  @override
  Widget build(BuildContext context) {
    return  Row(

      children: [
        Container(
          height: 50,
          width: 100,
          decoration: BoxDecoration(
            color: kInputBackgroundColor,
            borderRadius: BorderRadius.circular(50),

          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.center,
                height: 50,
                width: 30,
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(50),

                ),
                child: Stepper(
                  title: "-",
                  tapEvent: (){
                    setState(() {
                     if(days>1){
                       days--;
                     }
                    });
                  },
                ),
              ),
               Text(days.toString()),
              Container(
                alignment: Alignment.center,
                height: 50,
                width: 30,
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(50),

                ),
                child:Stepper(
                  title: "+",
                  tapEvent: (){
                   setState(() {
                     days++;
                   });
                  },
                ),
              ),

            ],
          ),
        ),
        SizedBox(
          width: 10,
        ),
        const Icon(Icons.access_time_filled_rounded,color: Colors.black,),
        SizedBox(
          width: 10,
        ),
        Text("${days.toString()} Days",style: TextStyle(
          fontSize: isTab(context)?29:20
        )),
      ],
    );
  }
}
class  Stepper extends StatelessWidget {
 final GestureTapCallback tapEvent;
 final String title;

  const Stepper({ required this.tapEvent , required this.title});


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:tapEvent,
      child: Text(title,style: const TextStyle(
          fontSize: 30
      )),
    );
  }
}

