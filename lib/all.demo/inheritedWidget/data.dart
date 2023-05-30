abstract class DataBase{

  String nameMethod();
  String phoneMethod();
}

class Data implements DataBase{
  @override
  String nameMethod() {
    String name ="Hello Developer";
    return name;
  }

  @override
  String phoneMethod() {
    String phone="+91 900XXXXXXX";
    return phone;
  }
}