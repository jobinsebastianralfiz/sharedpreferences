import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class HomePage extends StatelessWidget {
 HomePage({super.key});

  final List<String>?names=['Orange','Apple','Mango','Kiwi'];
  addInttoSF() async{
    
    SharedPreferences _pref= await SharedPreferences.getInstance();
    _pref.setInt('intvalue', 123);
  }

  getIntFromSF() async{
    SharedPreferences _pref= await SharedPreferences.getInstance();
   int? res=  _pref.getInt('intvalue');

   print(res);



  }



  addStringtoSF() async{

    SharedPreferences _pref= await SharedPreferences.getInstance();
    _pref.setString('stringvalue',"Jobin");
  }

  getStringFromSF() async{
    SharedPreferences _pref= await SharedPreferences.getInstance();
    String? res=  _pref.getString('stringvalue');

    print(res);



  }


 addLsittoSF() async{

   SharedPreferences _pref= await SharedPreferences.getInstance();
   _pref.setStringList('fruits',names!);
 }


 getStringListFromSF() async{
   SharedPreferences _pref= await SharedPreferences.getInstance();
   List<String>? res=  _pref.getStringList('fruits');

   print(res);



 }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        width: double.infinity,
        height: double.infinity,

        child: Column(
mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: (){
                  addInttoSF();

                }, child: Text("SetInt")),
                ElevatedButton(onPressed: (){

                  getIntFromSF();
                }, child: Text("GetInt")),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: (){

                  addStringtoSF();
                }, child: Text("SetString")),
                ElevatedButton(onPressed: (){
                  getStringFromSF();
                }, child: Text("GetString")),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: (){}, child: Text("SetDouble")),
                ElevatedButton(onPressed: (){}, child: Text("GetDouble")),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: (){}, child: Text("Setboll")),
                ElevatedButton(onPressed: (){}, child: Text("Getbool")),
              ],
            ),


            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: (){
                  addLsittoSF();
                }, child: Text("SetList")),
                ElevatedButton(onPressed: (){
                  getStringListFromSF();
                }, child: Text("GetList")),
              ],
            )
          ],
        ),
      ),
    );
  }
}
