// ==============================================================
// format_ppta.typ
// Template Skripsi IPB
// Berdasarkan Pedoman Penyajian Tugas Akhir (PPTA)
// Peraturan Rektor IPB Nomor 48 Tahun 2025 (Cetakan 1, Januari 2026)
// + Suplemen 1 (Penyajian Dokumen Tugas Akhir, https://ipb.link/suplemen-ppta)
// + Templat "Skripsi Sain-Tek-Kes [20260812]"
//
// FOKUS: skripsi saja. Cabang tesis/disertasi/laporan-akhir,
// ringkasan/summary, halaman-hak-cipta terpisah, dan
// halaman-judul-dalam terpisah dari PPKI edisi ke-4 DIHAPUS.
// ==============================================================
//
// CARA PENGGUNAAN
// ---------------
// Di file .typ lain, tulis:
//
//   #import "lib/format_ppta.typ": *
//
//   #show: ppta.with(
//     watermark: none,  // digital: image("assets/watermark-ipb.png")
//   )
//
//   #halaman-sampul(
//     judul:         "Judul Skripsi",
//     nama:          "Nama Lengkap",
//     nim:           "NXXXXXXXXX",
//     program-studi: "Program Studi",
//     fakultas:      "Fakultas",
//     tahun:         "2026",
//     logo:          image("assets/logo-ipb.png", width: 2.5cm),
//   )
//
//   #halaman-judul(
//     judul:         "Judul Skripsi",
//     nama:          "Nama Lengkap",
//     program-studi: "Program Studi",
//     fakultas:      "Fakultas",
//     tahun:         "2026",
//   )
//
//   #halaman-pernyataan(
//     nama-penulis: "Nama Lengkap",
//     nim:          "NXXXXXXXXX",
//     judul:        "Judul Skripsi",
//     tanggal:      [Bogor, Juni 2026],
//     tahun:        "2026",
//     ai-pakai:     false,  // true jika memakai AI generatif
//     ai-alat:      "ChatGPT",
//     ai-alasan:    "menyusun kerangka laporan",
//   )
//
//   // ── Bagian Awal (nomor halaman Romawi mulai dari Sorotan: i, ii, …) ──
//   #show: bagian-awal
//
//   #sorotan(
//     nama:       "NAMA MAHASISWA",
//     judul:      "Judul Tugas Akhir",
//     pembimbing: ("Nama Pembimbing 1", "Nama Pembimbing 2"),
//     isi:        [1. Poin sorotan pertama (maks. 100 karakter).],
//   )
//   #highlights(
//     nama:       "STUDENT NAME",
//     judul:      "Title of Final Assignment",
//     pembimbing: ("Supervisor 1", "Supervisor 2"),
//     isi:        [1. First highlight (max. 100 characters).],
//   )
//   #abstrak-grafis(
//     judul:  "Judul Abstrak Grafis Maksimum Enam Kata",
//     gambar: image("assets/gambar_1.png", width: 80%),
//   )
//   #graphical-abstract(
//     judul:  "Graphical Abstract Title Maximum Six Words",
//     gambar: image("assets/gambar_1.png", width: 80%),
//   )
//   #abstrak(
//     nama:        "NAMA MAHASISWA",
//     judul:       "Judul Skripsi dalam Bahasa Indonesia",
//     pembimbing:  ("Nama Pembimbing 1", "Nama Pembimbing 2"),
//     isi:         [Narasi abstrak maks. 200 kata, 1 paragraf.],
//     kata-kunci:  "kata1, kata2, kata3",
//   )
//   #abstract-en(
//     nama:       "STUDENT NAME",
//     judul:      "Thesis Title in English",
//     pembimbing: ("Supervisor Name 1", "Supervisor Name 2"),
//     isi:        [Abstract narrative, max 200 words, 1 paragraph.],
//     keywords:   "keyword1, keyword2, keyword3",
//   )
//
//   #halaman-penguji(
//     penguji: ("Dr. Nama Penguji, M.Si.", "Dr. Nama Penguji 2, M.Si."),
//   )
//   #lembar-pengesahan(
//     judul:         "Judul Skripsi",
//     nama-penulis:  "Nama Lengkap",
//     nim:           "NXXXXXXXXX",
//     program-studi: "Program Studi",
//     pembimbing:    ("Dr. Pembimbing 1, M.Si.", "Dr. Pembimbing 2, M.Si."),
//     ketua:         "Prof. Dr. Ketua Program Studi, M.Si.",
//     ketua-nip:     "..............................",
//     dekan:         "Prof. Dr. Wakil Dekan, M.Si.",
//     dekan-nip:     "..............................",
//     tanggal-ujian: "Juni 2026",
//     tanggal-lulus: "Juni 2026",
//   )
//
//   #prakata[
//     Puji dan syukur penulis panjatkan kepada Tuhan Yang Maha Esa …
//   ]
//
//   #daftar-isi()
//   #daftar-tabel()    // hapus baris ini jika tabel ≤ 1
//   #daftar-gambar()   // hapus baris ini jika gambar ≤ 1
//   #daftar-lampiran() // hapus baris ini jika tidak ada lampiran
//
//   // ── Bagian Isi (nomor halaman Arab: 1, 2, 3, …) ────────
//   #show: bagian-isi
//
//   = PENDAHULUAN
//   == Latar Belakang
//   Teks paragraf dimulai di sini …
//
//   #daftar-pustaka("reference.bib", style: "ipb.csl")
//
//   #lampiran[
//     // Konten lampiran...
//   ]
//
//   #riwayat-hidup[
//     Penulis dilahirkan di … pada tanggal …
//   ]
//
// ==============================================================


// ─── Konstanta ───────────────────────────────────────────────

// Jenis huruf utama (Suplemen 1 A: Times New Roman)
#let _font = "Times New Roman"

// Ukuran huruf teks biasa: 12pt (Suplemen 1 A)
#let _sz-body = 12pt

// Ukuran huruf judul bab: 14pt (Suplemen 1 A)
#let _sz-bab = 14pt

// Jenis & ukuran huruf untuk tampilan hasil komputer
// (Suplemen 1 A: Courier New 11pt)
#let _font-mono = "Courier New"
#let _sz-mono = 11pt

// Jarak antarbaris (1 spasi). Nilai 0.65em adalah setara
// dengan "single spacing" pada Typst untuk teks 12pt.
#let _leading = 0.65em


// ─── Penomoran Halaman ────────────────────────────────────────

