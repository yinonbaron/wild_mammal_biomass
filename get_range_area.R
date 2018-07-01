library('letsR')
library('rgdal')
data <- readOGR("/home/yinonbaron/Downloads/terrestrial_mammals/","TERRESTRIAL_MAMMALS")

range_size = data.frame(lets.rangesize(data))
range_size$id_no = row.names(range_size)
y =data.frame(id_no = data$id_no,binomial = data$binomial)
merged_data = merge(range_size,y,by='id_no')
e = merged_data[!duplicated(merged_data),]

mass_data = read.csv('/home/yinonbaron/git/iSDM/notebooks/PanTHERIA_1-0_WR05_Aug2008.csv',sep='\t')