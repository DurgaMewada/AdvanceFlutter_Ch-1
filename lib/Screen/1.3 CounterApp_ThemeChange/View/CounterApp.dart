import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Provider/CounterAppProvider.dart';

class Counterapp extends StatelessWidget {
  const Counterapp({super.key});

  @override
  Widget build(BuildContext context) {
    Counterappprovider counterappproviderTrue = Provider.of<Counterappprovider>(context,listen: true);
    Counterappprovider counterappproviderFalse = Provider.of<Counterappprovider>(context,listen: false);
    return Scaffold(
      backgroundColor:Theme.of(context).colorScheme.surface,
    appBar: AppBar(
      backgroundColor: Theme.of(context).colorScheme.surface,
      centerTitle: true,
      leading: Icon(Icons.settings),
      title: Text('Counter App ',style: TextStyle(
       fontSize: 18,
        fontWeight: FontWeight.w500,
      ),),
      actions: [
        Switch(
            inactiveThumbColor: Theme.of(context).colorScheme.primary,
            activeColor: Theme.of(context).colorScheme.primary,
            value: counterappproviderTrue.isdarkTheme,
            onChanged: (value) {
              counterappproviderFalse.counterAppTheme();
            }),
      ],
    ),
      body: Center(
        child: Text('${counterappproviderTrue.count}',style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 30,
        ),),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          counterappproviderFalse.add();
        },
        child: Icon(Icons.add,color: Theme.of(context).colorScheme.onPrimary,),
      ),
    );
  }
}
