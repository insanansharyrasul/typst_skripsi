#import "lib/format_ppta.typ": *

// -- GLOBAL VARIABLE

// Please fill this with title case like this (not capslock!)
#let judul_indonesia = "Judul Karya Ilmiah Maksimum Tiga Baris, Lima Belas Kata Tidak Termasuk Kata Depan Dan Kata Sambung"
#let judul_english = "Title of Thesis (skripsi)"
#let nim = "NXXXXXXXXXX"
#let nama-penulis = "NAMA MAHASISWA"
#let program-studi = "NAMA PROGRAM STUDI"
#let fakultas = "Fakultas/Sekolah"
#let pembimbing-id = ("NAMA PEMBIMBING 1", "NAMA PEMBIMBING 2")
#let pembimbing-en = ("NAME of 1st SUPERVISOR", "NAME of 2nd SUPERVISOR")

// Deklarasi pemakaian kecerdasan buatan (wajib di halaman pernyataan)
#let ai-pakai = true
#let ai-alat = "NAMA ALAT/LAYANAN"
#let ai-alasan = "ALASAN"

// Watermark IPB untuk dokumen digital (opacity 50%, sisi kiri tiap lembar).
// Unduh panduan: https://ipb.link/pengesahan-tugasakhir
// Contoh: #let watermark = image("assets/watermark-ipb.png", width: 5cm)
#let watermark = none

// The date time of your paper is made
#let date = datetime(year: 2026, month: 6, day: 30)
#let bulan = bulan-id.at(date.month() - 1)
#let gelar = "Sarjana"





#show: ppta.with(
  watermark: watermark,
)

#halaman-sampul(
  judul: judul_indonesia,
  nama: nama-penulis,
  nim: nim,
  program-studi: program-studi,
  fakultas: fakultas,
  tahun: date.year(),
  logo: image("assets/logo-ipb.png", width: 2.5cm),
)

#halaman-judul(
  judul: judul_indonesia,
  nama: nama-penulis,
  program-studi: program-studi,
  fakultas: fakultas,
  tahun: date.year(),
  gelar: gelar,
)

#halaman-pernyataan(
  nama-penulis: nama-penulis,
  nim: nim,
  judul: judul_indonesia,
  tanggal: [Bogor, #bulan #date.year()],
  tahun: date.year(),
  gelar: gelar,
  ai-pakai: ai-pakai,
  ai-alat: ai-alat,
  ai-alasan: ai-alasan,
)

#show: bagian-awal
#sorotan(
  nama: nama-penulis,
  judul: judul_indonesia,
  pembimbing: pembimbing-id,
  isi: [
    1. Penelitian ini membahas [masukkan topik utama], dengan tujuan untuk [nyatakan tujuan secara jelas dan ringkas].
    2. Penelitian ini menggunakan [sebutkan metode] untuk menganalisis/menginvestigasi [sebutkan objek kajian].
    3. Hasil penelitian menunjukkan bahwa [ringkas temuan utama dengan tepat].
    4. Temuan ini memberikan kontribusi terhadap [bidang/implikasi], serta menawarkan wawasan baru mengenai [aspek spesifik].
    5. Tugas akhir ini menunjukkan pentingnya [tekankan signifikansi], dan menyarankan potensi penerapan pada [konteks relevan].
  ],
)

#highlights(
  nama: nama-penulis,
  judul: judul_english,
  pembimbing: pembimbing-en,
  isi: [
    1. This study addresses [insert key topic], aiming to [state objective clearly and concisely].
    2. The research employs [mention methodology] to analyze/investigate [mention subject of study].
    3. Results indicate that [summarize key findings with precision].
    4. The findings contribute to [mention the field/implications], offering new insights
    into [specific aspect].
    5. This final assignment demonstrates the importance of [highlight significance],
    suggesting potential applications in [relevant context].
  ],
)

#abstrak-grafis(
  judul: "Judul Abstrak Grafis Maksimum Enam Kata,\nTidak Termasuk Kata Depan dan Kata Sambung",
  gambar: image("assets/gambar_abstrak.png", width: 60%),
)

