**1. Ilustrasi Gambar: Grafik
1. 1. Pemilihan penggunaan warna**
    - Palet warna: Choosing color palettes for scientific figures
       https://onlinelibrary.wiley.com/doi/epdf/10.1002/rth2.
    - Simulasi palet warna: https://colorbrewer2.org/
    - Simulasi buta warna: a free color blindness simulator for Windows, Mac and Linux
       https://colororacle.org/
**1. 2. Jenis grafik umum**

**_Diagram batang_**

```
● menunjukkan peringkat di antara peubah, mengungkapkan pengelompokan di antara peubah,
atau membandingkan kisaran data dalam peubah tertentu
● balok-balok data harus mudah dibedakan dengan warna atau arsiran dan ditambahkan error
bar
● balok data yang sangat banyak dapat disajikan dengan diagram lollipop (Gambar 1.2)
● diagram dapat dibuat horizontal jika label peubah atau data yang terlalu panjang
● pengurutan balok berdasarkan nilai biasanya akan memberikan informasi lain
```
Gambar 1 Pemilihan warna dan motif batang pada diagram batang yang jelas menunjukkan
keterbacaan _error bar_ , (a) dua batang dengan penanda signifikansi (*), (b) beberapa
batang dengan variasi warna yang ramah buta warna dan motif yang berbeda namun
mudah dibaca. Penanda statistika (asteriks atau huruf) dapat diletakkan langsung di atas
balok. Notasi pada tiap batang sudah jelas sehingga legenda tidak dicantumkan. Legenda
atau keterangan lain dapat dicantumkan di judul gambar. Data pada diagram adalah
random dan dibuat dengan Microsoft Excel fo Mac Version 16.89.


Gambar 2 Alternatif diagram batang dengan banyak data. (a) Diagram lolipop yang menunjukkan
jumlah senjata pada beberapa negara dan (b) diagram Cleveland yang membandingkan
dua nilai numerik. Gambar (a) juga menunjukkan pengurutan nilai dari terbesar ke
terkecil yang memberikan kemudahan pemahaman terhadap data. Data direproduksi
dari https://www.data-to-viz.com/graph/lollipop.html dengan menggunakan RStudio
Version 2023.06.1+524.

**_Diagram garis_**

```
● menyajikan perubahan data suatu peubah pada suatu rentang (contoh: waktu)
● menunjukkan trend pada data
● peubah yang banyak (~5) disajikan dalam spaghetti chart, dengan banyak garis disajikan
bersamaan
```
Gambar 3 Variasi diagram garis dengan pembeda warna (a) dan jenis garis (b). Penempatan posisi
legenda dapat disesuaikan dengan kebutuhan. Data pada diagram adalah random dan
dibuat dengan Microsoft Excel for Mac Version 16.89.


Gambar 4 Diagram garis dengan 3 dataset yang menunjukan perubahan popularitas nama bayi di
Amerika Serikat. Anotasi sederhana pada garis (nama bayi) bisa membuat proses
pemahaman data lebih mudah. Data direproduksi dari https://r-graph-gallery.com/line-
chart-several-groups-ggplot2.html dengan menggunakan RStudio Version
2023.06.1+524.

**Grafik Pencar (** **_Scatter plot_** **)**

```
● menunjukkan hubungan antar dua peubah, peubah pertama diplotkan pada sumbu x, peubah
kedua pada sumbu y, biasanya disertai dengan koefisien korelasi
● hati-hati jika ukuran sampelnya besar, grafik akan overplotting
● indikasikan subgroup , jika ada
```
Gambar 5 Contoh grafik pencar sederhana. Kiri: marker lingkaran abu-abu adalah poin data dari
dua variabel (x dan y) yang bisa merepresentasikan suatu hubungan. Garis putus-putus
berwarna merah menunjukkan garis fungsi dari dataset. Data adalah random dan dibuat
dengan Microsoft Excel fo Mac Version 16.89. Kanan: Contoh grafik pencar dengan
data yang banyak. Data direproduksi dari https://www.data-to-
viz.com/graph/scatter.html dengan menggunakan RStudio Version 2023.06.1+524.


Gambar 6 Bubble plot, alternatif grafik pencar, yang menunjukkan harapan hidup (sumbu y), GDP
per kapita (sumbu x), dan populasi negara (ukuran marker lingkaran yang berbeda). Data
direproduksi dari https://www.data-to-viz.com/graph/bubble.html dengan
menggunakan RStudio Version 2023.06.1+524.

