Delivery-date: Mon, 22 Mar 2021 11:58:22 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lOIGM-0003LR-CO
	for lore@lore.pengutronix.de; Mon, 22 Mar 2021 11:58:22 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lOIGG-0001l6-6a
	for lore@pengutronix.de; Mon, 22 Mar 2021 11:58:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0GyqwDZGHlFSNGNd6PY2PYKe4Ro7iyKpX9AQK5U/PFc=; b=Ma6HcBBBcR1+XT
	SpsHAox0uFzp33tcJkTk7HfCr0GYKlL3Qh3gX1SFLKiw1LLH3WIaErl7v2ImqghPLTZu0UctbtAZZ
	51IFtQmDPNgmL6fir9NCnH6PSNzNGn2OtznIv0DZmmpFjfTdRhwfSDd9WghbwoubyXY6aPjZ0THnZ
	he29CadzcG7HBVW69QGu4C7gPKwBP6A8dwx9L0tT+etL5FzolAMGhubITHtS6xDfwJHXE/eUzHeBF
	Tfm/SFWSBD6Q69X4eWxecBTSDT/sYqBr2LwxH8ZW1UEsArPl4YRijCmIWXVYnLjt4TdWtxB1IrjPE
	spMt1R7zf72CBCRm/Cug==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lOIEe-00BNFU-Gx; Mon, 22 Mar 2021 10:56:37 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lOIEQ-00BNDk-5g
 for barebox@lists.infradead.org; Mon, 22 Mar 2021 10:56:26 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lOIEP-0001Qo-1l; Mon, 22 Mar 2021 11:56:21 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lOIEO-0001wD-PR; Mon, 22 Mar 2021 11:56:20 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 22 Mar 2021 11:56:19 +0100
