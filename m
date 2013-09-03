Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qc0-f169.google.com ([209.85.216.169])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VGgH2-0003tS-OZ
 for barebox@lists.infradead.org; Tue, 03 Sep 2013 02:23:23 +0000
Received: by mail-qc0-f169.google.com with SMTP id k8so2394109qcq.28
 for <barebox@lists.infradead.org>; Mon, 02 Sep 2013 19:22:59 -0700 (PDT)
From: Darren Garnier <dgarnier@reinrag.net>
Message-Id: <58FB74C2-85EF-43A1-A491-D78CF5DA585E@reinrag.net>
Date: Mon, 2 Sep 2013 22:22:58 -0400
Mime-Version: 1.0 (Mac OS X Mail 6.5 \(1508\))
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 4/4] ARM: support for CPO Science DataCollector II
To: barebox@lists.infradead.org

Signed-off-by: Darren Garnier <dgarnier@reinrag.net>
---
arch/arm/boards/Makefile                  |   1 +
arch/arm/boards/cpodc2/Makefile           |   4 +
arch/arm/boards/cpodc2/env/boot/dataflash |  10 +
arch/arm/boards/cpodc2/env/boot/net-usb   |  22 ++
arch/arm/boards/cpodc2/env/config-board   |   6 +
arch/arm/boards/cpodc2/env/dfu.png        | Bin 0 -> 1669 bytes
arch/arm/boards/cpodc2/env/init/automount |  12 +
arch/arm/boards/cpodc2/env/init/msp430    |  10 +
arch/arm/boards/cpodc2/env/init/mtdparts  |  19 ++
arch/arm/boards/cpodc2/env/init/splash    |   8 +
arch/arm/boards/cpodc2/env/init/usb       |  55 ++++
arch/arm/boards/cpodc2/env/splash.png     | Bin 0 -> 1356 bytes
arch/arm/boards/cpodc2/env/usb.png        | Bin 0 -> 339 bytes
arch/arm/boards/cpodc2/init.c             | 364 +++++++++++++++++++++
arch/arm/boards/cpodc2/lowlevel_init.c    | 108 +++++++
arch/arm/boards/cpodc2/msp430.c           | 513 ++++++++++++++++++++++++++++++
arch/arm/boards/cpodc2/msp430.h           |  23 ++
arch/arm/configs/cpodc2_defconfig         |  96 ++++++
arch/arm/mach-at91/Kconfig                |  24 ++
19 files changed, 1275 insertions(+)
create mode 100644 arch/arm/boards/cpodc2/Makefile
create mode 100755 arch/arm/boards/cpodc2/env/boot/dataflash
create mode 100755 arch/arm/boards/cpodc2/env/boot/net-usb
create mode 100755 arch/arm/boards/cpodc2/env/config-board
create mode 100644 arch/arm/boards/cpodc2/env/dfu.png
create mode 100755 arch/arm/boards/cpodc2/env/init/automount
create mode 100644 arch/arm/boards/cpodc2/env/init/msp430
create mode 100755 arch/arm/boards/cpodc2/env/init/mtdparts
create mode 100755 arch/arm/boards/cpodc2/env/init/splash
create mode 100755 arch/arm/boards/cpodc2/env/init/usb
create mode 100644 arch/arm/boards/cpodc2/env/splash.png
create mode 100644 arch/arm/boards/cpodc2/env/usb.png
create mode 100644 arch/arm/boards/cpodc2/init.c
create mode 100644 arch/arm/boards/cpodc2/lowlevel_init.c
create mode 100644 arch/arm/boards/cpodc2/msp430.c
create mode 100644 arch/arm/boards/cpodc2/msp430.h
create mode 100644 arch/arm/configs/cpodc2_defconfig

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 38ef512..0c93187 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -16,6 +16,7 @@ obj-$(CONFIG_MACH_CCMX51)			+= ccxmx51/
obj-$(CONFIG_MACH_CFA10036)			+= crystalfontz-cfa10036/
obj-$(CONFIG_MACH_CHUMBY)			+= chumby_falconwing/
obj-$(CONFIG_MACH_CLEP7212)			+= clep7212/
+obj-$(CONFIG_MACH_CPODC2)			+= cpodc2/
obj-$(CONFIG_MACH_DFI_FS700_M60)		+= dfi-fs700-m60/
obj-$(CONFIG_MACH_DSS11)			+= dss11/
obj-$(CONFIG_MACH_EDB93012)			+= edb93xx/
diff --git a/arch/arm/boards/cpodc2/Makefile b/arch/arm/boards/cpodc2/Makefile
new file mode 100644
index 0000000..2bfa4fa
--- /dev/null
+++ b/arch/arm/boards/cpodc2/Makefile
@@ -0,0 +1,4 @@
+obj-y += init.o
+obj-$(CONFIG_CPODC2_MSP430) += msp430.o
+
+lwl-$(CONFIG_HAVE_AT91_LOWLEVEL_INIT) += lowlevel_init.o
diff --git a/arch/arm/boards/cpodc2/env/boot/dataflash b/arch/arm/boards/cpodc2/env/boot/dataflash
new file mode 100755
index 0000000..bc59750
--- /dev/null
+++ b/arch/arm/boards/cpodc2/env/boot/dataflash
@@ -0,0 +1,10 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	boot-menu-add-entry "$0" "dataflash"
+	exit
+fi
+
+global.bootm.image="/dev/dataflash0.kernel"
+#global.bootm.oftree="/env/oftree"
+global.linux.bootargs.dyn.root="root=ubi0:rootfs ubi.mtd=nand0.root rootfstype=ubifs"
diff --git a/arch/arm/boards/cpodc2/env/boot/net-usb b/arch/arm/boards/cpodc2/env/boot/net-usb
new file mode 100755
index 0000000..6e341a0
--- /dev/null
+++ b/arch/arm/boards/cpodc2/env/boot/net-usb
@@ -0,0 +1,22 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	boot-menu-add-entry "$0" "network (tftp, nfs) (usb ethernet)"
+	exit
+fi
+
+usb -f
+ethact eth1
+
+if [ $? -ne 0 ]; then
+	echo "ERROR: usb ethernet not found"
+	exit 1
+fi
+
+path="/mnt/tftp"
+
+global.bootm.image="${path}/${global.user}-linux-${global.hostname}"
+#global.bootm.oftree="${path}/${global.user}-oftree-${global.hostname}"
+nfsroot="/home/${global.user}/nfsroot/${global.hostname}"
+bootargs-ip
+global.linux.bootargs.dyn.root="root=/dev/nfs nfsroot=$nfsroot,v3,tcp"
diff --git a/arch/arm/boards/cpodc2/env/config-board b/arch/arm/boards/cpodc2/env/config-board
new file mode 100755
index 0000000..8ee2290
--- /dev/null
+++ b/arch/arm/boards/cpodc2/env/config-board
@@ -0,0 +1,6 @@
+#!/bin/sh
+
+global.hostname=cpodc2
+global.user=cpodc2
+global.autoboot_timeout=1
+global.boot.default=dataflash
diff --git a/arch/arm/boards/cpodc2/env/dfu.png b/arch/arm/boards/cpodc2/env/dfu.png
new file mode 100644
index 0000000000000000000000000000000000000000..a8f2cdd96c739efb4d8985a51f76499f31c6a05e
GIT binary patch
literal 1669
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
Kz?D0P(*6Q%7!#@h

literal 0
HcmV?d00001

diff --git a/arch/arm/boards/cpodc2/env/init/automount b/arch/arm/boards/cpodc2/env/init/automount
new file mode 100755
index 0000000..3227619
--- /dev/null
+++ b/arch/arm/boards/cpodc2/env/init/automount
@@ -0,0 +1,12 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	init-menu-add-entry "$0" "Automountpoints"
+	exit
+fi
+
+mkdir -p /mnt/tftp
+automount /mnt/tftp 'ifup eth0 && mount -t tftp $eth0.serverip /mnt/tftp'
+
+mkdir -p /mnt/fat
+automount -d /mnt/fat 'usb && [ -e /dev/disk0.0 ] && mount /dev/disk0.0 /mnt/fat'
diff --git a/arch/arm/boards/cpodc2/env/init/msp430 b/arch/arm/boards/cpodc2/env/init/msp430
new file mode 100644
index 0000000..0639313
--- /dev/null
+++ b/arch/arm/boards/cpodc2/env/init/msp430
@@ -0,0 +1,10 @@
+#!/bin/sh
+# reset it if it needs it
+msp430 -r
+# wait a moment for it to recover
+msleep 500
+
+msp430 -i -M msp_fw_major -m msp_fw_minor -S msp_serial -T msp_boardtype
+
+msp430 -b on
+
diff --git a/arch/arm/boards/cpodc2/env/init/mtdparts b/arch/arm/boards/cpodc2/env/init/mtdparts
new file mode 100755
index 0000000..81c18b4
--- /dev/null
+++ b/arch/arm/boards/cpodc2/env/init/mtdparts
@@ -0,0 +1,19 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	init-menu-add-entry "$0" "MTD Partitions"
+	exit
+fi
+
+mtdparts="0x4200(dataflash0.bootstrap),0x4200(dataflash0.bareboxenv),0x39C00(dataflash0.barebox),0x1BE000(dataflash0.kernel)"
+mtdparts-add -d dataflash0 -p ${mtdparts}
+
+# mtdparts broken for - partitions
+mtdparts="256M(nand0.root)"
+kernelname="atmel_nand"
+# we don't really need this unless doing dfu...
+#mtdparts-add -b -d nand0 -p ${mtdparts} -k ${kernelname}
+
+mtdparts="-(nand0.root)"
+global linux.mtdparts.nand0
+global.linux.mtdparts.nand0="${kernelname}:${mtdparts}"
diff --git a/arch/arm/boards/cpodc2/env/init/splash b/arch/arm/boards/cpodc2/env/init/splash
new file mode 100755
index 0000000..18e74df
--- /dev/null
+++ b/arch/arm/boards/cpodc2/env/init/splash
@@ -0,0 +1,8 @@
+#!/bin/sh
+
+splash=/env/splash.png
+
+if [ -f ${splash} -a -e /dev/fb0 ]; then
+	splash -o ${splash}
+	fb0.enable=1
+fi
diff --git a/arch/arm/boards/cpodc2/env/init/usb b/arch/arm/boards/cpodc2/env/init/usb
new file mode 100755
index 0000000..ca7f017
--- /dev/null
+++ b/arch/arm/boards/cpodc2/env/init/usb
@@ -0,0 +1,55 @@
+#!/bin/sh
+
+pre_wait=2
+post_wait=3
+polarity=1
+
+dfu_config="/dev/dataflash0.bootstrap(bootstrap)sr,/dev/dataflash0.bareboxenv(bareboxenv)sr,/dev/dataflash0.barebox(barebox)sr,/dev/dataflash0.kernel(kernel)sr,/dev/nand0.root.bb(root)r"
+
+echo
+
+if [ $at91_udc0.vbus != 1 ]; then
+	echo "No USB Device cable plugged, normal boot"
+	exit
+fi
+
+splash=/env/usb.png
+if [ -f ${splash} -a -e /dev/fb0 ]; then
+	splash -y 20 -x 280 ${splash} 
+	fb0.enable=1
+fi
+
+timeout -s -a ${pre_wait} 
+
+gpio_get_value ${dfu_button}
+if [ $? = ${polarity} ]; then
+	echo "dfu_button detected wait ${post_wait}s"
+	timeout -s -a ${post_wait}
+
+	if [ $at91_udc0.vbus != 1 ]; then
+		echo "No USB Device cable plugged, normal boot"
+		exit
+	fi
+
+	gpio_get_value ${dfu_button}
+	if [ $? = ${polarity} ]; then
+		echo "Start DFU Mode"
+		splash=/env/dfu.png
+		if [ -f ${splash} -a -e /dev/fb0 ]; then
+			splash -o -b 0 ${splash}
+		fi
+		# mount mtd for dfu writing...
+		mtdparts="256M(nand0.root)"
+		mtdparts-add -b -d nand0 -p ${mtdparts}
+
+		#Use NetChip's donated numbers
+		dfu ${dfu_config} -P 0xFFFF -V 0x0525 -m "CPO Science" -p "DataCollector (DFU mode)"
+		#if the dfu works.. we want to reboot
+		reset
+		#exit
+	fi
+fi
+
+global.autoboot_timeout=16
+echo "enable tty over USB Device, waiting ${global.autoboot_timeout}s"
+usbserial
diff --git a/arch/arm/boards/cpodc2/env/splash.png b/arch/arm/boards/cpodc2/env/splash.png
new file mode 100644
index 0000000000000000000000000000000000000000..36e8ed1d9849a36d763dbc6750ad953cc35a0a68
GIT binary patch
literal 1356
zcmV-S1+)5zP)<h;3K|Lk000e1NJLTq008g+002M;0{{R36F~~q0001BP)t-s0096n
z4kR2M8&DKXE-MvEBOM7dO)M@eLqkB6CXW(WcT`pbi9{+eUoTQrQ3i3c@IW?YXJo-!
zNPd5Pg@=S8rrR^KZ}gECqNJgay*9qUy~)eS)z{SD;@<x90R8{`0k=xK000E1Nkl<Z
zXx{CZ>vp3c5P&V)Msl;AVpA3+y#HIS+y_KWPj}DusPiWY0-2AwVpZ+3%Pza@vdiY=
za5^3Ax2Ipn<J0PSU$q$Gr=ym&6CVultNwblvJK#aH}LWJYn`Cv^l>5)n5-W7L(9R(
z@cLc)WPnf3#HVWYNy`F%q=RcNOC(r$D^f7<>Km-XMo6!>+jUEpCAZtQh_4#>wgWG?
z#US|eUkWfM@W@{=rM~3S4Od1uEbOX;)@AsVU(#N$R9^#@DhjW^4~&x*MVm|dV}OOW
zZ!3&i;`_i+gi55Ze+V!Os|SPh<Zl6!Ugbi67;sg!OEz8vzMh{G`wA1h(9QbK{{z;<
zEVa`DaQ6K7AkR@1)l?{)#ni$n;Ig-oIbbqBe*|20XgwIG><1eW!SzZZwAw<rEvQYw
z?eNo$T{W;xS-B6Bj)(8HUC7BCaBBlU(T*^i2D#lBg!vg1YVA*d$}p%}HTc*Iz%-gT
z<eaW1Mi1f#?EXB&W>dMb2+T$<TvsWI7B&e?OOYQJ+O1ilP@|&4VcTZp^BM4fDZ@X4
zHwSn<kV{Kn#+ZKY4nYH(Fa2b2CCRLx0OmN?@lw{8Bm;&~di0OmSzwPOqkWoq@DZ5D
zqc;f7tDapA#)_7Tm9*X%EtLRUW3>R*g&TYbf=iD9(tMQ~-nm3)k5fkAHtQ~OV6aFW
zyAq6nYaAIQ0((IYTjl!?O6%FR@Gv7_8RCHmKSpB~)Pqfyv<y0ggW>)mo6pi_Ut$#I
zNh-^M+ay5w<G{uOwLdiL)HyK3Id&)T9Db1HSsGBZb2nJ7S!G~I3D^iYO?~unVEmv(
znqgo)E`5*Rxdp+3#X8*L5OPylv8<O}I;*#&0Gwf1;Pd@{o&|0ca{t;nX%5`wEgEwr
zV!H8=`2V>5!HT_3IcYJ~r9ck?-|voCPGsrS%~YzH2UZ1OIuD%GFBZ4ui@?&wyZjz-
zTl7E|YdG1JEG$hLM*_|p<}C~b3oimUb{(XfLjjm3F7NB`{r)?8YqE#!jtD*oHW9;o
zR6KJVj)0RTD25k-r9(?2kdJ_QvQ-=6@_feSRwU(@dS!Za7ncQKrp9&7r1!8N&4C%p
z;rJYvfCZ}Z1SjDfm?p<v(9fD!I%9(L3Zb4;cx#X9Fgh&WHMoHL;}&^Jh&OJ)b$A|F
zw*ovkX*kYW7CNn=1+8)OM2h)X>&TeEt+Q>8TGqzias+IiNd}E6N`2$+HJX6gl|4;?
z!9SIu*_;9vuHcCz&(ur3bnmY_!&r-eUoMwX|DU|%!M$|%NH5(__0mbwFZa@X_MKMp
z;;HUK%S%ZCnAj+_T_6Jf{QSJ&8Oi-7Q(R2mmKa(X%66CYCRL8-7pw)~p0hLw61T%}
z-z@?Az*K@(2>5vb{tPpMiUK!g_M)wPbQbT!wL6v`#tR2;FO_vF(%TW6yueIK4M1ln
zG_1*oqJ`azK}M5EVc|$96edxCW^M`m^B3E>gc#ms&2o9$n3><+-d=X#-KE!u{k|<T
zzr4R+wg#*%OfDDml9JN(BNNw&Xl_a=*@mH=g~=8yyvr`T?6S))56T}~&+3n?60v9i
O0000<MNUMnLSTZ8qK35q

literal 0
HcmV?d00001

diff --git a/arch/arm/boards/cpodc2/env/usb.png b/arch/arm/boards/cpodc2/env/usb.png
new file mode 100644
index 0000000000000000000000000000000000000000..6eed849142f96d404c82be3a1aa5ee9363839223
GIT binary patch
literal 339
zcmV-Z0j&OsP)<h;3K|Lk000e1NJLTq001BW002M)0{{R3iJ)km0000OP)t-s0RaIi
zDJf1)PIh*7k&%(Hv9Zm~&HViQd&z7Y0002?Nkl<ZILoEeJr9B~5C&jM`B=e0R-9ao
ziz}O}gNd`oz^a0M|GuTP(7Qwp%GM`^d)qsL;N6pPxUjW+GAK||*yBdl0-*0iHELQ%
zDqiJB$n!k&K>|4Z3E}r0`al)Uft5LW=|GrU5)CQ>3D6QK%w>Iol)s|$oh?Y1(-&Q4
zp%`u{ZEX&L2L;zX2X4a%V|y)(8yrmix6sG4(3worfW$D+db80-M>Vx^r!o!xwCIAg
z*=uYl2q-oVOB@xSN(PdHF3lj}5X~RUNYPOb8(e8sf0~AN(jO-7!T-rp1JxWz_%}=y
llJ%tFPLk^lH2Y#}*DoRUUl?ijBf9_q002ovPDHLkV1fr|kBtBT

literal 0
HcmV?d00001

diff --git a/arch/arm/boards/cpodc2/init.c b/arch/arm/boards/cpodc2/init.c
new file mode 100644
index 0000000..7bad587
--- /dev/null
+++ b/arch/arm/boards/cpodc2/init.c
@@ -0,0 +1,364 @@
+/*
+ * Copyright (C) 2007 Sascha Hauer, Pengutronix
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ *
+ */
+
+#include <common.h>
+#include <net.h>
+#include <init.h>
+#include <environment.h>
+#include <asm/armlinux.h>
+#include <generated/mach-types.h>
+#include <partition.h>
+#include <fs.h>
+#include <fcntl.h>
+#include <io.h>
+#include <asm/hardware.h>
+#include <nand.h>
+#include <sizes.h>
+#include <linux/mtd/nand.h>
+#include <mach/cpu.h>
+#include <mach/at91_pmc.h>
+#include <mach/board.h>
+#include <gpio.h>
+#include <mach/io.h>
+#include <mach/iomux.h>
+#include <mach/at91sam9_smc.h>
+#include <dm9000.h>
+#include <gpio_keys.h>
+#include <readkey.h>
+#include <led.h>
+#include <spi/spi.h>
+
+#ifdef CONFIG_CPODC2_MSP430
+#include "msp430.h"
+#endif
+
+static struct atmel_nand_data nand_pdata = {
+	.ale		= 22,
+	.cle		= 21,
+	.det_pin	= -EINVAL,
+	.rdy_pin	= AT91_PIN_PC15,
+	.enable_pin	= AT91_PIN_PC14,
+#if defined(CONFIG_MTD_NAND_ATMEL_BUSWIDTH_16)
+	.bus_width_16	= 1,
+#else
+	.bus_width_16	= 0,
+#endif
+	.on_flash_bbt	= 1,
+};
+
+static struct sam9_smc_config dc_nand_smc_config = {
+	.ncs_read_setup		= 0,
+	.nrd_setup		= 1,
+	.ncs_write_setup	= 0,
+	.nwe_setup		= 1,
+
+	.ncs_read_pulse		= 3,
+	.nrd_pulse		= 3,
+	.ncs_write_pulse	= 3,
+	.nwe_pulse		= 3,
+
+	.read_cycle		= 5,
+	.write_cycle		= 5,
+
+	.mode			= AT91_SMC_READMODE | AT91_SMC_WRITEMODE | AT91_SMC_EXNWMODE_DISABLE,
+	.tdf_cycles		= 2,
+};
+
+static void dc_add_device_nand(void)
+{
+	/* setup bus-width (8 or 16) */
+	if (nand_pdata.bus_width_16)
+		dc_nand_smc_config.mode |= AT91_SMC_DBW_16;
+	else
+		dc_nand_smc_config.mode |= AT91_SMC_DBW_8;
+
+	/* configure chip-select 3 (NAND) */
+	sam9_smc_configure(0, 3, &dc_nand_smc_config);
+
+	at91_add_device_nand(&nand_pdata);
+}
+
+/*
+ * USB OHCI Host port
+ */
+#ifdef CONFIG_USB_OHCI_AT91
+static struct at91_usbh_data  __initdata usbh_data = {
+	.ports		= 1,
+	//.vbus_pin	= { AT91_PIN_PD0,  -EINVAL },
+};
+
+static void __init dc_add_device_usbh(void)
+{
+	if (cpu_is_at91sam9g10())  // add it just for boards with 9g10
+		at91_add_device_usbh_ohci(&usbh_data);
+}
+#else
+static void __init dc_add_device_usbh(void) {}
+#endif
+
+
+#if defined(CONFIG_USB_GADGET_DRIVER_AT91)
+/*
+ * USB Device port
+ */
+static struct at91_udc_data __initdata dc_udc_data = {
+	.vbus_pin	= AT91_PIN_PB29,
+	.pullup_pin	= 0,
+};
+
+static void dc_add_device_udc(void)
+{
+	at91_add_device_udc(&dc_udc_data);
+}
+#else
+static void dc_add_device_udc(void) {}
+#endif
+
+/*
+ * LCD Controller
+ */
+#if defined(CONFIG_DRIVER_VIDEO_ATMEL)
+static int dc_gpio_request_output(int gpio, const char *name)
+{
+	int ret;
+
+	ret = gpio_request(gpio, name);
+	if (ret) {
+		pr_err("%s: can not request gpio %d (%d)\n", name, gpio, ret);
+		return ret;
+	}
+
+	ret = gpio_direction_output(gpio, 1);
+	if (ret)
+		pr_err("%s: can not configure gpio %d as output (%d)\n", name, gpio, ret);
+	return ret;
+}
+
+/* TFT */
+static struct fb_videomode at91_tft_vga_modes[] = {
+	{
+		.name		= "320x240@60",
+		.refresh	= 60,
+		.xres		= 320,		.yres		= 240,
+		.pixclock	= KHZ2PICOS(6210),
+
+		.left_margin	= 62,		.right_margin	= 14,
+		.upper_margin	= 18,		.lower_margin	= 3,
+		.hsync_len	= 5,		.vsync_len	= 1,
+
+		.sync		= FB_SYNC_HOR_HIGH_ACT | FB_SYNC_VERT_HIGH_ACT,
+		.vmode		= FB_VMODE_NONINTERLACED,
+	},
+};
+
+#define AT91SAM9261_DEFAULT_TFT_LCDCON2	(ATMEL_LCDC_MEMOR_LITTLE \
+					| ATMEL_LCDC_DISTYPE_TFT \
+					| ATMEL_LCDC_CLKMOD_ALWAYSACTIVE \
+					| ATMEL_LCDC_INVVD_INVERTED \
+					| ATMEL_LCDC_INVFRAME_INVERTED \
+					| ATMEL_LCDC_INVLINE_INVERTED \
+					| ATMEL_LCDC_INVCLK_INVERTED \
+					| ATMEL_LCDC_INVDVAL_INVERTED \
+					)
+
+static void at91_lcdc_tft_power_control(int on)
+{
+	if (on)
+		gpio_set_value(AT91_PIN_PA12, 0);	/* power up */
+	else
+		gpio_set_value(AT91_PIN_PA12, 1);	/* power down */
+}
+
+static struct atmel_lcdfb_platform_data dc_lcdc_data = {
+	.lcdcon_is_backlight	= false,
+	.default_bpp			= 16,
+	.default_dmacon			= ATMEL_LCDC_DMAEN,
+	.default_lcdcon2		= AT91SAM9261_DEFAULT_TFT_LCDCON2,
+	.guard_time			= 1,
+	.atmel_lcdfb_power_control	= at91_lcdc_tft_power_control,
+	.mode_list			= at91_tft_vga_modes,
+	.num_modes			= ARRAY_SIZE(at91_tft_vga_modes),
+};
+
+static int at91_lcdc_gpio(void)
+{
+	return dc_gpio_request_output(AT91_PIN_PA12, "lcdc_tft_power");
+}
+
+static void dc_add_device_lcdc(void)
+{
+	if (at91_lcdc_gpio())
+		return;
+
+	dc_lcdc_data.have_intensity_bit = cpu_is_at91sam9261();
+	
+	dc_lcdc_data.lcd_wiring_mode = cpu_is_at91sam9261() ? ATMEL_LCDC_WIRING_RGB
+	                                                    : ATMEL_LCDC_WIRING_BGR;
+
+	at91_add_device_lcdc(&dc_lcdc_data);
+}
+
+#else
+static void dc_add_device_lcdc(void) {}
+#endif
+
+static void __init dc_add_device_buttons(void)
+{
+	// this first call is necessary to turn on clocks for gpio...
+	gpio_request(AT91_PIN_PB30,"go_button");
+	gpio_direction_input(AT91_PIN_PB30);
+	// don't use pullup here.. so don't need this hack.
+	at91_set_gpio_input(AT91_PIN_PB30, 0);
+	//at91_set_deglitch(AT91_PIN_PB30, 1);
+
+	gpio_request(AT91_PIN_PC2, "ts_pen");
+	gpio_direction_input(AT91_PIN_PC2);
+	at91_set_gpio_input (AT91_PIN_PC2, 1); // pullup
+	at91_set_deglitch   (AT91_PIN_PC2, 1);
+	
+	export_env_ull("dfu_button", AT91_PIN_PB30);
+}
+
+/*
+ * SPI related devices
+ */
+#if defined(CONFIG_DRIVER_SPI_ATMEL)
+static struct spi_board_info dc_spi_devices[] = {
+	{	/* DataFlash chip */
+		.name		= "mtd_dataflash",
+		.chip_select	= 0,
+		.max_speed_hz	= 15 * 1000 * 1000,
+		.bus_num	= 0,
+	},
+};
+
+static unsigned spi0_standard_cs[] = { AT91_PIN_PA3, AT91_PIN_PA6};
+static struct at91_spi_platform_data spi_pdata = {
+	.chipselect = spi0_standard_cs,
+	.num_chipselect = ARRAY_SIZE(spi0_standard_cs),
+};
+
+static void dc_add_device_spi(void)
+{
+	spi_register_board_info(dc_spi_devices,
+				ARRAY_SIZE(dc_spi_devices));
+	at91_add_device_spi(0, &spi_pdata);
+}
+#else
+static void dc_add_device_spi(void) {}
+#endif
+
+static int cpodc2_mem_init(void)
+{
+	at91_add_device_sdram(0);
+
+	return 0;
+}
+mem_initcall(cpodc2_mem_init);
+
+static int __init main_clock(void)
+{
+	int tmp;
+	static int main_clock = 0;
+
+	// this works for both boards, but only if at91boostrap was used first to setup the PLL lock.
+	if (!main_clock) {
+		do { // wait for PLL lock..
+			tmp = at91_pmc_read(AT91_CKGR_MCFR);
+		} while (!(tmp & AT91_PMC_MAINRDY));
+		tmp = (tmp & AT91_PMC_MAINF) * (AT91_SLOW_CLOCK / 16);
+		main_clock = (tmp > 19500000) ? 20000000 : 18432000;
+	}
+
+	return main_clock;
+}
+
+static int cpodc2_devices_init(void)
+{
+	u32 board_revision = 0;
+
+	dc_add_device_spi();
+	dc_add_device_nand();
+	dc_add_device_udc();
+	dc_add_device_usbh();
+	dc_add_device_buttons();
+	dc_add_device_lcdc();
+
+	if (! IS_ENABLED(CONFIG_MTD_DATAFLASH)) {
+		if (IS_ENABLED(CONFIG_AT91_LOAD_BAREBOX_SRAM)) {
+			devfs_add_partition("nand0", 0, SZ_256K + SZ_128K, DEVFS_PARTITION_FIXED, "self_raw");
+			export_env_ull("borebox_first_stage", 1);
+		} else {
+			devfs_add_partition("nand0", 0x00000, SZ_128K, DEVFS_PARTITION_FIXED, "bootstrap_raw");
+			dev_add_bb_dev("bootstrap_raw","bootstrap");
+			devfs_add_partition("nand0", SZ_128K, SZ_256K, DEVFS_PARTITION_FIXED, "self_raw");
+		}
+		dev_add_bb_dev("self_raw", "self0");
+		devfs_add_partition("nand0", SZ_256K + SZ_128K, SZ_128K, DEVFS_PARTITION_FIXED, "env_raw");
+		dev_add_bb_dev("env_raw", "env0");
+		devfs_add_partition("nand0", SZ_512K, SZ_128K, DEVFS_PARTITION_FIXED, "env_raw1");
+		dev_add_bb_dev("env_raw1", "env1");
+	} else { // dataflash partitions
+		devfs_add_partition("dataflash0", 0x00000, 0x4200,  DEVFS_PARTITION_FIXED, "bootstrap");
+		devfs_add_partition("dataflash0", 0x04200, 0x4200,  DEVFS_PARTITION_FIXED, "env0");
+		devfs_add_partition("dataflash0", 0x08400, 0x39C00, DEVFS_PARTITION_FIXED, "self0");
+	}
+
+	// we should probably also get revision data from the msp430
+	// but it takes a while to load...
+	// just fix based on whether CPU is 9g10
+	
+	if (nand_pdata.bus_width_16)
+		board_revision |= (1<<31);
+
+	if (cpu_is_at91sam9g10())
+		board_revision |= (0x01<<8);
+
+	if (main_clock() > 19500000)
+		board_revision |= (0x01<<10);
+
+	armlinux_set_revision(board_revision);
+	armlinux_set_bootparams((void *)(AT91_CHIPSELECT_1 + 0x100));
+	armlinux_set_architecture(MACH_TYPE_CPODC2);
+
+	return 0;
+}
+device_initcall(cpodc2_devices_init);
+
+static int cpodc2_console_init(void)
+{
+	barebox_set_model("CPO Science DataCollector II");
+	barebox_set_hostname("cpodc2");
+	
+	at91_register_uart(0, 0);
+#ifdef CONFIG_CPODC2_MSP430
+	at91_register_uart(1, 0);
+	// deactivate console and use it for the msp command
+	cpodc2_msp430_init_console("atmel_usart1");
+#endif
+	return 0;
+}
+console_initcall(cpodc2_console_init);
+
+static int cpodc2_main_clock(void)
+{
+	// bootloader should have set the frequency:
+	at91_set_main_clock(main_clock());
+	
+	return 0;
+}
+pure_initcall(cpodc2_main_clock);
+
diff --git a/arch/arm/boards/cpodc2/lowlevel_init.c b/arch/arm/boards/cpodc2/lowlevel_init.c
new file mode 100644
index 0000000..0565841
--- /dev/null
+++ b/arch/arm/boards/cpodc2/lowlevel_init.c
@@ -0,0 +1,108 @@
+/*
+ * Copyright (C) 2009-2011 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * Under GPLv2
+ */
+
+#include <common.h>
+#include <init.h>
+#include <mach/hardware.h>
+#include <mach/at91_rstc.h>
+#include <mach/at91_wdt.h>
+#include <mach/at91_pmc.h>
+#include <mach/at91sam9_smc.h>
+#include <mach/at91sam9_sdramc.h>
+#include <mach/at91sam9_matrix.h>
+#include <mach/at91_lowlevel_init.h>
+
+#define MASTER_CLOCK		200
+
+#if MASTER_CLOCK == 200
+#define MASTER_PLL_MUL		162
+#define MASTER_PLL_DIV		15
+#elif MASTER_CLOCK == 239
+#define MASTER_PLL_MUL		13
+#define MASTER_PLL_DIV		1
+#endif
+
+void __bare_init at91sam926x_lowlevel_board_config(struct at91sam926x_lowlevel_cfg *cfg)
+{
+	/* Disable Watchdog */
+	cfg->wdt_mr =
+		AT91_WDT_WDIDLEHLT | AT91_WDT_WDDBGHLT |
+		AT91_WDT_WDV |
+		AT91_WDT_WDDIS |
+		AT91_WDT_WDD;
+
+	/* define PDC[31:16] as DATA[31:16] */
+	cfg->ebi_pio_pdr = 0xFFFF0000;
+	/* no pull-up for D[31:16] */
+	cfg->ebi_pio_ppudr = 0xFFFF0000;
+	/* EBI0_CSA, CS1 SDRAM, CS3 NAND Flash, 3.3V memories */
+	cfg->ebi_csa =
+		AT91_MATRIX_DBPUC | AT91_MATRIX_CS1A_SDRAMC;
+
+	cfg->smc_cs = 3;
+	cfg->smc_mode =
+		AT91_SMC_READMODE | AT91_SMC_WRITEMODE |
+		AT91_SMC_DBW_8 |
+		AT91_SMC_EXNWMODE_DISABLE |
+		AT91_SMC_TDF_(2);
+	cfg->smc_cycle =
+		AT91_SMC_NWECYCLE_(5) | AT91_SMC_NRDCYCLE_(5);
+	cfg->smc_pulse =
+		AT91_SMC_NWEPULSE_(3) | AT91_SMC_NCS_WRPULSE_(3) |
+		AT91_SMC_NRDPULSE_(3) | AT91_SMC_NCS_RDPULSE_(3);
+	cfg->smc_setup =
+		AT91_SMC_NWESETUP_(1) | AT91_SMC_NCS_WRSETUP_(0) |
+		AT91_SMC_NRDSETUP_(1) | AT91_SMC_NCS_RDSETUP_(0);
+
+	cfg->pmc_mor =
+		AT91_PMC_MOSCEN |
+		(255 << 8);		/* Main Oscillator Start-up Time */
+	cfg->pmc_pllar =
+		AT91_PMC_PLLA_WR_ERRATA | /* Bit 29 must be 1 when prog */
+		AT91_PMC_OUT |
+		((MASTER_PLL_MUL - 1) << 16) | (MASTER_PLL_DIV);
+	/* PCK/2 = MCK Master Clock from PLLA */
+	cfg->pmc_mckr1 =
+		AT91_PMC_CSS_SLOW |
+		AT91_PMC_PRES_1 |
+		AT91SAM9_PMC_MDIV_2 |
+		AT91_PMC_PDIV_1;
+	/* PCK/2 = MCK Master Clock from PLLA */
+	cfg->pmc_mckr2 =
+		AT91_PMC_CSS_PLLA |
+		AT91_PMC_PRES_1 |
+		AT91SAM9_PMC_MDIV_2 |
+		AT91_PMC_PDIV_1;
+
+	/* SDRAM */
+	/* SDRAMC_TR - Refresh Timer register */
+	cfg->sdrc_tr1 = 0x13C;
+	/* SDRAMC_CR - Configuration register*/
+	cfg->sdrc_cr =
+		AT91_SDRAMC_NC_9 |
+		AT91_SDRAMC_NR_13 |
+		AT91_SDRAMC_NB_4 |
+		AT91_SDRAMC_CAS_2 |
+		AT91_SDRAMC_DBW_32 |
+		(2 <<  8) |		/* Write Recovery Delay */
+		(7 << 12) |		/* Row Cycle Delay */
+		(2 << 16) |		/* Row Precharge Delay */
+		(2 << 20) |		/* Row to Column Delay */
+		(5 << 24) |		/* Active to Precharge Delay */
+		(8 << 28);		/* Exit Self Refresh to Active Delay */
+
+	/* Memory Device Register -> SDRAM */
+	cfg->sdrc_mdr = AT91_SDRAMC_MD_SDRAM;
+	/* SDRAM_TR */
+	cfg->sdrc_tr2 = (MASTER_CLOCK * 7);
+
+	/* user reset enable */
+	cfg->rstc_rmr =
+		AT91_RSTC_KEY |
+		AT91_RSTC_PROCRST |
+		AT91_RSTC_RSTTYP_WAKEUP |
+		AT91_RSTC_RSTTYP_WATCHDOG;
+}
diff --git a/arch/arm/boards/cpodc2/msp430.c b/arch/arm/boards/cpodc2/msp430.c
new file mode 100644
index 0000000..1c46528
--- /dev/null
+++ b/arch/arm/boards/cpodc2/msp430.c
@@ -0,0 +1,513 @@
+/*
+ * (C) Copyright 2013
+ * Darren Garnier <dgarnier@reinrag.net>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+//#define DEBUG 1
+
+#include <common.h>
+#include <environment.h>
+#include <getopt.h>
+#include <errno.h>
+#include <crc.h>
+#include <clock.h>
+#include <console.h>
+#include <stdio.h>
+#include <string.h>
+#include <fcntl.h>
+#include <fs.h>
+#include <kfifo.h>
+#include <xfuncs.h>
+#include <command.h>
+#include <complete.h>
+
+#include "msp430.h"
+
+/* some info from protocol.h */
+#define kCmdResetSoft    "$0100*\r\n"
+#define kCmdDeviceInfo   "$07*\r\n"
+#define kCmdSerialNumber "$0E0000*\r\n"
+#define kCmdBacklightOn  "$0C00FF01*\r\n"
+#define kCmdBacklightOff "$0C00FF00*\r\n"
+
+enum DCResponses {
+    kRspStatus = 0x00,
+    kRspDevice = 0x03,
+    kRspBacklight = 0x09,
+    kRspSerialNumber = 0x0A,
+};
+
+typedef uint8_t	        _uint8;
+typedef uint16_t	    _uint16;
+typedef uint32_t        _uint32;
+typedef int8_t	        _int8;
+typedef int16_t	        _int16;
+typedef int32_t	        _int32;
+typedef float           _float32;
+
+#ifndef PACK 
+#define PACK __attribute__((packed))
+#endif
+
+struct sRspDevice {
+	_uint8         rsp;              // = kRspDevice
+	_uint8         boardType;        // enum eBoardTypeID
+	_uint8         freqUnits;        // tFreqData is  Hz << freqUnits
+	_uint8         pluggedCutoff;    // in Hz
+	_uint16        fwVersionMajor;
+	_uint16        fwVersionMinor;
+	_uint32        serialNumber;
+	_float32       ticsPerSec;       // time ticks/second
+	_uint16        intervalDataQLen; // length of DC interval data queue
+	_uint16        meterDataQLen;    // length of DC meter data queue
+	_float32       scaleA1;          // analog cals
+	_float32       scaleA2;
+	_int16         offsetA1;
+	_int16         offsetA2;
+	_uint32        statusRate;       // ticks period
+	_int16         resistorA1;       // pullup on A1 connector pin 3
+	_int16         resistorA2;       //           A2
+	_float32       vX2;              // what we're pulling up with (~5V)
+	_uint16        temperature;
+	_uint16        vccHalf;
+	_float32       scaleA1H;          // analog HiRes cals
+	_float32       scaleA2H;
+	_int16         offsetA1H;
+	_int16         offsetA2H;
+} PACK; // 60
+
+struct sRspBacklight {
+	_uint8            rsp;
+	_uint8            cmd;
+	union {
+		_uint16        value;
+		struct {
+			_uint8      current;      // value to set the current when on
+			_uint8      on;           // on or off
+		} PACK         settings;
+	} PACK            backlight;
+} PACK; // 4
+
+struct sRspSerialNumber {
+	_uint8         rsp;      // kRspSerialNumber
+	char           pad[3];
+	_uint32        sn;
+	char           fullSN[];
+} PACK;
+
+// raw data
+struct sRspRaw {
+	_uint8         rsp;              // = ?
+	_uint8         raw[63];
+} PACK; // 64
+
+#define FULLSNLENGTH 20
+#define INPUT_FIFO_SIZE 512
+#define TIMEOUT_FLUSH    100 * MSECOND
+#define TIMEOUT_RESPONSE 200 * MSECOND
+
+struct msp430_device {
+	struct console_device *	cdev;
+	struct kfifo *			fifo;
+	unsigned char 			fullSN[FULLSNLENGTH];
+	uint8_t					boardtype;
+	uint16_t				major;
+	uint16_t				minor;
+	uint8_t					bl_current;
+	uint8_t					bl_on;
+};
+
+static struct msp430_device *g_msp = NULL;
+
+static int input_fifo_fill(struct console_device *cdev, struct kfifo *fifo)
+{
+	while (cdev->tstc(cdev) && (kfifo_len(fifo) < INPUT_FIFO_SIZE))
+		kfifo_putc(fifo, (unsigned char)(cdev->getc(cdev)));
+	return kfifo_len(fifo);
+}
+
+// get line ending in \n or \r 
+static int msp_getline(struct msp430_device *msp,
+		      unsigned char *buf, int len, uint64_t timeout)
+{
+	int i;
+	unsigned char c;
+	uint64_t start = get_time_ns();
+
+	for (i = 0; i < len-1; ) {
+		if (is_timeout(start, timeout)) {
+			i = -ETIMEDOUT;
+			break;
+		}
+		if (input_fifo_fill(msp->cdev, msp->fifo)) {
+			kfifo_getc(msp->fifo, &c);
+			buf[i++] = c;
+			if (c == '\n' || c == '\r') {
+				if (--i) break;
+			}
+		}
+	}
+	buf[i]='\0';
+
+	return i;
+}
+
+static void msp_puts(struct msp430_device *msp, const unsigned char *s)
+{
+	// check for characters coming in while sending them out....
+	unsigned char c;
+	while((c = *s++)) {
+		input_fifo_fill(msp->cdev, msp->fifo);
+		msp->cdev->putc(msp->cdev, c);		
+	}
+}
+
+static void msp_flush(struct msp430_device *msp)
+{
+	uint64_t start;
+	struct console_device *cdev = msp->cdev;
+
+	start = get_time_ns();
+	while (cdev->tstc(cdev) &&
+		!is_timeout(start, TIMEOUT_FLUSH))
+			cdev->getc(cdev);
+	kfifo_reset(msp->fifo);
+}
+
+static struct console_device *get_console_from_device_name(const char *dname)
+{
+	struct console_device *cdev;
+	const char *target;
+
+	for_each_console(cdev) {
+		// lookup by device driver, not by console number
+		// so we can be sure to get the atmel serial port
+		target = dev_id(cdev->dev);
+		if (!strcmp(dname, target))
+			return cdev;
+	}
+	return NULL;
+}
+
+int __init cpodc2_msp430_init_console(const char *dname)
+{
+	struct console_device *cdev;
+	
+	cdev = get_console_from_device_name(dname);
+	if (cdev == NULL) return -1;
+	
+	// deactivate the console in case it was activated...
+	dev_set_param(&cdev->class_dev, "active", "");
+	// now that we turned it off.. we can "print" again..
+	
+	// lets set the baud rate ... (defaults already to 8-N-1)
+	cdev->setbrg(cdev,38400);
+	dev_set_param(&cdev->class_dev, "baudrate", "38400");
+	
+	g_msp = xzalloc(sizeof(struct msp430_device));
+	
+	g_msp->cdev = cdev; // keep the pointer
+	g_msp->fifo = kfifo_alloc(INPUT_FIFO_SIZE);
+	
+	// let init script do a reset...
+	// msp_reset(g_msp);
+	
+	return 0;
+}
+
+
+static int unwrap_response(char *buff, char *resp)
+{
+	char *b, *bend, *rend, *u, i;
+	int complete=0;
+
+	bend = buff + INPUT_FIFO_SIZE;
+	rend = resp + sizeof(struct sRspRaw);
+
+	u = resp; b = buff;
+	
+	/* search for beginning of packet */
+	while(*b != 0) {
+		if (*b == '$') {
+			pr_debug("> $");
+			if (++b == bend) b=buff;
+			break;
+		}
+		if (++b == bend) b=buff; /* eat all before $ */
+	}
+	
+	/* packet is begun, maybe */
+	while( *b != 0 ) {
+		if (*b >= '0' && *b <= '9') {
+			i = *b - '0';
+		} else if (*b >= 'A' && *b <= 'F') {
+			i = *b - 'A' + 10;
+		} else if (*b == '*') {
+			complete=1;
+			if (++b == bend) b = buff; /* circular buffer */
+			pr_debug("*\n");
+			break;
+		} else {
+			pr_debug("\n unexpected char %c\n ", *b);
+			if (++b == bend) b = buff; // skip it
+			break;
+		}
+		if (u == rend) {
+			pr_debug("Unwrap would overrun!\n");
+			break;
+		}
+		i=i<<4;
+		if (++b == bend) b = buff; /* circular buffer */
+		if (*b >= '0' && *b <= '9') {
+			i += *b - '0';
+		} else if (*b >= 'A' && *b <= 'F') {
+			i += *b - 'A' + 10;
+		} else if (*b == 0) {
+			/* back up */
+			if (b == buff) {
+				b = bend -1;
+			} else b--;
+			break;
+		} else {
+			pr_debug("unexpected char %c", *b);
+			if (++b == bend) b = buff; // skip it
+			break;
+		}
+		pr_debug("%02X",i);
+		*u++ = i;
+
+		if (++b == bend) b = buff; /* circular buffer */
+	}
+
+	return complete;
+}
+
+static int msp_wait_parse_response(struct msp430_device *msp)
+{
+	unsigned char line[INPUT_FIFO_SIZE];
+	int len;
+	struct sRspRaw rsp;
+	struct sRspDevice *rd = (struct sRspDevice *) &rsp;
+	struct sRspBacklight *bl = (struct sRspBacklight *) &rsp;
+
+	len = msp_getline(msp, line, INPUT_FIFO_SIZE, TIMEOUT_RESPONSE);
+	if (len == 0) {
+		pr_debug(" 0 length line.\n");
+		return -1;
+	}
+	if (len < 0)
+		return len;
+
+	pr_debug("Got a response:\n< %s\n",line);
+
+	if (unwrap_response(line, (char *) &rsp)) {
+		// got a response...
+		switch (rsp.rsp) {
+		case kRspStatus:
+			pr_debug("got MSP status packet.\n");
+			break;
+		case kRspDevice:
+			pr_debug("got device response.\n");
+			msp->major= rd->fwVersionMajor;
+			msp->minor= rd->fwVersionMinor;
+			msp->boardtype = rd->boardType;
+			break;
+		case kRspBacklight:
+			pr_debug("got backlight response.\n");
+			msp->bl_current = bl->backlight.settings.current;
+			msp->bl_on		= bl->backlight.settings.on;
+			break;
+		case kRspSerialNumber:
+			pr_debug("got serial number response.\n");
+			strlcpy(msp->fullSN, ((struct sRspSerialNumber *)&rsp)->fullSN, FULLSNLENGTH);
+			break;
+		default:
+			pr_warning("unexpected msp response (0x%02x)\n", rsp.rsp);
+		}
+	} else {
+		pr_err("Couldn't parse: %s\n", line);
+		return -1;
+	}
+
+	return rsp.rsp;
+}
+
+static int msp430_read_device(struct msp430_device *msp)
+{
+	int try, rsp;
+
+	for (try=0; try<3; try++) {
+
+		msp_puts(msp, kCmdDeviceInfo);
+
+		do {
+			rsp = msp_wait_parse_response(msp);
+			if (rsp == kRspDevice) {
+				pr_debug("got device bt = %02x, fw = %02d.%02d\n", msp->boardtype, msp->major, msp->minor);
+				return 0;
+			}
+		} while (rsp != -ETIMEDOUT);
+
+		// timed out.. perhaps needs a "flush"
+		msp_flush(msp);
+	}
+	return rsp;
+}
+
+static int msp430_read_serial(struct msp430_device *msp)
+{
+	int try, rsp;
+		
+	for (try=0; try<3; try++) {
+
+		msp_puts(msp, kCmdSerialNumber);
+
+		do {
+			rsp = msp_wait_parse_response(msp);
+			if (rsp == kRspSerialNumber) {
+				pr_debug("got the serial number %s\n",msp->fullSN);
+				return 0;
+			}
+		} while (rsp != -ETIMEDOUT);
+		msp_flush(msp);
+	}
+	return rsp;
+}
+
+static int msp430_backlight(struct msp430_device *msp, int on)
+{
+	int ret;
+	if (on) {
+		msp_puts(msp, kCmdBacklightOn);
+	} else {
+		msp_puts(msp, kCmdBacklightOff);
+	}
+	ret = msp_wait_parse_response(msp);
+	if (ret > 0) return 0;
+	return ret;
+}
+
+static int msp430_reset(struct msp430_device *msp)
+{	
+	msp_puts(msp,kCmdResetSoft);
+
+#ifdef DEBUG
+	if (kfifo_len(msp->fifo)) {
+		unsigned char c;
+		int i;
+		pr_debug("%d characters in buffer after reset: ", kfifo_len(msp->fifo));
+		i = 40;
+		while ( (kfifo_getc(msp->fifo, &c)==0) && (i--) )
+			pr_debug("%c",c);
+		pr_debug("\n");
+	}
+#endif
+	msp_flush(msp);
+	return 0;
+}
+
+static int do_msp430(int argc, char *argv[])
+{
+	int opt, ret = 0, info = 0;
+	
+	if (!g_msp) return -EINVAL;
+	
+	while ((opt = getopt(argc, argv, "irb:M:m:S:T:")) > 0)
+		switch (opt) {
+		case 'r':
+			if ((ret = msp430_reset(g_msp))) 
+				return ret;
+			break;
+		case 'b':
+			if (strcmp(optarg, "on") == 0) {
+				msp430_backlight(g_msp, 1);
+			} else 
+			if (strcmp(optarg, "off") == 0) {
+				msp430_backlight(g_msp, 0);
+			}
+			break;
+		case 'i':
+			info=1;
+			break;
+		case 'M':
+		case 'm':
+		case 'T':
+			if (!g_msp->major) {
+				if ((ret = msp430_read_device(g_msp)))
+					break;
+			}
+			if (optarg) {
+				if (opt == 'M')
+					export_env_ull(optarg, g_msp->major);
+				else if (opt == 'm')
+					export_env_ull(optarg, g_msp->minor);
+				else
+					export_env_ull(optarg, g_msp->boardtype);
+			}
+			break;
+		case 'S':
+			if (g_msp->fullSN[0] == '\0') {
+				if ((ret = msp430_read_serial(g_msp)))
+					break;
+			}
+			setenv(optarg,g_msp->fullSN);
+			break;
+		default:
+			pr_err("unexpected option 0x%02x (%c)\n", opt,opt);
+			return -EINVAL;
+		}
+
+		if (info) {
+			printf("MSP430 MCU:");
+			if (g_msp->major) {
+				printf(" Boardtype: 0x%02X,", g_msp->boardtype);
+				printf(" Firmware : %d.%02d,", g_msp->major, g_msp->minor);
+			}
+			if (g_msp->fullSN[0]) {
+				printf(" Serial # : %s", g_msp->fullSN);
+			}
+			printf("\n");
+		}
+
+	return ret;
+}
+
+BAREBOX_CMD_HELP_START(msp430)
+BAREBOX_CMD_HELP_USAGE("msp430 [OPTIONS]\n")
+BAREBOX_CMD_HELP_SHORT("Communicate with MSP430 MCU.\n")
+BAREBOX_CMD_HELP_OPT  ("-r          ", "Do a soft reset of the controller\n")
+BAREBOX_CMD_HELP_OPT  ("-b [on, off]", "Control backlight\n")
+BAREBOX_CMD_HELP_OPT  ("-M MAJOR    ", "Read Major FW version and store into $MAJOR\n")
+BAREBOX_CMD_HELP_OPT  ("-m MINOR    ", "Read Minor FW version and store into $MINOR\n")
+BAREBOX_CMD_HELP_OPT  ("-S SERIAL   ", "Read Serial Number and store into $SERIAL\n")
+BAREBOX_CMD_HELP_OPT  ("-T TYPE     ", "Read board type and store into $TYPE\n")
+BAREBOX_CMD_HELP_OPT  ("-i          ", "Print info about board.\n")
+	
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(msp430)
+	.cmd		= do_msp430,
+	.usage		= "Communicate with MSP430 MCU.",
+	BAREBOX_CMD_HELP(cmd_msp430_help)
+	BAREBOX_CMD_COMPLETE(empty_complete)
+BAREBOX_CMD_END
+
+
+
+
+
diff --git a/arch/arm/boards/cpodc2/msp430.h b/arch/arm/boards/cpodc2/msp430.h
new file mode 100644
index 0000000..3573e30
--- /dev/null
+++ b/arch/arm/boards/cpodc2/msp430.h
@@ -0,0 +1,23 @@
+/*
+ * (C) Copyright 2013
+ * Darren Garnier <dgarnier@reinrag.net>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+
+int cpodc2_msp430_init_console(const char *dname);
+
diff --git a/arch/arm/configs/cpodc2_defconfig b/arch/arm/configs/cpodc2_defconfig
new file mode 100644
index 0000000..092ef63
--- /dev/null
+++ b/arch/arm/configs/cpodc2_defconfig
@@ -0,0 +1,96 @@
+CONFIG_ARCH_AT91SAM9261=y
+CONFIG_MACH_CPODC2_9261=y
+CONFIG_MACH_CPODC2=y
+CONFIG_AEABI=y
+# CONFIG_CMD_ARM_CPUINFO is not set
+# CONFIG_AT91SAM9_LOWLEVEL_INIT is not set
+CONFIG_MTD_NAND_ATMEL_BUSWIDTH_16=y
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_ARM_BOARD_APPEND_ATAG=y
+CONFIG_CPODC2_MSP430=y
+CONFIG_MMU=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x39C00
+CONFIG_PBL_IMAGE=y
+CONFIG_EXPERIMENTAL=y
+CONFIG_MALLOC_TLSF=y
+CONFIG_PROMPT="CPODC_2.0:"
+CONFIG_LONGHELP=y
+CONFIG_GLOB=y
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+# CONFIG_MENU is not set
+# CONFIG_CONSOLE_ACTIVATE_FIRST is not set
+CONFIG_CONSOLE_ACTIVATE_ALL=y
+CONFIG_DEFAULT_ENVIRONMENT=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/cpodc2/env"
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_READLINE=y
+# CONFIG_CMD_MENU is not set
+# CONFIG_CMD_PASSWD=y
+CONFIG_CMD_CLEAR=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_MTEST=y
+CONFIG_CMD_MSLEEP=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_CMD_BOOTM_INITRD=y
+CONFIG_CMD_UIMAGE=y
+# CONFIG_CMD_BOOTU is not set
+CONFIG_CMD_RESET=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_MAGICVAR=y
+# CONFIG_CMD_LED is not set
+# CONFIG_CMD_LED_TRIGGER is not set
+# CONFIG_NET is not set
+# CONFIG_NET_DHCP is not set
+# CONFIG_NET_NFS is not set
+# CONFIG_NET_PING is not set 
+# CONFIG_NET_TFTP is not set
+# CONFIG_NET_TFTP_PUSH is not set
+# CONFIG_NET_RESOLV is not set
+# CONFIG_DRIVER_NET_DM9K is not set
+CONFIG_SPI=y
+CONFIG_DRIVER_SPI_ATMEL=y
+CONFIG_CMD_SPI=y
+CONFIG_MTD=y
+CONFIG_MTD_DATAFLASH=y
+# CONFIG_MTD_OOB_DEVICE is not set
+CONFIG_NAND=y
+# CONFIG_NAND_ECC_HW is not set
+# CONFIG_NAND_ECC_HW_SYNDROME is not set
+# CONFIG_NAND_ECC_HW_NONE is not set
+CONFIG_NAND_ATMEL=y
+# CONFIG_UBI is not set
+# CONFIG_CMD_UBIFORMAT is not set
+CONFIG_USB=y
+# CONFIG_USB_OHCI is not set
+# CONFIG_USB_OHCI_AT91 is not set
+CONFIG_USB_STORAGE=y
+CONFIG_USB_HAVE_GADGET_DRIVER=y
+CONFIG_USB_GADGET=y
+CONFIG_USB_GADGET_DUALSPEED=y
+CONFIG_USB_GADGET_DRIVER_AT91=y
+CONFIG_USB_GADGET_DFU=y
+CONFIG_USB_GADGET_SERIAL=y
+# CONFIG_LED=y
+# CONFIG_LED_GPIO=y
+# CONFIG_LED_TRIGGERS=y
+# CONFIG_KEYBOARD_GPIO=y
+CONFIG_GPIO_GENERIC=y
+CONFIG_GPIO_GENERIC_PLATFORM=y
+CONFIG_VIDEO=y
+CONFIG_DRIVER_VIDEO_ATMEL=y
+CONFIG_CMD_SPLASH=y
+CONFIG_PNG=y
+CONFIG_LODEPNG=y
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 5fb3ead..2701a98 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -271,6 +271,11 @@ config MACH_AT91SAM9261EK
	  Select this if you are using Atmel's AT91SAM9261-EK Evaluation Kit.
	  <http://www.atmel.com/dyn/products/tools_card.asp?tool_id=3820>

+config MACH_CPODC2_9261
+    bool "CPO Science DataCollector II v2.0"
+    select MACH_CPODC2
+    select HAVE_NAND_ATMEL_BUSWIDTH_16
+
config MACH_PM9261
	bool "Ronetix PM9261"
	select HAS_DM9000
@@ -297,12 +302,27 @@ config MACH_AT91SAM9G10EK
	  Select this if you are using Atmel's AT91SAM9G10-EK Evaluation Kit.
	  <http://www.atmel.com/dyn/products/tools_card.asp?tool_id=4588>

+config MACH_CPODC2_9G10
+    bool "CPO Science DataCollector II v2.1"
+    select HAVE_NAND_ATMEL_BUSWIDTH_16
+    select MACH_CPODC2
+
endchoice

endif

# ----------------------------------------------------------

+if SOC_AT91SAM9261
+
+config MACH_CPODC2
+    bool
+    depends on MACH_CPODC2_9261 || MACH_CPODC2_9G10
+
+endif
+
+# ----------------------------------------------------------
+
if ARCH_AT91SAM9G20

choice
@@ -525,6 +545,10 @@ config CALAO_MB_QIL_A9260
	bool "MB-QIL A9260 Motherboard Board support"
	depends on MACH_QIL_A9260 || MACH_QIL_A9G20

+config CPODC2_MSP430
+	bool "CPODC2 MSP430 controller support"
+	depends on MACH_CPODC2
+
if COMMAND_SUPPORT

config CMD_AT91MUX
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
