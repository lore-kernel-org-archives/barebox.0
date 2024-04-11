Delivery-date: Thu, 11 Apr 2024 09:12:27 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ruobj-007HbF-2m
	for lore@lore.pengutronix.de;
	Thu, 11 Apr 2024 09:12:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ruobh-0001Pr-Et
	for lore@pengutronix.de; Thu, 11 Apr 2024 09:12:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=FQABgDxlnV+5fUaJieeW/gIylLq8s8WEXW07arsocPg=; b=Bubuxvx+yDoEQxj28EgjTzChbH
	PuUwsTPH6biMKQKxkD9zDhK5kgeG7j6N690GIkPD8jK8mJM/6b48gygZ2s8kv0ByuvTBoy6O//Q8C
	lQdTOzBTNP/H1iQFglKZoycq8k9br02TrEKRXHCDGHpUtrMuBTmW7bAsEL07O2PGTHPO1Mh95uoDY
	Bm3N4a3Gi4dOaK9KcMxPF7FL0ihffhPS9uYkfGAe+8tIGtThNdTovzHB17iDaKSp7yYxHonamUu8N
	CAeAWcgmTFvTu9AnJn98VnbS7M0ZWqUulvPcWbPDclFH5Z1xQyFDYNEJNRLtDFX4TgjS88dnYMikz
	8+W4CnVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruoay-0000000Am2I-2LXW;
	Thu, 11 Apr 2024 07:11:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruoan-0000000Alvu-1akf
	for barebox@lists.infradead.org;
	Thu, 11 Apr 2024 07:11:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ruoai-0000Wj-V7; Thu, 11 Apr 2024 09:11:24 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ruoai-00BdrX-Ij; Thu, 11 Apr 2024 09:11:24 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ruoai-002vF9-1Q;
	Thu, 11 Apr 2024 09:11:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 11 Apr 2024 09:11:22 +0200
