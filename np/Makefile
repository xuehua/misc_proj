KDIR ?= /lib/modules/`uname -r`/build

ifneq ($(KERNELRELEASE),)

include Kbuild

else

default:
	$(MAKE) -C $(KDIR) M=$$PWD

install: default
	#$(MAKE) -C $(KDIR) M=$$PWD modules_install 
	install -m 777 nvme.ko /lib/modules/`uname -r`/kernel/drivers/block/

clean:
	$(MAKE) -C $(KDIR) M=$$PWD clean

endif

