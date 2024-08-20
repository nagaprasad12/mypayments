import 'package:flutter/cupertino.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';

class DashboardViewModel extends ChangeNotifier {
  List <MenuItems>menuItems = [
    MenuItems(iconData: PhosphorIcons.phone_bold, title: 'Mobile\nRecharge'),
    MenuItems(iconData: PhosphorIcons.book_bookmark, title: 'Bill\nPayment'),
    MenuItems(iconData: PhosphorIcons.bank, title: 'Bank\nTransfer'),
    MenuItems(iconData: PhosphorIcons.money_bold, title:'Request\nMoney'),
    MenuItems(iconData:PhosphorIcons.money, title:'Donation\nMoney'),
  ];


}

class MenuItems {
  final IconData iconData;
  final String title;

  MenuItems({required this.iconData, required this.title});


}