Gambar 7 Lebar dan panjang petal dari dataset bunga Iris (Unwin & Kleinman 2021) dalam grafik
pencar. Bentuk dan warna berbeda menunjukkan jenis Iris. Grafik pencar menunjukkan
pola perbedaan ukuran sepal dan petal Iris. Data direproduksi dari dataset Iris dengan
Orange Data Mining Version 3.37.


**_Box and whisker plot_** **(** **_box plot_** **)**

```
● menunjukkan distribusi data dan pencilan
● secara detail menunjukan nilai tertinggi, kuartil atas, median, kuartil bawah, dan nilai terendah
● jika ukuran sampel tidak tercerminkan dalam plot, informasikan dalam judul
```
Gambar 8 _Box and whisker plot_ sederhana dengan menggunakan Microsoft Excel. Tanda x di
tengah batang menunjukkan rata-rata. Pada “c” terdapat satu nilai pencilan. _Inner points_
menunjukkan ukuran sampel, (a) plot tanpa _inner points_ , (b) plot dengan _inner points_.
Data pada diagram adalah random dan dibuat dengan Microsoft Excel fo Mac Version
16.89.

Gambar 9 Kombinasi _box and whisker plot_ dengan _violin plot_. _Violin plot_ menunjukkan estimasi
kepadatan kernel yang memperlihatkan sebaran data ( _inner points_ ) dalam sampel. Nilai
n di bawah menunjukkan jumlah sampel. Data direproduksi dari https://r-graph-
gallery.com/violin_and_boxplot_ggplot2.html dengan menggunakan RStudio Version
2023.06.1+524.


**Histogram**

```
● menunjukkan distribusi frekuensi dari data numerik yang dicirikan dengan pemisahan data
dalam bentuk beberapa bin ( data range )
● variasi ukuran bin yang bisa memberikan kesimpulan berbeda
● umumnya menggunakan satu warna untuk satu data
● membandingkan 3 kelompok data dalam satu histogram tidak disarankan, gunakan alternatif
seperti violin plot atau ridgeline plot
```
```
Gambar 10 Dua histogram dari dataset yang sama. (a) bin diatur otomatis, (b) bin diatur dengan
rentang ‘5’. Perbedaan penggunaan bin dapat membedakan kesan data. Data pada
diagram adalah random dan dibuat dengan Microsoft Excel fo Mac Version 16.89.
```
```
Gambar 11 Beberapa histogram dari dataset yang sama dengan tiga variasi bin. (a) bin = 3, (b)
bin = 15, (c) bin = 30. Data direproduksi dari https://r-graph-gallery.com/220-basic-
ggplot2-histogram.html dengan menggunakan RStudio Version 2023.06.1+524.
```

**Diagram Lingkar (** **_pie chart_** **)**

```
● Fokusnya adalah untuk memberikan gambaran proporsi secara cepat, bukan untuk
perbandingan data yang presisi.
● Hanya efektif jika memiliki kategori yang sangat sedikit (idealnya 2-5 kategori).
● Notasi diperlukan karena mata manusia tidak pandai membandingkan ukuran sudut, sehingga
sulit melihat perbedaan antara irisan yang nilainya berdekatan (misal, 25% vs 30%). Dengan
demikian, pelabelan langsung lebih disukai disbanding legenda.
● Untuk cetak hitam putih dapat digunakan arsiran atau gradasi warna hitam ke abu-abu
● Alternatif :
○ Diagram Batang ( Bar Chart ): Hampir selalu menjadi pilihan yang lebih baik. Panjang
batang jauh lebih mudah dibandingkan secara akurat daripada sudut irisan.
○ Tabel Sederhana: Jika angka yang presisi adalah yang terpenting, tabel jauh lebih jelas,
akurat, dan hemat tempat.
```
```
Gambar 1 2 Contoh variasi diagram lingkar. (a-c) diagram dengan warna, diagram bisa disajikan
dalam bentuk persentase (a) atau nilai datanya (b). Perhatikan bahwa kategori yang
banyak kurang efektif disajikan dalam diagram lingkar (c). (d) diagram dengan
arsiran. Data dummy disajikan dengan menggunakan Excel Microsoft 365 (64-bit).
```

**2. Ilustrasi Gambar: Bagan Alir**

