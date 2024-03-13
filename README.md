# PENJELASAN DESAIN PROGRAM

Tema dari program ini adalah semacam perkenalan grup musik beserta anggotanya. Implementasi OOP dalam program ini menggunakan dua kelas utama, yaitu kelas Member dan kelas BoyGroup.

- Kelas Member merepresentasikan anggota dari grup musik. Setiap anggota memiliki nama dan posisi dalam grup. Di dalam kelas Member, didefinisikan atribut untuk menyimpan nama dan posisi anggota serta ada setter dan getter untuk masing-masing atribut.
- Kelas BoyGroup merepresentasikan sebuah grup musik, seperti SEVENTEEN. Grup ini memiliki nama dan daftar anggotanya. Di dalam kelas BoyGroup, didefinisikan atribut untuk menyimpan nama grup dan daftar anggota serta ada setter dan getter untuk nama grup, sedangkan untuk daftar anggota hanya ada getter.

Selain itu, ada implementasi Asynchronous dengan menggunakan future method addMembers() async dalam kelas BoyGroup yang digunakan untuk mengambil data anggota grup secara asynchronous. Method ini menggunakan Future.delayed untuk mensimulasikan proses asynchronous dengan menunggu selama 2 detik sebelum mengembalikan daftar anggota grup. 

Dalam fungsi main menggunakan await async untuk menunggu hasil operasi asynchronous saat memanggil method addMembers(). Setelah mendapatkan hasilnya, maka print informasi tentang grup dan setiap anggotanya.

# DOKUMENTASI
![output](https://github.com/archieffa/2207308_SYIFA-AZZAHRA_TP1PROVIS/assets/121290445/f3ef425c-395d-4bfa-9c87-33a8e8d8e926)