// Header mirror: nomor halaman di pojok kanan atas untuk halaman ganjil
// dan pojok kiri atas untuk halaman genap. Batas atas 2 cm; batas kanan
// (gasal) 3 cm dan batas kiri (genap) 3 cm (Suplemen 1 A butir 3).
// Pias kiri teks 4 cm, jadi nomor genap digeser 1 cm ke margin.
#let _header-mirror(fmt) = context {
  let cur = here().page()
  let chap-here = query(heading.where(level: 1)).any(h => h.numbering != none and h.location().page() == cur)
  if chap-here { none } else {
    let n = counter(page).get().first()
    let s = numbering(fmt, n)
    set text(font: _font, size: _sz-body)
    if calc.odd(n) {
      align(right, s)
    } else {
      align(left, [#h(-1cm)#s])
    }
  }
}

/// Aktifkan penomoran halaman Romawi kecil (i, ii, iii, …).
/// PPTA: penomoran dimulai dari Sorotan sampai Daftar Lampiran.
/// Gunakan: #show: bagian-awal (SEBELUM #sorotan)
#let bagian-awal(body) = {
  set page(
    numbering: "i",
    footer: none,
    header: _header-mirror("i"),
    header-ascent: 2cm,
  )
  counter(page).update(1)
  body
}

/// Aktifkan penomoran halaman Arab (1, 2, 3, …).
/// Digunakan mulai dari Bab Pendahuluan.
///
/// Gunakan: #show: bagian-isi
#let bagian-isi(body) = {
  set page(
    numbering: "1",
    footer: none,
    header: _header-mirror("1"),
    header-ascent: 2cm,
  )
  counter(page).update(1)
  body
}


// ─── Template Utama ──────────────────────────────────────────