```
● menunjukkan tahapan kegiatan atau hubungan sebab-akibat suatu aktivitas (kerangka
pemikiran) atau keterkaitan antara satu kegiatan atau proses dan proses lainnya (analisis
sistem)
● berupa konstruksi sederhana bangun dua dimensi dengan teks jelas yang menunjukkan
aktivitas dan panah yang menunjukkan alur aktivitasnya
● variasi bentuk menunjukkan aktivitas tertentu, oval untuk awal atau akhir, persegi panjang
untuk proses, dan jajar genjang atau diamond untuk pengambilan keputusan
● alur biasanya mengarah dari atas ke bawah atau kiri ke kanan
```
```
Gambar 1 3 Bagan alir berupa kerangka pemikirian (Setyaningsih 2019)
```

**3. Ilustrasi Gambar: Sketsa dan Model**

```
● sketsa dapat dibuat untuk graphical abstract hasil penelitian, layout percobaan atau lapang,
atau metode penelitian dengan menggunakan gambar tangan atau komputer
● sketsa menjelaskan klarifikasi konsep yang kompleks (seperti struktur anatomi organisme,
jalur biokimia), highlight informasi penting, atau menyimpulkan sesuatu
● model dalam visualisasi data termasuk model 3D protein, Bohr model of the atom , agent-
based model , fluid-flow model of electricity , bukan model matematika untuk suatu fungsi,
simulasi atau prediksi
```
```
Gambar 1 4 Sketsa konsep biologi rangkuman hasil penelitian. Konsep diperoleh dari
https://doi.org/10.1038/s41467- 025 - 64138 - y
```
```
Gambar 15 Model tiga dimensi protein SARS-CoV-2 S yang berikatan dengan pT1679 Fab
(lingkaran merah). Model diperoleh dari https://doi.org/10.1128/mbio.00606- 25
```

**4. Ilustrasi Gambar: Luaran Instrumen**

```
● berasal dari instrumen analisis, contoh: kromatogram, spektrum, elektrokardiogram, dan
seismogram
● penyajian luaran bisa diletakkan di badan tulisan atau sebagai lampiran
● luaran yang langsung menunjukan suatu informasi bisa dianotasi untuk memperjelas cerita
● jenis dan ukuran font sebaiknya disamakan dengan tubuh tulisan
```
**5. Contoh-contoh Peta**

```
Gambar 16 Peta yang menunjukkan lokasi penelitian (Ankober District). Perbedaan warna
menunjukkan inset untuk masing-masing wilayah yang diperbesar. Gambar
diperoleh dari https://doi.org/10.1186/1746- 4269 - 10 - 21
```
```
Gambar 17 Peta lokasi penelitian dan titik sampel penelitian di Hutan Gunung Walat sebagai
hutan pendidikan IPB yang terletak di KabupatenSukabumi, Jawa Barat, Indonesia
(dimodifikasi dari Kaban et al. (2017) Hayati J Biosci. 24(2):72−78)
```

Gambar 18 Peta _choropleth_ (dengan data, tematik) yang menunjukkan perbedaan jumlah
penduduk di pulau Jawa. Data pada peta berasal dari dataset Jumlah Penduduk
Menurut Provinsi di Indonesia (BPS 2024) dan dibuat dengan Microsoft Excel for
Mac Version 16.89.

Gambar 19 Peta yang menunjukkan hasil pengamatan perubahan penggunaan lahan di Kutai
Barat dan Mahakam Ulu, A periode 1990 - 200, B 2000-2009. Perbedaan warna
menunjukkan perbedaan kejadian perubahan suatu luasan lahan. Gambar diperoleh
dari https://doi.org/10.1186/1746- 4269 - 10 - 21


**6. Contoh-contoh Foto**

```
Gambar 20 Contoh foto dengan berbagai kelengkapan anotasi dan skala. Gambar diperoleh dari
https://doi.org/10.4308/hjb.31.6.1082- 1094
```
```
Gambar 21 Contoh foto dengan kamera biasa dan luaran suatu instrumen dengan berbagai
kelengkapan anotasi dan skala. Foto menunjukkan representasi interaksi semut dan
daun Venus sp. tipe liar (a, c) dan daun mutan dmmsl10 #1 (b, d). Gambar diperoleh
dari https://doi.org/10.1038/s41467- 025 - 63419 - w
```

