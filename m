Delivery-date: Thu, 05 May 2022 10:03:55 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmWSp-002UTc-7j
	for lore@lore.pengutronix.de; Thu, 05 May 2022 10:03:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmWSn-0007uv-1a
	for lore@pengutronix.de; Thu, 05 May 2022 10:03:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KdxA0uNpU3n3Ua49WYk0nTf1WEL0VhaQCZLpByE61co=; b=PFJASDcXI3fyGf
	w+SpMDaY2sB/ZDucaEAmttRrUdWOLugaYXAUA53rlM7HfKCkwmVzuDSlSf5ODUE4Xn72UBABuDGsC
	gEzJsLTH9F7CTomRDvtKCxia2Xz/lMyjZYg2p96X3tf/4Jep7R/b7XDOQ8N5d/UTw7hxyY6B7dDTN
	OG0dj4obGz20KOtRS01t+SG4KJONtQPVXrA9BvYUN745wUEolzhZyWopP/tkqzHcjPOpLrn/MuDGQ
	NS04hzUJPVnq98QdMAn7ewHXEYwKk0QPid1/TglxaBGKG5VXV8lSib97gARYblRCB+QIaSWj5plJx
	Vhhob8fu0FBwI6w/4eQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmWRQ-00EWqL-9v; Thu, 05 May 2022 08:02:28 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmWR2-00EWbS-SK
 for barebox@lists.infradead.org; Thu, 05 May 2022 08:02:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nmWQx-0006sq-PD; Thu, 05 May 2022 10:01:59 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nmWQy-000TO6-9y; Thu, 05 May 2022 10:01:58 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nmWQv-004har-C1; Thu, 05 May 2022 10:01:57 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: ukl@pengutronix.de, =?UTF-8?q?Daniel=20Br=C3=A1t?= <danek.brat@gmail.com>,
 ore@pengutronix.de, Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  5 May 2022 10:01:42 +0200
Message-Id: <20220505080152.1068424-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220505080152.1068424-1-a.fatoum@pengutronix.de>
References: <20220505080152.1068424-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220505_010205_123022_55E2CD0C 
X-CRM114-Status: GOOD (  13.15  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 05/15] ARM: rpi: add Raspberry Pi 3 64-bit build support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Have the subarch select the needed symbols to display a 32-bit/64-bit
menu and hide the boards that aren't capable of 64-bit when
CONFIG_64BIT=y. Building for 64-bit throws some warning about mismatched
type sizes, so fix those as well.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/Kconfig                              |  4 ++++
 arch/arm/mach-bcm283x/Kconfig                 | 21 +++++++++++++++----
 arch/arm/mach-bcm283x/include/mach/platform.h |  4 ++--
 arch/arm/mach-bcm283x/mbox.c                  |  2 +-
 images/Makefile.bcm283x                       |  6 ++++++
 5 files changed, 30 insertions(+), 7 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 299e0ab08049..ff970e537aec 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -60,6 +60,10 @@ config ARCH_BCM283X
 	select OFTREE
 	select OFDEVICE
 	select HAVE_PBL_MULTI_IMAGES
+	select CPU_SUPPORTS_64BIT_KERNEL
+	select SYS_SUPPORTS_64BIT_KERNEL
+	select CPU_SUPPORTS_32BIT_KERNEL
+	select SYS_SUPPORTS_32BIT_KERNEL
 
 config ARCH_CLPS711X
 	bool "Cirrus Logic EP711x/EP721x/EP731x"
diff --git a/arch/arm/mach-bcm283x/Kconfig b/arch/arm/mach-bcm283x/Kconfig
index 75acee8dad56..4ffaef694d2f 100644
--- a/arch/arm/mach-bcm283x/Kconfig
+++ b/arch/arm/mach-bcm283x/Kconfig
@@ -9,29 +9,42 @@ config ARCH_TEXT_BASE
 config MACH_RPI_COMMON
 	bool
 
