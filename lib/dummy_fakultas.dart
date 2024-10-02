class Faculty {
  String name;
  int numberOfMajors;
  int numberOfStudents;
  String imageAsset;
  List<String> imageUrls;

  Faculty({
    required this.name,
    required this.numberOfMajors,
    required this.numberOfStudents,
    required this.imageAsset,
    required this.imageUrls,
  });
}

var facultyList = [
  Faculty(
    name: 'Fakultas Teknik',
    numberOfMajors: 6,
    numberOfStudents: 2000,
    imageAsset: 'images/fakultas-teknik.jpg',
    imageUrls: [
      'https://upnyk.ac.id/images/fakultas/teknik1.jpg',
      'https://upnyk.ac.id/images/fakultas/teknik2.jpg',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAqyz5nAdz-E95nuuQsQc1jKL_H42TUqsqXg&s',
    ],
  ),
  Faculty(
    name: 'Fakultas Ekonomi dan Bisnis',
    numberOfMajors: 5,
    numberOfStudents: 1500,
    imageAsset: 'images/fakultas-ekonomi.jpg',
    imageUrls: [
      'https://upnyk.ac.id/images/fakultas/ekonomi1.jpg',
      'https://upnyk.ac.id/images/fakultas/ekonomi2.jpg',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAqyz5nAdz-E95nuuQsQc1jKL_H42TUqsqXg&s',
    ],
  ),
  Faculty(
    name: 'Fakultas Ilmu Sosial dan Ilmu Politik',
    numberOfMajors: 4,
    numberOfStudents: 1200,
    imageAsset: 'images/fakultas-fisip.jpg',
    imageUrls: [
      'https://upnyk.ac.id/images/fakultas/fisip1.jpg',
      'https://upnyk.ac.id/images/fakultas/fisip2.jpg',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAqyz5nAdz-E95nuuQsQc1jKL_H42TUqsqXg&s',
    ],
  ),
  Faculty(
    name: 'Fakultas Pertanian',
    numberOfMajors: 3,
    numberOfStudents: 800,
    imageAsset: 'images/fakultas-pertanian.jpg',
    imageUrls: [
      'https://upnyk.ac.id/images/fakultas/pertanian1.jpg',
      'https://upnyk.ac.id/images/fakultas/pertanian2.jpg',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAqyz5nAdz-E95nuuQsQc1jKL_H42TUqsqXg&s',
    ],
  ),
  Faculty(
    name: 'Fakultas Hukum',
    numberOfMajors: 1,
    numberOfStudents: 600,
    imageAsset: 'images/fakultas-hukum.jpg',
    imageUrls: [
      'https://upnyk.ac.id/images/fakultas/hukum1.jpg',
      'https://upnyk.ac.id/images/fakultas/hukum2.jpg',
      'https://pict.sindonews.net/dyn/850/pena/news/2023/11/15/211/1252037/awas-salah-jurusan-ini-beda-jurusan-ilmu-hukum-dan-jurusan-hukum-yang-perlu-diketahui-vuw.jpg',
    ],
  ),
  Faculty(
    name: 'Fakultas Teknologi Mineral',
    numberOfMajors: 5,
    numberOfStudents: 3000,
    imageAsset: 'images/fakultas-ftm.jpg',
    imageUrls: [
      'https://upnyk.ac.id/images/fakultas/ftm1.jpg',
      'https://upnyk.ac.id/images/fakultas/ftm2.jpg',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAqyz5nAdz-E95nuuQsQc1jKL_H42TUqsqXg&s',
    ],
  ),
  Faculty(
    name: 'Fakultas Perikanan',
    numberOfMajors: 3,
    numberOfStudents: 1000,
    imageAsset: 'images/fakultas-ikan.jpg',
    imageUrls: [
      'https://upnyk.ac.id/images/fakultas/ikan1.jpg',
      'https://upnyk.ac.id/images/fakultas/ikan2.jpg',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAqyz5nAdz-E95nuuQsQc1jKL_H42TUqsqXg&s',
    ],
  ),
];