**1. Ilustrasi Gambar: Grafik
1. 1. Pemilihan penggunaan warna**
    - Palet warna: Choosing color palettes for scientific figures
       https://onlinelibrary.wiley.com/doi/epdf/10.1002/rth2.
    - Simulasi palet warna: https://colorbrewer2.org/
    - Simulasi buta warna: a free color blindness simulator for Windows, Mac and Linux
       https://colororacle.org/
**1. 2. Jenis grafik umum**

**_Diagram batang_**

```
● menunjukkan peringkat di antara peubah, mengungkapkan pengelompokan di antara peubah,
atau membandingkan kisaran data dalam peubah tertentu
● balok-balok data harus mudah dibedakan dengan warna atau arsiran dan ditambahkan error
bar
● balok data yang sangat banyak dapat disajikan dengan diagram lollipop (Gambar 1.2)
● diagram dapat dibuat horizontal jika label peubah atau data yang terlalu panjang
● pengurutan balok berdasarkan nilai biasanya akan memberikan informasi lain
```
Gambar 1 Pemilihan warna dan motif batang pada diagram batang yang jelas menunjukkan
keterbacaan _error bar_ , (a) dua batang dengan penanda signifikansi (*), (b) beberapa
batang dengan variasi warna yang ramah buta warna dan motif yang berbeda namun
mudah dibaca. Penanda statistika (asteriks atau huruf) dapat diletakkan langsung di atas
balok. Notasi pada tiap batang sudah jelas sehingga legenda tidak dicantumkan. Legenda
atau keterangan lain dapat dicantumkan di judul gambar. Data pada diagram adalah
random dan dibuat dengan Microsoft Excel fo Mac Version 16.89.


Gambar 2 Alternatif diagram batang dengan banyak data. (a) Diagram lolipop yang menunjukkan
jumlah senjata pada beberapa negara dan (b) diagram Cleveland yang membandingkan
dua nilai numerik. Gambar (a) juga menunjukkan pengurutan nilai dari terbesar ke
terkecil yang memberikan kemudahan pemahaman terhadap data. Data direproduksi
dari https://www.data-to-viz.com/graph/lollipop.html dengan menggunakan RStudio
Version 2023.06.1+524.

**_Diagram garis_**

```
● menyajikan perubahan data suatu peubah pada suatu rentang (contoh: waktu)
● menunjukkan trend pada data
● peubah yang banyak (~5) disajikan dalam spaghetti chart, dengan banyak garis disajikan
bersamaan
```
Gambar 3 Variasi diagram garis dengan pembeda warna (a) dan jenis garis (b). Penempatan posisi
legenda dapat disesuaikan dengan kebutuhan. Data pada diagram adalah random dan
dibuat dengan Microsoft Excel for Mac Version 16.89.


Gambar 4 Diagram garis dengan 3 dataset yang menunjukan perubahan popularitas nama bayi di
Amerika Serikat. Anotasi sederhana pada garis (nama bayi) bisa membuat proses
pemahaman data lebih mudah. Data direproduksi dari https://r-graph-gallery.com/line-
chart-several-groups-ggplot2.html dengan menggunakan RStudio Version
2023.06.1+524.

**Grafik Pencar (** **_Scatter plot_** **)**

```
● menunjukkan hubungan antar dua peubah, peubah pertama diplotkan pada sumbu x, peubah
kedua pada sumbu y, biasanya disertai dengan koefisien korelasi
● hati-hati jika ukuran sampelnya besar, grafik akan overplotting
● indikasikan subgroup , jika ada
```
Gambar 5 Contoh grafik pencar sederhana. Kiri: marker lingkaran abu-abu adalah poin data dari
dua variabel (x dan y) yang bisa merepresentasikan suatu hubungan. Garis putus-putus
berwarna merah menunjukkan garis fungsi dari dataset. Data adalah random dan dibuat
dengan Microsoft Excel fo Mac Version 16.89. Kanan: Contoh grafik pencar dengan
data yang banyak. Data direproduksi dari https://www.data-to-
viz.com/graph/scatter.html dengan menggunakan RStudio Version 2023.06.1+524.


Gambar 6 Bubble plot, alternatif grafik pencar, yang menunjukkan harapan hidup (sumbu y), GDP
per kapita (sumbu x), dan populasi negara (ukuran marker lingkaran yang berbeda). Data
direproduksi dari https://www.data-to-viz.com/graph/bubble.html dengan
menggunakan RStudio Version 2023.06.1+524.