/// Fungsi pembungkus format dokumen PPTA Skripsi. Terapkan dengan:
///   #show: ppta.with(...)
///
/// Parameter:
///   watermark - Konten watermark IPB untuk dokumen digital
///               (ditempatkan di kiri tiap lembar, opacity 50%).
///               Contoh: image("assets/watermark-ipb.png")
///               Panduan: https://ipb.link/pengesahan-tugasakhir
///               Kosongkan (none) jika belum ada.
#let ppta(
  watermark: none,
  body,
) = {
  // ── Kertas & Pias (Margin) ────────────────────────────────
  // A4: 21,0 cm × 29,7 cm, HVS 80 gram, putih (Suplemen 1 A)
  // Pias kiri 4 cm; kanan, atas, bawah masing-masing 3 cm.
  // Dokumen digital: latar putih standar (tidak ada warna sampul
  // per fakultas; warna karton hanya untuk cetak fisik opsional).
  set page(
    paper: "a4",
    margin: (
      left: 4cm,
      right: 3cm,
      top: 3cm,
      bottom: 3cm,
    ),
    numbering: none,
    background: if watermark != none {
      place(left + horizon, dx: 1cm, opacity(50%, watermark))
    },
  )

  // ── Jenis & Ukuran Huruf ─────────────────────────────────
  // Times New Roman 12pt (Suplemen 1 A butir 1)
  set text(
    font: _font,
    size: _sz-body,
    lang: "id",
  )

  // Tampilan hasil komputer (kode, nama berkas, perintah) menggunakan
  // Courier New 11pt (Suplemen 1 A).
  show raw: set text(font: _font-mono, size: _sz-mono)

  // Catatan kaki: 10pt (dotx FootnoteText sz 20).
  show footnote.entry: set text(font: _font, size: 10pt)

  // ── Paragraf ─────────────────────────────────────────────
  // • Jarak baris: 1 spasi (Suplemen 1 A butir 5)
  // • Alinea pertama menjorok 1 cm dari batas kiri bidang tulisan (butir 6)
  // • Rata kanan-kiri / justified (butir 6)
  // • Tidak ada spasi ekstra antarparagraf
  set par(
    leading: _leading,
    spacing: _leading,
    first-line-indent: 1cm,
    justify: true,
  )

  // ── Penomoran Heading ─────────────────────────────────────
  // Level 1 (Bab)        → angka Romawi kapital, contoh: II
  // Level 2 (Subbab)     → angka Arab berpola 1.1, contoh: 2.1
  // Level 3 (Sub-subbab) → angka Arab berpola 1.1.1, contoh: 2.1.1
  // Pengebaban tidak lebih dari 3 tingkatan (Suplemen 1 A butir 8).
  set heading(numbering: (..nums) => {
    let n = nums.pos()
    if n.len() == 1 {
      numbering("I", n.at(0))
    } else if n.len() == 2 {
      numbering("1.1", ..nums)
    } else if n.len() >= 3 {
      numbering("1.1.1", ..nums)
    }
  })

  // ── Tampilan Judul Bab (Level 1) ──────────────────────────
  // • Times New Roman 14pt, tebal (bold), huruf kapital semua
  // • Posisi: di tengah (centered), tanpa titik, tanpa garis bawah
  // • Setiap bab baru dimulai di halaman baru
  // (Suplemen 1 A butir 9 dan 12)
  show heading.where(level: 1): it => {
    // Bab bernomor selalu mulai halaman baru; heading tanpa nomor (Daftar Tabel,
    // Daftar Gambar, Daftar Lampiran) mengalir ke halaman yang sama.
    if it.numbering != none { pagebreak(weak: true) }
    set par(first-line-indent: 0pt, spacing: 0pt, leading: _leading)
    v(if it.numbering != none { 6pt } else { 2 * _leading })
    align(
      center,
      text(font: _font, size: _sz-bab, weight: "bold")[
        #if it.numbering != none {
          context counter(heading).display("I")
          h(1em)
        }
        #upper(it.body)
      ],
    )
    v(0.5cm)
  }

  // ── Tampilan Judul Subbab (Level 2) ───────────────────────
  // • Times New Roman 12pt, tebal (bold), kapital tiap kata
  //   (kecuali kata hubung dan kata depan)
  // • Posisi: kiri (left-aligned); judul > 1 baris menggantung 0,7 cm
  //   (dotx JudulSubbab left 397/hanging 397; baris pertama tetap di tepi kiri)
  // • 2 spasi dari konten di atas, 1 spasi dari konten di bawah
  // (Suplemen 1 A butir 10)
  show heading.where(level: 2): it => {
    set par(first-line-indent: 0pt, hanging-indent: 0.7cm, spacing: 0pt, leading: _leading)
    v(2 * _leading)
    text(font: _font, size: _sz-body, weight: "bold")[
      #if it.numbering != none {
        context counter(heading).display("1.1")
        h(0.75em)
      }
      #it.body
    ]
    v(0cm)
  }

  // ── Tampilan Judul Sub-subbab (Level 3) ───────────────────
  // • Times New Roman 12pt, TIDAK tebal (regular), kapital tiap kata
  //   (kecuali kata hubung dan kata depan)
  // • Posisi: kiri (left-aligned)
  // • 1,5 spasi dari konten di atas, 1 spasi dari konten di bawah
  // • Judul > 1 baris: jarak 1 spasi
  // (Suplemen 1 A butir 11)
  show heading.where(level: 3): it => {
    set par(
      first-line-indent: 0pt,
      hanging-indent: 1.2cm, // Menjaga teks baris kedua judul sejajar di bawah teks judul (bukan di bawah angka 2.1.1)
      spacing: 0pt,
      leading: _leading,
    )
    v(1.5 * _leading)

    // Geser seluruh blok heading ke kanan
    pad(left: 0.8cm)[
      #text(font: _font, size: _sz-body, weight: "regular")[
        #if it.numbering != none {
          context counter(heading).display("1.1.1")
          h(0.75em)
        }
        #it.body
      ]
    ]
    v(_leading)
  }

  // ── Tabel ────────────────────────────────────────────────
  // • Caption/judul tabel di ATAS tabel
  // • Hanya tiga garis horizontal; tidak ada garis vertikal
  // • Catatan kaki tabel: Times New Roman 10pt atau Arial 9pt,
  //   jarak garis dasar–baris pertama catatan kaki 3 pt
  // (PPTA Bab VI + Suplemen Ilustrasi Tabel)
  show figure.where(kind: table): set figure(supplement: [Tabel])
  show figure.where(kind: image): set figure(supplement: [Gambar])
  //
  // Cara membuat tabel PPTA (contoh 3 garis horizontal):
  //   #figure(
  //     caption: [Judul tabel singkat],
  //     kind: table,
  //     table(
  //       columns: (auto, 1fr),
  //       table.hline(stroke: 0.75pt),       // ← garis atas
  //       [*Kolom 1*], [*Kolom 2*],
  //       table.hline(stroke: 0.75pt),       // ← garis bawah header
  //       [Data 1],    [Data 2],
  //       table.hline(stroke: 0.75pt),       // ← garis bawah tabel
  //     ),
  //   )
  show figure.where(kind: table): set figure.caption(position: top)
  show figure.where(kind: "lampiran"): set figure.caption(position: top)
  set table(stroke: none) // garis diatur manual dengan table.hline()
  // Isi tabel 11pt seluruhnya (sel .dotx 11pt); catatan kaki sel
  // menimpa sendiri ke 10pt via #set text(size: 10pt).
  show table: set text(font: _font, size: 11pt)

  // ── Gambar ───────────────────────────────────────────────
  // • Caption/judul gambar di BAWAH gambar (PPTA Bab VI)
  show figure.where(kind: image): set figure.caption(position: bottom)

  // Caption satu baris → center; caption multi-baris → hanging indent kiri.
  // (Judul tabel: rata tengah; baris kedua sejajar huruf pertama baris pertama;
  // jarak nomor–judul 2 pt per Suplemen Ilustrasi Tabel.)
  show figure.caption: it => {
    set par(first-line-indent: 0pt)
    layout(size => context {
      let prefix = [#it.supplement #it.counter.display(it.numbering)]
      let full = [#prefix #it.body]
      if measure(full).width <= size.width {
        align(center, full)
      } else {
        set align(left)
        grid(
          columns: (auto, 1fr),
          column-gutter: 0.5em,
          align: top,
          prefix, it.body,
        )
      }
    })
  }

  // ── Mulai Konten ─────────────────────────────────────────
  body
}


// ─── Halaman Sampul ──────────────────────────────────────────

/// Membuat halaman sampul skripsi (dokumen digital: latar putih + watermark).
/// Untuk cetak fisik opsional: karton warna fakultas, soft cover
/// (Faperta hijau, SKHB ungu, FPIK biru, Fapet cokelat, Fahutan abu-abu,
/// FTT merah, FMIPA putih, FEM jingga, FISEMA hijau toska, FKGiz sage,
/// SSMI terakota, SB marun; sarjana terapan magenta).
///
/// Parameter:
///   judul         - Judul HURUF KAPITAL, segitiga terbalik, maks. 3 baris,
///                   ≤ 15 kata (tidak termasuk kata depan/sambung), 1 spasi
///   nama          - Nama lengkap mahasiswa
///   nim           - NIM (ditampilkan di sampul)
///   program-studi - Nama program studi
///   fakultas      - Nama fakultas/sekolah
///   institusi     - Default: "INSTITUT PERTANIAN BOGOR"
///   kota          - Default: "BOGOR"
///   tahun         - Tahun lulus
///   logo          - Logo IPB diameter 2,5 cm. Contoh:
///                    image("assets/logo-ipb.png", width: 2.5cm)
///                   Jika dikosongkan, ditampilkan kotak placeholder.
///
/// Catatan: Halaman ini tidak memiliki nomor halaman.
#let halaman-sampul(
  judul: "",
  nama: "",
  nim: "",
  program-studi: "",
  fakultas: "",
  institusi: "INSTITUT PERTANIAN BOGOR",
  kota: "BOGOR",
  tahun: "",
  logo: none,
  judul-size: _sz-bab,
) = {
  set page(
    paper: "a4",
    margin: (left: 4cm, right: 3cm, top: 0pt, bottom: 0pt),
    numbering: none,
    header: none,
    footer: none,
  )
  set text(font: _font, size: _sz-bab)
  set par(leading: _leading, first-line-indent: 0pt, justify: false)
  set align(center)

  let tahun = str(tahun)

  v(4cm)

  // Logo IPB: diameter 2,5 cm (Suplemen 1 A)
  if logo != none {
    logo
  } else {
    // Placeholder bila logo tidak disediakan
    box(
      width: 2.5cm,
      height: 2.5cm,
      stroke: 0.5pt,
    )
  }

  v(1cm)

  text(size: judul-size, weight: "bold")[INSTITUT PERTANIAN BOGOR]

  v(2cm)

  // Judul: Times New Roman 14pt, kapital semua, spasi 1, center
  text(size: judul-size, weight: "bold")[#upper(judul)]

  v(1.5cm)

  // Jenis tugas akhir
  text(weight: "bold")[SKRIPSI]

  v(4cm)

  // Nama dan NIM: Times New Roman 14pt
  text(weight: "bold")[#upper(nama)]
  v(0cm)
  text(weight: "bold")[#nim]

  v(4cm)

  // Fakultas/Sekolah, Program Studi, Kota, Tahun
  // Times New Roman 14pt (Suplemen 1: urutan Fakultas, Prodi, Kota, Tahun)
  text(weight: "bold")[
    #(
      upper(fakultas) + "\n" + upper(program-studi) + "\n" + upper(kota) + "\n" + tahun
    )
  ]

  v(3cm)
}

/// Halaman Judul (sampul dalam): salinan halaman sampul di kertas putih
/// biasa, ditambah kalimat syarat memperoleh gelar.
/// Referensi: PPTA Tabel 4 ("Halaman judul … Ditambahkan informasi mengenai
/// jenis tugas akhir dan tujuan dalam rangka apa karya ilmiah tersebut dibuat").
///
/// Parameter:
///   judul         - Judul dalam HURUF KAPITAL
///   nama          - Nama lengkap mahasiswa
///   program-studi - Nama program studi
///   fakultas      - Nama fakultas/sekolah
///   institusi     - Default: "INSTITUT PERTANIAN BOGOR"
///   kota          - Default: "BOGOR"
///   tahun         - Tahun lulus
///   gelar         - Default: "Sarjana" (ganti "Sarjana Terapan" untuk vokasi)
#let halaman-judul(
  judul: "",
  nama: "",
  program-studi: "",
  fakultas: "",
  institusi: "INSTITUT PERTANIAN BOGOR",
  kota: "BOGOR",
  tahun: "",
  gelar: "Sarjana",
) = {
  pagebreak(weak: true)
  set page(
    paper: "a4",
    margin: (left: 4cm, right: 3cm, top: 0pt, bottom: 0pt),
    numbering: none,
    header: none,
    footer: none,
  )
  set text(font: _font, size: _sz-bab)
  set par(leading: _leading, first-line-indent: 0pt, justify: false)

  let tahun = str(tahun)

  // ── Judul dan Nama ─────────────────────────────────
  align(center)[
    #v(5cm)
    #text(weight: "bold")[#upper(judul)]
    #v(3cm)
    #text(weight: "bold")[SKRIPSI]
    #v(2.5cm)
    #text(weight: "bold")[#upper(nama)]
  ]

  // ── Kalimat syarat memperoleh gelar ────────────────
  align(center)[
    #v(2cm)
    #text(size: _sz-body)[
      Skripsi \
      sebagai salah satu syarat untuk memperoleh gelar \
      #gelar pada \
      Program Studi #program-studi
    ]
  ]

  // ── Blok institusi (bawah halaman) ─────────────────
  place(
    bottom + center,
    dy: -3cm,
    text(weight: "bold", size: _sz-bab)[
      #(
        upper(fakultas) + "\n" + upper(program-studi) + "\n" + upper(institusi) + "\n" + upper(kota) + "\n" + tahun
      )
    ],
  )
}