#graphical-abstract(
  judul: "Graphical Abstract Title Maximum Six Words,\nExcluding Prepositions and Conjunctions",
  gambar: image("assets/gambar_abstrak.png", width: 60%),
)

#abstrak(
  nama: nama-penulis,
  judul: judul_indonesia,
  pembimbing: pembimbing-id,
  isi: [
    Narasi disusun dalam satu paragraf, isi tidak lebih dari 200 kata, dan ditulis dalam satu halaman untuk abstrak/abstract. Abstrak memuat latar belakang permasalahan (tentatif), tujuan tugas akhir, metode, hasil dengan penekanan pada temuan baru, dan implikasi yang disajikan secara informatif dan faktual. Tidak diperbolehkan mengacu pustaka, gambar, dan tabel. Singkatan hanya dikenalkan jika masih digunakan lagi dalam bagian lain dari abstrak/abstract. Abstrak dalam bahasa Inggris ditulis dengan huruf miring (italic).
  ],
  kata-kunci: [ditulis dalam bahasa Indonesia, disusun berdasarkan abjad, maksimum lima kata atau frasa ini],
)

#abstract-en(
  nama: nama-penulis,
  judul: judul_english,
  pembimbing: pembimbing-en,
  isi: [
    Narrative is written in a single paragraph, no more than 200 words, and
    presented in one page for the abstract and _abstract_. The abstract contains
    the background of the problem (tentative), research objectives, methods,
    research results with emphasis on new findings, and implications presented
    in an informative and factual manner. References, figures, and tables are
    not permitted. Abbreviations are only introduced if used again in other
    parts of the Abstract/_Abstract_.
  ],
  keywords: [written in English, arranged alphabetically, maximum five words or phrases],
)

#halaman-penguji(
  penguji: ("Nama lengkap dan gelar", "Nama lengkap dan gelar"),
)



#lembar-pengesahan(
  judul: judul_indonesia,
  nama-penulis: nama-penulis,
  nim: nim,
  program-studi: program-studi,
  pembimbing: ("Nama lengkap dan gelar", "Nama lengkap dan gelar"),
  ketua: "Nama lengkap dan gelar",
  ketua-label: "Ketua Program Studi:",
  ketua-nip: "..............................",
  dekan: "Nama lengkap dan gelar",
  dekan-label: "Ketua Departemen/Wakil Dekan Bidang Akademik dan Kemahasiswaan:",
  dekan-nip: "..............................",
  tanggal-ujian: [#bulan #date.year()],
  tanggal-lulus: [#bulan #date.year()],
)

#prakata[
  Puji dan syukur penulis panjatkan kepada Tuhan Yang Maha Esa atas segala
  karunia-Nya sehingga skripsi ini berhasil diselesaikan. Judul dalam penelitian yang
  dilaksanakan sejak bulan .... 20XX sampai bulan .... 20XX ini ialah ...........

  Terima kasih penulis ucapkan kepada para pembimbing, ... (nama lengkap dan gelar)
  yang telah membimbing dan banyak memberi saran. Ucapan terima kasih juga
  disampaikan kepada pembimbing akademik, moderator seminar, dan penguji luar komisi
  pembimbing. Penghargaan penulis sampaikan kepada ... (nama lengkap
  dan gelar dari lembaga/instansi/perusahaan yang telah memberi izin penelitian),
  (nama dan gelar atau bapak/ibu jika tidak ada gelar) beserta staf Laboratorium
  ..... dan seterusnya .... yang telah membantu selama pengumpulan data. Ungkapan
  terima kasih juga disampaikan kepada ayah, ibu, serta seluruh keluarga
  yang telah memberikan dukungan, doa, dan kasih sayangnya .... dan seterusnya.

  Semoga tugas akhir ini bermanfaat bagi pihak yang membutuhkan dan bagi
  kemajuan ilmu pengetahuan.

  Catatan: Ucapan terima kasih diberikan hanya kepada pihak-pihak yang secara
  langsung berkontribusi terhadap pengumpulan data dan penulisan tugas akhir.

  #v(1em)
  #align(right)[
    Bogor, Bulan Tahun
    #v(2em)
    Nama penulis
  ]
]

