# Advance Flutter Ch-1

# Provider Tree
</div>
<div align="center">
<img height="550" src="https://github.com/mayuuu05/AdvFlutterCh1/assets/149376263/011398fb-a4dd-43c6-b891-6c3460c110e2"/>
</div>

## State
- A state is information that can be read when the widget is built and might change or modified over a lifetime of the app.

- If you want to change your widget, you need to update the state object, which can be done by using the setState() function available for Stateful widgets.

## State management

- The state management is one of the most popular and necessary processes in the lifecycle of an application. 

- A state is information that can be read when the widget is built and might change or modified over a lifetime of the app. 

- If you want to change your widget, you need to update the state object, which can be done by using the setState() function available for Stateful widgets. The setState() function allows us to set the properties of the state object that triggers a redraw of the UI.

## There are Two way describe the state management?

- Treditioinal state management - 
    
    State management refers to managing data across widgets, screens, and over time in a Flutter application.

    setState();

- Provider state management -


    The Provider is a state management solution that extends and simplifies Inherited Widgets. It is a versatile and powerful state manager that allows you to deliver data to any widget in your app.

     - ChangeNotifer
     - ChangeNotiferProvider
     - Cousumer

## ChangeNotifer

- ChangeNotifier is a simple class, which provides change notification to its listeners.
- It is easy to understand, implement, and optimized for a small number of listeners.
- It is used for the listener to observe a model for changes. 
- In this, we only use the notifyListener() method to inform the listeners.

Example:
```bash
import 'package:flutter/material.dart';  
  
class Counter with ChangeNotifier {  
  int _counter;  
  
  Counter(this._counter);  
  
  getCounter() => _counter;  
  setCounter(int counter) => _counter = counter;  
  
  void increment() {  
    _counter++;  
    notifyListeners();  
  }  
  
  void decrement() {  
    _counter--;  
    notifyListeners();  
  }  
}  
```
## ChangeNotiferProvider

- ChangeNotifierProvider is the widget that provides an instance of a ChangeNotifier to its descendants. 
- It comes from the provider package.
- The following code snippets help to understand the concept of ChangeNotifierProvider.

Example:
```bash
void main() {  
  runApp(  
    MultiProvider(  
      providers: [  
        ChangeNotifierProvider(builder: (context) => Counter()),  
        Provider(builder: (context) => SomeOtherClass()),  
      ],  
      child: MyApp(),  
    ),  
  );  
}  
```
## Cousumer

- It is a type of provider that does not do any fancy work.
-  It just calls the provider in a new widget and delegates its build implementation to the builder.
- The following code explains it more clearly.

Example:
```bash
return Consumer<Counter>(  
  builder: (context, count, child) {  
    return Text("Total price: ${count.total}");  
  },  
);  
```

## 1.1 Theme change

In Flutter, themes are used to control the appearance of your app.Flutter provides two built-in themes: LightTheme and DarkTheme. You can further customize these themes or create your own custom themes.
This Flutter project demonstrates how to implement theme switching between light and dark themes.

<div> 
  <img src = "https://github.com/DurgaMewada/adv_flutter_ch1/assets/149373536/a10cf479-4350-415a-a899-ee4c4d50fb37"  height=35% width=22%  />
   <img src = "https://github.com/DurgaMewada/adv_flutter_ch1/assets/149373536/72e4a3d5-5a00-4dfc-8e59-626b39a19883"  height=35% width=22%  />
</div>

## 1.2 Create Registration Page using Stepper Widget

A material stepper widget that displays progress through a sequence of steps. Steppers are particularly useful in the case of forms where one step requires the completion of another one, or where multiple steps need to be completed in order to submit the whole form.

<div> 
  <img src = "https://github.com/user-attachments/assets/a68fceee-1bf2-442c-831f-f1f02d472d49"  height=35% width=22%  />
  <img src = "https://github.com/user-attachments/assets/d28dea0d-2994-4058-bf5a-67aa404a9926"  height=35% width=22%  />
  <img src = "https://github.com/user-attachments/assets/f45c6b71-e643-46ce-9677-2bd14c366946"  height=35% width=22%  />
  <img src = "https://github.com/user-attachments/assets/e63ad54a-4e5c-413b-b060-b5fd246de7fc"  height=35% width=22%  />
</div>
 --> Dart File (https://github.com/DurgaMewada/adv_flutter_ch1/tree/master/lib/Screen/1.2%20Stepper%20Widget/View)

## 1.3 Counter App And Theme Change Using Provider

 Create Counter Application and changing theme using Provider. 
<div> 
  <video height="450" src="https://github.com/user-attachments/assets/61149d5d-a8ec-49fd-8e8f-ca28e4e33770"/>
</div>
 --> Dart File (https://github.com/DurgaMewada/adv_flutter_ch1/tree/master/lib/Screen/1.3%20CounterApp_ThemeChange)

    
 ## 1.4 Provider & Change Theme using Provider

The Provider package, created by Remi Rousselet, aims to handle the state as cleanly as possible. In Provider, widgets listen to changes in the state and update as soon as they are notified.
Provider State Management, which is recommended by Google as well, mainly provides you with a central point to manage the state, and to write front-end logic.
A provider is a third-party library. Here, we need to understand three main concepts to use this library.

<div> 
  <img src = "https://github.com/user-attachments/assets/b0f1fb44-853f-4969-a6cd-838e7c3b7ec4"  height=35% width=22%  />
  <img src = "https://github.com/user-attachments/assets/54cd9ca4-de78-4a9f-9b3f-1a029c01ec38"  height=35% width=22%  />
   <video height="450" src="https://github.com/user-attachments/assets/ec331603-d79d-40f5-a912-a39dbec82692"/>
</div>
 --> Dart File (https://github.com/DurgaMewada/adv_flutter_ch1/tree/master/lib/Screen/1.2%20Stepper%20Widget/View)

## 1.6 Contact Us Page With Interaction
<div> 
     <img src = "https://github.com/user-attachments/assets/544b4427-9eac-4473-8d7e-c6bba2d986f6"  height=35% width=22%  />
     <video height="450" src="https://github.com/user-attachments/assets/6798d973-4b30-420f-8728-eec09e295442"/>
</div>
     --> Dart File (https://github.com/DurgaMewada/adv_flutter_ch1/tree/master/lib/Screen/1.4%20Change%20Theme%20using%20Provider)

       
## 1.7 Photo Gallery With Biometric Authentication
<div> 
   <img src = "https://github.com/user-attachments/assets/426d6db9-b7b0-4a2a-8491-0306ccd33e15"  height=35% width=22%  />
   <img src = "https://github.com/user-attachments/assets/b37bae16-e87a-4690-ae0b-b1a3908a60d7"  height=35% width=22%  />
   <img src = "https://github.com/user-attachments/assets/d62ad7ee-804a-4d38-8481-56589fd157f1"  height=35% width=22%  />
   <video height="450" src="https://github.com/user-attachments/assets/6803ff27-e2ca-4f6d-9534-9838f66bd397"/>
</div>
 --> Dart File (https://github.com/DurgaMewada/adv_flutter_ch1/tree/master/lib/Screen/1.7%20Biometric%20Authentication)

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