Message-Id: <20210322105619.7393-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210322_105623_509475_F7E311F8 
X-CRM114-Status: GOOD (  15.22  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: remove Calxeda Highbank support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Calxeda went out off business back in 2013. The Calxeda Highbank port
did not get any active maintenance since then. Since the Highbank
support plays some tricks with devices trees passed to barebox from the
firmware it becomes a maintenance burden. Remove Highbank support
altogether.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig                              |  12 --
 arch/arm/Makefile                             |   1 -
 arch/arm/boards/Makefile                      |   1 -
 arch/arm/boards/highbank/Makefile             |   4 -
 .../defaultenv-highbank/boot.d/010-ahci-boot  |   1 -
 .../defaultenv-highbank/boot.d/011-ahci       |   1 -
 .../defaultenv-highbank/boot.d/020-mmc-boot   |   1 -
 .../defaultenv-highbank/boot.d/021-mmc        |   1 -
 .../defaultenv-highbank/boot.d/030-net        |   1 -
 .../defaultenv-highbank/boot.d/031-net-eth1   |   1 -
 .../highbank/defaultenv-highbank/boot/ahci    |  16 --
 .../defaultenv-highbank/boot/ahci-boot        |  16 --
 .../highbank/defaultenv-highbank/boot/mmc     |  16 --
 .../defaultenv-highbank/boot/mmc-boot         |  16 --
 .../highbank/defaultenv-highbank/boot/net     |  13 --
 .../defaultenv-highbank/boot/net-eth1         |  13 --
 .../highbank/defaultenv-highbank/data/oftree  |   4 -
 .../defaultenv-highbank/init/001-dtb-probe    |   7 -
 .../defaultenv-highbank/init/automount        |  22 ---
 .../defaultenv-highbank/nv/boot.default       |   1 -
 .../defaultenv-highbank/nv/bootm.oftree       |   1 -
 .../nv/linux.bootargs.console                 |   1 -
 arch/arm/boards/highbank/init.c               | 144 ------------------
 arch/arm/boards/highbank/lowlevel.c           |  17 ---
 arch/arm/configs/highbank_defconfig           |  59 -------
 arch/arm/mach-highbank/Kconfig                |  16 --
 arch/arm/mach-highbank/Makefile               |   4 -
 arch/arm/mach-highbank/cache-l2x0.c           |  40 -----
 arch/arm/mach-highbank/core.c                 |  47 ------
 arch/arm/mach-highbank/core.h                 |   2 -
 arch/arm/mach-highbank/devices.c              |  74 ---------
 .../arm/mach-highbank/include/mach/debug_ll.h |  14 --
 arch/arm/mach-highbank/include/mach/devices.h |  17 ---
 .../arm/mach-highbank/include/mach/hardware.h |  14 --
 arch/arm/mach-highbank/include/mach/sysregs.h |  57 -------
 arch/arm/mach-highbank/reset.c                |  41 -----
 arch/arm/mach-highbank/smc.S                  |  28 ----
 37 files changed, 724 deletions(-)
 delete mode 100644 arch/arm/boards/highbank/Makefile
 delete mode 120000 arch/arm/boards/highbank/defaultenv-highbank/boot.d/010-ahci-boot
 delete mode 120000 arch/arm/boards/highbank/defaultenv-highbank/boot.d/011-ahci
 delete mode 120000 arch/arm/boards/highbank/defaultenv-highbank/boot.d/020-mmc-boot
 delete mode 120000 arch/arm/boards/highbank/defaultenv-highbank/boot.d/021-mmc
 delete mode 120000 arch/arm/boards/highbank/defaultenv-highbank/boot.d/030-net
 delete mode 120000 arch/arm/boards/highbank/defaultenv-highbank/boot.d/031-net-eth1
 delete mode 100644 arch/arm/boards/highbank/defaultenv-highbank/boot/ahci
 delete mode 100644 arch/arm/boards/highbank/defaultenv-highbank/boot/ahci-boot
 delete mode 100644 arch/arm/boards/highbank/defaultenv-highbank/boot/mmc
 delete mode 100644 arch/arm/boards/highbank/defaultenv-highbank/boot/mmc-boot
 delete mode 100644 arch/arm/boards/highbank/defaultenv-highbank/boot/net
 delete mode 100644 arch/arm/boards/highbank/defaultenv-highbank/boot/net-eth1
 delete mode 100644 arch/arm/boards/highbank/defaultenv-highbank/data/oftree
 delete mode 100644 arch/arm/boards/highbank/defaultenv-highbank/init/001-dtb-probe
 delete mode 100644 arch/arm/boards/highbank/defaultenv-highbank/init/automount
 delete mode 100644 arch/arm/boards/highbank/defaultenv-highbank/nv/boot.default
 delete mode 100644 arch/arm/boards/highbank/defaultenv-highbank/nv/bootm.oftree
 delete mode 100644 arch/arm/boards/highbank/defaultenv-highbank/nv/linux.bootargs.console
 delete mode 100644 arch/arm/boards/highbank/init.c
 delete mode 100644 arch/arm/boards/highbank/lowlevel.c
 delete mode 100644 arch/arm/configs/highbank_defconfig
 delete mode 100644 arch/arm/mach-highbank/Kconfig
 delete mode 100644 arch/arm/mach-highbank/Makefile
 delete mode 100644 arch/arm/mach-highbank/cache-l2x0.c
 delete mode 100644 arch/arm/mach-highbank/core.c
 delete mode 100644 arch/arm/mach-highbank/core.h
 delete mode 100644 arch/arm/mach-highbank/devices.c
 delete mode 100644 arch/arm/mach-highbank/include/mach/debug_ll.h
 delete mode 100644 arch/arm/mach-highbank/include/mach/devices.h
 delete mode 100644 arch/arm/mach-highbank/include/mach/hardware.h
 delete mode 100644 arch/arm/mach-highbank/include/mach/sysregs.h
 delete mode 100644 arch/arm/mach-highbank/reset.c
 delete mode 100644 arch/arm/mach-highbank/smc.S

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index ab0bf03013..76c8538492 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -81,17 +81,6 @@ config ARCH_EP93XX
 	select CPU_ARM920T
 	select GENERIC_GPIO
 
-config ARCH_HIGHBANK
-	bool "Calxeda Highbank"
-	select HAS_DEBUG_LL
-	select ARCH_HAS_L2X0
-	select CPU_V7
-	select ARM_AMBA
-	select AMBA_SP804
-	select CLKDEV_LOOKUP
-	select COMMON_CLK
-	select GPIOLIB
-
 config ARCH_IMX
 	bool "Freescale iMX-based"
 	select GPIOLIB
@@ -290,7 +279,6 @@ source "arch/arm/mach-clps711x/Kconfig"
 source "arch/arm/mach-davinci/Kconfig"
 source "arch/arm/mach-digic/Kconfig"
 source "arch/arm/mach-ep93xx/Kconfig"
-source "arch/arm/mach-highbank/Kconfig"
 source "arch/arm/mach-imx/Kconfig"
 source "arch/arm/mach-layerscape/Kconfig"
 source "arch/arm/mach-mxs/Kconfig"
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 9dc0897e58..f8532e4ac9 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -88,7 +88,6 @@ machine-$(CONFIG_ARCH_CLPS711X)		:= clps711x
 machine-$(CONFIG_ARCH_DAVINCI)		:= davinci
 machine-$(CONFIG_ARCH_DIGIC)		:= digic
 machine-$(CONFIG_ARCH_EP93XX)		:= ep93xx
-machine-$(CONFIG_ARCH_HIGHBANK)		:= highbank
 machine-$(CONFIG_ARCH_IMX)		:= imx
 machine-$(CONFIG_ARCH_LAYERSCAPE)	:= layerscape
 machine-$(CONFIG_ARCH_MXS)		:= mxs
diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index f8cdd90ed6..d29a233258 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -60,7 +60,6 @@ obj-$(CONFIG_MACH_GUF_SANTARO)			+= guf-santaro/
 obj-$(CONFIG_MACH_GUF_VINCELL)			+= guf-vincell/
 obj-$(CONFIG_MACH_GW_VENTANA)			+= gateworks-ventana/
 obj-$(CONFIG_MACH_HABA_KNX_LITE)		+= haba-knx/
-obj-$(CONFIG_MACH_HIGHBANK)			+= highbank/
 obj-$(CONFIG_MACH_IMX21ADS)			+= freescale-mx21-ads/
 obj-$(CONFIG_MACH_IMX233_OLINUXINO)		+= imx233-olinuxino/
 obj-$(CONFIG_MACH_IMX27ADS)			+= freescale-mx27-ads/
diff --git a/arch/arm/boards/highbank/Makefile b/arch/arm/boards/highbank/Makefile
deleted file mode 100644
index e5e4536cd1..0000000000
--- a/arch/arm/boards/highbank/Makefile
+++ /dev/null
@@ -1,4 +0,0 @@
-obj-y += init.o
-
-lwl-y += lowlevel.o
-bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-highbank
diff --git a/arch/arm/boards/highbank/defaultenv-highbank/boot.d/010-ahci-boot b/arch/arm/boards/highbank/defaultenv-highbank/boot.d/010-ahci-boot
deleted file mode 120000
index 3672f0495e..0000000000
--- a/arch/arm/boards/highbank/defaultenv-highbank/boot.d/010-ahci-boot
+++ /dev/null
@@ -1 +0,0 @@
-../boot/ahci-boot
\ No newline at end of file
diff --git a/arch/arm/boards/highbank/defaultenv-highbank/boot.d/011-ahci b/arch/arm/boards/highbank/defaultenv-highbank/boot.d/011-ahci
deleted file mode 120000
index 36b3b2815b..0000000000
--- a/arch/arm/boards/highbank/defaultenv-highbank/boot.d/011-ahci
+++ /dev/null
@@ -1 +0,0 @@
-../boot/ahci
\ No newline at end of file
diff --git a/arch/arm/boards/highbank/defaultenv-highbank/boot.d/020-mmc-boot b/arch/arm/boards/highbank/defaultenv-highbank/boot.d/020-mmc-boot
deleted file mode 120000
index 85c19bbd66..0000000000
--- a/arch/arm/boards/highbank/defaultenv-highbank/boot.d/020-mmc-boot
+++ /dev/null
@@ -1 +0,0 @@
-../boot/mmc-boot
\ No newline at end of file
diff --git a/arch/arm/boards/highbank/defaultenv-highbank/boot.d/021-mmc b/arch/arm/boards/highbank/defaultenv-highbank/boot.d/021-mmc
deleted file mode 120000
index 5af95d0ac7..0000000000
--- a/arch/arm/boards/highbank/defaultenv-highbank/boot.d/021-mmc
+++ /dev/null
@@ -1 +0,0 @@
-../boot/mmc
\ No newline at end of file
diff --git a/arch/arm/boards/highbank/defaultenv-highbank/boot.d/030-net b/arch/arm/boards/highbank/defaultenv-highbank/boot.d/030-net
deleted file mode 120000
index 70b8ea3965..0000000000
--- a/arch/arm/boards/highbank/defaultenv-highbank/boot.d/030-net
+++ /dev/null
@@ -1 +0,0 @@
-../boot/net
\ No newline at end of file
diff --git a/arch/arm/boards/highbank/defaultenv-highbank/boot.d/031-net-eth1 b/arch/arm/boards/highbank/defaultenv-highbank/boot.d/031-net-eth1
deleted file mode 120000
index 5a30a308c7..0000000000
--- a/arch/arm/boards/highbank/defaultenv-highbank/boot.d/031-net-eth1
+++ /dev/null
@@ -1 +0,0 @@
-../boot/net-eth1
\ No newline at end of file
diff --git a/arch/arm/boards/highbank/defaultenv-highbank/boot/ahci b/arch/arm/boards/highbank/defaultenv-highbank/boot/ahci
deleted file mode 100644
index 46a8c1b321..0000000000
--- a/arch/arm/boards/highbank/defaultenv-highbank/boot/ahci
+++ /dev/null
@@ -1,16 +0,0 @@
-#!/bin/sh
-
-path="/mnt/ahci"
-
-global.bootm.image="${path}/zImage"
-
-. /env/data/oftree
-
-oftree=${path}/oftree
-if [ -f $oftree ]; then
-	global.bootm.oftree="$oftree"
-fi
-
-# The rootdevice may actually be mmcblk1p2 if a card
-# is inserted to the back MMC slot
-global.linux.bootargs.dyn.root="root=/dev/sda2"
diff --git a/arch/arm/boards/highbank/defaultenv-highbank/boot/ahci-boot b/arch/arm/boards/highbank/defaultenv-highbank/boot/ahci-boot
deleted file mode 100644
index 919eac54a7..0000000000
--- a/arch/arm/boards/highbank/defaultenv-highbank/boot/ahci-boot
+++ /dev/null
@@ -1,16 +0,0 @@
-#!/bin/sh
-
-path="/mnt/ahci-boot"
-
-global.bootm.image="${path}/zImage"
-
-. /env/data/oftree
-
-oftree=${path}/oftree
-if [ -f $oftree ]; then
-	global.bootm.oftree="$oftree"
-fi
-
-# The rootdevice may actually be mmcblk1p2 if a card
-# is inserted to the back MMC slot
-global.linux.bootargs.dyn.root="root=/dev/sda2"
diff --git a/arch/arm/boards/highbank/defaultenv-highbank/boot/mmc b/arch/arm/boards/highbank/defaultenv-highbank/boot/mmc
deleted file mode 100644
index 0fff5b4a81..0000000000
--- a/arch/arm/boards/highbank/defaultenv-highbank/boot/mmc
+++ /dev/null
@@ -1,16 +0,0 @@
-#!/bin/sh
-
-path="/mnt/mmc"
-
-global.bootm.image="${path}/zimage"
-
-. /env/data/oftree
-
-oftree=${path}/oftree
-if [ -f $oftree ]; then
-	global.bootm.oftree="$oftree"
-fi
-
-# The rootdevice may actually be mmcblk1p2 if a card
-# is inserted to the back MMC slot
-global.linux.bootargs.dyn.root="root=/dev/mmcblk0p2"
diff --git a/arch/arm/boards/highbank/defaultenv-highbank/boot/mmc-boot b/arch/arm/boards/highbank/defaultenv-highbank/boot/mmc-boot
deleted file mode 100644
index f3ae301e1b..0000000000
--- a/arch/arm/boards/highbank/defaultenv-highbank/boot/mmc-boot
+++ /dev/null
@@ -1,16 +0,0 @@
-#!/bin/sh
-
-path="/mnt/mmc-boot"
-
-global.bootm.image="${path}/zimage"
-
-. /env/data/oftree
-
-oftree=${path}/oftree
-if [ -f $oftree ]; then
-	global.bootm.oftree="$oftree"
-fi
-
-# The rootdevice may actually be mmcblk1p2 if a card
-# is inserted to the back MMC slot
-global.linux.bootargs.dyn.root="root=/dev/mmcblk0p2"
diff --git a/arch/arm/boards/highbank/defaultenv-highbank/boot/net b/arch/arm/boards/highbank/defaultenv-highbank/boot/net
deleted file mode 100644
index 6a700087fb..0000000000
--- a/arch/arm/boards/highbank/defaultenv-highbank/boot/net
+++ /dev/null
@@ -1,13 +0,0 @@
-#!/bin/sh
-
-ethact eth0
-
-path="/mnt/tftp"
-
-. /env/data/oftree
-
-global.bootm.image="${path}/${global.user}-linux-${global.hostname}"
-#global.bootm.oftree="${path}/${global.user}-oftree-${global.hostname}"
-nfsroot="/home/${global.user}/nfsroot/${global.hostname}"
-bootargs-ip
-global.linux.bootargs.dyn.root="root=/dev/nfs nfsroot=$nfsroot,v3,tcp"
diff --git a/arch/arm/boards/highbank/defaultenv-highbank/boot/net-eth1 b/arch/arm/boards/highbank/defaultenv-highbank/boot/net-eth1
deleted file mode 100644
index 1c70bdf3f0..0000000000
--- a/arch/arm/boards/highbank/defaultenv-highbank/boot/net-eth1
+++ /dev/null
@@ -1,13 +0,0 @@
-#!/bin/sh
-
-ethact eth1
-
-path="/mnt/tftp"
-
-. /env/data/oftree
-
-global.bootm.image="${path}/${global.user}-linux-${global.hostname}"
-#global.bootm.oftree="${path}/${global.user}-oftree-${global.hostname}"
-nfsroot="/home/${global.user}/nfsroot/${global.hostname}"
-bootargs-ip
-global.linux.bootargs.dyn.root="root=/dev/nfs nfsroot=$nfsroot,v3,tcp"
diff --git a/arch/arm/boards/highbank/defaultenv-highbank/data/oftree b/arch/arm/boards/highbank/defaultenv-highbank/data/oftree
deleted file mode 100644
index 9a94b310c3..0000000000
--- a/arch/arm/boards/highbank/defaultenv-highbank/data/oftree
+++ /dev/null
@@ -1,4 +0,0 @@
-#!/bin/sh
-
-#device tree provided by the firmware
-global.bootm.oftree="/dev/dtb"
diff --git a/arch/arm/boards/highbank/defaultenv-highbank/init/001-dtb-probe b/arch/arm/boards/highbank/defaultenv-highbank/init/001-dtb-probe
deleted file mode 100644
index 610db1500e..0000000000
--- a/arch/arm/boards/highbank/defaultenv-highbank/init/001-dtb-probe
+++ /dev/null
@@ -1,7 +0,0 @@
-#!/bin/sh
-
-if [ -e /dev/dtb ]
-then
-	oftree -l /dev/dtb
-	oftree -p
-fi
diff --git a/arch/arm/boards/highbank/defaultenv-highbank/init/automount b/arch/arm/boards/highbank/defaultenv-highbank/init/automount
deleted file mode 100644
index eb5c07a739..0000000000
--- a/arch/arm/boards/highbank/defaultenv-highbank/init/automount
+++ /dev/null
@@ -1,22 +0,0 @@
-#!/bin/sh
-
-# automount tftp server based on $eth0.serverip
-
-mkdir -p /mnt/tftp
-automount /mnt/tftp 'ifup eth0 && mount -t tftp $eth0.serverip /mnt/tftp'
-
-# SD card slot, boot partition
-mkdir -p /mnt/mmc-boot
-automount -d /mnt/mmc 'mount /dev/disk0.boot /mnt/mmc-boot'
-
-# SD card slot, first partition
-mkdir -p /mnt/mmc
-automount -d /mnt/mmc 'mount /dev/disk0.0 /mnt/mmc'
-
-# AHCI, boot partition
-mkdir -p /mnt/ahci-boot
-automount -d /mnt/ahci 'mount /dev/ata0.boot /mnt/ahci-boot'
-
-# AHCI, first partition
-mkdir -p /mnt/ahci
-automount -d /mnt/ahci 'mount /dev/ata0.0 /mnt/ahci'
diff --git a/arch/arm/boards/highbank/defaultenv-highbank/nv/boot.default b/arch/arm/boards/highbank/defaultenv-highbank/nv/boot.default
deleted file mode 100644
index c47e1b2bca..0000000000
--- a/arch/arm/boards/highbank/defaultenv-highbank/nv/boot.default
+++ /dev/null
@@ -1 +0,0 @@
-/env/boot.d
diff --git a/arch/arm/boards/highbank/defaultenv-highbank/nv/bootm.oftree b/arch/arm/boards/highbank/defaultenv-highbank/nv/bootm.oftree
deleted file mode 100644
index c373173805..0000000000
--- a/arch/arm/boards/highbank/defaultenv-highbank/nv/bootm.oftree
+++ /dev/null
@@ -1 +0,0 @@
-/dev/dtb
diff --git a/arch/arm/boards/highbank/defaultenv-highbank/nv/linux.bootargs.console b/arch/arm/boards/highbank/defaultenv-highbank/nv/linux.bootargs.console
deleted file mode 100644
index 826debe7c2..0000000000
--- a/arch/arm/boards/highbank/defaultenv-highbank/nv/linux.bootargs.console
+++ /dev/null
@@ -1 +0,0 @@
-console=ttyAMA0,115200n8 CONSOLE=/dev/ttyAMA0
diff --git a/arch/arm/boards/highbank/init.c b/arch/arm/boards/highbank/init.c
deleted file mode 100644
index 32e217321a..0000000000
--- a/arch/arm/boards/highbank/init.c
+++ /dev/null
@@ -1,144 +0,0 @@
-/*
- * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
- *
- * GPLv2 only
- */
-
-#include <common.h>
-#include <init.h>
-#include <asm/armlinux.h>
-#include <asm/system_info.h>
-#include <generated/mach-types.h>
-#include <mach/devices.h>
-#include <mach/hardware.h>
-#include <mach/sysregs.h>
-#include <environment.h>
-#include <partition.h>
-#include <linux/sizes.h>
-#include <io.h>
-#include <of.h>
-#include <envfs.h>
-
-#define FIRMWARE_DTB_BASE	0x1000
-
-#define HB_OPP_VERSION		0
-
-struct fdt_header *fdt = NULL;
-
-static int hb_fixup(struct device_node *root, void *unused)
-{
-	struct device_node *node;
-	u32 reg = readl(sregs_base + HB_SREG_A9_PWRDOM_DATA);
-	u32 *opp_table = (u32 *)HB_SYSRAM_OPP_TABLE_BASE;
-	u32 dtb_table[2*10];
-	u32 i;
-	u32 num_opps;
-	__be32 latency;
-
-	if (!(reg & HB_PWRDOM_STAT_SATA)) {
-		for_each_compatible_node_from(node, root, NULL, "calxeda,hb-ahci")
-			of_property_write_string(node, "status", "disabled");
-	}
-
-	if (!(reg & HB_PWRDOM_STAT_EMMC)) {
-		for_each_compatible_node_from(node, root, NULL, "calxeda,hb-sdhci")
-			of_property_write_string(node, "status", "disabled");
-	}
-
-	if ((opp_table[0] >> 16) != HB_OPP_VERSION)
-		return 0;
-
-	node = of_find_node_by_path("/cpus/cpu@0");
-	if (!node)
-		return 0;
-
-	num_opps = opp_table[0] & 0xff;
-
-	for (i = 0; i < num_opps; i++) {
-		dtb_table[2 * i] = cpu_to_be32(opp_table[3 + 3 * i]);
-		dtb_table[2 * i + 1] = cpu_to_be32(opp_table[2 + 3 * i]);
-	}
-
-	latency = cpu_to_be32(opp_table[1]);
-
-	of_set_property(node, "transition-latency", &latency, 4, 1);
-	of_set_property(node, "operating-points", dtb_table, 8 * num_opps, 1);
-
-	return 0;
-}
-
-static int highbank_mem_init(void)
-{
-	struct device_node *root, *np;
-	int ret;
-
-	/* load by the firmware at 0x1000 */
-	fdt = IOMEM(FIRMWARE_DTB_BASE);
-
-	root = of_unflatten_dtb(fdt);
-	if (IS_ERR(root)) {
-		pr_warn("no dtb found at 0x1000 use default configuration\n");
-		fdt = NULL;
-		goto not_found;
-	}
-
-	of_set_root_node(root);
-
-	np = of_find_node_by_path("/memory");
-	if (!np) {
-		pr_warn("no memory node use default configuration\n");
-		goto not_found;
-	}
-
-	ret = of_add_memory(np, true);
-	if (ret) {
-		pr_warn("memory node: probe failed use default configuration\n");
-		goto not_found;
-	}
-
-	pr_info("highbank: dtb probed memory size\n");
-
-	return 0;
-not_found:
-	highbank_add_ddram(4089 << 20);
-	return 0;
-}
-mem_initcall(highbank_mem_init);
-
-static int highbank_devices_init(void)
-{
-	of_register_fixup(hb_fixup, NULL);
-	if (!fdt) {
-		highbank_register_gpio(0);
-		highbank_register_gpio(1);
-		highbank_register_gpio(2);
-		highbank_register_gpio(3);
-		highbank_register_ahci();
-		highbank_register_xgmac(0);
-		highbank_register_xgmac(1);
-	} else {
-		fdt = of_get_fixed_tree(NULL);
-		add_mem_device("dtb", (unsigned long)fdt, be32_to_cpu(fdt->totalsize),
-		       IORESOURCE_MEM_WRITEABLE);
-		devfs_add_partition("ram0", FIRMWARE_DTB_BASE, SZ_64K, DEVFS_PARTITION_FIXED, "firmware-dtb");
-	}
-
-	devfs_add_partition("nvram", 0x00000, SZ_16K, DEVFS_PARTITION_FIXED, "env0");
-
-	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC))
-		defaultenv_append_directory(defaultenv_highbank);
-
-	return 0;
-}
-device_initcall(highbank_devices_init);
-
-static int highbank_console_init(void)
-{
-	barebox_set_model("Calxeda Highbank");
-	barebox_set_hostname("highbank");
-
-	highbank_register_uart();
-
-	return 0;
-}
-console_initcall(highbank_console_init);
diff --git a/arch/arm/boards/highbank/lowlevel.c b/arch/arm/boards/highbank/lowlevel.c
deleted file mode 100644
index 6363ec96df..0000000000
--- a/arch/arm/boards/highbank/lowlevel.c
+++ /dev/null
@@ -1,17 +0,0 @@
-/*
- * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
- *
- * GPLv2 only
- */
-
-#include <common.h>
-#include <linux/sizes.h>
-#include <asm/barebox-arm-head.h>
-#include <asm/barebox-arm.h>
-#include <asm/system_info.h>
-
-void __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
-{
-	arm_cpu_lowlevel_init();
-	barebox_arm_entry(0x00000000, SZ_512M, NULL);
-}
diff --git a/arch/arm/configs/highbank_defconfig b/arch/arm/configs/highbank_defconfig
deleted file mode 100644
index 8a045d8fe2..0000000000
--- a/arch/arm/configs/highbank_defconfig
+++ /dev/null
@@ -1,59 +0,0 @@
-CONFIG_ARCH_HIGHBANK=y
-CONFIG_AEABI=y
-CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_PBL_IMAGE=y
-CONFIG_MMU=y
-CONFIG_MALLOC_SIZE=0xa00000
-CONFIG_MALLOC_TLSF=y
-CONFIG_PROMPT="vexpress: "
-CONFIG_GLOB=y
-CONFIG_HUSH_FANCY_PROMPT=y
-CONFIG_CMDLINE_EDITING=y
-CONFIG_AUTO_COMPLETE=y
-CONFIG_MENU=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_BOOTM_VERBOSE=y
-CONFIG_BOOTM_INITRD=y
-CONFIG_BOOTM_OFTREE=y
-CONFIG_BOOTM_OFTREE_UIMAGE=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_LONGHELP=y
-CONFIG_CMD_MEMINFO=y
-# CONFIG_CMD_BOOTU is not set
-CONFIG_CMD_GO=y
-CONFIG_CMD_LOADB=y
-CONFIG_CMD_RESET=y
-CONFIG_CMD_UIMAGE=y
-CONFIG_CMD_PARTITION=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_UNCOMPRESS=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_DHCP=y
-CONFIG_CMD_PING=y
-CONFIG_CMD_TFTP=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_LOGIN=y
-CONFIG_CMD_MENU=y
-CONFIG_CMD_MENU_MANAGEMENT=y
-CONFIG_CMD_PASSWD=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_CLK=y
-CONFIG_CMD_POWEROFF=y
-CONFIG_CMD_OFTREE=y
-CONFIG_NET=y
-CONFIG_NET_NFS=y
-CONFIG_NET_NETCONSOLE=y
-CONFIG_NET_RESOLV=y
-CONFIG_SERIAL_AMBA_PL011=y
-CONFIG_DRIVER_NET_CALXEDA_XGMAC=y
-# CONFIG_SPI is not set
-CONFIG_DISK=y
-CONFIG_DISK_AHCI=y
-CONFIG_GPIO_PL061=y
-CONFIG_FS_TFTP=y
-CONFIG_DIGEST_SHA1_GENERIC=y
-CONFIG_DIGEST_SHA256_GENERIC=y
diff --git a/arch/arm/mach-highbank/Kconfig b/arch/arm/mach-highbank/Kconfig
deleted file mode 100644
index 8a22348798..0000000000
--- a/arch/arm/mach-highbank/Kconfig
+++ /dev/null
@@ -1,16 +0,0 @@
-if ARCH_HIGHBANK
-
-config ARCH_TEXT_BASE
-	hex
-	default 0x03f00000
-
-choice
-	prompt "Calxeda Board type"
-
-config MACH_HIGHBANK
-	bool "Calxeda Highbank"
-	select OFTREE
-
-endchoice
-
-endif
diff --git a/arch/arm/mach-highbank/Makefile b/arch/arm/mach-highbank/Makefile
deleted file mode 100644
index 6a7330f633..0000000000
--- a/arch/arm/mach-highbank/Makefile
+++ /dev/null
@@ -1,4 +0,0 @@
-obj-y += core.o
-obj-y += devices.o
-obj-y += reset.o
-obj-$(CONFIG_CACHE_L2X0) += cache-l2x0.o smc.o
diff --git a/arch/arm/mach-highbank/cache-l2x0.c b/arch/arm/mach-highbank/cache-l2x0.c
deleted file mode 100644
index 28d5f6c7dc..0000000000
--- a/arch/arm/mach-highbank/cache-l2x0.c
+++ /dev/null
@@ -1,40 +0,0 @@
-/*
- * Copyright (C) 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; version 2 of
- * the License.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- */
-
-#include <common.h>
-#include <init.h>
-#include <io.h>
-
-#include <asm/mmu.h>
-#include <asm/cache-l2x0.h>
-
-#include "core.h"
-
-static void highbank_l2x0_disable(void)
-{
-	/* Disable PL310 L2 Cache controller */
-	highbank_smc1(0x102, 0x0);
-}
-
-static int highbank_l2x0_init(void)
-{
-	/* Enable PL310 L2 Cache controller */
-	highbank_smc1(0x102, 0x1);
-	l2x0_init(IOMEM(0xfff12000), 0, ~0UL);
-	outer_cache.disable = highbank_l2x0_disable;
-
-	return 0;
-}
-postmmu_initcall(highbank_l2x0_init);
diff --git a/arch/arm/mach-highbank/core.c b/arch/arm/mach-highbank/core.c
deleted file mode 100644
index 967d13f939..0000000000
--- a/arch/arm/mach-highbank/core.c
+++ /dev/null
@@ -1,47 +0,0 @@
-/*
- * Copyright (C) 2009 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
- *
- * GPLv2 only
- */
-
-#include <common.h>
-#include <init.h>
-#include <io.h>
-
-#include <linux/clk.h>
-#include <linux/clkdev.h>
-#include <linux/amba/bus.h>
-
-#include <asm/hardware/arm_timer.h>
-
-#include <mach/devices.h>
-#include <mach/hardware.h>
-#include <mach/sysregs.h>
-
-void __iomem *sregs_base = IOMEM(HB_SREG_A9_BASE);
-
-static void highbank_clk_init(void)
-{
-	struct clk *clk;
-
-	clk = clk_fixed("dummy_apb_pclk", 0);
-	clk_register_clkdev(clk, "apb_pclk", NULL);
-
-	clk = clk_fixed("pclk", 150000000);
-	clk_register_clkdev(clk, NULL, "sp804");
-	clk_register_clkdev(clk, NULL, "uart-pl011");
-}
-
-static void highbank_sp804_init(void)
-{
-	amba_apb_device_add(NULL, "sp804", DEVICE_ID_SINGLE, 0xfff34000, 4096, NULL, 0);
-}
-
-static int highbank_init(void)
-{
-	highbank_clk_init();
-	highbank_sp804_init();
-
-	return 0;
-}
-postcore_initcall(highbank_init);
diff --git a/arch/arm/mach-highbank/core.h b/arch/arm/mach-highbank/core.h
deleted file mode 100644
index e3f19b2e56..0000000000
--- a/arch/arm/mach-highbank/core.h
+++ /dev/null
@@ -1,2 +0,0 @@
-
-extern void highbank_smc1(int fn, int arg);
diff --git a/arch/arm/mach-highbank/devices.c b/arch/arm/mach-highbank/devices.c
deleted file mode 100644
index 8f9b8e0f45..0000000000
--- a/arch/arm/mach-highbank/devices.c
+++ /dev/null
@@ -1,74 +0,0 @@
-/*
- * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
- *
- * GPLv2 only
- */
-
-#include <common.h>
-#include <linux/sizes.h>
-
-#include <linux/amba/bus.h>
-
-#include <asm/memory.h>
-
-#include <mach/devices.h>
-
-void highbank_add_ddram(u32 size)
-{
-	arm_add_mem_device("ram1", 0x00000000, size);
-	add_mem_device("nvram", 0xfff88000, SZ_32K, IORESOURCE_MEM_WRITEABLE);
-}
-
-void highbank_register_uart(void)
-{
-	amba_apb_device_add(NULL, "uart-pl011", DEVICE_ID_SINGLE, 0xfff36000, 4096, NULL, 0);
-}
-
-void highbank_register_ahci(void)
-{
-	add_generic_device("ahci", DEVICE_ID_SINGLE, NULL, 0xffe08000,
-			0x10000, IORESOURCE_MEM, NULL);
-}
-
-void highbank_register_xgmac(unsigned id)
-{
-	resource_size_t start;
-
-	switch (id) {
-	case 0:
-		start = 0xfff50000;
-		break;
-	case 1:
-		start = 0xfff51000;
-		break;
-	default:
-		return;
-	}
-
-	add_generic_device("hb-xgmac", id, NULL, start, 0x1000,
-				IORESOURCE_MEM, NULL);
-}
-
-void highbank_register_gpio(unsigned id)
-{
-	resource_size_t start;
-
-	switch (id) {
-	case 0:
-		start = 0xfff30000;
-		break;
-	case 1:
-		start = 0xfff31000;
-		break;
-	case 2:
-		start = 0xfff32000;
-		break;
-	case 3:
-		start = 0xfff33000;
-		break;
-	default:
-		return;
-	}
-
-	amba_apb_device_add(NULL, "pl061_gpio", id, start, 0x1000, NULL, 0);
-}
diff --git a/arch/arm/mach-highbank/include/mach/debug_ll.h b/arch/arm/mach-highbank/include/mach/debug_ll.h
deleted file mode 100644
index 5d0fae80e7..0000000000
--- a/arch/arm/mach-highbank/include/mach/debug_ll.h
+++ /dev/null
@@ -1,14 +0,0 @@
-/*
- * Copyright 2013 Jean-Christophe PLAGNIOL-VILLARD <plagniol@jcrosoft.com>
- *
- * GPLv2 only
- */
-
-#ifndef __MACH_DEBUG_LL_H__
-#define   __MACH_DEBUG_LL_H__
-
-#define DEBUG_LL_UART_ADDR 0xfff36000
-
-#include <debug_ll/pl011.h>
-
-#endif
diff --git a/arch/arm/mach-highbank/include/mach/devices.h b/arch/arm/mach-highbank/include/mach/devices.h
deleted file mode 100644
index 2cf2b6161c..0000000000
--- a/arch/arm/mach-highbank/include/mach/devices.h
+++ /dev/null
@@ -1,17 +0,0 @@
-/*
- * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
- *
- * GPLv2 only
- */
-
-#ifndef __ASM_ARCH_DEVICES_H__
-#define __ASM_ARCH_DEVICES_H__
-
-void highbank_add_ddram(u32 size);
-
-void highbank_register_uart(void);
-void highbank_register_ahci(void);
-void highbank_register_xgmac(unsigned id);
-void highbank_register_gpio(unsigned id);
-
-#endif /* __ASM_ARCH_DEVICES_H__ */
diff --git a/arch/arm/mach-highbank/include/mach/hardware.h b/arch/arm/mach-highbank/include/mach/hardware.h
deleted file mode 100644
index db7fff242f..0000000000
--- a/arch/arm/mach-highbank/include/mach/hardware.h
+++ /dev/null
@@ -1,14 +0,0 @@
-/*
- * Copyright (C) 2010-2011 Calxeda, Inc
- * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
- *
- * GPLv2 only
- */
-
-#ifndef __MACH_HARDWARE_H__
-#define __MACH_HARDWARE_H__
-
-#define HB_SREG_A9_BASE			0xfff3c000
-#define HB_SYSRAM_OPP_TABLE_BASE	0xfff8f000
-
-#endif /* __MACH_HARDWARE_H__ */
diff --git a/arch/arm/mach-highbank/include/mach/sysregs.h b/arch/arm/mach-highbank/include/mach/sysregs.h
deleted file mode 100644
index 2f058f2d96..0000000000
--- a/arch/arm/mach-highbank/include/mach/sysregs.h
+++ /dev/null
@@ -1,57 +0,0 @@
-/*
- * Copyright 2011 Calxeda, Inc.
- *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms and conditions of the GNU General Public License,
- * version 2, as published by the Free Software Foundation.
- *
- * This program is distributed in the hope it will be useful, but WITHOUT
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
- * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
- * more details.
- *
- * You should have received a copy of the GNU General Public License along with
- * this program.  If not, see <http://www.gnu.org/licenses/>.
- */
-#ifndef _MACH_HIGHBANK__SYSREGS_H_
-#define _MACH_HIGHBANK__SYSREGS_H_
-
-#include <io.h>
-
-extern void __iomem *sregs_base;
-
-#define HB_SREG_A9_PWR_REQ		0xf00
-#define HB_SREG_A9_BOOT_STAT		0xf04
-#define HB_SREG_A9_BOOT_DATA		0xf08
-#define HB_SREG_A9_PWRDOM_DATA		0xf20
-
-#define HB_PWRDOM_STAT_SATA	0x80000000
-#define HB_PWRDOM_STAT_PCI	0x40000000
-#define HB_PWRDOM_STAT_EMMC	0x20000000
-
-#define HB_PWR_SUSPEND			0
-#define HB_PWR_SOFT_RESET		1
-#define HB_PWR_HARD_RESET		2
-#define HB_PWR_SHUTDOWN			3
-
-static inline void hingbank_set_pwr_suspend(void)
-{
-	writel(HB_PWR_SUSPEND, sregs_base + HB_SREG_A9_PWR_REQ);
-}
-
-static inline void hingbank_set_pwr_shutdown(void)
-{
-	writel(HB_PWR_SHUTDOWN, sregs_base + HB_SREG_A9_PWR_REQ);
-}
-
-static inline void hingbank_set_pwr_soft_reset(void)
-{
-	writel(HB_PWR_SOFT_RESET, sregs_base + HB_SREG_A9_PWR_REQ);
-}
-
-static inline void hingbank_set_pwr_hard_reset(void)
-{
-	writel(HB_PWR_HARD_RESET, sregs_base + HB_SREG_A9_PWR_REQ);
-}
-
-#endif
diff --git a/arch/arm/mach-highbank/reset.c b/arch/arm/mach-highbank/reset.c
deleted file mode 100644
index ea3908ec2b..0000000000
--- a/arch/arm/mach-highbank/reset.c
+++ /dev/null
@@ -1,41 +0,0 @@
-/*
- * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
- *
- * GPLv2 only
- */
-
-#include <common.h>
-#include <io.h>
-#include <poweroff.h>
-#include <restart.h>
-#include <init.h>
-
-#include <mach/devices.h>
-#include <mach/sysregs.h>
-
-static void __noreturn highbank_restart_soc(struct restart_handler *rst)
-{
-	hingbank_set_pwr_hard_reset();
-	asm("	wfi");
-
-	hang();
-}
-
-static void __noreturn highbank_poweroff(struct poweroff_handler *handler)
-{
-	shutdown_barebox();
-
-	hingbank_set_pwr_shutdown();
-	asm("	wfi");
-
-	while(1);
-}
-
-static int highbank_init(void)
-{
-	restart_handler_register_fn("soc", highbank_restart_soc);
-	poweroff_handler_register_fn(highbank_poweroff);
-
-	return 0;
-}
-coredevice_initcall(highbank_init);
diff --git a/arch/arm/mach-highbank/smc.S b/arch/arm/mach-highbank/smc.S
deleted file mode 100644
index cc932a3931..0000000000
--- a/arch/arm/mach-highbank/smc.S
+++ /dev/null
@@ -1,28 +0,0 @@
-/*
- * Copied from omap44xx-smc.S Copyright (C) 2010 Texas Instruments, Inc.
- * Copyright 2012 Calxeda, Inc.
- *
- * This program is free software,you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- */
-
-#include <linux/linkage.h>
-
-/*
- * This is common routine to manage secure monitor API
- * used to modify the PL310 secure registers.
- * 'r0' contains the value to be modified and 'r12' contains
- * the monitor API number.
- * Function signature : void highbank_smc1(u32 fn, u32 arg)
- */
-
-ENTRY(highbank_smc1)
-	.arch_extension sec
-	stmfd	sp!, {r4-r11, lr}
-	mov	r12, r0
-	mov	r0, r1
-	dsb
-	smc	#0
-	ldmfd	sp!, {r4-r11, pc}
-ENDPROC(highbank_smc1)
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

