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
- Stateless widget : Widget yang memiliki keadaan (state) yang tidak "berubah" ketika diberikan interaksi oleh user
- Stateful widget : Berbalik dengan stateless widget, stateful widget adalah widget yang akan bereaksi ketika diberikan interaksi oleh user
- Berdasarkan definisi keduanya, perbedaan yang mendasar adalah dampak dari kedua widget ketika diberikan interaksi oleh user
- Contoh pada program, terdapat pada file main.dart. MyApp yang mengandung header & judul web = Stateless, sedangkan MyHomePage yang mengandung isi program = Stateful

### 2. Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
Berdasarkan [situs dokumentasi flutter](https://docs.flutter.dev/development/ui/widgets/) dan pemahaman widget yang saya miliki, widget yang saya gunakan adalah:
- Text : Tulisan dengan satu style
- Icon : Material yang menampilkan logo
- Column : Layout untuk peletakan child widget sesuai arah vertikal (kolom)
- Row : Layout untuk peletakan child widget sesuai arah horizontal (baris)
- Center : Layout untuk membuat peletakan child menjadi di tengah
- Padding : Widget yang memberikan area kosong dengan nilai tertentu (paddding) pada child di dalamnya

### 3. Apa fungsi dari **setState()**? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
- setState() adalah melakukan build ulang pada state terkait. Pada konteks program ini, nilai yang akan berubah adalah angka counter dan text genap/ganjil-nya counter tersebut.
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