Message-Id: <20240411071122.696683-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240411_001130_222605_3B6C1FA8 
X-CRM114-Status: GOOD (  15.10  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: i.MX: remove platform device registration helpers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

With two exceptions the imx_add_* platform device registration helpers
are no longer used, so remove them.
In two cases a framebuffer is still registered with a helper function.
Replace them with add_generic_device().

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/datamodul-edm-qmx6/board.c    |   2 +-
 arch/arm/boards/efika-mx-smartbook/board.c    |   1 -
 arch/arm/boards/embedsky-e9/board.c           |   1 -
 .../arm/boards/freescale-mx51-babbage/board.c |   1 -
 .../boards/freescale-mx6-sabrelite/board.c    |   1 -
 arch/arm/boards/freescale-mx6-sabresd/board.c |   1 -
 .../boards/freescale-mx6sx-sabresdb/board.c   |   2 +-
 arch/arm/boards/guf-vincell/board.c           |   2 +-
 arch/arm/boards/karo-tx25/board.c             |   6 +-
 arch/arm/boards/karo-tx53/board.c             |   1 -
 arch/arm/boards/phytec-phycard-imx27/pca100.c |   1 -
 arch/arm/boards/phytec-phycore-imx27/pcm038.c |   4 +-
 arch/arm/boards/scb9328/scb9328.c             |   1 -
 arch/arm/boards/tqma6x/board.c                |   2 +-
 arch/arm/boards/udoo/board.c                  |   1 -
 arch/arm/boards/variscite-mx6/board.c         |   1 -
 arch/arm/mach-imx/Makefile                    |   2 +-
 arch/arm/mach-imx/devices.c                   |  96 --------------
 include/mach/imx/devices-imx1.h               |  14 ---
 include/mach/imx/devices-imx21.h              |  35 ------
 include/mach/imx/devices-imx25.h              |  84 -------------
 include/mach/imx/devices-imx27.h              |  89 -------------
 include/mach/imx/devices-imx31.h              |  94 --------------
 include/mach/imx/devices-imx35.h              |  74 -----------
 include/mach/imx/devices-imx50.h              |  84 -------------
 include/mach/imx/devices-imx51.h              | 117 ------------------
 include/mach/imx/devices-imx53.h              |  89 -------------
 include/mach/imx/devices-imx6.h               | 100 ---------------
 include/mach/imx/devices.h                    |  29 -----
 29 files changed, 10 insertions(+), 925 deletions(-)
 delete mode 100644 arch/arm/mach-imx/devices.c
 delete mode 100644 include/mach/imx/devices-imx1.h
 delete mode 100644 include/mach/imx/devices-imx21.h
 delete mode 100644 include/mach/imx/devices-imx25.h
 delete mode 100644 include/mach/imx/devices-imx27.h
 delete mode 100644 include/mach/imx/devices-imx31.h
 delete mode 100644 include/mach/imx/devices-imx35.h
 delete mode 100644 include/mach/imx/devices-imx50.h
 delete mode 100644 include/mach/imx/devices-imx51.h
 delete mode 100644 include/mach/imx/devices-imx53.h
 delete mode 100644 include/mach/imx/devices-imx6.h
 delete mode 100644 include/mach/imx/devices.h

diff --git a/arch/arm/boards/datamodul-edm-qmx6/board.c b/arch/arm/boards/datamodul-edm-qmx6/board.c
index 8680485de2..93abce33af 100644
--- a/arch/arm/boards/datamodul-edm-qmx6/board.c
+++ b/arch/arm/boards/datamodul-edm-qmx6/board.c
@@ -12,13 +12,13 @@
 #include <of.h>
 
 #include <linux/mdio.h>
+#include <linux/phy.h>
 #include <linux/micrel_phy.h>
 #include <mfd/stmpe-i2c.h>
 
 #include <asm/armlinux.h>
 #include <asm/io.h>
 
-#include <mach/imx/devices-imx6.h>
 #include <mach/imx/imx6-regs.h>
 #include <mach/imx/iomux-mx6.h>
 #include <mach/imx/generic.h>
diff --git a/arch/arm/boards/efika-mx-smartbook/board.c b/arch/arm/boards/efika-mx-smartbook/board.c
index f5a3f3cec4..5101e3a558 100644
--- a/arch/arm/boards/efika-mx-smartbook/board.c
+++ b/arch/arm/boards/efika-mx-smartbook/board.c
@@ -19,7 +19,6 @@
 
 #include <asm/armlinux.h>
 
-#include <mach/imx/devices-imx51.h>
 #include <mach/imx/imx51-regs.h>
 #include <mach/imx/iomux-mx51.h>
 #include <mach/imx/revision.h>
diff --git a/arch/arm/boards/embedsky-e9/board.c b/arch/arm/boards/embedsky-e9/board.c
index afc9e3d27e..6052805b8a 100644
--- a/arch/arm/boards/embedsky-e9/board.c
+++ b/arch/arm/boards/embedsky-e9/board.c
@@ -23,7 +23,6 @@
 #include <linux/sizes.h>
 #include <net.h>
 #include <mach/imx/imx6.h>
-#include <mach/imx/devices-imx6.h>
 #include <mach/imx/iomux-mx6.h>
 #include <spi/spi.h>
 #include <mach/imx/spi.h>
diff --git a/arch/arm/boards/freescale-mx51-babbage/board.c b/arch/arm/boards/freescale-mx51-babbage/board.c
index 76bdc78b02..1d4fb2d8c6 100644
--- a/arch/arm/boards/freescale-mx51-babbage/board.c
+++ b/arch/arm/boards/freescale-mx51-babbage/board.c
@@ -24,7 +24,6 @@
 #include <mach/imx/spi.h>
 #include <mach/imx/generic.h>
 #include <mach/imx/iomux-mx51.h>
-#include <mach/imx/devices-imx51.h>
 #include <mach/imx/revision.h>
 
 #define MX51_CCM_CACRR 0x10
diff --git a/arch/arm/boards/freescale-mx6-sabrelite/board.c b/arch/arm/boards/freescale-mx6-sabrelite/board.c
index 0f5306cde8..fe47743540 100644
--- a/arch/arm/boards/freescale-mx6-sabrelite/board.c
+++ b/arch/arm/boards/freescale-mx6-sabrelite/board.c
@@ -23,7 +23,6 @@
 #include <net.h>
 #include <linux/micrel_phy.h>
 #include <mach/imx/imx6.h>
-#include <mach/imx/devices-imx6.h>
 #include <mach/imx/iomux-mx6.h>
 #include <spi/spi.h>
 #include <mach/imx/spi.h>
diff --git a/arch/arm/boards/freescale-mx6-sabresd/board.c b/arch/arm/boards/freescale-mx6-sabresd/board.c
index 2b1d005cf2..1db52736f9 100644
--- a/arch/arm/boards/freescale-mx6-sabresd/board.c
+++ b/arch/arm/boards/freescale-mx6-sabresd/board.c
@@ -20,7 +20,6 @@
 #include <linux/sizes.h>
 #include <net.h>
 #include <mach/imx/imx6.h>
-#include <mach/imx/devices-imx6.h>
 #include <mach/imx/iomux-mx6.h>
 #include <spi/spi.h>
 #include <mach/imx/spi.h>
diff --git a/arch/arm/boards/freescale-mx6sx-sabresdb/board.c b/arch/arm/boards/freescale-mx6sx-sabresdb/board.c
index 4749981265..22163a4864 100644
--- a/arch/arm/boards/freescale-mx6sx-sabresdb/board.c
+++ b/arch/arm/boards/freescale-mx6sx-sabresdb/board.c
@@ -6,6 +6,7 @@
 #include <environment.h>
 #include <common.h>
 #include <linux/sizes.h>
+#include <linux/phy.h>
 #include <gpio.h>
 #include <init.h>
 #include <io.h>
@@ -15,7 +16,6 @@
 
 #include <asm/armlinux.h>
 
-#include <mach/imx/devices-imx6.h>
 #include <mach/imx/imx6-regs.h>
 #include <mach/imx/iomux-mx6.h>
 #include <mach/imx/generic.h>
diff --git a/arch/arm/boards/guf-vincell/board.c b/arch/arm/boards/guf-vincell/board.c
index 00a343ef99..50439b5b78 100644
--- a/arch/arm/boards/guf-vincell/board.c
+++ b/arch/arm/boards/guf-vincell/board.c
@@ -11,11 +11,11 @@
 #include <io.h>
 #include <linux/clk.h>
 
-#include <mach/imx/devices-imx53.h>
 #include <mach/imx/generic.h>
 #include <mach/imx/iim.h>
 #include <mach/imx/bbu.h>
 #include <mach/imx/imx5.h>
+#include <mach/imx/imx53-regs.h>
 
 static int vincell_devices_init(void)
 {
diff --git a/arch/arm/boards/karo-tx25/board.c b/arch/arm/boards/karo-tx25/board.c
index f58767a7a3..7e8691ef93 100644
--- a/arch/arm/boards/karo-tx25/board.c
+++ b/arch/arm/boards/karo-tx25/board.c
@@ -19,8 +19,8 @@
 #include <mach/imx/iomux-mx25.h>
 #include <mach/imx/generic.h>
 #include <mach/imx/iim.h>
+#include <platform_data/imxfb.h>
 #include <linux/err.h>
-#include <mach/imx/devices-imx25.h>
 #include <mach/imx/bbu.h>
 #include <asm/mmu.h>
 
@@ -164,8 +164,8 @@ static int tx25_init_fb(void)
 	mxc_iomux_v3_setup_multiple_pads(tx25_lcdc_gpios,
 			ARRAY_SIZE(tx25_lcdc_gpios));
 
-	imx25_add_fb(&tx25_fb_data);
-
+	add_generic_device("imxfb", -1, NULL, (resource_size_t)MX25_LCDC_BASE_ADDR, 0x1000,
+			   IORESOURCE_MEM, &tx25_fb_data);
 	return 0;
 }
 device_initcall(tx25_init_fb);
diff --git a/arch/arm/boards/karo-tx53/board.c b/arch/arm/boards/karo-tx53/board.c
index f5450def4c..e00378746c 100644
--- a/arch/arm/boards/karo-tx53/board.c
+++ b/arch/arm/boards/karo-tx53/board.c
@@ -18,7 +18,6 @@
 
 #include <mach/imx/imx53-regs.h>
 #include <mach/imx/iomux-mx53.h>
-#include <mach/imx/devices-imx53.h>
 #include <mach/imx/generic.h>
 #include <mach/imx/imx-nand.h>
 #include <mach/imx/iim.h>
diff --git a/arch/arm/boards/phytec-phycard-imx27/pca100.c b/arch/arm/boards/phytec-phycard-imx27/pca100.c
index 2d0ae7cf80..d3a5598e96 100644
--- a/arch/arm/boards/phytec-phycard-imx27/pca100.c
+++ b/arch/arm/boards/phytec-phycard-imx27/pca100.c
@@ -23,7 +23,6 @@
 #include <linux/usb/ulpi.h>
 #include <mach/imx/bbu.h>
 #include <mach/imx/iomux-mx27.h>
-#include <mach/imx/devices-imx27.h>
 
 #if defined(CONFIG_USB) && defined(CONFIG_USB_ULPI)
 static void pca100_usb_register(void)
diff --git a/arch/arm/boards/phytec-phycore-imx27/pcm038.c b/arch/arm/boards/phytec-phycore-imx27/pcm038.c
index 69a0458f05..879e94293c 100644
--- a/arch/arm/boards/phytec-phycore-imx27/pcm038.c
+++ b/arch/arm/boards/phytec-phycore-imx27/pcm038.c
@@ -11,7 +11,6 @@
 #include <notifier.h>
 #include <linux/sizes.h>
 #include <envfs.h>
-#include <mach/imx/devices-imx27.h>
 #include <mach/imx/imx-pll.h>
 #include <mach/imx/imx27-regs.h>
 #include <platform_data/imxfb.h>
@@ -106,7 +105,8 @@ static int pcm038_init(void)
 	for (i = 0; i < ARRAY_SIZE(pcm038_pins); i++)
 		imx27_gpio_mode(pcm038_pins[i]);
 
-	imx27_add_fb(&pcm038_fb_data);
+	add_generic_device("imxfb", -1, NULL, (resource_size_t)MX27_LCDC_BASE_ADDR, 0x1000,
+			   IORESOURCE_MEM, &pcm038_fb_data);
 
 	switch (bootsource_get()) {
 	case BOOTSOURCE_NAND:
diff --git a/arch/arm/boards/scb9328/scb9328.c b/arch/arm/boards/scb9328/scb9328.c
index 4c57f47996..c2475476fd 100644
--- a/arch/arm/boards/scb9328/scb9328.c
+++ b/arch/arm/boards/scb9328/scb9328.c
@@ -13,7 +13,6 @@
 #include <fs.h>
 #include <envfs.h>
 #include <mach/imx/iomux-mx1.h>
-#include <mach/imx/devices-imx1.h>
 
 static int scb9328_devices_init(void)
 {
diff --git a/arch/arm/boards/tqma6x/board.c b/arch/arm/boards/tqma6x/board.c
index 1c1ccdf888..a2363913e2 100644
--- a/arch/arm/boards/tqma6x/board.c
+++ b/arch/arm/boards/tqma6x/board.c
@@ -12,13 +12,13 @@
 #include <of.h>
 
 #include <linux/mdio.h>
+#include <linux/phy.h>
 #include <linux/micrel_phy.h>
 #include <mfd/stmpe-i2c.h>
 
 #include <asm/armlinux.h>
 #include <asm/io.h>
 
-#include <mach/imx/devices-imx6.h>
 #include <mach/imx/imx6-regs.h>
 #include <mach/imx/iomux-mx6.h>
 #include <mach/imx/generic.h>
diff --git a/arch/arm/boards/udoo/board.c b/arch/arm/boards/udoo/board.c
index b7ab908427..f27e5a3c0b 100644
--- a/arch/arm/boards/udoo/board.c
+++ b/arch/arm/boards/udoo/board.c
@@ -20,7 +20,6 @@
 #include <net.h>
 #include <linux/micrel_phy.h>
 #include <mach/imx/imx6.h>
-#include <mach/imx/devices-imx6.h>
 #include <mach/imx/iomux-mx6.h>
 #include <spi/spi.h>
 #include <mach/imx/spi.h>
diff --git a/arch/arm/boards/variscite-mx6/board.c b/arch/arm/boards/variscite-mx6/board.c
index 53a453dfa0..9eb3202528 100644
--- a/arch/arm/boards/variscite-mx6/board.c
+++ b/arch/arm/boards/variscite-mx6/board.c
@@ -22,7 +22,6 @@
 #include <mach/imx/generic.h>
 #include <linux/sizes.h>
 #include <mach/imx/imx6.h>
-#include <mach/imx/devices-imx6.h>
 #include <mach/imx/iomux-mx6.h>
 #include <spi/spi.h>
 #include <mach/imx/spi.h>
diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
index a2d9702bf4..cfd066c69d 100644
--- a/arch/arm/mach-imx/Makefile
+++ b/arch/arm/mach-imx/Makefile
@@ -26,7 +26,7 @@ obj-pbl-$(CONFIG_ARCH_IMX_ROMAPI) += romapi.o
 obj-$(CONFIG_IMX_IIM)	+= iim.o
 obj-$(CONFIG_NAND_IMX) += nand.o
 lwl-$(CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND) += external-nand-boot.o
-obj-y += devices.o imx.o
+obj-y += imx.o
 obj-$(CONFIG_CMD_BOOTROM) += bootrom-cmd.o
 obj-pbl-y += esdctl.o boot.o imx.o
 obj-$(CONFIG_BAREBOX_UPDATE) += imx-bbu-internal.o
diff --git a/arch/arm/mach-imx/devices.c b/arch/arm/mach-imx/devices.c
deleted file mode 100644
index 7572738d0e..0000000000
--- a/arch/arm/mach-imx/devices.c
+++ /dev/null
@@ -1,96 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-
-#include <common.h>
-#include <driver.h>
-#include <mach/imx/devices.h>
-
-static inline struct device *imx_add_device(char *name, int id, void *base, int size, void *pdata)
-{
-	return add_generic_device(name, id, NULL, (resource_size_t)base, size,
-				  IORESOURCE_MEM, pdata);
-}
-
-struct device *imx_add_fec_imx27(void *base, struct fec_platform_data *pdata)
-{
-	return imx_add_device("imx27-fec", -1, base, 0x1000, pdata);
-}
-
-struct device *imx_add_fec_imx6(void *base, struct fec_platform_data *pdata)
-{
-	return imx_add_device("imx6-fec", -1, base, 0x1000, pdata);
-}
-
-struct device *imx_add_spi_imx27(void *base, int id, struct spi_imx_master *pdata)
-{
-	return imx_add_device("imx27-spi", id, base, 0x1000, pdata);
-}
-
-struct device *imx_add_spi_imx35(void *base, int id, struct spi_imx_master *pdata)
-{
-	return imx_add_device("imx35-spi", id, base, 0x1000, pdata);
-}
-
-struct device *imx_add_spi_imx51(void *base, int id, struct spi_imx_master *pdata)
-{
-	return imx_add_device("imx51-spi", id, base, 0x1000, pdata);
-}
-
-struct device *imx_add_i2c(void *base, int id, struct i2c_platform_data *pdata)
-{
-	return imx_add_device("i2c-fsl", id, base, 0x1000, pdata);
-}
-
-struct device *imx_add_uart_imx1(void *base, int id)
-{
-	return imx_add_device("imx1-uart", id, base, 0x1000, NULL);
-}
-
-struct device *imx_add_uart_imx21(void *base, int id)
-{
-	return imx_add_device("imx21-uart", id, base, 0x1000, NULL);
-}
-
-struct device *imx_add_nand(void *base, struct imx_nand_platform_data *pdata)
-{
-	return imx_add_device("imx_nand", -1, base, 0x1000, pdata);
-}
-
-struct device *imx_add_fb(void *base, struct imx_fb_platform_data *pdata)
-{
-	return imx_add_device("imxfb", -1, base, 0x1000, pdata);
-}
-
-struct device *imx_add_ipufb(void *base, struct imx_ipu_fb_platform_data *pdata)
-{
-	return imx_add_device("imx-ipu-fb", -1, base, 0x1000, pdata);
-}
-
-struct device *imx_add_mmc(void *base, int id, void *pdata)
-{
-	return imx_add_device("imx-mmc", id, base, 0x1000, pdata);
-}
-
-struct device *imx_add_esdhc_imx25(void *base, int id, struct esdhc_platform_data *pdata)
-{
-	return imx_add_device("imx25-esdhc", id, base, 0x1000, pdata);
-}
-
-struct device *imx_add_esdhc_imx5(void *base, int id, struct esdhc_platform_data *pdata)
-{
-	return imx_add_device("imx5-esdhc", id, base, 0x1000, pdata);
-}
-
-struct device *imx_add_kpp(void *base, struct matrix_keymap_data *pdata)
-{
-       return imx_add_device("imx-kpp", -1, base, 0x1000, pdata);
-}
-
-struct device *imx_add_pata(void *base)
-{
-	return imx_add_device("imx-pata", -1, base, 0x1000, NULL);
-}
-
-struct device *imx_add_usb(void *base, int id, struct imxusb_platformdata *pdata)
-{
-	return imx_add_device("imx-usb", id, base, 0x200, pdata);
-}
diff --git a/include/mach/imx/devices-imx1.h b/include/mach/imx/devices-imx1.h
deleted file mode 100644
index 64c917d714..0000000000
--- a/include/mach/imx/devices-imx1.h
+++ /dev/null
@@ -1,14 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-
-#include <mach/imx/devices.h>
-#include <mach/imx/imx1-regs.h>
-
-static inline struct device *imx1_add_uart0(void)
-{
-	return imx_add_uart_imx1((void *)MX1_UART1_BASE_ADDR, 0);
-}
-
-static inline struct device *imx1_add_uart1(void)
-{
-	return imx_add_uart_imx1((void *)MX1_UART2_BASE_ADDR, 1);
-}
diff --git a/include/mach/imx/devices-imx21.h b/include/mach/imx/devices-imx21.h
deleted file mode 100644
index bcc91276f4..0000000000
--- a/include/mach/imx/devices-imx21.h
+++ /dev/null
@@ -1,35 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-
-#include <mach/imx/devices.h>
-#include <mach/imx/imx21-regs.h>
-
-static inline struct device *imx21_add_uart0(void)
-{
-	return imx_add_uart_imx21((void *)MX21_UART1_BASE_ADDR, 0);
-}
-
-static inline struct device *imx21_add_uart1(void)
-{
-	return imx_add_uart_imx21((void *)MX21_UART2_BASE_ADDR, 1);
-}
-
-static inline struct device *imx21_add_uart2(void)
-{
-	return imx_add_uart_imx21((void *)MX21_UART2_BASE_ADDR, 2);
-}
-
-static inline struct device *imx21_add_uart3(void)
-{
-	return imx_add_uart_imx21((void *)MX21_UART2_BASE_ADDR, 3);
-}
-
-static inline struct device *imx21_add_nand(struct imx_nand_platform_data *pdata)
-{
-	return imx_add_nand((void *)0xDF003000, pdata);
-}
-
-static inline struct device *imx21_add_fb(struct imx_fb_platform_data *pdata)
-{
-	return imx_add_fb((void *)0x10021000, pdata);
-}
-
diff --git a/include/mach/imx/devices-imx25.h b/include/mach/imx/devices-imx25.h
deleted file mode 100644
index 058f2a89a1..0000000000
--- a/include/mach/imx/devices-imx25.h
+++ /dev/null
@@ -1,84 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-
-#include <mach/imx/devices.h>
-#include <mach/imx/imx25-regs.h>
-
-static inline struct device *imx25_add_i2c0(struct i2c_platform_data *pdata)
-{
-	return imx_add_i2c((void *)MX25_I2C1_BASE_ADDR, 0, pdata);
-}
-
-static inline struct device *imx25_add_i2c1(struct i2c_platform_data *pdata)
-{
-	return imx_add_i2c((void *)MX25_I2C2_BASE_ADDR, 1, pdata);
-}
-
-static inline struct device *imx25_add_i2c2(struct i2c_platform_data *pdata)
-{
-	return imx_add_i2c((void *)MX25_I2C3_BASE_ADDR, 2, pdata);
-}
-
-static inline struct device *imx25_add_spi0(struct spi_imx_master *pdata)
-{
-	return imx_add_spi_imx35((void *)MX25_CSPI1_BASE_ADDR, 0, pdata);
-}
-
-static inline struct device *imx25_add_spi1(struct spi_imx_master *pdata)
-{
-	return imx_add_spi_imx35((void *)MX25_CSPI2_BASE_ADDR, 1, pdata);
-}
-
-static inline struct device *imx25_add_spi2(struct spi_imx_master *pdata)
-{
-	return imx_add_spi_imx35((void *)MX25_CSPI3_BASE_ADDR, 2, pdata);
-}
-
-static inline struct device *imx25_add_uart0(void)
-{
-	return imx_add_uart_imx21((void *)MX25_UART1_BASE_ADDR, 0);
-}
-
-static inline struct device *imx25_add_uart1(void)
-{
-	return imx_add_uart_imx21((void *)MX25_UART2_BASE_ADDR, 1);
-}
-
-static inline struct device *imx25_add_uart2(void)
-{
-	return imx_add_uart_imx21((void *)MX25_UART3_BASE_ADDR, 2);
-}
-
-static inline struct device *imx25_add_uart3(void)
-{
-	return imx_add_uart_imx21((void *)MX25_UART4_BASE_ADDR, 3);
-}
-
-static inline struct device *imx25_add_uart4(void)
-{
-	return imx_add_uart_imx21((void *)MX25_UART5_BASE_ADDR, 4);
-}
-
-static inline struct device *imx25_add_nand(struct imx_nand_platform_data *pdata)
-{
-	return imx_add_nand((void *)MX25_NFC_BASE_ADDR, pdata);
-}
-
-static inline struct device *imx25_add_fb(struct imx_fb_platform_data *pdata)
-{
-	return imx_add_fb((void *)MX25_LCDC_BASE_ADDR, pdata);
-}
-
-static inline struct device *imx25_add_fec(struct fec_platform_data *pdata)
-{
-	return imx_add_fec_imx27((void *)MX25_FEC_BASE_ADDR, pdata);
-}
-
-static inline struct device *imx25_add_mmc0(struct esdhc_platform_data *pdata)
-{
-	return imx_add_esdhc_imx25((void *)MX25_ESDHC1_BASE_ADDR, 0, pdata);
-}
-
-static inline struct device *imx25_add_mmc1(struct esdhc_platform_data *pdata)
-{
-	return imx_add_esdhc_imx25((void *)MX25_ESDHC2_BASE_ADDR, 1, pdata);
-}
diff --git a/include/mach/imx/devices-imx27.h b/include/mach/imx/devices-imx27.h
deleted file mode 100644
index 28013e3bf5..0000000000
--- a/include/mach/imx/devices-imx27.h
+++ /dev/null
@@ -1,89 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-
-#include <mach/imx/devices.h>
-#include <mach/imx/imx27-regs.h>
-
-static inline struct device *imx27_add_spi0(struct spi_imx_master *pdata)
-{
-	return imx_add_spi_imx27((void *)MX27_CSPI1_BASE_ADDR, 0, pdata);
-}
-
-static inline struct device *imx27_add_spi1(struct spi_imx_master *pdata)
-{
-	return imx_add_spi_imx27((void *)MX27_CSPI2_BASE_ADDR, 1, pdata);
-}
-
-static inline struct device *imx27_add_i2c0(struct i2c_platform_data *pdata)
-{
-	return imx_add_i2c((void *)MX27_I2C1_BASE_ADDR, 0, pdata);
-}
-
-static inline struct device *imx27_add_i2c1(struct i2c_platform_data *pdata)
-{
-	return imx_add_i2c((void *)MX27_I2C2_BASE_ADDR, 1, pdata);
-}
-
-static inline struct device *imx27_add_uart0(void)
-{
-	return imx_add_uart_imx21((void *)MX27_UART1_BASE_ADDR, 0);
-}
-
-static inline struct device *imx27_add_uart1(void)
-{
-	return imx_add_uart_imx21((void *)MX27_UART2_BASE_ADDR, 1);
-}
-
-static inline struct device *imx27_add_uart2(void)
-{
-	return imx_add_uart_imx21((void *)MX27_UART3_BASE_ADDR, 2);
-}
-
-static inline struct device *imx27_add_uart3(void)
-{
-	return imx_add_uart_imx21((void *)MX27_UART4_BASE_ADDR, 3);
-}
-
-static inline struct device *imx27_add_nand(struct imx_nand_platform_data *pdata)
-{
-	return imx_add_nand((void *)MX27_NFC_BASE_ADDR, pdata);
-}
-
-static inline struct device *imx27_add_fb(struct imx_fb_platform_data *pdata)
-{
-	return imx_add_fb((void *)MX27_LCDC_BASE_ADDR, pdata);
-}
-
-static inline struct device *imx27_add_fec(struct fec_platform_data *pdata)
-{
-	return imx_add_fec_imx27((void *)MX27_FEC_BASE_ADDR, pdata);
-}
-
-static inline struct device *imx27_add_mmc0(void *pdata)
-{
-	return imx_add_mmc((void *)MX27_SDHC1_BASE_ADDR, 0, pdata);
-}
-
-static inline struct device *imx27_add_mmc1(void *pdata)
-{
-	return imx_add_mmc((void *)MX27_SDHC2_BASE_ADDR, 1, pdata);
-}
-
-static inline struct device *imx27_add_mmc2(void *pdata)
-{
-	return imx_add_mmc((void *)MX27_SDHC3_BASE_ADDR, 2, pdata);
-}
-
-static inline struct device *imx27_add_usbotg(void *pdata)
-{
-	return imx_add_usb((void *)MX27_USB_OTG_BASE_ADDR, 0, pdata);
-}
-
-static inline struct device *imx27_add_usbh1(void *pdata)
-{
-	return imx_add_usb((void *)MX27_USB_OTG_BASE_ADDR + 0x200, 1, pdata);
-}
-
-static inline struct device *imx27_add_usbh2(void *pdata)
-{
-	return imx_add_usb((void *)MX27_USB_OTG_BASE_ADDR + 0x400, 2, pdata);
-}
diff --git a/include/mach/imx/devices-imx31.h b/include/mach/imx/devices-imx31.h
deleted file mode 100644
index 8be3e0d582..0000000000
--- a/include/mach/imx/devices-imx31.h
+++ /dev/null
@@ -1,94 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-
-#include <mach/imx/imx31-regs.h>
-#include <mach/imx/devices.h>
-
-static inline struct device *imx31_add_i2c0(void *pdata)
-{
-	return imx_add_i2c((void *)MX31_I2C1_BASE_ADDR, 0, pdata);
-}
-
-static inline struct device *imx31_add_i2c1(void *pdata)
-{
-	return imx_add_i2c((void *)MX31_I2C2_BASE_ADDR, 1, pdata);
-}
-
-static inline struct device *imx31_add_i2c2(void *pdata)
-{
-	return imx_add_i2c((void *)MX31_I2C3_BASE_ADDR, 2, pdata);
-}
-
-static inline struct device *imx31_add_spi0(struct spi_imx_master *pdata)
-{
-	return imx_add_spi_imx35((void *)MX31_CSPI1_BASE_ADDR, 0, pdata);
-}
-
-static inline struct device *imx31_add_spi1(struct spi_imx_master *pdata)
-{
-	return imx_add_spi_imx35((void *)MX31_CSPI2_BASE_ADDR, 1, pdata);
-}
-
-static inline struct device *imx31_add_spi2(struct spi_imx_master *pdata)
-{
-	return imx_add_spi_imx35((void *)MX31_CSPI3_BASE_ADDR, 2, pdata);
-}
-
-static inline struct device *imx31_add_uart0(void)
-{
-	return imx_add_uart_imx21((void *)MX31_UART1_BASE_ADDR, 0);
-}
-
-static inline struct device *imx31_add_uart1(void)
-{
-	return imx_add_uart_imx21((void *)MX31_UART2_BASE_ADDR, 1);
-}
-
-static inline struct device *imx31_add_uart2(void)
-{
-	return imx_add_uart_imx21((void *)MX31_UART3_BASE_ADDR, 2);
-}
-
-static inline struct device *imx31_add_uart3(void)
-{
-	return imx_add_uart_imx21((void *)MX31_UART4_BASE_ADDR, 3);
-}
-
-static inline struct device *imx31_add_uart4(void)
-{
-	return imx_add_uart_imx21((void *)MX31_UART5_BASE_ADDR, 4);
-}
-
-static inline struct device *imx31_add_nand(struct imx_nand_platform_data *pdata)
-{
-	return imx_add_nand((void *)MX31_NFC_BASE_ADDR, pdata);
-}
-
-static inline struct device *imx31_add_fb(struct imx_ipu_fb_platform_data *pdata)
-{
-	return imx_add_ipufb((void *)MX31_IPU_CTRL_BASE_ADDR, pdata);
-}
-
-static inline struct device *imx31_add_mmc0(void *pdata)
-{
-	return imx_add_mmc((void *)MX31_SDHC1_BASE_ADDR, 0, pdata);
-}
-
-static inline struct device *imx31_add_mmc1(void *pdata)
-{
-	return imx_add_mmc((void *)MX31_SDHC2_BASE_ADDR, 1, pdata);
-}
-
-static inline struct device *imx31_add_usbotg(void *pdata)
-{
-	return imx_add_usb((void *)MX31_USB_OTG_BASE_ADDR, 0, pdata);
-}
-
-static inline struct device *imx31_add_usbh1(void *pdata)
-{
-	return imx_add_usb((void *)MX31_USB_OTG_BASE_ADDR + 0x200, 1, pdata);
-}
-
-static inline struct device *imx31_add_usbh2(void *pdata)
-{
-	return imx_add_usb((void *)MX31_USB_OTG_BASE_ADDR + 0x400, 2, pdata);
-}
diff --git a/include/mach/imx/devices-imx35.h b/include/mach/imx/devices-imx35.h
deleted file mode 100644
index 68d6671592..0000000000
--- a/include/mach/imx/devices-imx35.h
+++ /dev/null
@@ -1,74 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-
-#include <mach/imx/devices.h>
-#include <mach/imx/imx35-regs.h>
-
-static inline struct device *imx35_add_i2c0(struct i2c_platform_data *pdata)
-{
-	return imx_add_i2c((void *)MX35_I2C1_BASE_ADDR, 0, pdata);
-}
-
-static inline struct device *imx35_add_i2c1(struct i2c_platform_data *pdata)
-{
-	return imx_add_i2c((void *)MX35_I2C2_BASE_ADDR, 1, pdata);
-}
-
-static inline struct device *imx35_add_i2c2(struct i2c_platform_data *pdata)
-{
-	return imx_add_i2c((void *)MX35_I2C3_BASE_ADDR, 2, pdata);
-}
-
-static inline struct device *imx35_add_spi0(struct spi_imx_master *pdata)
-{
-	return imx_add_spi_imx35((void *)MX35_CSPI1_BASE_ADDR, 0, pdata);
-}
-
-static inline struct device *imx35_add_spi(struct spi_imx_master *pdata)
-{
-	return imx_add_spi_imx35((void *)MX35_CSPI2_BASE_ADDR, 1, pdata);
-}
-
-static inline struct device *imx35_add_uart0(void)
-{
-	return imx_add_uart_imx21((void *)MX35_UART1_BASE_ADDR, 0);
-}
-
-static inline struct device *imx35_add_uart1(void)
-{
-	return imx_add_uart_imx21((void *)MX35_UART2_BASE_ADDR, 1);
-}
-
-static inline struct device *imx35_add_uart2(void)
-{
-	return imx_add_uart_imx21((void *)MX35_UART3_BASE_ADDR, 2);
-}
-
-static inline struct device *imx35_add_nand(struct imx_nand_platform_data *pdata)
-{
-	return imx_add_nand((void *)MX35_NFC_BASE_ADDR, pdata);
-}
-
-static inline struct device *imx35_add_fb(struct imx_ipu_fb_platform_data *pdata)
-{
-	return imx_add_ipufb((void *)MX35_IPU_CTRL_BASE_ADDR, pdata);
-}
-
-static inline struct device *imx35_add_fec(struct fec_platform_data *pdata)
-{
-	return imx_add_fec_imx27((void *)MX35_FEC_BASE_ADDR, pdata);
-}
-
-static inline struct device *imx35_add_mmc0(struct esdhc_platform_data *pdata)
-{
-	return imx_add_esdhc_imx25((void *)MX35_ESDHC1_BASE_ADDR, 0, pdata);
-}
-
-static inline struct device *imx35_add_mmc1(struct esdhc_platform_data *pdata)
-{
-	return imx_add_esdhc_imx25((void *)MX35_ESDHC2_BASE_ADDR, 1, pdata);
-}
-
-static inline struct device *imx35_add_mmc2(struct esdhc_platform_data *pdata)
-{
-	return imx_add_esdhc_imx25((void *)MX35_ESDHC3_BASE_ADDR, 2, pdata);
-}
diff --git a/include/mach/imx/devices-imx50.h b/include/mach/imx/devices-imx50.h
deleted file mode 100644
index ee577d99ec..0000000000
--- a/include/mach/imx/devices-imx50.h
+++ /dev/null
@@ -1,84 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-
-#include <mach/imx/devices.h>
-#include <mach/imx/imx50-regs.h>
-
-static inline struct device *imx50_add_spi0(struct spi_imx_master *pdata)
-{
-	return imx_add_spi_imx51((void *)MX50_ECSPI1_BASE_ADDR, 0, pdata);
-}
-
-static inline struct device *imx50_add_spi1(struct spi_imx_master *pdata)
-{
-	return imx_add_spi_imx51((void *)MX50_ECSPI2_BASE_ADDR, 1, pdata);
-}
-
-static inline struct device *imx50_add_cspi(struct spi_imx_master *pdata)
-{
-	return imx_add_spi_imx35((void *)MX50_CSPI_BASE_ADDR, 2, pdata);
-}
-
-static inline struct device *imx50_add_i2c0(struct i2c_platform_data *pdata)
-{
-	return imx_add_i2c((void *)MX50_I2C1_BASE_ADDR, 0, pdata);
-}
-
-static inline struct device *imx50_add_i2c1(struct i2c_platform_data *pdata)
-{
-	return imx_add_i2c((void *)MX50_I2C2_BASE_ADDR, 1, pdata);
-}
-
-static inline struct device *imx50_add_i2c2(struct i2c_platform_data *pdata)
-{
-	return imx_add_i2c((void *)MX50_I2C3_BASE_ADDR, 2, pdata);
-}
-
-static inline struct device *imx50_add_uart0(void)
-{
-	return imx_add_uart_imx21((void *)MX50_UART1_BASE_ADDR, 0);
-}
-
-static inline struct device *imx50_add_uart1(void)
-{
-	return imx_add_uart_imx21((void *)MX50_UART2_BASE_ADDR, 1);
-}
-
-static inline struct device *imx50_add_uart2(void)
-{
-	return imx_add_uart_imx21((void *)MX50_UART3_BASE_ADDR, 2);
-}
-
-static inline struct device *imx50_add_uart3(void)
-{
-	return imx_add_uart_imx21((void *)MX50_UART4_BASE_ADDR, 3);
-}
-
-static inline struct device *imx50_add_fec(struct fec_platform_data *pdata)
-{
-	return imx_add_fec_imx27((void *)MX50_FEC_BASE_ADDR, pdata);
-}
-
-static inline struct device *imx50_add_mmc0(struct esdhc_platform_data *pdata)
-{
-	return imx5_add_esdhc((void *)MX50_ESDHC1_BASE_ADDR, 0, pdata);
-}
-
-static inline struct device *imx50_add_mmc1(struct esdhc_platform_data *pdata)
-{
-	return imx5_add_esdhc((void *)MX50_ESDHC2_BASE_ADDR, 1, pdata);
-}
-
-static inline struct device *imx50_add_mmc2(struct esdhc_platform_data *pdata)
-{
-	return imx5_add_esdhc((void *)MX50_ESDHC3_BASE_ADDR, 2, pdata);
-}
-
-static inline struct device *imx50_add_mmc3(struct esdhc_platform_data *pdata)
-{
-	return imx5_add_esdhc((void *)MX50_ESDHC4_BASE_ADDR, 3, pdata);
-}
-
-static inline struct device *imx50_add_kpp(struct matrix_keymap_data *pdata)
-{
-	return imx_add_kpp((void *)MX50_KPP_BASE_ADDR, pdata);
-}
diff --git a/include/mach/imx/devices-imx51.h b/include/mach/imx/devices-imx51.h
deleted file mode 100644
index 34e550d3c8..0000000000
--- a/include/mach/imx/devices-imx51.h
+++ /dev/null
@@ -1,117 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-
-#include <linux/sizes.h>
-#include <mach/imx/devices.h>
-#include <mach/imx/imx51-regs.h>
-
-static inline struct device *imx51_add_spi0(struct spi_imx_master *pdata)
-{
-	return imx_add_spi_imx51((void *)MX51_ECSPI1_BASE_ADDR, 0, pdata);
-}
-
-static inline struct device *imx51_add_spi1(struct spi_imx_master *pdata)
-{
-	return imx_add_spi_imx51((void *)MX51_ECSPI2_BASE_ADDR, 1, pdata);
-}
-
-static inline struct device *imx51_add_cspi(struct spi_imx_master *pdata)
-{
-	return imx_add_spi_imx35((void *)MX51_CSPI_BASE_ADDR, 2, pdata);
-}
-
-static inline struct device *imx51_add_i2c0(struct i2c_platform_data *pdata)
-{
-	return imx_add_i2c((void *)MX51_I2C1_BASE_ADDR, 0, pdata);
-}
-
-static inline struct device *imx51_add_i2c1(struct i2c_platform_data *pdata)
-{
-	return imx_add_i2c((void *)MX51_I2C2_BASE_ADDR, 1, pdata);
-}
-
-static inline struct device *imx51_add_uart0(void)
-{
-	return imx_add_uart_imx21((void *)MX51_UART1_BASE_ADDR, 0);
-}
-
-static inline struct device *imx51_add_uart1(void)
-{
-	return imx_add_uart_imx21((void *)MX51_UART2_BASE_ADDR, 1);
-}
-
-static inline struct device *imx51_add_uart2(void)
-{
-	return imx_add_uart_imx21((void *)MX51_UART3_BASE_ADDR, 2);
-}
-
-static inline struct device *imx51_add_fec(struct fec_platform_data *pdata)
-{
-	return imx_add_fec_imx27((void *)MX51_MXC_FEC_BASE_ADDR, pdata);
-}
-
-static inline struct device *imx51_add_mmc0(struct esdhc_platform_data *pdata)
-{
-	return imx_add_esdhc_imx5((void *)MX51_MMC_SDHC1_BASE_ADDR, 0, pdata);
-}
-
-static inline struct device *imx51_add_mmc1(struct esdhc_platform_data *pdata)
-{
-	return imx_add_esdhc_imx5((void *)MX51_MMC_SDHC2_BASE_ADDR, 1, pdata);
-}
-
-static inline struct device *imx51_add_mmc2(struct esdhc_platform_data *pdata)
-{
-	return imx_add_esdhc_imx5((void *)MX51_MMC_SDHC3_BASE_ADDR, 2, pdata);
-}
-
-static inline struct device *imx51_add_nand(struct imx_nand_platform_data *pdata)
-{
-	struct resource res[] = {
-		{
-			.start = MX51_NFC_BASE_ADDR,
-			.end = MX51_NFC_BASE_ADDR + SZ_4K - 1,
-			.flags = IORESOURCE_MEM,
-		}, {
-			.start = MX51_NFC_AXI_BASE_ADDR,
-			.end = MX51_NFC_AXI_BASE_ADDR + SZ_4K - 1,
-			.flags = IORESOURCE_MEM,
-		},
-	};
-	struct device *dev = xzalloc(sizeof(*dev));
-
-	dev->resource = xzalloc(sizeof(struct resource) * ARRAY_SIZE(res));
-	memcpy(dev->resource, res, sizeof(struct resource) * ARRAY_SIZE(res));
-	dev->num_resources = ARRAY_SIZE(res);
-	dev_set_name(dev, "imx_nand");
-	dev->id = DEVICE_ID_DYNAMIC;
-	dev->platform_data = pdata;
-
-	platform_device_register(dev);
-
-	return dev;
-}
-
-static inline struct device *imx51_add_kpp(struct matrix_keymap_data *pdata)
-{
-	return imx_add_kpp((void *)MX51_KPP_BASE_ADDR, pdata);
-}
-
-static inline struct device *imx51_add_pata(void)
-{
-	return imx_add_pata((void *)MX51_ATA_BASE_ADDR);
-}
-
-static inline struct device *imx51_add_usbotg(void *pdata)
-{
-	return imx_add_usb((void *)MX51_OTG_BASE_ADDR, 0, pdata);
-}
-
-static inline struct device *imx51_add_usbh1(void *pdata)
-{
-	return imx_add_usb((void *)MX51_OTG_BASE_ADDR + 0x200, 1, pdata);
-}
-
-static inline struct device *imx51_add_usbh2(void *pdata)
-{
-	return imx_add_usb((void *)MX51_OTG_BASE_ADDR + 0x400, 2, pdata);
-}
diff --git a/include/mach/imx/devices-imx53.h b/include/mach/imx/devices-imx53.h
deleted file mode 100644
index 080573dfd4..0000000000
--- a/include/mach/imx/devices-imx53.h
+++ /dev/null
@@ -1,89 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-
-#include <mach/imx/devices.h>
-#include <mach/imx/imx53-regs.h>
-
-static inline struct device *imx53_add_cspi(struct spi_imx_master *pdata)
-{
-	return imx_add_spi_imx35((void *)MX53_CSPI_BASE_ADDR, 0, pdata);
-}
-
-static inline struct device *imx53_add_spi0(struct spi_imx_master *pdata)
-{
-	return imx_add_spi_imx51((void *)MX53_ECSPI1_BASE_ADDR, 0, pdata);
-}
-
-static inline struct device *imx53_add_spi1(struct spi_imx_master *pdata)
-{
-	return imx_add_spi_imx51((void *)MX53_ECSPI2_BASE_ADDR, 1, pdata);
-}
-
-static inline struct device *imx53_add_i2c0(struct i2c_platform_data *pdata)
-{
-	return imx_add_i2c((void *)MX53_I2C1_BASE_ADDR, 0, pdata);
-}
-
-static inline struct device *imx53_add_i2c1(struct i2c_platform_data *pdata)
-{
-	return imx_add_i2c((void *)MX53_I2C2_BASE_ADDR, 1, pdata);
-}
-
-static inline struct device *imx53_add_i2c2(struct i2c_platform_data *pdata)
-{
-       return imx_add_i2c((void *)MX53_I2C3_BASE_ADDR, 2, pdata);
-}
-
-static inline struct device *imx53_add_uart0(void)
-{
-	return imx_add_uart_imx21((void *)MX53_UART1_BASE_ADDR, 0);
-}
-
-static inline struct device *imx53_add_uart1(void)
-{
-	return imx_add_uart_imx21((void *)MX53_UART2_BASE_ADDR, 1);
-}
-
-static inline struct device *imx53_add_uart2(void)
-{
-	return imx_add_uart_imx21((void *)MX53_UART3_BASE_ADDR, 2);
-}
-
-static inline struct device *imx53_add_uart3(void)
-{
-	return imx_add_uart_imx21((void *)MX53_UART4_BASE_ADDR, 3);
-}
-
-static inline struct device *imx53_add_fec(struct fec_platform_data *pdata)
-{
-	return imx_add_fec_imx27((void *)MX53_FEC_BASE_ADDR, pdata);
-}
-
-static inline struct device *imx53_add_mmc0(struct esdhc_platform_data *pdata)
-{
-	return imx_add_esdhc_imx5((void *)MX53_ESDHC1_BASE_ADDR, 0, pdata);
-}
-
-static inline struct device *imx53_add_mmc1(struct esdhc_platform_data *pdata)
-{
-	return imx_add_esdhc_imx5((void *)MX53_ESDHC2_BASE_ADDR, 1, pdata);
-}
-
-static inline struct device *imx53_add_mmc2(struct esdhc_platform_data *pdata)
-{
-	return imx_add_esdhc_imx5((void *)MX53_ESDHC3_BASE_ADDR, 2, pdata);
-}
-
-static inline struct device *imx53_add_mmc3(struct esdhc_platform_data *pdata)
-{
-	return imx_add_esdhc_imx5((void *)MX53_ESDHC4_BASE_ADDR, 3, pdata);
-}
-
-static inline struct device *imx53_add_kpp(struct matrix_keymap_data *pdata)
-{
-	return imx_add_kpp((void *)MX53_KPP_BASE_ADDR, pdata);
-}
-
-static inline struct device *imx53_add_sata(void)
-{
-	return add_generic_device("imx53-sata", 0, NULL, MX53_SATA_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
-}
diff --git a/include/mach/imx/devices-imx6.h b/include/mach/imx/devices-imx6.h
deleted file mode 100644
index 9c9c788e51..0000000000
--- a/include/mach/imx/devices-imx6.h
+++ /dev/null
@@ -1,100 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-
-#include <mach/imx/devices.h>
-#include <mach/imx/imx6-regs.h>
-
-static inline struct device *imx6_add_uart0(void)
-{
-	return imx_add_uart_imx21((void *)MX6_UART1_BASE_ADDR, 0);
-}
-
-static inline struct device *imx6_add_uart1(void)
-{
-	return imx_add_uart_imx21((void *)MX6_UART2_BASE_ADDR, 1);
-}
-
-static inline struct device *imx6_add_uart2(void)
-{
-	return imx_add_uart_imx21((void *)MX6_UART3_BASE_ADDR, 2);
-}
-
-static inline struct device *imx6_add_uart3(void)
-{
-	return imx_add_uart_imx21((void *)MX6_UART4_BASE_ADDR, 3);
-}
-
-static inline struct device *imx6_add_fec(struct fec_platform_data *pdata)
-{
-	return imx_add_fec_imx6((void *)MX6_ENET_BASE_ADDR, pdata);
-}
-
-static inline struct device *imx6_add_spi0(struct spi_imx_master *pdata)
-{
-	return imx_add_spi_imx51((void *)MX6_ECSPI1_BASE_ADDR, 0, pdata);
-}
-
-static inline struct device *imx6_add_spi1(struct spi_imx_master *pdata)
-{
-	return imx_add_spi_imx51((void *)MX6_ECSPI2_BASE_ADDR, 1, pdata);
-}
-
-static inline struct device *imx6_add_spi2(struct spi_imx_master *pdata)
-{
-	return imx_add_spi_imx51((void *)MX6_ECSPI3_BASE_ADDR, 2, pdata);
-}
-
-static inline struct device *imx6_add_spi3(struct spi_imx_master *pdata)
-{
-	return imx_add_spi_imx51((void *)MX6_ECSPI4_BASE_ADDR, 3, pdata);
-}
-
-static inline struct device *imx6_add_spi4(struct spi_imx_master *pdata)
-{
-	return imx_add_spi_imx51((void *)MX6_ECSPI5_BASE_ADDR, 4, pdata);
-}
-
-static inline struct device *imx6_add_i2c0(struct i2c_platform_data *pdata)
-{
-	return imx_add_i2c((void *)MX6_I2C1_BASE_ADDR, 0, pdata);
-}
-
-static inline struct device *imx6_add_i2c1(struct i2c_platform_data *pdata)
-{
-	return imx_add_i2c((void *)MX6_I2C2_BASE_ADDR, 1, pdata);
-}
-
-static inline struct device *imx6_add_i2c2(struct i2c_platform_data *pdata)
-{
-	return imx_add_i2c((void *)MX6_I2C3_BASE_ADDR, 2, pdata);
-}
-
-static inline struct device *imx6_add_sata(void)
-{
-	return add_generic_device("imx6-sata", 0, NULL, MX6_SATA_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
-}
-
-static inline struct device *imx6_add_usbotg(void *pdata)
-{
-	add_generic_device("imx-usb-phy", 0, NULL, MX6_USBPHY1_BASE_ADDR, 0x1000,
-			IORESOURCE_MEM, NULL);
-
-	return imx_add_usb((void *)MX6_USBOH3_USB_BASE_ADDR, 0, pdata);
-}
-
-static inline struct device *imx6_add_usbh1(void *pdata)
-{
-	add_generic_device("imx-usb-phy", 1, NULL, MX6_USBPHY2_BASE_ADDR, 0x1000,
-			IORESOURCE_MEM, NULL);
-
-	return imx_add_usb((void *)MX6_USBOH3_USB_BASE_ADDR + 0x200, 1, pdata);
-}
-
-static inline struct device *imx6_add_usbh2(void *pdata)
-{
-	return imx_add_usb((void *)MX6_USBOH3_USB_BASE_ADDR + 0x400, 2, pdata);
-}
-
-static inline struct device *imx6_add_usbh3(void *pdata)
-{
-	return imx_add_usb((void *)MX6_USBOH3_USB_BASE_ADDR + 0x600, 2, pdata);
-}
diff --git a/include/mach/imx/devices.h b/include/mach/imx/devices.h
deleted file mode 100644
index ace2962fc3..0000000000
--- a/include/mach/imx/devices.h
+++ /dev/null
@@ -1,29 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-
-#include <platform_data/eth-fec.h>
-#include <input/matrix_keypad.h>
-#include <i2c/i2c.h>
-#include <mach/imx/spi.h>
-#include <mach/imx/imx-nand.h>
-#include <platform_data/imxfb.h>
-#include <mach/imx/imx-ipu-fb.h>
-#include <platform_data/mmc-esdhc-imx.h>
-#include <linux/usb/chipidea-imx.h>
-
-struct device *imx_add_fec_imx27(void *base, struct fec_platform_data *pdata);
-struct device *imx_add_fec_imx6(void *base, struct fec_platform_data *pdata);
-struct device *imx_add_spi_imx27(void *base, int id, struct spi_imx_master *pdata);
-struct device *imx_add_spi_imx35(void *base, int id, struct spi_imx_master *pdata);
-struct device *imx_add_spi_imx51(void *base, int id, struct spi_imx_master *pdata);
-struct device *imx_add_i2c(void *base, int id, struct i2c_platform_data *pdata);
-struct device *imx_add_uart_imx1(void *base, int id);
-struct device *imx_add_uart_imx21(void *base, int id);
-struct device *imx_add_nand(void *base, struct imx_nand_platform_data *pdata);
-struct device *imx_add_fb(void *base, struct imx_fb_platform_data *pdata);
-struct device *imx_add_ipufb(void *base, struct imx_ipu_fb_platform_data *pdata);
-struct device *imx_add_mmc(void *base, int id, void *pdata);
-struct device *imx_add_esdhc_imx25(void *base, int id, struct esdhc_platform_data *pdata);
-struct device *imx_add_esdhc_imx5(void *base, int id, struct esdhc_platform_data *pdata);
-struct device *imx_add_kpp(void *base, struct matrix_keymap_data *pdata);
-struct device *imx_add_pata(void *base);
-struct device *imx_add_usb(void *base, int id, struct imxusb_platformdata *pdata);
-- 
2.39.2



