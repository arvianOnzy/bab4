import 'package:bab4/detail_screen.dart';
import 'package:bab4/list_item.dart';
import 'package:bab4/models/tourism_place.dart';
import 'package:bab4/provider/done_tourism_providerd.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TourismList extends StatefulWidget{
  const TourismList({Key? key}) : super(key: key);

  //final List<TourismPlace> doneTourismPlaceList;

//  const TourismList({
//    Key? key,
//    required this.doneTourismPlaceList
//})    : super(key: key);

  @override
  _TourismListState createState() => _TourismListState();
}

class _TourismListState extends State<TourismList>{
  //final List<TourismPlace> doneTourismPlaceList;
  final List<TourismPlace> tourismPlaceList = [
    TourismPlace(
      name: 'Surabaya Submarine Monument',
      location: 'Jl Pemuda no 39, Embong Kaliasin, Kec. Genteng, Kota Surabaya, Jawa Timur',
      imageAsset: 'assets/images/submarine.jpg',
      day: 'Setiap Hari',
      time: '08.00 - 16.00',
      price: 'Rp 5.000',
      description: 'Monumen Kapal Selam, atau disingkat Monkasel, adalah sebuah museum kapal selam yang terdapat di Embong Kaliasin, Genteng, Surabaya. Terletak di pusat kota, monumen ini sebenarnya merupakan kapal selam KRI Pasopati 410,',
      image1: 'assets/images/submarine.jpg',
      image2: 'assets/images/submarine1.jpg',
      image3: 'assets/images/submarine2.jpg',
      image4: 'assets/images/submarine3.jpg',
    ),
    TourismPlace(
      name: 'Atlantis Land',
      location: 'Jl. Sukolilo No.100, Sukolilo Baru, Kec. Bulak, Kota SBY, Jawa Timur 60122',
      imageAsset: 'assets/images/atlantis.jpg',
      day: 'Setiap Hari',
      time: '10.00 - 18.00',
      price: 'Rp 5.000',
      description: 'Tempat wisata yang cocok untuk bermain bersama keluarga',
      image1: 'assets/images/atlantis2.jpg',
      image2: 'assets/images/atlantis3.jpg',
      image3: 'assets/images/atlantis4.jpg',
      image4: 'assets/images/atlantis5.jpg',
    ),
    TourismPlace(
      name: 'Hutan Mangrove',
      location: 'Jalan Raya Wonorejo no. 1, Kecamatan Rungkut, Kota Surabaya, Jawa Timur.',
      imageAsset: 'assets/images/mangrove.jpg',
      day: 'Setiap Hari',
      time: '07.00 - 18.00',
      price: 'Rp 15.000',
      description: 'Hutan Wisata Mangrove Surabaya merupakan wisata yang menggabungkan wisata rekreasi dan edukasi. Di area dengan luas kurang lebih 200 hektar ini ditanami berbagai tanaman bakau. Lokasi wisata ini dikelola dengan baik oleh pemerintah Kota Surabaya.',
      image1: 'assets/images/mangrove2.jpg',
      image2: 'assets/images/mangrove3.jpg',
      image3: 'assets/images/mangrove4.jpg',
      image4: 'assets/images/mangrove5.jpg',
    ),
    TourismPlace(
      name: 'Tugu Pahlawan',
      location: 'Jl. Pahlawan, Alun-alun Contong, Kec. Bubutan, Kota SBY, Jawa Timur 60174',
      imageAsset: 'assets/images/tugu.jpg',
      day: 'Setiap Hari',
      time: '08.00 - 16.00',
      price: 'Rp 5.000',
      description: 'Tugu Pahlawan adalah sebuah monumen yang menjadi markah tanah Kota Surabaya. Tinggi monumen ini adalah 41,15 meter dan berbentuk lingga atau paku terbalik. Tubuh monumen berbentuk lengkungan-lengkungan (canalures) sebanyak 10 lengkungan, dan terbagi atas 11 ruas. ',
      image1: 'assets/images/tugu1.jpg',
      image2: 'assets/images/tugu2.jpg',
      image3: 'assets/images/tugu3.jpg',
      image4: 'assets/images/tugu4.jpg',
    ),
    TourismPlace(
      name: 'Patung Buddha 4 Wajah',
      location: ' Jl. Pantai Ria Kenjeran No.8, Sukolilo Baru, Kec. Bulak, Kota SBY, Jawa Timur 60122',
      imageAsset: 'assets/images/budha.jpg',
      day: 'Setiap Hari',
      time: '08.00 - 18.00',
      price: 'Rp 5.000',
      description: 'Permukaan patung Buddha 4 wajah yang ada di Kota Pahlawan dilapisi emas. Sehingga pada malam hari pun, patung ini tetap tampak berkilau. Patung Buddha 4 wajah ini juga tercatat di Museum Rekor Indonesia sebagai patung tertinggi di Indonesia.',
      image1: 'assets/images/budha2.jpg',
      image2: 'assets/images/budha3.jpg',
      image3: 'assets/images/budha4.jpg',
      image4: 'assets/images/budha5.jpg',
    ),
  ];

//  _TourismListState(this.doneTourismPlaceList);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index){
        final TourismPlace place = tourismPlaceList[index];
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailScreen(place: place);
            }));
          },

          child: Consumer<DoneTourismProvider>(
            builder: (context, DoneTourismProvider data, widget){

              return ListItem(
                place: place,
                isDone: data.doneTourismPlaceList.contains(place),
                onCheckboxClick: (bool? value){
                  setState(() {
                    if(value!=null) {
                      value
                          ? data.doneTourismPlaceList.add(place)
                          : data.doneTourismPlaceList.remove(place);
                    }
                  });
                },
              );

            },
          ),
        );
      },
      itemCount: tourismPlaceList.length,
    );
  }

}

