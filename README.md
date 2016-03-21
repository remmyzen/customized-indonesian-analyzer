# Customized Indonesian Analyzer For Apache Lucene

## Motivation / Motivasi

Apache Lucene already provides analyzer for Bahasa Indonesia with stopword removal and stemmer [here](https://lucene.apache.org/core/5_5_0/analyzers-common/org/apache/lucene/analysis/id/IndonesianAnalyzer.html). However, the code doesn't provide feature to customize whether we want to use stopword removal and/or stemmer or not. This repository provide customized Indonesian Analyzer to turn stopword removal and/or stemmer process on or off. This repository also used for Advanced Information Retrieval course assignment in Fasilkom UI.

Apache Lucene sudah menyediakan *analyzer* untuk Bahasa Indonesia dengan pembuangan *stopword* dan imbuhan [di sini](https://lucene.apache.org/core/5_5_0/analyzers-common/org/apache/lucene/analysis/id/IndonesianAnalyzer.html). Namun, kode tersebut tidak menyediakan fitur untuk mengkustomisasi apakah kita ingin menggunakan pembuangan *stopword* dan/atau imbuhan atau tidak. Repositori ini menyediakan kustomisasi *analyzer* untuk Bahasa Indonesia yang dapat mengatur proses pembuangan *stopword* dan/atau imbuhan. Repositori ini juga digunakan untuk tugas kuliah Perolehan Informasi Lanjut di Fasilkom UI.

## How to Use / Cara Menggunakan

### Indexing / Pengindeksan
1. Change variables in IndexFiles file with your own settings. / Ganti variabel di berkas IndexFiles dengan pengaturan Anda.
```java
public static final String CORPUS_PATH = "corpus-example/"; 
public static final String INDEX_PATH = "index-example/";
private static final boolean USE_STEMMER = false;
private static final boolean USE_STOPWORD = false;
```
2. Use `compile_run_index.bat` or `compile_run_index.sh` to create the index / Gunakan `compile_run_index.bat` atau `compile_run_index.sh` untuk membuat indeks

### Searching / Pencarian
TODO
