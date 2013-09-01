insmod nvme.ko 
irqbalance -o -h exact
sh run_fio -m read
modprobe -r nvme
