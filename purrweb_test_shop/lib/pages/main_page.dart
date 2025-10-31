import 'package:flutter/material.dart';
import 'package:purrweb_test_shop/widgets/bodys/basket_body.dart';
import 'package:purrweb_test_shop/widgets/bodys/catalog_body.dart';
import 'package:purrweb_test_shop/widgets/bodys/profile_body.dart';
import 'package:purrweb_test_shop/widgets/bodys/home_body.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final body = [
      HomeBody(),
      CatalogBody(),
      BasketBody(),
      ProfileBody()
    ];

    return Scaffold(

      body: body[_currentIndex],
      
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Color.fromRGBO(112, 117, 127, 1),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        currentIndex: _currentIndex,
        onTap: (index){
          setState(() {
            _currentIndex = index;
            print(_currentIndex);
            
          });
        },
        items: [
          BottomNavigationBarItem(icon: Image(image: AssetImage('assets/icons/House.png')), activeIcon: Image(image: AssetImage('assets/icons/House.png'),color: Colors.black,),label:'Главная'),
          BottomNavigationBarItem(icon: Image(image: AssetImage('assets/icons/MagnifyingGlass.png')), activeIcon: Image(image: AssetImage('assets/icons/MagnifyingGlass.png'),color: Colors.black,),label: 'Каталог'),
          BottomNavigationBarItem(icon: Image(image: AssetImage('assets/icons/ShoppingCartSimple.png')), activeIcon: Image(image: AssetImage('assets/icons/ShoppingCartSimple.png'),color: Colors.black,),label: 'Корзина'),
          BottomNavigationBarItem(icon: Image(image: AssetImage('assets/icons/User.png')), activeIcon: Image(image: AssetImage('assets/icons/User.png'),color: Colors.black,),label: 'Профиль'),
        ]
      ),
    );
  }
}