#daftar-isi()
#daftar-tabel()    // hapus baris ini jika tabel ≤ 1
#daftar-gambar()   // hapus baris ini jika gambar ≤ 1
#daftar-lampiran() // hapus baris ini jika tidak ada lampiran

// ── Bagian Isi (nomor halaman Arab: 1, 2, 3, …) ────────
#show: bagian-isi

= PENDAHULUAN

Bab pendahuluan memuat latar belakang atau justifikasi dipilihnya topik
karya ilmiah tugas akhir, perumusan atau pendekatan penyelesaian masalah, tujuan,
manfaat, dan ruang lingkup. Di dalam pendahuluan dijelaskan perumusan atau
pendekatan penyelesaian masalah dan alasan pemilihan metode yang digunakan.
Merujuk pada proses perumusan masalah tugas akhir, bagian Kerangka Pikir dan
Hipotesis dapat ditulis di sini, tidak ditulis dalam bab tersendiri. Untuk membantu
mengikuti alur pikir secara skematis, dapat juga dibuat bagan alir kerangka proses
dan rumusan masalah serta pencapaian tujuan tugas akhir.

== Latar Belakang

Latar belakang berisi penjelasan alasan memilih topik dan pentingnya kajian
tugas akhir itu dilakukan berdasarkan alasan teoretis dan praktis, serta bagaimana
masalah tersebut dapat diatasi dan manfaat dari penyelesaian masalah. Paparan
tidak berbelit-belit atau dimulai dengan latar belakang yang umum. Pernyataan
mengenai apa yang diteliti dan apa yang diharapkan diawali dengan pemikiran
logis. Pemaparan latar belakang harus sistematis, logis, serta disertai data,
informasi, dan telaah pustaka dari sumber primer, mutakhir, dan relevan yang dapat
dipertanggungjawabkan secara ilmiah. Masalah penelitian yang lebih spesifik
dirumuskan pada bagian rumusan masalah.

== Rumusan Masalah

Rumusan masalah merupakan pernyataan ringkas mengenai masalah yang
akan diselesaikan dan cara mengatasinya untuk menjawab tujuan tugas akhir.
Masalah yang diteliti dapat dirumuskan karena berbagai sebab, seperti adanya
kesenjangan (gap), tantangan, kesangsian, ketidakjelasan, dan keingintahuan secara
akademik yang berkaitan dengan fenomena alam, sosial, dan ekonomi. Dalam
pernyataan ringkas tersebut harus tercakup pendekatan yang digunakan dalam
perumusan masalah

== Tujuan

Pernyataan tujuan tugas akhir ialah pernyataan singkat dan jelas tentang
tujuan yang akan dicapai sebagai upaya pemecahan masalah maupun memahami
gejala (fenomena) yang dijelaskan dalam latar belakang. Tujuan merupakan
pemandu atau arah untuk merencanakan dan melaksanakan kajian tugas akhir.
Tujuan penelitian ditulis dengan memilih kata kerja yang hasilnya dapat diukur dan
dilihat, seperti: menguraikan, menerangkan, membuktikan, menjajaki, menguji,
membuktikan, atau menerapkan suatu gejala, konsep atau dugaan, atau bahkan
membuat suatu prototipe. Jangan menggunakan kata kerja mengetahui atau
memahami. Masalah dan tujuan penelitian harus terkait dan konsisten.

== Manfaat

Manfaat merupakan dampak positif (kegunaan) dari hasil karya ilmiah tugas
akhir bagi bidang ipteks, pembangunan, dan masyarakat. Manfaat utama dari hasil
tugas akhir adalah menambah khasanah ilmu pengetahuan dalam bentuk pustaka
sebagai sumber acuan/referensi untuk pengembangan ipteks, para pengambil
keputusan baik di industri maupun pemerintah dan lembaga untuk menyusun
kebijakan baru, serta masyarakat umum. Manfaat dinyatakan dengan kata kerja
yang lugas dan logis.

== Ruang Lingkup (opsional)

Tugas akhir sering kali dihadapkan pada keterbatasan data, dana, waktu,
metode, bahkan teori. Oleh karena itu, tugas akhir perlu dengan tegas menunjukkan
ruang lingkup dengan mempertimbangkan keterbatasan tersebut.

== Hipotesis (opsional)