// ─── Halaman Pernyataan dan Hak Cipta ─────────────────────────

/// Membuat halaman pernyataan keaslian, deklarasi AI, dan hak cipta
/// dalam SATU halaman (PPTA Tabel 4: "Halaman pernyataan dan hak cipta").
///
/// Parameter:
///   nama-penulis - Nama lengkap penulis
///   nim          - Nomor Induk Mahasiswa
///   judul        - Judul skripsi (tanpa tanda petik)
///   tanggal      - Tempat dan tanggal tanda tangan, mis. "Bogor, Juni 2026"
///   tahun        - Tahun karya ilmiah (untuk blok hak cipta)
///   gelar        - Keterangan gelar, mis. "sarjana/sarjana terapan.............."
///   ai-pakai     - true jika memakai kecerdasan buatan generatif
///   ai-alat      - Nama alat/layanan AI, mis. "ChatGPT"
///   ai-alasan    - Keperluan pemakaian, mis. "menyusun kerangka laporan"
#let halaman-pernyataan(
  nama-penulis: "",
  nim: "",
  judul: "",
  tanggal: "",
  tahun: "",
  gelar: "Sarjana",
  ai-pakai: false,
  ai-alat: "",
  ai-alasan: "",
) = {
  pagebreak(weak: true)
  set par(first-line-indent: 1cm, justify: true, leading: _leading, spacing: _leading)
  set text(font: _font, size: _sz-body)

  {
    set par(first-line-indent: 0pt)
    align(center)[
      *#upper("PERNYATAAN MENGENAI SKRIPSI," + linebreak() + "SUMBER INFORMASI, PENGGUNAAN AI, DAN" + linebreak() + "PELIMPAHAN HAK CIPTA")*
    ]
  }

  v(1em)

  [
    Dengan ini saya menyatakan bahwa skripsi dengan judul
    "#judul" merupakan salah satu syarat untuk memperoleh gelar
    #gelar. Karya ini adalah karya saya dengan arahan dari
    dosen pembimbing dan belum diajukan dalam bentuk apa pun kepada perguruan
    tinggi mana pun. Sumber informasi yang berasal atau dikutip dari karya yang
    diterbitkan maupun tidak diterbitkan dari penulis lain telah disebutkan dalam
    teks dan dicantumkan dalam Daftar Pustaka di bagian akhir skripsi ini.
  ]

  v(_leading)

  if ai-pakai {
    [
      Dalam penyusunan karya ini, saya menggunakan bantuan kecerdasan buatan
      #ai-alat untuk #ai-alasan. Setelah menggunakan alat/layanan tersebut,
      saya meninjau dan menyunting konten sesuai kebutuhan serta bertanggung
      jawab penuh atas isi karya tugas akhir ini.
    ]
  } else {
    [
      Dalam penyusunan karya ini, saya tidak menggunakan bantuan kecerdasan
      buatan.
    ]
  }

  v(_leading)

  [
    Dengan ini saya melimpahkan hak cipta dari karya tulis saya kepada
    Institut Pertanian Bogor.
  ]

  v(2em)

  align(right)[
    #tanggal
    #v(3em)
    #nama-penulis \
    #nim
  ]

  v(1fr)

  align(center)[
    © Hak Cipta milik IPB, tahun #tahun \
    Hak Cipta dilindungi Undang-Undang
  ]

  v(_leading)

  [
    Dilarang mengutip sebagian atau seluruh karya tulis ini tanpa mencantumkan atau
    menyebutkan sumbernya. Pengutipan hanya untuk kepentingan pendidikan, penelitian,
    penulisan karya ilmiah, penyusunan laporan, penulisan kritik, atau tinjauan suatu
    masalah, dan pengutipan tersebut tidak merugikan kepentingan IPB.
  ]

  v(_leading)

  [
    Dilarang mengumumkan dan memperbanyak sebagian atau seluruh karya tulis ini
    dalam bentuk apa pun tanpa izin IPB.
  ]
}


