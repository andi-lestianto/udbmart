import 'package:andisplash/theme/apptheme.dart';
import 'package:andisplash/widget/homemenu_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    AppTheme appTheme = AppTheme();
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        toolbarHeight: 80,
        elevation: 0,
        backgroundColor: appTheme.clrBgApp,
        title: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          height: 80,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15)),
              color: appTheme.clrWhite),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hai Andi',
                    style: GoogleFonts.poppins(
                        color: appTheme.clrBlack, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Mau belanja apa hari ini?',
                    style: GoogleFonts.poppins(
                        color: appTheme.clrTxtGray, fontSize: 15),
                  )
                ],
              ),
              const Image(image: AssetImage('assets/profile.png'))
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                margin: const EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: appTheme.clrPrimaryBlue),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Sisa saldo Anda',
                          style: GoogleFonts.poppins(color: appTheme.clrIcGray),
                        ),
                        Text(
                          'Rp. 100.000',
                          style: GoogleFonts.poppins(
                              color: appTheme.clrWhite,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      child: Row(
                        children: [
                          Text(
                            'Top Up',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600,
                                color: appTheme.clrPrimaryBlue),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.add_circle_outlined,
                            color: appTheme.clrPrimaryBlue,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: appTheme.clrWhite),
                  width: MediaQuery.of(context).size.width,
                  child: const Image(
                    image: AssetImage('assets/banner.png'),
                    fit: BoxFit.cover,
                  )),
              const SizedBox(
                height: 20,
              ),
              GridView.count(
                shrinkWrap: true,
                primary: false,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                crossAxisCount: 2,
                children: <Widget>[
                  HomeMenuWidget(
                    primaryClr: appTheme.clrPrimaryBlue,
                    accentClr: appTheme.clrAccentBlue,
                    title: 'Transaksi',
                    subtitle: '12 Transaksi Berhasil',
                    imgUrl: 'assets/ic_home_transaction.png',
                  ),
                  HomeMenuWidget(
                    primaryClr: appTheme.clrPrimaryRed,
                    accentClr: appTheme.clrAccentRed,
                    title: 'Produk',
                    imgUrl: 'assets/ic_home_product.png',
                    subtitle: '42 Produk Baru',
                  ),
                  HomeMenuWidget(
                    primaryClr: appTheme.clrPrimaryYellow,
                    accentClr: appTheme.clrAccentYellow,
                    title: 'Promo',
                    imgUrl: 'assets/ic_home_promo.png',
                    subtitle: '5 Promo Menarik',
                  ),
                  HomeMenuWidget(
                    primaryClr: appTheme.clrPrimaryGreen,
                    accentClr: appTheme.clrAccentGreen,
                    title: 'Pengiriman',
                    imgUrl: 'assets/ic_home_delivery.png',
                    subtitle: '2 Produk Sedang Dikirim',
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          padding: const EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Image(image: AssetImage('assets/ic_navbar_home.png')),
              Image(image: AssetImage('assets/ic_navbar_cart.png')),
              Image(image: AssetImage('assets/ic_navbar_chat.png')),
              Image(image: AssetImage('assets/ic_navbar_profile.png'))
            ],
          ),
        ),
      ),
    );
  }
}
