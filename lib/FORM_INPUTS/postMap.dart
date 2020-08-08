import 'package:google_maps_flutter/google_maps_flutter.dart';

class Post {
  String name;
  String dayLost;
  String description;
  String image;
  LatLng locationCoords;

  Post(
      {this.name,
        this.dayLost,
        this.description,
        this.image,
        this.locationCoords});
}

final List<Post> posts = [
  Post(
      name: 'محمد احمد',
      dayLost: '15/1/2020',
      description:
      'هذا الشخص موجود في هذا المكان  من يوم 21/11 ولو يتم الوصول الي اهله ',
      locationCoords: LatLng(30.5857619, 31.5076958),
      image:  "https://scontent-hbe1-1.xx.fbcdn.net/v/t1.0-9/116570721_2679038092365968_6380974481977917068_o.jpg?_nc_cat=104&_nc_sid=8bfeb9&_nc_ohc=MtcikVEk2RwAX9NKXhZ&_nc_ht=scontent-hbe1-1.xx&oh=8241c8c6d790345645fd8da7caf7917d&oe=5F52D3B9"  ),
  Post(
      name: 'احمد علي',
      dayLost: '10/10/214',
      description:
      'هذا الشخص موجود في هذا المكان  من يوم 21/11 ولو يتم الوصول الي اهله ',
      locationCoords: LatLng(30.4857619, 31.6076958),
      image:"https://scontent-hbe1-1.xx.fbcdn.net/v/t1.0-9/116438956_1200334017025856_8492707724460524808_n.jpg?_nc_cat=108&_nc_sid=8bfeb9&_nc_ohc=Fh2otztqsWUAX_U8WQn&_nc_ht=scontent-hbe1-1.xx&oh=102096009db0c3ae9904670f5678f090&oe=5F5257B7"  ),
  Post(
      name: 'محمود العدروسي',
      dayLost: '12/12/2019',
      description:
      ' الشخص ده موجود عند المسجد واللي يتعرف عليه ممكن يكامنا علي الرقم ده 01552344879.',
      locationCoords: LatLng(30.5257619, 31.5976958),
      image:"https://scontent-hbe1-1.xx.fbcdn.net/v/t1.0-9/26805349_1837703166527302_3308498159535723695_n.jpg?_nc_cat=104&_nc_sid=0debeb&_nc_ohc=cMx3IRcXhHMAX-SbNzv&_nc_ht=scontent-hbe1-1.xx&oh=2991db8cf6590ec1395639e23350c61d&oe=5F502C4A"),
  Post(
      name: 'سلمي احمد ',
      dayLost: '25/10/2018',
      description:
      'متغيبه عن المنزل من حوالي شهر اللي يجده يرجي التواصل معنا 010589452',
      locationCoords: LatLng(30.4657619, 31.6176958),
      image: 'https://scontent-hbe1-1.xx.fbcdn.net/v/t1.0-9/117128756_1199970233728901_6132924133723485150_n.jpg?_nc_cat=100&_nc_sid=8bfeb9&_nc_ohc=m0q08DEO8coAX-8k4eA&_nc_ht=scontent-hbe1-1.xx&oh=92ad310d97773f71290101053cc950ef&oe=5F53D413'
  ),
  Post(
      name: 'آيه علي  ',
      dayLost: '15/5/2020',
      description:
      'متغيبه عن المنزل من حوالي شهر اللي يجده يرجي التواصل معنا011123489477',
      locationCoords: LatLng(30.5866264,31.5243198),
      image:  'https://sawaleif.com/wp-content/uploads/2017/04/596701f74e84c620dea91f704a23f365.jpg' ),
  Post(
      name: 'محمود محمد ',
      dayLost: '25/10/2019',
      description:
      '  هذا الطفل متواجد امام  المدرسه الجديده',
      locationCoords: LatLng(30.4657610, 31.6176951),
      image:  'https://scontent-hbe1-1.xx.fbcdn.net/v/t1.0-9/49808822_2159672600742608_5498260928673611776_o.jpg?_nc_cat=103&_nc_sid=8bfeb9&_nc_ohc=89wXnhwD-eYAX9nkV9A&_nc_ht=scontent-hbe1-1.xx&oh=3b590c5b9269d0f80f651df1aea17743&oe=5F50712E' ),
  Post(
      name: 'منه احمد ',
      dayLost: '5/5/2018',
      description:
      'متغيبه عن المنزل من حوالي شهر اللي يجده يرجي التواصل معنا 012369875321',
      locationCoords: LatLng(30.5868377,31.5245328),
      image:  "https://scontent-hbe1-1.xx.fbcdn.net/v/t1.0-9/12096200_1511618879135734_842102454860872888_n.jpg?_nc_cat=104&_nc_sid=cdbe9c&_nc_ohc=w-WZAi3WJUEAX9aApcr&_nc_ht=scontent-hbe1-1.xx&oh=98072dd34617ed6f80fa65f734bf53b9&oe=5F532AE0"),  Post(
      name: 'سيد مسعد ',
      dayLost: '25/10/2018',
      description:
      'طفل مفقود من زمن طويل',
      locationCoords: LatLng(30.4657539, 31.6176218),
      image: "https://scontent-hbe1-1.xx.fbcdn.net/v/t1.0-9/117391342_2505599993070946_9055518465702126248_o.jpg?_nc_cat=106&_nc_sid=8bfeb9&_nc_ohc=nGb5Dr2DZTgAX9qiDFG&_nc_ht=scontent-hbe1-1.xx&oh=f74861a410c531fd2fce88328616229c&oe=5F52C762" ),
  Post(
      name: 'وايد جبر ',
      dayLost: '4/2/2019',
      description:
      'متغيبه عن المنزل من حوالي شهر اللي يجده يرجي التواصل معنا 010589452',
      locationCoords: LatLng(30.4657689, 31.6176988),
      image: 'https://www.almowaten.net/wp-content/uploads/2018/10/DqdmWM2X4AI1Ecs.jpg '
  ),
  Post(
      name: 'ناجي احمد ',
      dayLost: '25/10/2018',
      description:
      'متغيبه عن المنزل من حوالي شهر اللي يجده يرجي التواصل معنا 010589452',
      locationCoords: LatLng(30.4657619, 31.6176958),
      image: "https://scontent-hbe1-1.xx.fbcdn.net/v/t1.0-9/12376685_1555976421366646_6320475106318338222_n.jpg?_nc_cat=100&_nc_sid=cdbe9c&_nc_ohc=lEzGCh_fFuAAX-Fsftt&_nc_ht=scontent-hbe1-1.xx&oh=8ef01b8389ea184dcf655baffe386a19&oe=5F503D08" ),
  Post(
      name: 'سلمي احمد ',
      dayLost: '25/10/2018',
      description:
      'متغيبه عن المنزل من حوالي شهر اللي يجده يرجي التواصل معنا 010589452',
      locationCoords: LatLng(30.4657619, 31.6176958),
      image: "https://scontent-hbe1-1.xx.fbcdn.net/v/t1.0-9/117221201_2718134838468564_4665739940899890091_n.jpg?_nc_cat=110&_nc_sid=b9115d&_nc_ohc=9sh2DjibbGkAX_vx5lR&_nc_oc=AQmF2l7WmVTVfB7WRqy7CWzF6YejfmiogNSKgIlsHmuHOU-6Cepa_V_pVYV9xWDLB_o&_nc_ht=scontent-hbe1-1.xx&oh=fd8a9da88d11306cc646db47456fe1d5&oe=5F535459" ),
  Post(
      name: 'مريم سعيد',
      dayLost: '25/10/2018',
      description:
      'متغيبه عن المنزل من حوالي شهر اللي يجده يرجي التواصل معنا 010589452',
      locationCoords: LatLng(30.5640186,31.4817644),
      image: "https://scontent-hbe1-1.xx.fbcdn.net/v/t1.0-9/117405211_1120518318344693_508622417597740531_o.jpg?_nc_cat=106&_nc_sid=825194&_nc_ohc=clHllaS_pvIAX9I4Z3-&_nc_ht=scontent-hbe1-1.xx&oh=1b460159c24f36eace5fdaaedc1b67d6&oe=5F512C50" ),
  Post(
      name: 'مجدي السيد ',
      dayLost: '25/10/2018',
      description:
      '  مفقود ولم يتم العثور عليه حتي الان',
      locationCoords: LatLng(30.5872567,31.5231561),
      image: 'https://scontent-hbe1-1.xx.fbcdn.net/v/t1.0-9/117128463_1199244993801425_1034411898969261668_n.jpg?_nc_cat=103&_nc_sid=8bfeb9&_nc_ohc=WY5g-W0by58AX8tNUSo&_nc_ht=scontent-hbe1-1.xx&oh=fa26a2d003a4028e8f6dd1c781fb30b1&oe=5F509D22' ),
  Post(
      name: 'احمد خطاب',
      dayLost: '2/7/2020',
      description:
      'متغيب  عن المنزل من حوالي شهر اللي يجده يرجي التواصل معنا 010589452',
      locationCoords: LatLng(30.5866306,31.5243455),
      image: 'https://scontent-hbe1-1.xx.fbcdn.net/v/t1.0-9/106908197_935552893560814_7533957823495882142_o.jpg?_nc_cat=108&_nc_sid=09cbfe&_nc_ohc=9uYmhg3NfRAAX83hlt1&_nc_ht=scontent-hbe1-1.xx&oh=8dd2fa38b68441bfccaceb90d24587d4&oe=5F51BB35'
  ),
  // Post(
  //     name: 'محمد احمد',
  //     dayLost: '15/1/2020',
  //     description:
  //     'هذا الشخص موجود في هذا المكان  من يوم 21/11 ولو يتم الوصول الي اهله ',
  //     locationCoords: LatLng(30.5857619, 31.5076958),
  //     image: 'https://scontent-hbe1-1.xx.fbcdn.net/v/t1.0-9/s960x960/82310982_2514986192104493_6697971579369816064_o.jpg?_nc_cat=103&_nc_sid=85a577&_nc_ohc=29LldPb6MF8AX_2Z8Qq&_nc_ht=scontent-hbe1-1.xx&_nc_tp=7&oh=c676d00e669c7ca3aa1ba8d08740902f&oe=5EFA4DFE'
  // ),
  // Post(
  //     name: 'احمد علي',
  //     dayLost: '10/10/214',
  //     description:
  //     'هذا الشخص موجود في هذا المكان  من يوم 21/11 ولو يتم الوصول الي اهله ',
  //     locationCoords: LatLng(30.4857619, 31.6076958),
  //     image: 'https://scontent-hbe1-1.xx.fbcdn.net/v/t1.0-9/85226165_181663259913865_1193111064078712832_n.jpg?_nc_cat=105&_nc_sid=a61e81&_nc_ohc=zi-biOroIvsAX-x5hzV&_nc_ht=scontent-hbe1-1.xx&oh=0c7c0f0d158e464b124ddad8d20d9929&oe=5EBFC882'
  // ),
  // Post(
  //     name: 'محمود العدروسي',
  //     dayLost: '12/12/2019',
  //     description:
  //     ' الشخص ده موجود عند المسجد واللي يتعرف عليه ممكن يكامنا علي الرقم ده 01552344879.',
  //     locationCoords: LatLng(30.5257619, 31.5976958),
  //     image:"https://scontent-hbe1-1.xx.fbcdn.net/v/t1.0-9/p720x720/78235464_2443125705952187_3410169784954781696_o.jpg?_nc_cat=103&_nc_sid=a61e81&_nc_ohc=jQa_Y0SGoMEAX-Xpm5h&_nc_ht=scontent-hbe1-1.xx&_nc_tp=6&oh=ffe055324c4c8c6334702e3e15159d29&oe=5EFD104B"),
  // Post(
  //     name: 'سلمي احمد ',
  //     dayLost: '25/10/2018',
  //     description:
  //     'متغيبه عن المنزل من حوالي شهر اللي يجده يرجي التواصل معنا 010589452',
  //     locationCoords: LatLng(30.4657619, 31.6176958),
  //     image: 'https://scontent-hbe1-1.xx.fbcdn.net/v/t1.0-9/85218090_2512628719001885_387219386525548544_n.jpg?_nc_cat=108&_nc_sid=a61e81&_nc_ohc=ppn1I6EaCTMAX_oKZON&_nc_ht=scontent-hbe1-1.xx&oh=50f345a9828017889420b68538638bfd&oe=5EFB38C3'
  // ),

];