Gambar 7 Lebar dan panjang petal dari dataset bunga Iris (Unwin & Kleinman 2021) dalam grafik
pencar. Bentuk dan warna berbeda menunjukkan jenis Iris. Grafik pencar menunjukkan
pola perbedaan ukuran sepal dan petal Iris. Data direproduksi dari dataset Iris dengan
Orange Data Mining Version 3.37.


**_Box and whisker plot_** **(** **_box plot_** **)**

```
● menunjukkan distribusi data dan pencilan
● secara detail menunjukan nilai tertinggi, kuartil atas, median, kuartil bawah, dan nilai terendah
● jika ukuran sampel tidak tercerminkan dalam plot, informasikan dalam judul
```
Gambar 8 _Box and whisker plot_ sederhana dengan menggunakan Microsoft Excel. Tanda x di
tengah batang menunjukkan rata-rata. Pada “c” terdapat satu nilai pencilan. _Inner points_
menunjukkan ukuran sampel, (a) plot tanpa _inner points_ , (b) plot dengan _inner points_.
Data pada diagram adalah random dan dibuat dengan Microsoft Excel fo Mac Version
16.89.

Gambar 9 Kombinasi _box and whisker plot_ dengan _violin plot_. _Violin plot_ menunjukkan estimasi
kepadatan kernel yang memperlihatkan sebaran data ( _inner points_ ) dalam sampel. Nilai
n di bawah menunjukkan jumlah sampel. Data direproduksi dari https://r-graph-
gallery.com/violin_and_boxplot_ggplot2.html dengan menggunakan RStudio Version
2023.06.1+524.


**Histogram**

```
● menunjukkan distribusi frekuensi dari data numerik yang dicirikan dengan pemisahan data
dalam bentuk beberapa bin ( data range )
● variasi ukuran bin yang bisa memberikan kesimpulan berbeda
● umumnya menggunakan satu warna untuk satu data
● membandingkan 3 kelompok data dalam satu histogram tidak disarankan, gunakan alternatif
seperti violin plot atau ridgeline plot
```
```
Gambar 10 Dua histogram dari dataset yang sama. (a) bin diatur otomatis, (b) bin diatur dengan
rentang ‘5’. Perbedaan penggunaan bin dapat membedakan kesan data. Data pada
diagram adalah random dan dibuat dengan Microsoft Excel fo Mac Version 16.89.
```
```
Gambar 11 Beberapa histogram dari dataset yang sama dengan tiga variasi bin. (a) bin = 3, (b)
bin = 15, (c) bin = 30. Data direproduksi dari https://r-graph-gallery.com/220-basic-
ggplot2-histogram.html dengan menggunakan RStudio Version 2023.06.1+524.
```

**Diagram Lingkar (** **_pie chart_** **)**

```
● Fokusnya adalah untuk memberikan gambaran proporsi secara cepat, bukan untuk
perbandingan data yang presisi.
● Hanya efektif jika memiliki kategori yang sangat sedikit (idealnya 2-5 kategori).
● Notasi diperlukan karena mata manusia tidak pandai membandingkan ukuran sudut, sehingga
sulit melihat perbedaan antara irisan yang nilainya berdekatan (misal, 25% vs 30%). Dengan
demikian, pelabelan langsung lebih disukai disbanding legenda.
● Untuk cetak hitam putih dapat digunakan arsiran atau gradasi warna hitam ke abu-abu
● Alternatif :
○ Diagram Batang ( Bar Chart ): Hampir selalu menjadi pilihan yang lebih baik. Panjang
batang jauh lebih mudah dibandingkan secara akurat daripada sudut irisan.
○ Tabel Sederhana: Jika angka yang presisi adalah yang terpenting, tabel jauh lebih jelas,
akurat, dan hemat tempat.
```
```
Gambar 1 2 Contoh variasi diagram lingkar. (a-c) diagram dengan warna, diagram bisa disajikan
dalam bentuk persentase (a) atau nilai datanya (b). Perhatikan bahwa kategori yang
banyak kurang efektif disajikan dalam diagram lingkar (c). (d) diagram dengan
arsiran. Data dummy disajikan dengan menggunakan Excel Microsoft 365 (64-bit).
```

**2. Ilustrasi Gambar: Bagan Alir**

