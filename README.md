# counter_7

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

# Jawaban dari pertanyaan yang telah diberikan (Tugas 7)

### 1. Jelaskan apa yang dimaksud dengan *stateless widget* dan *stateful widget* dan jelaskan perbedaan dari keduanya
- Stateless widget : Widget yang memiliki keadaan (state) yang tidak "berubah" ketika diberikan interaksi oleh user. Nilai dari stateless widget sendiri selalu mengikuti parent yang dimilikinya.
- Stateful widget : Berkebalikan dengan stateless widget, stateful widget adalah widget yang dapat "berubah" ketika diberikan interaksi oleh user. Stateful dapat menyimpan state dirinya untuk kebutuhan program, seperti perubahan nilai dan tampilan widget.
- Berdasarkan definisi keduanya, perbedaan yang mendasar adalah perilaku dari kedua widget ketika diberikan interaksi oleh user.
- Contoh pada program, terdapat pada file main.dart. MyApp yang mengandung header & judul web = Stateless, sedangkan MyHomePage yang mengandung isi program = Stateful.

### 2. Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
Berdasarkan [situs dokumentasi flutter](https://docs.flutter.dev/development/ui/widgets/) dan pemahaman widget yang saya miliki, widget yang saya gunakan adalah:
- Text : Tulisan dengan satu style. Digunakan untuk merepresentasikan tulisan
- Icon : Material yang menampilkan logo. Digunakan untuk visualisasi logo
- Column : Layout untuk peletakan child widget sesuai arah vertikal (kolom). Digunakan untuk mengontrol peletakan child yang dimilikinya.
- Row : Layout untuk peletakan child widget sesuai arah horizontal (baris). Digunakan untuk mengontrol peletakan child yang dimilikinya.
- Center : Layout untuk membuat peletakan child menjadi di tengah. Digunakan untuk mengontrol peletakan child yang dimilikinya.
- Padding : Widget yang memberikan lapisan kosong dengan nilai tertentu (paddding) di sekitaran child dari padding. Digunakan untuk mengontrol peletakan child yang dimilikinya.
- Floating Action Button : Widget representasi tombol. Umumnya, digunakan sebagai pemicu suatu aksi. 

### 3. Apa fungsi dari **setState()**? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
- setState() adalah fungsi untuk melakukan build ulang pada state terkait. Pada konteks program kali ini, nilai yang akan berubah adalah angka counter dan text genap/ganjil-nya counter tersebut.
- Variabel yang terdampak ketika setState() dilakukan adalah _counter. Variabel _counter yang berubah akan memberi dampak pula pada Text di body karena terdapat conditional yang menggunakan _counter sebagai kondisinya.

### 4. Jelaskan perbedaan antara *const* dengan *final*.
- Nilai dari const harus diketahui ketika compile time. Contohnya : const age = 19
- Nilai dari final harus diketahui ketika runtime. Contohnya : final age = getAge()
- Nilai dari keduanya tidak dapat berubah setelah diinisialisasi

### 5. Jelaskan bagaimana cara kamu mengimplementasikan *checklist* di atas.
- Melakukan flutter create untuk pembuatan aplikasi counter_7
- Mengubah title dari MyHomePage menjadi "program counter"
- Menambahkan fungsi decrementCounter sebagai kebalikan dari incrementCounter, serta menambahkan logika bahwa variabel _counter tidak dapat menjadi negatif dengan penerapan conditional
- Mengubah text pada body sehingga dapat berubah-ubah menyesuaikan ganjil/genap dari variabel _counter menggunakan conditional
- Membuat tombol yang berada di pojok kiri dan kanan bawah menggunakan campuran Padding dan Row terhadap Floating Action Button
- Untuk mengimplementasikan bonus, arah Row diubah dari kanan ke kiri sehingga kemunculan pertama adalah tombol (+), lalu (-)
- Berikan conditional untuk munculnya tombol (-)

# Jawaban dari pertanyaan yang telah diberikan (Tugas 8)

### 1. Jelaskan perbedaan Navigator.push dan Navigator.pushReplacement
- Navigator.push : Meletakkan halaman ke tumpukkan kumpulan layar
- Navigator.pushReplacement : Berpindah ke halaman baru yang telah diinisiasikan

### 2. Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya
- Drawer : Navbar
- ListTile : Isi navbar
- Form : Formulir penerima input user
- SingleChildScrollView : Scroller
- TextFormField : Input yang diketik
- DropdownButtonFormField : Input dengan dropdown yang dapat diberi validator
- Container : Penampung umum
- Card : Card-card pada tampilan budget
- SizedBox : Box pada card yang sudah fixed ukurannya

### 3. Sebutkan jenis-jenis event yang ada pada Flutter (contoh: onPressed)
- onPressed : Setelah peng-klik-an tombol selesai
- onSaved : Setelah user menyimpan
- onChanged : Ketika perubahan terjadi
- onTap : Sesaat setelah user meng-klik tombol

### 4. Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter
Navigator menggunakan implementasi stack di dalamnya. Push pop yang dilakukan melalui navigator akan mengubah isi dari stack. Halaman yang ditampilkan pada aplikasi Flutter adalah halaman yang terletak di paling atas. 

### 5. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas
- Membuat drawer yang menyambungkan main.dart, add_budget.dart, dan show_budget.dart
- Membuat budget.dart yang memuat class Budget dan BudgetList
- Membuat halaman baru, yaitu form yang menerima input judul, nominal, dan jenis sesuai ketentuan soal. Tidak lupa menambahkan tombol penyimpanan
- Membuat halaman baru, yaitu menampilkan isi dari Budget yang telah disimpan

# Jawaban dari pertanyaan yang telah diberikan (Tugas 9)

### 1. Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?
Bisa. Meskipun begitu, dikarenakan oleh tidak adanya struktur dari class yang jelas, penempatan data JSON bisa saja tidak sesuai dengan yang diinginkan. Hal tersebut tidak lebih baik karena terdapat kemungkinan logic error yang terjadi.

### 2. Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
- FutureBuilder : Menampilkan data dari JSON yang AKAN ditangkap
- ListView : Menampilkan data dari JSON yang SUDAH ditangkap

### 3. Jelaskan mekanisme pengambilan data dari json hingga dapat ditampilkan pada Flutter.
- Mengatur dependensi http
- Membuat model penampung data dari JSON
- Dengan metode GET, JSON akan ditangkap dan dibuat menjadi objek dari model yang telah dibuat
- Menampilkan data dibantu dengan FutureBuilder

### 4. Jelaskan bagaimana cara kamu mengimplementasikan *checklist* di atas.
- Menambahkan drawer show_watchlist.dart
- Membuat watchlist.dart yang memuat class Watchlist
- Mengatur dependensi http
- Membuat fungsi fetch atau penangkap JSON
- Menampilkan data-data tersebut sesuai judul dari Watchlist yang dimiliki
- Sambungkan tiap Watchlist ke detail
- Membuat halaman baru, yaitu detail dari film yang berisi ketentuan soal
- Tambahkan tombol kembali dengan Navigator.pop