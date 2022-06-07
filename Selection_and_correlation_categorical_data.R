data = read.csv("https://storage.googleapis.com/dqlab-dataset/project.csv")

# Remove "X" and "Nama_Nasabah" column
data_reduce = data[-c(1,2)]

# selection categorical data
data_kategorik = data_reduce[,c("KONDISI_USAHA","KONDISI_JAMINAN","REKOMENDASI_TINDAK_LANJUT")]

# Change REKOMENDASI_TINDAK_LANJUT column as factor (using as.factor)
data_reduce$REKOMENDASI_TINDAK_LANJUT = as.factor(data_reduce$REKOMENDASI_TINDAK_LANJUT)

chisq.test(data_kategorik$KONDISI_USAHA, data_kategorik$REKOMENDASI_TINDAK_LANJUT)

chisq.test(data_kategorik$KONDISI_JAMINAN, data_kategorik$REKOMENDASI_TINDAK_LANJUT)
# if p < 0.05, then HO hypothesis is rejected (there is correlation between two variable)