// ─── Sorotan / Highlights ─────────────────────────────────────

/// Membuat halaman Sorotan (bahasa Indonesia).
/// Temuan/kontribusi utama, 3–5 poin, tiap poin maks. 100 karakter
/// termasuk spasi dan tanda baca, 1 spasi, tidak lebih dari satu halaman.
/// Tidak diperbolehkan mengacu pustaka, gambar, dan tabel.
///
/// Parameter:
///   nama       - Nama mahasiswa ditulis KAPITAL
///   judul      - Judul tugas akhir
///   pembimbing - Array nama pembimbing, mis. ("Ali", "Budi")
///   isi        - Daftar 3–5 poin sorotan
#let sorotan(
  nama: "",
  judul: "",
  pembimbing: (),
  isi: [],
) = {
  pagebreak(weak: true)
  set par(
    leading: _leading,
    spacing: _leading,
    first-line-indent: 1cm,
    justify: true,
  )
  set text(font: _font, size: _sz-body)

  heading(level: 1, numbering: none, outlined: false)[SOROTAN]
  counter(heading).update((ch, ..rest) => (calc.max(0, ch - 1),))

  v(0.5em)

  let pembimbing = if type(pembimbing) == str { (pembimbing,) } else { pembimbing }

  let db = if pembimbing.len() == 0 {
    ""
  } else if pembimbing.len() == 1 {
    upper(pembimbing.at(0))
  } else {
    pembimbing.slice(0, -1).map(upper).join(", ") + " dan " + upper(pembimbing.last())
  }

  [*#upper(nama).* #judul. Dibimbing oleh #db.]

  v(_leading)

  isi
}

/// Membuat halaman Highlights (bahasa Inggris, ditulis miring).
/// Ketentuan sama dengan #sorotan.
///
/// Parameter:
///   nama       - Nama mahasiswa ditulis CAPITAL
///   judul      - Title of final assignment
///   pembimbing - Array nama pembimbing
///   isi        - Daftar 3–5 poin highlights
#let highlights(
  nama: "",
  judul: "",
  pembimbing: (),
  isi: [],
) = {
  // pagebreak(weak: true)
  set par(
    leading: _leading,
    spacing: _leading,
    first-line-indent: 1cm,
    justify: true,
  )
  set text(font: _font, size: _sz-body)

  heading(level: 1, numbering: none, outlined: false)[_HIGHLIGHTS_]
  counter(heading).update((ch, ..rest) => (calc.max(0, ch - 1),))

  v(0.5em)

  let pembimbing = if type(pembimbing) == str { (pembimbing,) } else { pembimbing }

  let sv = if pembimbing.len() == 0 {
    ""
  } else if pembimbing.len() == 1 {
    upper(pembimbing.at(0))
  } else {
    pembimbing.slice(0, -1).map(upper).join(", ") + " and " + upper(pembimbing.last())
  }

  emph([*#upper(nama).* #judul. Supervised by #sv.])

  v(_leading)

  emph(isi)
}


// ─── Abstrak Grafis / Graphical Abstract ──────────────────────

/// Membuat halaman Abstrak Grafis: sebuah gambar yang merangkum temuan
/// utama tugas akhir (min. 300 dpi). Judul maks. 6 kata (tidak termasuk
/// kata depan/sambung) diletakkan DI BAWAH gambar. Satu halaman.
/// Utamakan ilustrasi hasil tugas akhir; perhatikan hak cipta elemen luar
/// dan deklarasikan pemakaian AI di halaman pernyataan.
///
/// Parameter:
///   judul  - Judul abstrak grafis (maks. 6 kata)
///   gambar - Konten gambar, mis. image("assets/grafik.png", width: 80%)
#let abstrak-grafis(
  judul: "",
  gambar: none,
) = {
  pagebreak(weak: true)
  set par(first-line-indent: 0pt, leading: _leading, spacing: _leading)
  set text(font: _font, size: _sz-body)

  heading(level: 1, numbering: none, outlined: false)[ABSTRAK GRAFIS]
  counter(heading).update((ch, ..rest) => (calc.max(0, ch - 1),))

  v(0.5em)

  if gambar != none {
    align(center, gambar)
  } else {
    align(center, box(width: 12cm, height: 8cm, stroke: 0.5pt))
  }

  v(_leading)

  align(center)[*#judul*]
}

/// Membuat halaman Graphical Abstract (ketentuan sama, bahasa Inggris).
///
/// Parameter:
///   judul  - Graphical abstract title (max. six words)
///   gambar - Image content
#let graphical-abstract(
  judul: "",
  gambar: none,
) = {
  set par(first-line-indent: 0pt, leading: _leading, spacing: _leading)
  set text(font: _font, size: _sz-body)

  heading(level: 1, numbering: none, outlined: false)[_GRAPHICAL ABSTRACT_]
  counter(heading).update((ch, ..rest) => (calc.max(0, ch - 1),))

  v(0.5em)

  if gambar != none {
    align(center, gambar)
  } else {
    align(center, box(width: 12cm, height: 8cm, stroke: 0.5pt))
  }

  v(_leading)

  align(center)[_*#judul*_]
}


// ─── Halaman Abstrak (Indonesia) ─────────────────────────────

/// Membuat halaman Abstrak (bahasa Indonesia).
/// Narasi satu paragraf, ≤ 200 kata, satu halaman. Memuat latar belakang
/// (tentatif), tujuan, metode, hasil (temuan baru), dan implikasi.
/// Tanpa acuan pustaka/gambar/tabel.
///
/// Parameter:
///   nama        - Nama mahasiswa ditulis KAPITAL
///   judul       - Judul skripsi (bahasa Indonesia)
///   pembimbing  - Array nama pembimbing, mis. ("Ali", "Budi")
///   isi         - Narasi abstrak
///   kata-kunci  - Maks. 5 kata/frasa, terurut abjad
///
/// Catatan: Halaman ini diberi nomor tetapi nomor tidak dicetak.
#let abstrak(
  nama: "",
  judul: "",
  pembimbing: (),
  isi: [],
  kata-kunci: "",
) = {
  pagebreak(weak: true)
  // set page(header: none)
  set par(
    leading: _leading,
    spacing: _leading,
    first-line-indent: 1cm,
    justify: true,
  )
  set text(font: _font, size: _sz-body)

  heading(level: 1, numbering: none, outlined: false)[ABSTRAK]
  counter(heading).update((ch, ..rest) => (calc.max(0, ch - 1),))

  v(0.5em)

  let pembimbing = if type(pembimbing) == str { (pembimbing,) } else { pembimbing }

  // Format nama pembimbing: dipisah "dan" jika lebih dari satu
  let db = if pembimbing.len() == 0 {
    ""
  } else if pembimbing.len() == 1 {
    upper(pembimbing.at(0))
  } else {
    pembimbing.slice(0, -1).map(upper).join(", ") + " dan " + upper(pembimbing.last())
  }

  // Header abstrak: NAMA. Judul. Dibimbing oleh PEMBIMBING.
  [#upper(nama). #judul. Dibimbing oleh #db.]

  v(_leading)

  isi

  v(_leading)

  {
    set par(first-line-indent: 0pt)
    [Kata kunci: #kata-kunci]
  }
}


// ─── Halaman Abstract (Inggris) ──────────────────────────────

/// Membuat halaman Abstract (bahasa Inggris).
/// Seluruh halaman ditulis miring (italic). Ketentuan sama dengan #abstrak.
///
/// Parameter:
///   nama        - Nama mahasiswa ditulis CAPITAL
///   judul       - Judul skripsi (bahasa Inggris)
///   pembimbing  - Array nama pembimbing, mis. ("Ali", "Budi")
///   isi         - Narasi abstrak
///   keywords    - Maks. 5 kata/frasa, alphabetical order
#let abstract-en(
  nama: "",
  judul: "",
  pembimbing: (),
  isi: [],
  keywords: "",
) = {
  // set page(header: none)
  set par(
    leading: _leading,
    spacing: _leading,
    first-line-indent: 1cm,
    justify: true,
  )
  set text(font: _font, size: _sz-body)

  heading(level: 1, numbering: none, outlined: false)[ABSTRACT]
  counter(heading).update((ch, ..rest) => (calc.max(0, ch - 1),))

  v(0.5em)

  let pembimbing = if type(pembimbing) == str { (pembimbing,) } else { pembimbing }

  let sv = if pembimbing.len() == 0 {
    ""
  } else if pembimbing.len() == 1 {
    upper(pembimbing.at(0))
  } else {
    pembimbing.slice(0, -1).map(upper).join(", ") + " and " + upper(pembimbing.last())
  }

  emph([#upper(nama). #judul. Supervised by #sv.])

  v(_leading)

  emph(isi)

  v(_leading)

  {
    set par(first-line-indent: 0pt)
    emph([Keywords: #keywords])
  }
}


// ─── Halaman Penguji & Lembar Pengesahan ─────────────────────

/// Halaman tim penguji. Diletakkan pada halaman GENAP sehingga berhadapan
/// dengan lembar pengesahan di halaman gasal berikutnya pada cetak
/// bolak-balik (Suplemen 1 A butir 4).
///
/// Panggil SEBELUM #lembar-pengesahan(...) agar urutannya benar:
///   halaman genap (penguji) di kiri, halaman gasal (pengesahan) di kanan.
///
/// Parameter:
///   penguji - Array nama penguji, mis. ("Dr A", "Dr B")
///   judul   - Default: "Tim Penguji pada Ujian Skripsi:"
#let halaman-penguji(
  penguji: (),
  judul: "Tim Penguji pada Ujian Skripsi:",
) = {
  pagebreak(to: "even", weak: true)
  set par(first-line-indent: 0pt, leading: _leading, spacing: _leading)
  set text(font: _font, size: _sz-body)

  v(1fr)

  [#judul]

  v(_leading)

  let penguji = if type(penguji) == str { (penguji,) } else { penguji }

  for (i, p) in penguji.enumerate() {
    [#h(2.0em) #(i + 1) #h(0.5em) #p \ ]
  }
}

/// Lembar pengesahan skripsi. Dipaksa mulai pada halaman GASAL sehingga
/// berhadapan dengan halaman penguji (halaman genap) pada cetak bolak-balik.
/// (Suplemen 1 A butir 4).
///
/// Parameter:
///   judul          - Judul skripsi
///   nama           - Nama penulis
///   nim            - NIM
///   program-studi
///   pembimbing     - Array nama pembimbing, mis. ("Dr A", "Dr B")
///   pembimbing-nip - Array NIP pembimbing, paralel dengan `pembimbing` (opsional)
///   ketua          - Nama ketua program studi yang menandatangani
///   ketua-label    - Default: "Ketua Program Studi:"
///   ketua-nip      - NIP ketua (opsional)
///   dekan          - Nama penanda tangan alternatif (opsional). Jika diisi,
///                    ditampilkan sebagai pilihan kedua dengan prefiks italic
///                    "dan atau (pilih salah satu)".
///   dekan-label    - Default: "Ketua Departemen/Wakil Dekan Bidang Akademik
///                    dan Kemahasiswaan:"
///   dekan-nip      - NIP alternatif (opsional)
///   tanggal-ujian
///   tanggal-lulus
#let lembar-pengesahan(
  judul: "",
  nama-penulis: "",
  nim: "",
  program-studi: "",
  pembimbing: (),
  pembimbing-nip: (),
  ketua: "",
  ketua-label: "Ketua Program Studi:",
  ketua-nip: "",
  dekan: "",
  dekan-label: "Ketua Departemen/Wakil Dekan Bidang Akademik dan Kemahasiswaan:",
  dekan-nip: "",
  tanggal-ujian: "",
  tanggal-lulus: "",
) = {
  pagebreak(to: "odd", weak: true)
  set par(first-line-indent: 0pt, leading: _leading, spacing: _leading, justify: false)
  set text(font: _font, size: _sz-body)

  // Blok info: label rata kiri dengan titik dua sejajar, isi menyambung
  grid(
    columns: (auto, 1em, 1fr),
    row-gutter: 0.4em,
    [Judul Skripsi], [ : ], [#judul],
    [Nama], [ : ], [#nama-penulis],
    [NIM], [ : ], [#nim],
  )

  v(1.5em)

  // Garis tanda tangan, rata kanan-bawah dalam sel
  let _sig = align(right + bottom, line(length: 6cm, stroke: 0.75pt))

  // Blok identitas penanda tangan: label, lalu nama (dan NIP) menjorok 1 em.
  // `prefix` opsional ditampilkan miring di atas label.
  let _person(label, name, nip, prefix: none) = {
    set par(first-line-indent: 0pt)
    if prefix != none [#emph(prefix) \ ]
    [#label \ #h(1em)#name]
    if nip != "" [ \ #h(1em)NIP #nip]
  }

  // ── Disetujui oleh ──
  align(center)[Disetujui oleh]
  v(0.3em)

  let pembimbing-rows = ()
  for (i, p) in pembimbing.enumerate() {
    let label = if pembimbing.len() > 1 [Pembimbing #(i + 1):] else [Pembimbing:]
    let nip = if i < pembimbing-nip.len() { pembimbing-nip.at(i) } else { "" }
    pembimbing-rows.push(_person(label, p, nip))
    pembimbing-rows.push(_sig)
  }

  table(
    columns: (1fr, 7cm),
    align: (left + top, right + bottom),
    stroke: 0pt,
    inset: (x: 0.6em, y: 0.8em),
    ..pembimbing-rows,
  )

  v(1.5em)

  // ── Diketahui oleh ──
  align(center)[Diketahui oleh]
  v(0.3em)

  let diketahui-rows = (
    _person([#ketua-label], ketua, ketua-nip),
    _sig,
  )
  if dekan != "" {
    diketahui-rows.push(_person(
      [#dekan-label],
      dekan,
      dekan-nip,
      prefix: "dan atau (pilih salah satu)",
    ))
    diketahui-rows.push(_sig)
  }

  table(
    columns: (1fr, 7cm),
    align: (left + top, right + bottom),
    stroke: 0pt,
    inset: (x: 0.6em, y: 0.8em),
    ..diketahui-rows,
  )

  // ── Tanggal Ujian / Tanggal Lulus, didorong ke bawah halaman ──
  v(1fr)

  table(
    columns: (1fr, 1fr),
    align: left + top,
    stroke: 0pt,
    inset: (x: 0.6em, y: 0.5em),
    [Tanggal Ujian: \ #tanggal-ujian], [Tanggal Lulus: \ #tanggal-lulus],
  )
}


// ─── Paragraf Bertingkat ─────────────────────────────────────

/// Membungkus konten sebagai paragraf bertingkat yang menjorok 0,5 cm
/// dari paragraf di atasnya (Suplemen 1 A butir 7). Dapat disarangkan;
/// setiap tingkat menambah indentasi 0,5 cm dari tingkat sebelumnya.
///
/// Contoh:
///   Paragraf utama di sini.
///   #bertingkat[
///     Paragraf tingkat 1 (menjorok 0,5 cm).
///     #bertingkat[
///       Paragraf tingkat 2 (menjorok 1 cm total).
///     ]
///   ]
#let bertingkat(body) = pad(left: 0.5cm, body)


// ─── Prakata ─────────────────────────────────────────────────

/// Membuat halaman Prakata (halaman baru, tanpa nomor bab, masuk Daftar Isi).
/// Ucapan terima kasih hanya untuk pihak yang berkontribusi langsung
/// pada pengumpulan data dan penulisan tugas akhir.
///
/// Contoh:
///   #prakata[
///     Puji dan syukur penulis panjatkan kepada Tuhan Yang Maha Esa … sehingga
///     skripsi ini berhasil diselesaikan. …
///   ]
#let prakata(isi) = {
  pagebreak(weak: true)
  set par(first-line-indent: 0pt, leading: _leading, spacing: _leading, justify: true)
  set text(font: _font, size: _sz-body)

  heading(level: 1, numbering: none, outlined: true)[PRAKATA]
  counter(heading).update((ch, ..rest) => (calc.max(0, ch - 1),))

  v(_leading)
  set par(first-line-indent: 1cm, leading: _leading, spacing: _leading, justify: true)
  isi
}


// ─── Daftar Isi, Daftar Tabel, Daftar Gambar ─────────────────

/// Membuat halaman Daftar Isi otomatis (berdasarkan heading dalam naskah).
#let daftar-isi() = {
  pagebreak(weak: true)
  set par(first-line-indent: 0pt, leading: _leading, spacing: _leading)
  align(center)[
    #text(font: _font, size: _sz-bab, weight: "bold")[DAFTAR ISI]
  ]
  v(2 * _leading)
  show outline.entry: it => {
    if it.level == 1 { v(6pt, weak: true) }
    let prefix = it.prefix()
    grid(
      columns: (1fr, auto),
      column-gutter: 0.5em,
      {
        h((it.level - 1) * 1cm)
        link(it.element.location())[
          #if prefix != none {
            prefix
            h(0.5em)
          }
          #it.body()
        ]
      },
      align(right + bottom, link(it.element.location())[#it.page()]),
    )
  }
  outline(
    title: none,
    depth: 3,
  )
}

/// Membuat halaman Daftar Tabel otomatis.
/// Tampilkan jika jumlah tabel > 1 (PPTA Tabel 4).
#let daftar-tabel() = {
  pagebreak()
  set par(first-line-indent: 0pt, leading: _leading, spacing: _leading)
  heading(level: 1, numbering: none, outlined: true)[DAFTAR TABEL]
  counter(heading).update((ch, ..rest) => (calc.max(0, ch - 1),))
  show outline.entry: it => {
    let fig = it.element
    layout(size => context {
      let num = counter(figure.where(kind: table)).at(fig.location()).first()
      let prefix = [#num #h(0.5em)]
      let indent = measure(prefix).width
      grid(
        columns: (indent, 1fr, auto),
        gutter: 0.25em,
        prefix,
        [#set par(hanging-indent: 0pt); #link(fig.location())[#fig.caption.body]],
        align(bottom)[#link(fig.location())[#context counter(page).at(fig.location()).first()]],
      )
    })
  }
  outline(
    title: none,
    target: figure.where(kind: table),
  )
}

/// Membuat halaman Daftar Gambar otomatis.
/// Tampilkan jika jumlah gambar > 1 (PPTA Tabel 4).
#let daftar-gambar() = {
  pagebreak()
  set par(first-line-indent: 0pt, leading: _leading, spacing: _leading)
  heading(level: 1, numbering: none, outlined: true)[DAFTAR GAMBAR]
  counter(heading).update((ch, ..rest) => (calc.max(0, ch - 1),))
  show outline.entry: it => {
    let fig = it.element
    layout(size => context {
      let num = counter(figure.where(kind: image)).at(fig.location()).first()
      let prefix = [#num #h(0.5em)]
      let indent = measure(prefix).width
      grid(
        columns: (indent, 1fr, auto),
        gutter: 0.25em,
        prefix,
        [#set par(hanging-indent: 0pt); #link(fig.location())[#fig.caption.body]],
        align(bottom)[#link(fig.location())[#context counter(page).at(fig.location()).first()]],
      )
    })
  }
  outline(
    title: none,
    target: figure.where(kind: image),
  )
}

/// Membuat halaman Daftar Lampiran otomatis (tampilkan jika lampiran > 1).
#let daftar-lampiran() = {
  pagebreak()
  set par(first-line-indent: 0pt, leading: _leading, spacing: _leading)
  heading(level: 1, numbering: none, outlined: true)[DAFTAR LAMPIRAN]
  counter(heading).update((ch, ..rest) => (calc.max(0, ch - 1),))
  // Tampilkan hanya nomor urut (tanpa kata "Lampiran")
  show outline.entry: it => {
    let fig = it.element
    layout(size => context {
      let num = counter(figure.where(kind: "lampiran")).at(fig.location()).first()
      let prefix = [#num #h(0.5em)]
      let indent = measure(prefix).width
      grid(
        columns: (indent, 1fr, auto),
        gutter: 0.25em,
        prefix,
        [#set par(hanging-indent: 0pt); #link(fig.location())[#fig.caption.body]],
        align(bottom)[#link(fig.location())[#context counter(page).at(fig.location()).first()]],
      )
    })
  }
  // Lampiran dibuat sebagai figure dengan kind: "lampiran"
  outline(
    title: none,
    target: figure.where(kind: "lampiran"),
  )
}


// ─── Daftar Pustaka ───────────────────────────────────────────

/// Membuat halaman Daftar Pustaka (halaman baru, tanpa nomor bab).
/// Masuk dalam Daftar Isi.
///
/// Aturan PPTA Tabel 4: rujukan primer (artikel jurnal dan paten yang
/// relevan, terkini, asli), kredibel dan mutakhir (setidaknya 80% dalam
/// 1–10 tahun terakhir). Diktat dan buku ajar bukan rujukan primer.
/// Referensi lama berupa teori umum yang mapan tetap dapat dipakai terbatas.
/// Format entri "hanging indent" 1 cm.
///
/// Parameter:
///   bibfile - Path ke file .bib, relatif terhadap lib/ (mis. "reference.bib")
///   style   - Path ke file .csl, relatif terhadap lib/ (mis. "ipb.csl")
///
/// Contoh (dipanggil dari main.typ di root):
///   #daftar-pustaka("reference.bib", style: "ipb.csl")
#let daftar-pustaka(bibfile, style: "ipb.csl") = {
  pagebreak(weak: true)
  // Heading level 1 tanpa nomor bab, tetap masuk outline (Daftar Isi)
  heading(level: 1, numbering: none, outlined: true)[DAFTAR PUSTAKA]
  // Reset counter agar bab berikutnya tidak terganggu
  counter(heading).update((ch, ..rest) => (calc.max(0, ch - 1),))
  set par(
    first-line-indent: 0pt,
    hanging-indent: 1cm, // setiap entri: baris kedua dst. menjorok 1 cm
    leading: _leading,
    spacing: _leading,
    justify: true,
  )
  bibliography(bibfile, title: none, style: style)
}


// ─── Lampiran ─────────────────────────────────────────────────

/// Membuat halaman Lampiran (halaman baru, tanpa nomor bab).
/// Masuk dalam Daftar Isi. Semua lampiran harus dirujuk di dalam teks
/// bagian utama.
///
/// Untuk membuat lampiran bernomor, gunakan figure dengan kind: "lampiran":
///   #figure(
///     kind:      "lampiran",
///     supplement: [Lampiran],
///     caption:   [Judul Lampiran 1],
///   )[ konten lampiran ]
#let lampiran(isi) = {
  pagebreak(weak: true)
  heading(level: 1, numbering: none, outlined: true)[LAMPIRAN]
  counter(heading).update((ch, ..rest) => (calc.max(0, ch - 1),))
  set par(leading: _leading, spacing: _leading, justify: true)
  isi
}


// ─── Riwayat Hidup ────────────────────────────────────────────

/// Membuat halaman Riwayat Hidup (halaman baru, maks. 1 halaman).
/// Tidak masuk dalam Daftar Isi (outlined: false).
///
/// Contoh:
///   #riwayat-hidup[
///     Penulis dilahirkan di Bogor pada tanggal 1 Januari 2000 sebagai
///     anak pertama dari pasangan Bapak X dan Ibu Y. …
///   ]
#let riwayat-hidup(isi) = {
  pagebreak(weak: true)
  align(center)[
    #text(font: _font, size: _sz-bab, weight: "bold")[RIWAYAT HIDUP]
  ]
  v(_leading)
  set par(leading: _leading, spacing: _leading, first-line-indent: 1cm, justify: true)
  isi
}


// ─── Catatan Penggunaan Tambahan ──────────────────────────────
//
// KUTIPAN DALAM TEKS (PPTA Bab VII)
// ----------------------------------
// Kutipan singkat (≤ 3 baris): langsung di dalam teks
//   "… merantau bagi orang Minangkabau …" (Naim 1984:284).
//
// Kutipan panjang (blok): huruf lebih kecil, dipisah dari teks
//   #block(
//     inset: (left: 1cm, right: 1cm),
//   )[
//     #set text(size: 10pt)
//     Teks kutipan panjang …
//   ]
//
// RINCIAN DALAM SUBBAB (Suplemen 1 A butir 8)
// ---------------------------------------------
// Pengebaban tidak lebih dari 3 tingkatan. Rincian di dalam subbab
// maupun sub-subbab memakai huruf: a, b, c, dan seterusnya.
//
// Paragraf bertingkat (indentasi bertambah 0,5 cm dari paragraf di atasnya):
//   #bertingkat[
//     Paragraf bertingkat …
//   ]
//
// UKURAN HURUF CATATAN KAKI TABEL (Suplemen Ilustrasi Tabel)
// -------------------------------------------------------------
// Times New Roman 10pt atau Arial 9pt, jarak garis dasar–catatan kaki 3 pt:
//   #set text(size: 10pt) [Keterangan: xxx]


// -- GLOBAL VARIABLE

#let bulan-id = (
  "Januari",
  "Februari",
  "Maret",
  "April",
  "Mei",
  "Juni",
  "Juli",
  "Agustus",
  "September",
  "Oktober",
  "November",
  "Desember",
)