Hipotesis dapat ditulis secara eksplisit atau tersirat sesuai bidang ipteks yang
relevan. Hipotesis dapat menjadi bagian dari pendahuluan (untuk bidang sains,
teknik, dan kesehatan), atau merupakan bagian akhir dari tinjauan pustaka
(untuk bidang sosial, ekonomi, dan humaniora). (Opsional; hapus subbab ini jika
tidak dipakai.)


= TINJAUAN PUSTAKA (OPSIONAL)

Tinjauan pustaka berisi telaah/ulasan atas pustaka-pustaka yang relevan
dengan topik tugas akhir untuk mendapatkan informasi yang lengkap terkait
kemajuan ipteks yang telah diketahui sampai yang terkini (state of the art). Hal ini
untuk meyakinkan pembaca bahwa tugas akhir yang dilaporkan adalah pengetahuan
baru yang lebih maju dari pengetahuan sebelumnya. Pustaka yang digunakan dalam
bab ini ialah acuan primer, diutamakan artikel jurnal dan paten yang relevan dengan
bidang yang diteliti, terkini, dan asli. Pustaka acuan harus kredibel, dan mutakhir
(setidaknya 80% dalam 10 tahun terakhir). Diktat dan buku ajar tidak termasuk
acuan primer. Referensi lama berupa teori umum/mapan tetap dapat
digunakan. Tinjauan pustaka ditulis dengan ketentuan, jumlah halaman bab
tersebut tidak melebihi 10% dari total halaman bagian utama naskah dan tidak
melebihi jumlah halaman Hasil dan Pembahasan. Tinjauan pustaka memuat telaah
singkat, jelas, dan sistematis tentang kerangka teoretis, kerangka pikir, temuan,
postulat-postulat, prinsip, asumsi, dan hasil penelitian yang relevan yang melandasi
topik tugas akhir atau gagasan guna menggali pemahaman mengenai masalah
kajian tugas akhir dan pemecahan masalahnya. Dalam penelitian bidang ilmu sosial
dan ekonomi, tinjauan pustaka menjadi dasar penyusunan kerangka analisis baru
dan hipotesis baru dalam topik karya ilmiah tersebut.

Contoh sumber yang dapat digunakan dalam telaah pustaka meliputi pengelolaan
ruang terbuka biru untuk pengendalian banjir @arifin2023manajemen, metode
co-culture untuk mengkaji metabolit sekunder bakteri laut @aulia2024utilizing,
serta enkapsulasi probiotik @rajam2022encapsulation. Penyusunan judul artikel
ilmiah juga dapat dibandingkan lintas bidang @brett2025titles, sedangkan kajian
platform CBT berbasis avatar dapat menjadi contoh penelitian pada bidang digital
dan kesehatan mental @pezzino2026working.

== Judul Subbab (Kata dalam judul diawali huruf kapital dan dicetak tebal)

Uraian dengan deskripsi untuk judul subbab 1
#bertingkat[
  + ...
  + ...
  + ...
  #bertingkat[
    + ...
    + ...
    + ...
  ]
]
// #figure(
//   caption: [Tingkat kekerasan buah pisang raja pada suhu simpan yang berbeda dan pemberian putresina],
//   kind: table,
//   table(
//     columns: (1fr, auto, auto, auto),
//     align: (left, center, center, center),
//     table.hline(stroke: 0.75pt),
//     table.cell(rowspan: 2)[Perlakuan],
//     table.cell(colspan: 3, align: center)[Kekerasan buah dan kandungan gula pada hari ke-],
//     table.hline(stroke: 0.5pt, start: 1),
//     [0], [7], [14],
//     table.hline(stroke: 0.75pt),
//     table.cell(colspan: 4, align: center)[Kekerasan buah (mm 50 g#super[-1] detik #super[-1])#super[a]],
//     [Suhu Simpan], [], [], [],
//     [#h(1em)15ºC], [9.20a], [13.40a], [11.83a],
//     [#h(1em)28ºC], [10.64a], [11.22a], [80.43b],
//     [Putresina], [], [], [],
//     [#h(1em)Dengan putresina], [12.07a], [13.23a], [11.19a],
//     [#h(1em)Tanpa putresina], [10.76a], [14.41a], [41.12b],
//     table.hline(stroke: 0.75pt),
//     table.cell(colspan: 4)[
//       #set text(size: 10pt)
//       #super[a]Angka-angka pada kolom yang sama yang diikuti oleh huruf yang sama tidak berbeda nyata pada taraf uji 5% (uji selang berganda Duncan).
//     ],
//   ),
// )

