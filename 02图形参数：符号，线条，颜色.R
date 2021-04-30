dose <-c(20,30,40,45,60)
drugA<-c(16,20,27,40,60)
drugb<-c(15,18,25,31,40)
#图形参数：符号，线条，颜色#
plot(dose,drugA,type="b")
par(lty=1,pch=25)#pch指定绘点时的点符号类型，有0-25#
                #lty指定线条类型，有1-6#
plot(dose,drugA,type="b",lty=6,lwd=1.5,pch=19,cex=1.5)
                #cex指定绘点时的点大小#
                #lwd指定线条粗细#
plot(dose,drugA,type="b",col="yellow3",fg=8,bg=3)
  #col:指定绘图颜色#
  #fg：前景色  bg：背景色#
#col.axis:坐标轴刻度文字颜色  col.lab：坐标轴标签颜色#
#col.main:标题颜色   col.sub:副标题颜色#