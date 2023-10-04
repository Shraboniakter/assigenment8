import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(App());
}
class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen());
  }

}
class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title:
        const Text('Profile'),

      ),
      body:SingleChildScrollView(

          child:Column(



            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Wrap(
                  alignment: WrapAlignment.center,
                  children: [

                    Icon(Icons.account_circle_sharp,size: 300,),
                  ],),
              ),



              SingleChildScrollView(


                child:  OrientationBuilder(


                    builder: (context, orientation) {
                      return Column( mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            (orientation == Orientation.portrait
                                ? 'John Doe'
                                : 'John Doe'),
                            style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Wrap(
                                alignment: WrapAlignment.center,
                                crossAxisAlignment: WrapCrossAlignment.end,
                                children:[

                                  Text('Lorem ipsum dolor sit amet, consectetur adipiscing eilt.Sed aliquet turpis eu enim tristique, in iaculis libero porttitor.'),
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Wrap(
                                      children: [
                                        Icon(Icons.account_circle_sharp,size: 120,),
                                        Icon(Icons.account_circle_sharp,size: 120,),
                                        Icon(Icons.account_circle_sharp,size: 120,),
                                      ],

                                    ),
                                  ),
                                  Wrap(children: [
                                    Icon(Icons.account_circle_sharp,size: 120,),
                                    Icon(Icons.account_circle_sharp,size: 120,),
                                    Icon(Icons.account_circle_sharp,size: 120,),

                                  ],),
                                ],
                              ),
                            ),
                          ),
                        ],

                      );
                    }
                ),
              ),



            ],)
      ),


    );
  }

}