# Loan-Classification-Analysis-in-UMKM-Sector
===
## Table of content
* **[Dataset](#backg)**
* **[Selection and correlation categorical data](#backg)**
* **[Correlation between numerical data](#backg)**

# Dataset

The dataset shows there are 17 columns consisting of 'NAMA_NASABAH', 'NOMOR_KONTRAK', 'DOMISILI', 'KARAKTER', 'KONDISI_USAHA', 'STATUS', 'PRODUK', 'PYD', 'TENOR','OSL', 'KEWAJIBAN', 'KOLEKTIBILITAS', 'COUNT_SURVEY', and 'REKOMENDASI_TINDAK_LANJUT'. The row that showed in dataset are 1.001 row.

![loan classification dataset](https://user-images.githubusercontent.com/106945977/174459929-edd9c6fe-8163-4897-ac5d-d9ee55f0afe6.png)

In the dataset, there is actually no need for a 'NAMA_NASABAH' column to be given a loan recommendation. Or in other words, a customer marker to be given a loan recommendation is enough to just look at the 'NOMOR_KONTRAK' column.

# Selection and correlation categorical data

There are datasets that are categorical and numeric. Category data can be selected through the columns "KONDISI_USAHA", "KONDISI_JAMINAN", "REKOMENDASI_TINDAK_LANJUT". in the "REKOMENDASI_TINGKAT_LANJUT" column needs to be changed to factor form by using the function as.factor.

To see the correlation between categorical data, Pearson chi square can be used between the following variables:

1. "KONDISI_USAHA" with "REKOMENDASI_TINDAK_LANJUT"

2. "KONDISI_JAMINAN" with "REKOMENDASI_TINDAK_LANJUT"

Based on the chi-square results, it is known that the test between variables at points 1 and 2 has a correlation each other (p < 0.05)

# Correlation between numerical data

In addition to looking at the relationship in categorical data, we can also see the relationship between numerical variables. numeric variable in the dataset namely 'TENOR', 'OSL', 'PRODUK', and 'PYD'. 

To find out the results of the correlation test on these numerical variables, the Pearson correlation test and the Kendall correlation test can be used with the help of visualization from the ggcorrplot and corrplot packages.

![pearson_corr_plot_visual](https://user-images.githubusercontent.com/106945977/174460701-af0e7328-0292-4ec7-8b5d-9f7a6ac0c60a.png)

![Correlogram_Data_Nasabah](https://user-images.githubusercontent.com/106945977/174460754-01288adf-9263-4b86-a6b1-6f1aefd44d08.png)

Pearson correlation result

![kendall_corr_plot_visual](https://user-images.githubusercontent.com/106945977/174460709-11eb6f30-7f44-4317-9778-a39a0c233d76.png)

Kendall correlation result

Based on the results of the Pearson and Kendall correlation, it is known that there are variables that have a positive correlation and a negative correlation. Variables that have a negative correlation such as 'PYD' with 'PRODUK', 'TENOR' with 'PRODUK', and 'OSL' with 'PRODUK' (negative correlation range value -1 to 0). While the variables that have a positive correlation such as 'TENOR' with 'PYD', 'OSL' with 'PYD' (highest positive correlation), and 'TENOR' with 'OSL' (positive correlation values ranging from 0 to 1).
