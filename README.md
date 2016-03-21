# Customized Indonesian Analyzer For Apache Lucene

## Motivation / Motivasi

Apache Lucene already provides analyzer for Bahasa Indonesia with stopword removal and stemmer [here](https://lucene.apache.org/core/5_5_0/analyzers-common/org/apache/lucene/analysis/id/IndonesianAnalyzer.html). However, the code doesn't provide feature to customize whether we want to use stopword removal and/or stemmer or not. This repository provide customized Indonesian Analyzer to turn stopword removal and/or stemmer process on or off. This repository also used for Advanced Information Retrieval course assignment in [Faculty of Computer Science Universitas Indonesia](http://www.cs.ui.ac.id/?lang=en).

Apache Lucene sudah menyediakan *analyzer* untuk Bahasa Indonesia dengan pembuangan *stopword* dan imbuhan [di sini](https://lucene.apache.org/core/5_5_0/analyzers-common/org/apache/lucene/analysis/id/IndonesianAnalyzer.html). Namun, kode tersebut tidak menyediakan fitur untuk mengkustomisasi apakah kita ingin menggunakan pembuangan *stopword* dan/atau imbuhan atau tidak. Repositori ini menyediakan kustomisasi *analyzer* untuk Bahasa Indonesia yang dapat mengatur proses pembuangan *stopword* dan/atau imbuhan. Repositori ini juga digunakan untuk tugas kuliah Perolehan Informasi Lanjut di [Fakultas Ilmu Komputer Universitas Indonesia](http://www.cs.ui.ac.id).

## How to Use / Cara Menggunakan

### Indexing / Pengindeksan
* Put your corpus of text files in a folder, see [`corpus-example`](https://github.com/remmyzen/customized-indonesian-analyzer/tree/master/corpus-example) folder for example.
* Change variables in IndexFiles file with your own settings. / Ganti variabel di berkas IndexFiles dengan pengaturan Anda.
```java
// Corpus Path of text files to be indexed
public static final String CORPUS_PATH = "corpus-example/";
// Path for index result
public static final String INDEX_PATH = "index-example/";
// True if you want to use stemmer, false otherwise
private static final boolean USE_STEMMER = false;
// True if you want to use stopword removal, false otherwise
private static final boolean USE_STOPWORD = false;
```
* Use `compile_run_index.bat` or `compile_run_index.sh` to create the index. / Gunakan `compile_run_index.bat` atau `compile_run_index.sh` untuk membuat indeks.
* The result of your index will be available in the folder specified in `INDEX_PATH` variable. / Hasil index Anda akan tersedia pada folder yang dispesifikasikan pada variabel `INDEX_PATH`.

### Searching / Pencarian
* Change variables in SearchFiles file with your own settings. / Ganti variabel di berkas SearchFiles dengan pengaturan Anda.
```java
// Index from IndexFiles path
public static final String INDEX_PATH = "index-example/";
// True if you want to use stemmer, false otherwise
public static final boolean USE_STEMMER = false;
// True if you want to use stopword removal, false otherwise
public static final boolean USE_STOPWORD = false;
```
**IMPORTANT NOTE**: Make sure your SearchFiles use the same configuration as the index in `INDEX_PATH`. For example: If you create your index using stemmer but not stopword removal, then you should also set `USE_STEMMER = true` and `USE_STOPWORD = false` in SearchFiles.

**CATATAN PENTING**: Pastikan SearchFiles menggunakan konfigurasi yang sama dengan index yang ada di `INDEX_PATH`. Contoh: Jika Anda membuat index menggunakan pembuangan imbuhan tetapi tidak pembuangan *stopword*, maka Anda juga harus membuat `USE_STEMMER = true` dan `USE_STOPWORD = false` di berkas SearchFiles.

* Use `compile_run_search.bat` or `compile_run_search.sh` to create the index. / Gunakan `compile_run_search.bat` atau `compile_run_search.sh` untuk membuat indeks.
* The result of your index will be available in the folder specified in `INDEX_PATH` variable. / Hasil index Anda akan tersedia pada folder yang dispesifikasikan pada variabel `INDEX_PATH`.

## Contact / Kontak
Feel free to contact me at remmy.augusta [at] ui.ac.id for any inquiries.

Silakan kontak saya di remmy.augusta [at] ui.ac.id untuk pertanyaan apapun.

