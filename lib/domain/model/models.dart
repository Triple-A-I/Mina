//OnBoarding Models
class SliderObject {
  String title;
  String subTitle;
  String image;

  SliderObject(this.title, this.subTitle, this.image);
}

//login models

class Customer {
  String id;
  String name;
  int numberOfNotifications;
  Customer(this.id, this.name, this.numberOfNotifications);
}

class Contacts {
  String email;
  String phone;
  String link;
  Contacts(this.email, this.link, this.phone);
}

class Authentication {
  Customer? customer;
  Contacts? contacts;
  Authentication(this.contacts, this.customer);
}
