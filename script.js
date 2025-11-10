// // //Melakukan seleksi terhadap id
// // const judul = document.getElementById('judul');
// // //Mengubah style 
// // judul.style.color = 'red';
// // judul.style.backgroundColor = 'grey';
// // judul.innerHTML = 'ganti teks';

// //Melakukan seleksi terhadap tag name
// const p = document.getElementsByTagName('p');
// //Melakaukan perubahan terhadap tag(terjadi error)
// // p.style.backgroundColor = 'lightBlue';
// //Menggunakan cara 1: menggunakan index
// p[0].style.backgroundColor = 'lightBlue'
// //cara 2: jika ingin mengubah semua tag p, dapat dilakukan perulangan
// for(let i=0; i< p.length; i++){
//     p[i].style.backgroundColor = 'lightBlue';
// }
// //Ambil elemen dengan tag h1
// // const h1 = document.getElementsByTagName('h1');
// // mengembalikan nilainya menjadi elemen tunggal => mengakses menggunakan index
// const h1 = document.getElementsByTagName('h1')[0];

// //Melakukamn seleksi terhadap class
// const p1 = document.getElementsByClassName('p1');

// //Melakukan seleksi menggunakan querySelector()
// const p4 = document.querySelector('#b p');
// p4.style.color='green';
// p4.style.fontSize = '30px';

// const li2 =document.querySelector('section#b ul li:nth-child(2)');
// li2.style.backgroundColor = 'orange'
// //jika ingin menyeleksi seluruh np
// // const p = document.querySelector('p');
// // p.innerHTML='merubah teks';

//Manipulasi element .innerHTML (mengubah judul)
// const judul = document.getElementById('judul');
// judul.innerHTML = '<em>Diubah Dengan JS</em>'

// //manipulasi  dengan inner html

// const sectionA = document.getElementById('a');
// const secA = document.querySelector('section#a');

// sectionA.innerHTML = '<div><p> ini bagian yang diubah</p></div>'

// Manipulasi dengan innerHTML menggunakan querySelector
// const judul = document.querySelector('#judul');
// judul.innerHTML = '<em>Diubah dengan JS</em>';

// const sectionA = document.querySelector('section#a');
// sectionA.innerHTML = '<div><p>Ini bagian yang diubah</p></div>';

//manipulasi atribut elemen
// const a = document.querySelector('section#a a');

// buat elemen baru
// const liBaru = document.createElement('li');
// const textliBaru = document.createTextNode('Item Baru');
// liBaru.appendChild(textliBaru);

//percobaan 1
//Manipulasi Node
//buat elemen baru
const pBaru = document.createElement('p');
//buat text
const textPBaru = document.createTextNode('paragraf baru');
//simpan tulisan ke dalam paragraf
pBaru.appendChild(textPBaru);
//simpan PBaru di akhir sectionA
//seleksi elemennya dahulu
const sectionA = document.getElementById('a');
sectionA.appendChild(pBaru);

//percobaan 2
// //melakukan penyisipan, harus tau alamat dari parent li tsb
// const ul = document.querySelector('section#b ul')
// //mencari alamat setelahnya
// const li2 = ul.querySelector('li:nth-child(2)');

// //penyisipan elemen baru
// ul.insertBefore(liBaru,li2);

//percobaan 3
//menghapus elemen, misal elemen link
const secA = document.getElementById('a');
const link = document.getElementsByTagName('a')[0];
//hapus
secA.removeChild(link);

//percobaan 4
// Mengubah / mengganti elemen yang lama dengan yang baru
// Tentukan posisi parentnya
const sectionB = document.getElementById('b');
const p4 = sectionB.querySelector('p');

// Buat elemen baru yang akan menggantikan yang lama
const h2Baru = document.createElement('h2');
const textH2Baru = document.createTextNode('Judul Baru');

// Merangkai elemen baru
h2Baru.appendChild(textH2Baru);

// Mengubah
sectionB.replaceChild(h2Baru, p4);





