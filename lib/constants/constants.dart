class Constants {
  static const String title = "Dart";
  static const String title1 = "Singleton";
  static const String title2 = "Mixins";
  static const String title3 = "Stateless Widget";
  static const String title4 = "Stateful Widget";
  static const String title5 = "setState()";
  static const String title6 = "Isolates";
  static const String title7 = "Widgets";


  static const String title_des = "  - Dart is an open-source general-purpose programming language. \n - It is originally developed by Google. \n - Dart is an object-oriented language with C-style syntax. \n - Dart is an open-source programming language which is widely used to develop the mobile application, modern web-applications, desktop application, and the Internet of Things (IoT) using by Flutter framework. \n - It also supports a few advance concepts such as interfaces, mixins, abstract classes, refield generics, and type interface.";
  static const String title1_des = " - Only one object creation \n - It is one of the simplest design pattern \n - There can only be one instance of class \n - Class itself is responsible to keep track of its sole instance \n - The instance is globally accessible through static method \n - Constructor is private so it cannot be instantiated \n - Using a singleton global variable that points to the instance. \n - The common Singleton.instance pattern. \n - Using the default constructor, which is a factory that returns the instance. \n - By using factory constructor we can access singleton class" ;
  static const String title2_des = " - A mixin is a sort of class that can be “associated” to another class in order to reuse pieces of code without using inheritance. \n - When we use class B with A {} we are importing every method of mixin A into your class B \n - We can use with with one or more mixins. \n - Mixin is the ready to use functionality, not needed of constructor";
  static const String title3_des = " - Stateless Widgets are static widgets. \n - They do not depend on any data change or any behavior change. \n - Stateless Widgets do not have a state, they will be rendered once and will not update themselves, but will only be updated when external data changes. \n - To create a Stateless widget, we have to override the build() method. \n - For Example: Text, Icon, RaisedButton are Stateless Widgets. ";
  static const String title4_des = " - Stateful Widgets are dynamic widgets. \n - They can be updated during runtime based on user action or data change. \n - Stateful Widgets have an internal state and can re-render if the input data changes or if Widget’s state changes. \n - To create a Stateful widget, we have to override the createState() method, which returns the state of the widget. \n - For Example: Checkbox, Radio Button, Slider are Stateful Widgets";
  static const String title5_des = " - setState is a way to dynamically change the UI. \n - We call it inside the State Object class of the StatefulWidget. \n - Whenever you change the internal state of a State object, make the change in a function that you pass to setState: setState(() { _myState = newValue; }); ";
  static const String title6_des = " - Dart is single-threaded but it is capable of doing multi-threading stuff using Isolates (many processes). \n - Dart's version of Threads. \n - Do not share memory between each other. \n - Uses Ports and Messages to communicate between them. \n - May use another processor core if available. \n - Runs code in parallel.";
  static const String title7_des = " - The Flutter framework offers widgets, which are capable of developing customizable specific designs. \n - Flutter has two sets of widgets: Material Design and Cupertino widgets that help to provide a glitch-free experience on all platforms.";
}