+config MACH_RPI_AARCH_32_64
+	select MACH_RPI_COMMON
+	select CPU_V7 if 32BIT
+	select ARM_SECURE_MONITOR if 32BIT
+	select CPU_V8 if 64BIT
+	select BOARD_ARM_GENERIC_DT if 64BIT
+	bool
+	help
+	  Select this from CPUs that support both AArch32 and AArch64
+	  execution modes. barebox can be compiled for only one of
+	  these states, depending on the value of
+	  CONFIG_32BIT/CONFIG_64BIT.
+
 menu "select Broadcom BCM283X boards to be built"
 
 config MACH_RPI
 	bool "RaspberryPi (BCM2835/ARM1176JZF-S)"
+	depends on 32BIT
 	select CPU_V6
 	select MACH_RPI_COMMON
 
 config MACH_RPI2
 	bool "RaspberryPi 2 (BCM2836/CORTEX-A7)"
+	depends on 32BIT
 	select CPU_V7
 	select MACH_RPI_COMMON
 
 config MACH_RPI3
 	bool "RaspberryPi 3 (BCM2837/CORTEX-A53)"
-	select CPU_V7
+	select MACH_RPI_AARCH_32_64
 	select MACH_RPI_COMMON
-	select ARM_SECURE_MONITOR
 
 config MACH_RPI_CM3
 	bool "RaspberryPi Compute Module 3 (BCM2837/CORTEX-A53)"
-	select CPU_V7
+	select MACH_RPI_AARCH_32_64
 	select MACH_RPI_COMMON
-	select ARM_SECURE_MONITOR
 
 endmenu
 
diff --git a/arch/arm/mach-bcm283x/include/mach/platform.h b/arch/arm/mach-bcm283x/include/mach/platform.h
index 310f2463f2e5..6917e1f345d7 100644
--- a/arch/arm/mach-bcm283x/include/mach/platform.h
+++ b/arch/arm/mach-bcm283x/include/mach/platform.h
@@ -31,9 +31,9 @@
 #define BCM2835_CACHELINE_SIZE	64
 
 #define BCM2835_PL011_BASE 0x20201000
-#define BCM2836_PL011_BASE 0x3f201000
+#define BCM2836_PL011_BASE 0x3f201000UL
 #define BCM2835_MINIUART_BASE 0x20215040
-#define BCM2836_MINIUART_BASE 0x3f215040
+#define BCM2836_MINIUART_BASE 0x3f215040UL
 
 #endif
 
diff --git a/arch/arm/mach-bcm283x/mbox.c b/arch/arm/mach-bcm283x/mbox.c
index 4b14afcfe45b..3a029b8eb33f 100644
--- a/arch/arm/mach-bcm283x/mbox.c
+++ b/arch/arm/mach-bcm283x/mbox.c
@@ -143,7 +143,7 @@ int bcm2835_mbox_call_prop(u32 chan, struct bcm2835_mbox_hdr *buffer)
 	ret = bcm2835_mbox_call_raw(chan, buffer, &rbuffer);
 	if (ret)
 		return ret;
-	if (rbuffer != (u32)buffer) {
+	if (rbuffer != (uintptr_t)buffer) {
 		pr_err("mbox: Response buffer mismatch\n");
 		return -EIO;
 	}
diff --git a/images/Makefile.bcm283x b/images/Makefile.bcm283x
index 82787f972c2d..4c04133bc571 100644
--- a/images/Makefile.bcm283x
+++ b/images/Makefile.bcm283x
@@ -3,6 +3,10 @@
 # barebox image generation Makefile for BCM283x images
 #
 
+# New boards use board-dt-2nd.img as common binary
+# and have the videocore pass the correct DT.
+ifeq ($(CONFIG_32BIT),y)
+
 pblb-$(CONFIG_MACH_RPI) += start_raspberry_pi1
 FILE_barebox-raspberry-pi-1.img = start_raspberry_pi1.pblb
 image-$(CONFIG_MACH_RPI) += barebox-raspberry-pi-1.img
@@ -18,3 +22,5 @@ image-$(CONFIG_MACH_RPI3) += barebox-raspberry-pi-3.img
 pblb-$(CONFIG_MACH_RPI_CM3) += start_raspberry_pi_cm3
 FILE_barebox-raspberry-pi-cm3.img = start_raspberry_pi_cm3.pblb
 image-$(CONFIG_MACH_RPI_CM3) += barebox-raspberry-pi-cm3.img
+
+endif
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

