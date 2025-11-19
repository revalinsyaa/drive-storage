// Menyimpan data kontak menggunakan array
const contacts = [];

// Referensi elemen HTML
const contactForm = document.getElementById('contactForm');
const contactList = document.getElementById('contactList');

// Fungsi untuk menambahkan kontak
contactForm.addEventListener('submit', function (event) {
  event.preventDefault();

  const name = document.getElementById('name').value;
  const phone = document.getElementById('phone').value;
  const photoFile = document.getElementById('photo').files[0];

  const reader = new FileReader();
  reader.onload = function (event) {
    const photo = event.target.result; // URL foto setelah diunggah

    const contact = { name, phone, photo };
    contacts.push(contact);

    displayContacts();
    contactForm.reset();
  };

  if (photoFile) {
    reader.readAsDataURL(photoFile); // Konversi file gambar ke URL
  }
});

// Fungsi untuk menampilkan kontak dalam bentuk card
function displayContacts() {
  contactList.innerHTML = ''; // Bersihkan daftar kontak

  contacts.forEach((contact, index) => {
    const card = document.createElement('div');
    card.className = 'card';

    const img = document.createElement('img');
    img.src = contact.photo;
    img.alt = contact.name;

    const details = document.createElement('div');
    details.innerHTML = `<strong>${contact.name}</strong><br>${contact.phone}`;

    const deleteButton = document.createElement('button');
    deleteButton.textContent = 'Hapus';
    deleteButton.addEventListener('click', () => {
      contacts.splice(index, 1); // Hapus kontak dari array
      displayContacts(); // Perbarui tampilan kontak
    });

    card.appendChild(img);
    card.appendChild(details);
    card.appendChild(deleteButton);

    contactList.appendChild(card);
  });
}