=== Judul Sub-subbab (Kata dalam judul diawali huruf kapital dan dicetak tidak tebal)

Berikut adalah contoh uraian dengan deskripsi pada sub-subbab. Pada sub-
subbab ini posisi paragraf lebih menjorok 0,5 cm dari paragraf di
subbab.

== Judul Subbab 2

Berikut adalah contoh uraian dengan deskripsi pada subbab.

== Judul Subbab 3

Berikut adalah contoh uraian dengan deskripsi pada subbab.

#figure(
  caption: [Mikrograf mukosa lambung trenggiling (_Manis javanica_). (A) Seluruh permukaan mukosa lambung trenggiling dilapisi oleh epitel pipih banyak-lapis yang mengalami keratinisasi.],
  image("assets/gambar_1.png", width: 80%),
)


= METODE

Bab ini dapat diawali dengan kerangka pendekatan studi. Metode penelitian dapat
berupa percobaan laboratorium, percobaan lapangan, dan survei lapangan yang
dirancang sesuai dengan tujuan atau jenis penelitian, seperti: eksploratif,
deskriptif, koreksional, kausal, komparatif, eksperimen, tindakan (_action
research_), pemodelan, analisis suatu teori, atau kombinasi dari berbagai jenis
penelitian tersebut. Untuk penelitian yang menggunakan metode kualitatif, jelaskan
pendekatan yang digunakan, proses pengumpulan dan analisis informasi, dan proses
penafsiran hasil penelitian. Maksud dari perincian ini ialah untuk menjamin
keterulangan hasil. Berikut contoh subbab metode penelitian.

== Waktu dan Tempat

== Alat dan Bahan

== Prosedur Kerja

== Analisis Data


= HASIL DAN PEMBAHASAN

Dalam penulisan hasil dan pembahasan dapat dipisah sebagai bab Hasil dan bab
Pembahasan, atau digabung menjadi bab Hasil dan Pembahasan. Pemisahan atau
penggabungan kedua bab ini bergantung pada bidang studi, atau sesuai dengan
arahan pembimbing.

== Hasil

Hasil menampilkan data/temuan dan dapat dibagi dalam beberapa subbab sesuai
dengan tujuan. Data dapat disajikan dengan ilustrasi dalam bentuk Tabel atau
Gambar (peta, denah, foto, diagram). Ilustrasi harus mampu berdiri sendiri,
artinya mudah dipahami pembaca tanpa harus merujuk teks. Tujuannya adalah
membantu pembaca memahami data dan menarik informasi penting dengan cepat
(_storytelling with data_). Semua ilustrasi harus diletakkan sedekat-dekatnya
dengan teks yang menyatakan keberadaannya.

Perujukan pada ilustrasi dinyatakan di dalam paragraf sebelum tabel atau
gambar. Kata “tabel” dan “gambar” diawali dengan huruf kapital bila diikuti
nomor. Nomor tabel atau gambar berurut sesuai dengan urutan kemunculannya
dalam tubuh tulisan. Contohnya adalah sebagai berikut: ... seperti ditunjukkan
pada Gambar 5; ... mendekati bentuk sigmoid (Gambar 5); ... meningkat dengan
pesat (Tabel 3); ...(lihat Lampiran 1).