```
● menunjukkan tahapan kegiatan atau hubungan sebab-akibat suatu aktivitas (kerangka
pemikiran) atau keterkaitan antara satu kegiatan atau proses dan proses lainnya (analisis
sistem)
● berupa konstruksi sederhana bangun dua dimensi dengan teks jelas yang menunjukkan
aktivitas dan panah yang menunjukkan alur aktivitasnya
● variasi bentuk menunjukkan aktivitas tertentu, oval untuk awal atau akhir, persegi panjang
untuk proses, dan jajar genjang atau diamond untuk pengambilan keputusan
● alur biasanya mengarah dari atas ke bawah atau kiri ke kanan
```
```
Gambar 1 3 Bagan alir berupa kerangka pemikirian (Setyaningsih 2019)
```

**3. Ilustrasi Gambar: Sketsa dan Model**

```
● sketsa dapat dibuat untuk graphical abstract hasil penelitian, layout percobaan atau lapang,
atau metode penelitian dengan menggunakan gambar tangan atau komputer
● sketsa menjelaskan klarifikasi konsep yang kompleks (seperti struktur anatomi organisme,
jalur biokimia), highlight informasi penting, atau menyimpulkan sesuatu
● model dalam visualisasi data termasuk model 3D protein, Bohr model of the atom , agent-
based model , fluid-flow model of electricity , bukan model matematika untuk suatu fungsi,
simulasi atau prediksi
```
```
Gambar 1 4 Sketsa konsep biologi rangkuman hasil penelitian. Konsep diperoleh dari
https://doi.org/10.1038/s41467- 025 - 64138 - y
```
```
Gambar 15 Model tiga dimensi protein SARS-CoV-2 S yang berikatan dengan pT1679 Fab
(lingkaran merah). Model diperoleh dari https://doi.org/10.1128/mbio.00606- 25
```

**4. Ilustrasi Gambar: Luaran Instrumen**

```
● berasal dari instrumen analisis, contoh: kromatogram, spektrum, elektrokardiogram, dan
seismogram
● penyajian luaran bisa diletakkan di badan tulisan atau sebagai lampiran
● luaran yang langsung menunjukan suatu informasi bisa dianotasi untuk memperjelas cerita
● jenis dan ukuran font sebaiknya disamakan dengan tubuh tulisan
```
**5. Contoh-contoh Peta**

```
Gambar 16 Peta yang menunjukkan lokasi penelitian (Ankober District). Perbedaan warna
menunjukkan inset untuk masing-masing wilayah yang diperbesar. Gambar
diperoleh dari https://doi.org/10.1186/1746- 4269 - 10 - 21
```
```
Gambar 17 Peta lokasi penelitian dan titik sampel penelitian di Hutan Gunung Walat sebagai
hutan pendidikan IPB yang terletak di KabupatenSukabumi, Jawa Barat, Indonesia
(dimodifikasi dari Kaban et al. (2017) Hayati J Biosci. 24(2):72−78)
```

Gambar 18 Peta _choropleth_ (dengan data, tematik) yang menunjukkan perbedaan jumlah
penduduk di pulau Jawa. Data pada peta berasal dari dataset Jumlah Penduduk
Menurut Provinsi di Indonesia (BPS 2024) dan dibuat dengan Microsoft Excel for
Mac Version 16.89.

Gambar 19 Peta yang menunjukkan hasil pengamatan perubahan penggunaan lahan di Kutai
Barat dan Mahakam Ulu, A periode 1990 - 200, B 2000-2009. Perbedaan warna
menunjukkan perbedaan kejadian perubahan suatu luasan lahan. Gambar diperoleh
dari https://doi.org/10.1186/1746- 4269 - 10 - 21


**6. Contoh-contoh Foto**

```
Gambar 20 Contoh foto dengan berbagai kelengkapan anotasi dan skala. Gambar diperoleh dari
https://doi.org/10.4308/hjb.31.6.1082- 1094
```
```
Gambar 21 Contoh foto dengan kamera biasa dan luaran suatu instrumen dengan berbagai
kelengkapan anotasi dan skala. Foto menunjukkan representasi interaksi semut dan
daun Venus sp. tipe liar (a, c) dan daun mutan dmmsl10 #1 (b, d). Gambar diperoleh
dari https://doi.org/10.1038/s41467- 025 - 63419 - w
```