#figure(
  caption: [Judul tabel biasanya pendek tanpa diakhiri tanda titik#super[a]],
  kind: table,
  [
    #table(
      columns: (1.1fr, 1fr, 1fr, 1fr, 1fr),
      align: (left, center, center, center, center),
      table.hline(stroke: 0.75pt),
      table.cell(rowspan: 2, align: center)[*Judul kolom pertama*],
      table.cell(colspan: 2, align: center)[*Judul kolom*#super[b]],
      table.cell(colspan: 2, align: center)[*Judul kolom*#super[b]],
      table.hline(stroke: 0.5pt, start: 1),
      [*Subjudul kolom*], [*Subjudul kolom*],
      [*Subjudul kolom*], [*Subjudul kolom*],
      table.hline(stroke: 0.75pt),
      table.cell(colspan: 5, align: center)[[area informasi]],
      [Judul baris#super[c]], [], [], [], [],
      [#h(1em)Subjudul baris], [], [], [], [],
      [#h(1em)Subjudul baris], [], [], [], [],
      table.hline(stroke: 0.5pt),
      [Judul baris], [], [], [], [],
      [#h(1em)Subjudul baris], [], [], [], [],
      [#h(1em)Subjudul baris], [], [], [], [],
      table.cell(colspan: 5, align: center)[[area informasi]],
      table.hline(stroke: 0.75pt),
    )
    #set text(size: 10pt)
    #super[a] [catatan kaki] Sumber [jika ada]: xxxx xxxx. [judul]
    #super[b] [catatan kaki] xxxx xxxx. [judul]
    #super[c] [catatan kaki] xxxx xxxx. [judul]
  ],
)

Penempatan ilustrasi (tabel dan gambar) di dalam teks memerlukan perhatian khusus untuk memastikan kualitas visualisasi ilmiah, keterbacaan, dan estetika.  Pengaturan yang tepat menjamin pembaca dapat dengan mudah menghubungkan teks dengan ilustrasi yang disajikan. Berikut adalah panduan umum tentang penempatan ilustrasi.

#set enum(numbering: "a.")

+ Kedekatan dengan teks rujukan: Setiap ilustrasi ditempatkan sedekat mungkin setelah kalimat di dalam teks yang merujuk atau membahas ilustrasi tersebut.  Hal ini akan meminimalkan gangguan alur baca dan memudahkan pembaca mengaitkan informasi.
+ Posisi peletakan ideal: Ilustrasi diletakkan di tengah halaman secara horizontal, memanfaatkan ruang yang tersedia. Ilustrasi diposisikan sedemikian rupa sehingga judul ilustrasi berada di satu halaman yang sama. Penting juga untuk tidak meninggalkan ruang kosong setelah ilustrasi dan memastikan ada teks/paragraf yang mengikutinya.
+ Efisiensi ruang dan orientasi: Ilustrasi disajikan dan diatur agar muat dalam satu halaman. Jika diperlukan, orientasi halaman bisa diubah menjadi lanskap untuk mengakomodasi ilustrasi yang lebar. Untuk tabel, format yang pendek dan lebar lebih disukai daripada yang panjang dan sempit. Apabila tabel dengan baris yang banyak tidak dapat dihindari, judul kolom berulang (repeat header row) bisa digunakan, sehingga tiap halaman sambungan memiliki judul kolom.
== Pembahasan

Pembahasan merupakan interpretasi atau penjelasan atas data hasil kegiatan
tugas akhir. Dalam pembahasan, pernyataan-pernyataan dalam paragraf dikemas
dengan baik, dimulai dari pendapat sendiri di awal paragraf, diikuti dengan
dukungan pustaka, dan diakhiri dengan kalimat penyimpulan. Argumentasi
dikemukakan secara singkat dan logis yang difokuskan untuk menjawab tujuan
dan menguji hipotesis (jika ada).

Pembahasan berupaya menunjukkan aspek-aspek baru yang ditemukan dan
merupakan satu kesatuan. Pembahasan juga dapat mengemukakan keterbatasan
dalam kegiatan tugas akhir yang dilaksanakan. Pembahasan diakhiri dengan
kalimat positif, tegas, dan kuat.

= SIMPULAN DAN SARAN

== Simpulan

Simpulan ditulis dalam bentuk paragraf yang efektif sesuai dengan tujuan
penelitian. Simpulan merupakan jawaban dari tujuan yang sudah ditentukan dan
tidak dimaksudkan sebagai ringkasan hasil. Simpulan merupakan hasil penelitian
yang boleh jadi telah dikemukakan dalam perumusan masalah dan telah diberi
jawaban sementara berupa hipotesis. Dalam menulis simpulan, penulis harus
membedakan dugaan, temuan, dan simpulan hasil studi. Pernyataan simpulan harus
dilakukan secara cermat dan hati-hati. Penyampaian simpulan ini dapat dilakukan
sebanyak 3 kali, yakni dalam pembahasan, simpulan, dan abstrak sehingga
diperlukan kecermatan untuk menyajikannya dengan ungkapan yang berbeda-beda.

== Saran

Saran sebaiknya mengarah ke implikasi atau tindakan lanjutan yang harus
dilakukan sehubungan dengan temuan atau simpulan penulis. Saran yang
dikemukakan harus berkaitan dengan pelaksanaan atau hasil penelitian. Dengan
demikian saran ini mengemukakan hal-hal yang perlu diteliti lebih lanjut terutama
untuk memperbaiki kelemahan atau kekurangan dalam penelitian yang dilakukan
atau perbaikan asumsi yang diambil sehingga didapatkan hasil yang lebih baik. Jadi,
saran tersebut harus diuraikan secara spesifik. Jangan menyarankan hal-hal yang
tidak dianalisis dan dibahas dalam penelitian serta terkesan menggurui atau
memuaskan keinginan peneliti. Untuk penelitian yang berkaitan dengan
permasalahan kebijakan, tidak perlu menyarankan kebijakan yang tidak berkaitan
dengan hasil penelitian. @smith2020novel

#daftar-pustaka("reference.bib", style: "ipb.csl")

#lampiran[
  #figure(
    kind: "lampiran",
    supplement: [Lampiran],
    caption: [Rata-rata dan simpangan baku beberapa sifat fisik dan kimia tanah dari 78 contoh tanah di Kebun Percobaan Ciheuleut],
  )[
    #table(
      columns: (1fr, auto, auto),
      table.hline(stroke: 0.75pt),
      [*Sifat*], [*Rata-rata*], [*Simpangan baku*],
      table.hline(stroke: 0.75pt),
      [Pasir (%)], [47.66], [23],
      [Lempung (%)], [21.80], [11],
      [Liat (%)], [30.72], [18],
      [C-organik (%)], [0.61], [0],
      [Rapatan isi (mg m#super[-3])], [1.43], [0],
      [KTK (mek 100 g#super[-1] tanah)], [18.08], [17],
      [KAT pada KL (g g#super[-1])], [23.62], [10],
      [KAT pada TLP (g g#super[-1])], [11.11], [9],
      table.hline(stroke: 0.75pt),
    )
    #set text(size: 10pt)
    Keterangan: KTK: kapasitas tukar kation, KAT: kadar air tanah, KL: kapasitas lapang, TLP: titik layu permanen.
  ]

  #figure(
    kind: "lampiran",
    supplement: [Lampiran],
    caption: [Penguasaan pulau berpenghuni di Kepulauan Seribu],
  )[
    #table(
      columns: (auto, auto, auto, auto),
      table.hline(stroke: 0.75pt),
      [*Ketinggian (m dpl)*], [*Umur (hari)*], [*Indeks luas daun*], [*Hasil (ton ha#super[-1])*],
      table.hline(stroke: 0.75pt),
      [856], [115], [3.10], [5],
      [605], [106], [3.09], [5],
      [400], [100], [2.47], [4],
      [210], [93], [2.46], [4],
      [10], [88], [2.12], [4],
      table.hline(stroke: 0.75pt),
    )
  ]
]

#riwayat-hidup[
  Penulis dilahirkan di kota .... pada tanggal bulan tahun sebagai anak ke ... dari
  pasangan bapak ... dan ibu .... Pendidikan sekolah menengah atas (SMA) ditempuh
  di sekolah ..., dan lulus pada tahun .... Pada tahun ..., penulis diterima
  sebagai mahasiswa program sarjana (S-1) di Program Studi/Fakultas/Sekolah ... di
  IPB.

  Selama mengikuti program S-1, penulis aktif menjadi ... (riwayat dan pengalaman
  organisasi, asisten akademik, dan sebagainya). Penulis juga pernah mengikuti
  lomba karya ... (riwayat kegiatan ilmiah) memperoleh atau pernah terpilih sebagai
  ... (riwayat prestasi akademik).
]
