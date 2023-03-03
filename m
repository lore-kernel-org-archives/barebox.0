Delivery-date: Fri, 03 Mar 2023 10:26:18 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1g9-007NjB-OK
	for lore@lore.pengutronix.de; Fri, 03 Mar 2023 10:26:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1g7-0002VV-F7
	for lore@pengutronix.de; Fri, 03 Mar 2023 10:26:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=M7TlBsX7BiKbn+/QZWrVexW4woG0guINKbh1B+djwd8=; b=bd7EP6ukM6NlW6CvWndpV6SfNr
	969EpPf212hWQIujYkvzkrG9SXU5NqsHs//qhq6CBUbhrmg6Drso8edqZIBk5khoSuJFlWfeb10ss
	YUBWM5IXxtYfL6BBr1KxxsmULPATJ2XGWeFZLmxt+J+fMohGa4F4iDh2SkhBM81GWqulFLR+mjPvI
	R1apNgymjLefY9QLmCAo3Ldm4uTYYwlMFMx/ABOO4czYjqFFUF6SDjk7GdtHH4Y8x2LliLb8fHyBb
	fVKitDmCO3Ex6g3e2mZj66A+MJ7gDKejJnogqoJEbKJASmOL+zefeN7tIJLpiNS/5VGgn9uqmJAh/
	1aTY/FGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1eW-005gMH-7l; Fri, 03 Mar 2023 09:24:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1bg-005eM6-Ba
	for barebox@lists.infradead.org; Fri, 03 Mar 2023 09:21:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bf-0000B6-1v; Fri, 03 Mar 2023 10:21:39 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1be-001Whz-76; Fri, 03 Mar 2023 10:21:38 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1ba-00F2gN-Es; Fri, 03 Mar 2023 10:21:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  3 Mar 2023 10:20:59 +0100
Message-Id: <20230303092131.3063587-19-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230303092131.3063587-1-s.hauer@pengutronix.de>
References: <20230303092131.3063587-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230303_012140_844365_332951B8 
X-CRM114-Status: GOOD (  14.57  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 18/50] ARM: mxs: Move mach header files to include/mach/mxs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Currently arch specific headers can be included with
longer possible as there won't be a single mach anymore.

Move all mxs specific header files to include/mach/mxs/ to
prepare for multi-arch support.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/chumby_falconwing/falconwing.c   | 10 +++++-----
 arch/arm/boards/chumby_falconwing/lowlevel.c     |  2 +-
 arch/arm/boards/crystalfontz-cfa10036/cfa10036.c |  8 ++++----
 arch/arm/boards/crystalfontz-cfa10036/lowlevel.c |  2 +-
 arch/arm/boards/duckbill/board.c                 | 12 ++++++------
 arch/arm/boards/duckbill/lowlevel.c              |  6 +++---
 arch/arm/boards/freescale-mx23-evk/lowlevel.c    |  2 +-
 arch/arm/boards/freescale-mx23-evk/mx23-evk.c    |  8 ++++----
 arch/arm/boards/freescale-mx28-evk/board.c       |  2 +-
 arch/arm/boards/freescale-mx28-evk/lowlevel.c    |  6 +++---
 .../boards/imx233-olinuxino/imx23-olinuxino.c    |  8 ++++----
 arch/arm/boards/imx233-olinuxino/lowlevel.c      |  6 +++---
 arch/arm/boards/karo-tx28/lowlevel.c             |  6 +++---
 arch/arm/boards/karo-tx28/tx28-stk5.c            | 10 +++++-----
 arch/arm/boards/karo-tx28/tx28.c                 |  6 +++---
 arch/arm/include/asm/debug_ll.h                  |  2 ++
 arch/arm/mach-mxs/bcb.c                          |  2 +-
 arch/arm/mach-mxs/clocksource-imx23.c            |  2 +-
 arch/arm/mach-mxs/clocksource-imx28.c            |  2 +-
 arch/arm/mach-mxs/imx.c                          |  6 +++---
 arch/arm/mach-mxs/iomux-imx.c                    |  4 ++--
 arch/arm/mach-mxs/lradc-init.c                   |  6 +++---
 arch/arm/mach-mxs/mem-init.c                     | 10 +++++-----
 arch/arm/mach-mxs/ocotp.c                        |  6 +++---
 arch/arm/mach-mxs/power-init.c                   | 16 ++++++++--------
 arch/arm/mach-mxs/power.c                        |  4 ++--
 arch/arm/mach-mxs/soc-imx23.c                    |  4 ++--
 arch/arm/mach-mxs/soc-imx28.c                    |  4 ++--
 arch/arm/mach-mxs/usb-imx23.c                    |  6 +++---
 arch/arm/mach-mxs/usb-imx28.c                    |  4 ++--
 common/imx-bbu-nand-fcb.c                        |  4 ++--
 drivers/clk/mxs/clk-imx23.c                      |  2 +-
 drivers/clk/mxs/clk-imx28.c                      |  2 +-
 drivers/mci/mxs.c                                |  4 ++--
 drivers/spi/mxs_spi.c                            |  4 ++--
 drivers/video/stm.c                              |  2 +-
 .../include/mach => include/mach/mxs}/debug_ll.h |  2 +-
 .../include/mach => include/mach/mxs}/devices.h  |  2 +-
 .../include/mach => include/mach/mxs}/fb.h       |  0
 .../include/mach => include/mach/mxs}/generic.h  |  0
 .../include/mach => include/mach/mxs}/imx-regs.h |  4 ++--
 .../mach => include/mach/mxs}/imx23-regs.h       |  0
 .../include/mach => include/mach/mxs}/imx23.h    |  0
 .../mach => include/mach/mxs}/imx28-regs.h       |  0
 .../include/mach => include/mach/mxs}/imx28.h    |  0
 .../include/mach => include/mach/mxs}/init.h     |  0
 .../mach => include/mach/mxs}/iomux-imx23.h      |  0
 .../mach => include/mach/mxs}/iomux-imx28.h      |  0
 .../include/mach => include/mach/mxs}/iomux.h    |  4 ++--
 .../include/mach => include/mach/mxs}/mci.h      |  0
 .../include/mach => include/mach/mxs}/ocotp.h    |  0
 .../include/mach => include/mach/mxs}/power.h    |  0
 .../mach/mxs}/regs-clkctrl-mx23.h                |  2 +-
 .../mach/mxs}/regs-clkctrl-mx28.h                |  2 +-
 .../mach => include/mach/mxs}/regs-common.h      |  0
 .../mach => include/mach/mxs}/regs-lradc.h       |  2 +-
 .../mach => include/mach/mxs}/regs-power-mx28.h  |  2 +-
 .../include/mach => include/mach/mxs}/regs-rtc.h |  2 +-
 .../include/mach => include/mach/mxs}/revision.h |  0
 .../include/mach => include/mach/mxs}/ssp.h      |  0
 .../include/mach => include/mach/mxs}/usb.h      |  0
 61 files changed, 107 insertions(+), 105 deletions(-)
 rename {arch/arm/mach-mxs/include/mach => include/mach/mxs}/debug_ll.h (93%)
 rename {arch/arm/mach-mxs/include/mach => include/mach/mxs}/devices.h (97%)
 rename {arch/arm/mach-mxs/include/mach => include/mach/mxs}/fb.h (100%)
 rename {arch/arm/mach-mxs/include/mach => include/mach/mxs}/generic.h (100%)
 rename {arch/arm/mach-mxs/include/mach => include/mach/mxs}/imx-regs.h (79%)
 rename {arch/arm/mach-mxs/include/mach => include/mach/mxs}/imx23-regs.h (100%)
 rename {arch/arm/mach-mxs/include/mach => include/mach/mxs}/imx23.h (100%)
 rename {arch/arm/mach-mxs/include/mach => include/mach/mxs}/imx28-regs.h (100%)
 rename {arch/arm/mach-mxs/include/mach => include/mach/mxs}/imx28.h (100%)
 rename {arch/arm/mach-mxs/include/mach => include/mach/mxs}/init.h (100%)
 rename {arch/arm/mach-mxs/include/mach => include/mach/mxs}/iomux-imx23.h (100%)
 rename {arch/arm/mach-mxs/include/mach => include/mach/mxs}/iomux-imx28.h (100%)
 rename {arch/arm/mach-mxs/include/mach => include/mach/mxs}/iomux.h (98%)
 rename {arch/arm/mach-mxs/include/mach => include/mach/mxs}/mci.h (100%)
 rename {arch/arm/mach-mxs/include/mach => include/mach/mxs}/ocotp.h (100%)
 rename {arch/arm/mach-mxs/include/mach => include/mach/mxs}/power.h (100%)
 rename {arch/arm/mach-mxs/include/mach => include/mach/mxs}/regs-clkctrl-mx23.h (99%)
 rename {arch/arm/mach-mxs/include/mach => include/mach/mxs}/regs-clkctrl-mx28.h (99%)
 rename {arch/arm/mach-mxs/include/mach => include/mach/mxs}/regs-common.h (100%)
 rename {arch/arm/mach-mxs/include/mach => include/mach/mxs}/regs-lradc.h (99%)
 rename {arch/arm/mach-mxs/include/mach => include/mach/mxs}/regs-power-mx28.h (99%)
 rename {arch/arm/mach-mxs/include/mach => include/mach/mxs}/regs-rtc.h (99%)
 rename {arch/arm/mach-mxs/include/mach => include/mach/mxs}/revision.h (100%)
 rename {arch/arm/mach-mxs/include/mach => include/mach/mxs}/ssp.h (100%)
 rename {arch/arm/mach-mxs/include/mach => include/mach/mxs}/usb.h (100%)

diff --git a/arch/arm/boards/chumby_falconwing/falconwing.c b/arch/arm/boards/chumby_falconwing/falconwing.c
index 44619d0c24..9f51d2253b 100644
--- a/arch/arm/boards/chumby_falconwing/falconwing.c
+++ b/arch/arm/boards/chumby_falconwing/falconwing.c
@@ -15,11 +15,11 @@
 #include <io.h>
 #include <asm/mmu.h>
 #include <generated/mach-types.h>
-#include <mach/imx-regs.h>
-#include <mach/mci.h>
-#include <mach/fb.h>
-#include <mach/usb.h>
-#include <mach/iomux.h>
+#include <mach/mxs/imx-regs.h>
+#include <mach/mxs/mci.h>
+#include <mach/mxs/fb.h>
+#include <mach/mxs/usb.h>
+#include <mach/mxs/iomux.h>
 
 static struct mxs_mci_platform_data mci_pdata = {
 	.caps = MMC_CAP_4_BIT_DATA | MMC_CAP_SD_HIGHSPEED | MMC_CAP_MMC_HIGHSPEED,
diff --git a/arch/arm/boards/chumby_falconwing/lowlevel.c b/arch/arm/boards/chumby_falconwing/lowlevel.c
index f0c3143e8d..f68b17bd8a 100644
--- a/arch/arm/boards/chumby_falconwing/lowlevel.c
+++ b/arch/arm/boards/chumby_falconwing/lowlevel.c
@@ -4,7 +4,7 @@
 #include <linux/sizes.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
-#include <mach/imx23-regs.h>
+#include <mach/mxs/imx23-regs.h>
 #include <generated/mach-types.h>
 
 static noinline void continue_imx_entry(size_t size)
diff --git a/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c b/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
index 69ac71b0c3..c653b2b0e9 100644
--- a/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
+++ b/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
@@ -19,15 +19,15 @@
 #include <i2c/i2c-gpio.h>
 #include <i2c/at24.h>
 
-#include <mach/imx-regs.h>
-#include <mach/iomux.h>
-#include <mach/mci.h>
+#include <mach/mxs/imx-regs.h>
+#include <mach/mxs/iomux.h>
+#include <mach/mxs/mci.h>
 
 #include <asm/armlinux.h>
 #include <asm/mmu.h>
 #include <asm/barebox-arm.h>
 
-#include <mach/fb.h>
+#include <mach/mxs/fb.h>
 
 #include <generated/mach-types.h>
 
diff --git a/arch/arm/boards/crystalfontz-cfa10036/lowlevel.c b/arch/arm/boards/crystalfontz-cfa10036/lowlevel.c
index 8ebea0fedc..44be83c823 100644
--- a/arch/arm/boards/crystalfontz-cfa10036/lowlevel.c
+++ b/arch/arm/boards/crystalfontz-cfa10036/lowlevel.c
@@ -4,7 +4,7 @@
 #include <linux/sizes.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
-#include <mach/imx28-regs.h>
+#include <mach/mxs/imx28-regs.h>
 #include <generated/mach-types.h>
 
 static noinline void continue_imx_entry(size_t size)
diff --git a/arch/arm/boards/duckbill/board.c b/arch/arm/boards/duckbill/board.c
index 56a4cc1853..4e8f564967 100644
--- a/arch/arm/boards/duckbill/board.c
+++ b/arch/arm/boards/duckbill/board.c
@@ -11,12 +11,12 @@
 #include <io.h>
 #include <net.h>
 
-#include <mach/imx-regs.h>
-#include <mach/iomux-imx28.h>
-#include <mach/iomux.h>
-#include <mach/ocotp.h>
-#include <mach/devices.h>
-#include <mach/usb.h>
+#include <mach/mxs/imx-regs.h>
+#include <mach/mxs/iomux-imx28.h>
+#include <mach/mxs/iomux.h>
+#include <mach/mxs/ocotp.h>
+#include <mach/mxs/devices.h>
+#include <mach/mxs/usb.h>
 #include <usb/fsl_usb2.h>
 
 #include <asm/armlinux.h>
diff --git a/arch/arm/boards/duckbill/lowlevel.c b/arch/arm/boards/duckbill/lowlevel.c
index 0f76d9c938..71862ec4b7 100644
--- a/arch/arm/boards/duckbill/lowlevel.c
+++ b/arch/arm/boards/duckbill/lowlevel.c
@@ -7,11 +7,11 @@
 #include <linux/sizes.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
-#include <mach/imx28-regs.h>
-#include <mach/init.h>
+#include <mach/mxs/imx28-regs.h>
+#include <mach/mxs/init.h>
 #include <io.h>
 #include <debug_ll.h>
-#include <mach/iomux.h>
+#include <mach/mxs/iomux.h>
 #include <stmp-device.h>
 
 extern char __dtb_imx28_duckbill_start[];
diff --git a/arch/arm/boards/freescale-mx23-evk/lowlevel.c b/arch/arm/boards/freescale-mx23-evk/lowlevel.c
index 319e9784a4..b0c8518fbd 100644
--- a/arch/arm/boards/freescale-mx23-evk/lowlevel.c
+++ b/arch/arm/boards/freescale-mx23-evk/lowlevel.c
@@ -5,7 +5,7 @@
 #include <generated/mach-types.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
-#include <mach/imx23-regs.h>
+#include <mach/mxs/imx23-regs.h>
 
 static noinline void continue_imx_entry(size_t size)
 {
diff --git a/arch/arm/boards/freescale-mx23-evk/mx23-evk.c b/arch/arm/boards/freescale-mx23-evk/mx23-evk.c
index b0aa9e1a33..b5dbe5f41a 100644
--- a/arch/arm/boards/freescale-mx23-evk/mx23-evk.c
+++ b/arch/arm/boards/freescale-mx23-evk/mx23-evk.c
@@ -11,11 +11,11 @@
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
 #include <asm/barebox-arm.h>
-#include <mach/imx-regs.h>
-#include <mach/mci.h>
+#include <mach/mxs/imx-regs.h>
+#include <mach/mxs/mci.h>
 #include <usb/fsl_usb2.h>
-#include <mach/usb.h>
-#include <mach/iomux.h>
+#include <mach/mxs/usb.h>
+#include <mach/mxs/iomux.h>
 
 static struct mxs_mci_platform_data mci_pdata = {
 	.caps = MMC_CAP_4_BIT_DATA | MMC_CAP_SD_HIGHSPEED | MMC_CAP_MMC_HIGHSPEED,
diff --git a/arch/arm/boards/freescale-mx28-evk/board.c b/arch/arm/boards/freescale-mx28-evk/board.c
index 92097a2bca..1c5d2da5a6 100644
--- a/arch/arm/boards/freescale-mx28-evk/board.c
+++ b/arch/arm/boards/freescale-mx28-evk/board.c
@@ -9,7 +9,7 @@
 #include <common.h>
 #include <init.h>
 #include <net.h>
-#include <mach/ocotp.h>
+#include <mach/mxs/ocotp.h>
 
 static void mx28_evk_get_ethaddr(void)
 {
diff --git a/arch/arm/boards/freescale-mx28-evk/lowlevel.c b/arch/arm/boards/freescale-mx28-evk/lowlevel.c
index 7f0bd8a90e..42ac33fbbd 100644
--- a/arch/arm/boards/freescale-mx28-evk/lowlevel.c
+++ b/arch/arm/boards/freescale-mx28-evk/lowlevel.c
@@ -7,11 +7,11 @@
 #include <linux/sizes.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
-#include <mach/imx28-regs.h>
-#include <mach/init.h>
+#include <mach/mxs/imx28-regs.h>
+#include <mach/mxs/init.h>
 #include <io.h>
 #include <debug_ll.h>
-#include <mach/iomux.h>
+#include <mach/mxs/iomux.h>
 #include <stmp-device.h>
 
 extern char __dtb_imx28_evk_start[];
diff --git a/arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c b/arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c
index 91151feba1..b164364560 100644
--- a/arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c
+++ b/arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c
@@ -19,11 +19,11 @@
 #include <asm/armlinux.h>
 #include <asm/barebox-arm.h>
 #include <usb/ehci.h>
-#include <mach/usb.h>
+#include <mach/mxs/usb.h>
 #include <generated/mach-types.h>
-#include <mach/imx-regs.h>
-#include <mach/mci.h>
-#include <mach/iomux.h>
+#include <mach/mxs/imx-regs.h>
+#include <mach/mxs/mci.h>
+#include <mach/mxs/iomux.h>
 
 static struct mxs_mci_platform_data mci_pdata = {
 	.caps = MMC_CAP_4_BIT_DATA | MMC_CAP_SD_HIGHSPEED | MMC_CAP_MMC_HIGHSPEED,
diff --git a/arch/arm/boards/imx233-olinuxino/lowlevel.c b/arch/arm/boards/imx233-olinuxino/lowlevel.c
index 6e80e6889b..f78daa1d8c 100644
--- a/arch/arm/boards/imx233-olinuxino/lowlevel.c
+++ b/arch/arm/boards/imx233-olinuxino/lowlevel.c
@@ -4,11 +4,11 @@
 #include <linux/sizes.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
-#include <mach/imx23-regs.h>
-#include <mach/init.h>
+#include <mach/mxs/imx23-regs.h>
+#include <mach/mxs/init.h>
 #include <io.h>
 #include <debug_ll.h>
-#include <mach/iomux.h>
+#include <mach/mxs/iomux.h>
 #include <generated/mach-types.h>
 
 static noinline void continue_imx_entry(size_t size)
diff --git a/arch/arm/boards/karo-tx28/lowlevel.c b/arch/arm/boards/karo-tx28/lowlevel.c
index 9e90e40926..668355f9e6 100644
--- a/arch/arm/boards/karo-tx28/lowlevel.c
+++ b/arch/arm/boards/karo-tx28/lowlevel.c
@@ -7,11 +7,11 @@
 #include <linux/sizes.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
-#include <mach/imx28-regs.h>
-#include <mach/init.h>
+#include <mach/mxs/imx28-regs.h>
+#include <mach/mxs/init.h>
 #include <io.h>
 #include <debug_ll.h>
-#include <mach/iomux.h>
+#include <mach/mxs/iomux.h>
 #include <stmp-device.h>
 #include <generated/mach-types.h>
 
diff --git a/arch/arm/boards/karo-tx28/tx28-stk5.c b/arch/arm/boards/karo-tx28/tx28-stk5.c
index c5e7b1451c..32dcd31ccd 100644
--- a/arch/arm/boards/karo-tx28/tx28-stk5.c
+++ b/arch/arm/boards/karo-tx28/tx28-stk5.c
@@ -14,11 +14,11 @@
 #include <asm/sections.h>
 #include <asm/barebox-arm.h>
 #include <linux/err.h>
-#include <mach/imx-regs.h>
-#include <mach/mci.h>
-#include <mach/fb.h>
-#include <mach/ocotp.h>
-#include <mach/iomux.h>
+#include <mach/mxs/imx-regs.h>
+#include <mach/mxs/mci.h>
+#include <mach/mxs/fb.h>
+#include <mach/mxs/ocotp.h>
+#include <mach/mxs/iomux.h>
 #include <generated/mach-types.h>
 
 #include "tx28.h"
diff --git a/arch/arm/boards/karo-tx28/tx28.c b/arch/arm/boards/karo-tx28/tx28.c
index 8bd2252410..009ba75961 100644
--- a/arch/arm/boards/karo-tx28/tx28.c
+++ b/arch/arm/boards/karo-tx28/tx28.c
@@ -10,9 +10,9 @@
 #include <asm/barebox-arm.h>
 #include <io.h>
 #include <generated/mach-types.h>
-#include <mach/imx-regs.h>
-#include <mach/devices.h>
-#include <mach/iomux.h>
+#include <mach/mxs/imx-regs.h>
+#include <mach/mxs/devices.h>
+#include <mach/mxs/iomux.h>
 #include <asm/mmu.h>
 
 #include "tx28.h"
diff --git a/arch/arm/include/asm/debug_ll.h b/arch/arm/include/asm/debug_ll.h
index 1c021acf6f..e65c008de9 100644
--- a/arch/arm/include/asm/debug_ll.h
+++ b/arch/arm/include/asm/debug_ll.h
@@ -40,6 +40,8 @@
 #include <mach/omap/debug_ll.h>
 #elif defined CONFIG_ARCH_NOMADIK
 #include <mach/nomadik/debug_ll.h>
+#elif defined CONFIG_ARCH_MXS
+#include <mach/mxs/debug_ll.h>
 #else
 #ifndef CONFIG_ARCH_ARM64_VIRT
 #include <mach/debug_ll.h>
diff --git a/arch/arm/mach-mxs/bcb.c b/arch/arm/mach-mxs/bcb.c
index 749cf29af6..152a7c3bca 100644
--- a/arch/arm/mach-mxs/bcb.c
+++ b/arch/arm/mach-mxs/bcb.c
@@ -15,7 +15,7 @@
 #include <errno.h>
 #include <io.h>
 
-#include <mach/imx-regs.h>
+#include <mach/mxs/imx-regs.h>
 
 #include <linux/err.h>
 #include <linux/mtd/nand.h>
diff --git a/arch/arm/mach-mxs/clocksource-imx23.c b/arch/arm/mach-mxs/clocksource-imx23.c
index 2973422229..d1d9f10bec 100644
--- a/arch/arm/mach-mxs/clocksource-imx23.c
+++ b/arch/arm/mach-mxs/clocksource-imx23.c
@@ -5,7 +5,7 @@
 #include <init.h>
 #include <clock.h>
 #include <notifier.h>
-#include <mach/imx23-regs.h>
+#include <mach/mxs/imx23-regs.h>
 #include <io.h>
 
 #define TIMROTCTRL 0x00
diff --git a/arch/arm/mach-mxs/clocksource-imx28.c b/arch/arm/mach-mxs/clocksource-imx28.c
index 6280cc64fb..306112ffa0 100644
--- a/arch/arm/mach-mxs/clocksource-imx28.c
+++ b/arch/arm/mach-mxs/clocksource-imx28.c
@@ -5,7 +5,7 @@
 #include <init.h>
 #include <clock.h>
 #include <notifier.h>
-#include <mach/imx28-regs.h>
+#include <mach/mxs/imx28-regs.h>
 #include <io.h>
 
 #define TIMROTCTRL 0x00
diff --git a/arch/arm/mach-mxs/imx.c b/arch/arm/mach-mxs/imx.c
index a8a9500918..2b4e682281 100644
--- a/arch/arm/mach-mxs/imx.c
+++ b/arch/arm/mach-mxs/imx.c
@@ -9,9 +9,9 @@
 #include <io.h>
 #include <stmp-device.h>
 
-#include <mach/generic.h>
-#include <mach/imx-regs.h>
-#include <mach/revision.h>
+#include <mach/mxs/generic.h>
+#include <mach/mxs/imx-regs.h>
+#include <mach/mxs/revision.h>
 
 #define HW_RTC_PERSISTENT1     0x070
 
diff --git a/arch/arm/mach-mxs/iomux-imx.c b/arch/arm/mach-mxs/iomux-imx.c
index 6b96fc4ed9..bf9d600bc7 100644
--- a/arch/arm/mach-mxs/iomux-imx.c
+++ b/arch/arm/mach-mxs/iomux-imx.c
@@ -6,9 +6,9 @@
 #include <gpio.h>
 #include <errno.h>
 #include <io.h>
-#include <mach/iomux.h>
+#include <mach/mxs/iomux.h>
 #include <stmp-device.h>
-#include <mach/imx-regs.h>
+#include <mach/mxs/imx-regs.h>
 
 #define HW_PINCTRL_CTRL 0x000
 #define HW_PINCTRL_MUXSEL0 0x100
diff --git a/arch/arm/mach-mxs/lradc-init.c b/arch/arm/mach-mxs/lradc-init.c
index 682a47530d..10d0be77fd 100644
--- a/arch/arm/mach-mxs/lradc-init.c
+++ b/arch/arm/mach-mxs/lradc-init.c
@@ -10,9 +10,9 @@
 #include <common.h>
 #include <config.h>
 #include <asm/io.h>
-#include <mach/imx-regs.h>
-#include <mach/regs-lradc.h>
-#include <mach/init.h>
+#include <mach/mxs/imx-regs.h>
+#include <mach/mxs/regs-lradc.h>
+#include <mach/mxs/init.h>
 
 void mxs_lradc_init(void)
 {
diff --git a/arch/arm/mach-mxs/mem-init.c b/arch/arm/mach-mxs/mem-init.c
index 44785c2bfc..0d289266d0 100644
--- a/arch/arm/mach-mxs/mem-init.c
+++ b/arch/arm/mach-mxs/mem-init.c
@@ -12,16 +12,16 @@
 #include <common.h>
 #include <config.h>
 #include <io.h>
-#include <mach/imx-regs.h>
+#include <mach/mxs/imx-regs.h>
 #include <linux/compiler.h>
 
-#include <mach/init.h>
-#include <mach/regs-power-mx28.h>
+#include <mach/mxs/init.h>
+#include <mach/mxs/regs-power-mx28.h>
 #if defined CONFIG_ARCH_IMX23
-# include <mach/regs-clkctrl-mx23.h>
+#include <mach/mxs/regs-clkctrl-mx23.h>
 #endif
 #if defined CONFIG_ARCH_IMX28
-# include <mach/regs-clkctrl-mx28.h>
+#include <mach/mxs/regs-clkctrl-mx28.h>
 #endif
 
 /* 1 second delay should be plenty of time for block reset. */
diff --git a/arch/arm/mach-mxs/ocotp.c b/arch/arm/mach-mxs/ocotp.c
index 665c4c9a88..ceda5fb5d9 100644
--- a/arch/arm/mach-mxs/ocotp.c
+++ b/arch/arm/mach-mxs/ocotp.c
@@ -18,9 +18,9 @@
 #include <linux/clk.h>
 #include <linux/err.h>
 
-#include <mach/generic.h>
-#include <mach/ocotp.h>
-#include <mach/power.h>
+#include <mach/mxs/generic.h>
+#include <mach/mxs/ocotp.h>
+#include <mach/mxs/power.h>
 
 #define DRIVERNAME "ocotp"
 
diff --git a/arch/arm/mach-mxs/power-init.c b/arch/arm/mach-mxs/power-init.c
index c89f1f5f5d..408ff8ba99 100644
--- a/arch/arm/mach-mxs/power-init.c
+++ b/arch/arm/mach-mxs/power-init.c
@@ -10,19 +10,19 @@
 #include <common.h>
 #include <config.h>
 #include <io.h>
-#include <mach/imx-regs.h>
+#include <mach/mxs/imx-regs.h>
 
-#include <mach/generic.h>
-#include <mach/init.h>
+#include <mach/mxs/generic.h>
+#include <mach/mxs/init.h>
 #ifdef CONFIG_ARCH_IMX23
-#include <mach/regs-clkctrl-mx23.h>
+#include <mach/mxs/regs-clkctrl-mx23.h>
 #endif
 #ifdef CONFIG_ARCH_IMX28
-#include <mach/regs-clkctrl-mx28.h>
+#include <mach/mxs/regs-clkctrl-mx28.h>
 #endif
-#include <mach/regs-power-mx28.h>
-#include <mach/regs-rtc.h>
-#include <mach/regs-lradc.h>
+#include <mach/mxs/regs-power-mx28.h>
+#include <mach/mxs/regs-rtc.h>
+#include <mach/mxs/regs-lradc.h>
 
 int power_config;
 
diff --git a/arch/arm/mach-mxs/power.c b/arch/arm/mach-mxs/power.c
index 342f7b0271..2672a014a1 100644
--- a/arch/arm/mach-mxs/power.c
+++ b/arch/arm/mach-mxs/power.c
@@ -8,8 +8,8 @@
 #include <io.h>
 #include <stmp-device.h>
 #include <errno.h>
-#include <mach/imx-regs.h>
-#include <mach/power.h>
+#include <mach/mxs/imx-regs.h>
+#include <mach/mxs/power.h>
 
 #define POWER_CTRL			(IMX_POWER_BASE + 0x0)
 #define POWER_CTRL_CLKGATE		0x40000000
diff --git a/arch/arm/mach-mxs/soc-imx23.c b/arch/arm/mach-mxs/soc-imx23.c
index 16b1fda5ed..b799812c52 100644
--- a/arch/arm/mach-mxs/soc-imx23.c
+++ b/arch/arm/mach-mxs/soc-imx23.c
@@ -6,10 +6,10 @@
 #include <common.h>
 #include <init.h>
 #include <restart.h>
-#include <mach/imx23-regs.h>
+#include <mach/mxs/imx23-regs.h>
 #include <io.h>
 #include <asm/memory.h>
-#include <mach/imx23.h>
+#include <mach/mxs/imx23.h>
 
 #define HW_CLKCTRL_RESET 0x120
 # define HW_CLKCTRL_RESET_CHIP (1 << 1)
diff --git a/arch/arm/mach-mxs/soc-imx28.c b/arch/arm/mach-mxs/soc-imx28.c
index e3d3cb1c0a..4a9697b8e4 100644
--- a/arch/arm/mach-mxs/soc-imx28.c
+++ b/arch/arm/mach-mxs/soc-imx28.c
@@ -6,10 +6,10 @@
 #include <common.h>
 #include <init.h>
 #include <restart.h>
-#include <mach/imx28-regs.h>
+#include <mach/mxs/imx28-regs.h>
 #include <io.h>
 #include <asm/memory.h>
-#include <mach/imx28.h>
+#include <mach/mxs/imx28.h>
 
 #define HW_CLKCTRL_RESET 0x1e0
 # define HW_CLKCTRL_RESET_CHIP (1 << 1)
diff --git a/arch/arm/mach-mxs/usb-imx23.c b/arch/arm/mach-mxs/usb-imx23.c
index 6acf1bb786..37d267b4a9 100644
--- a/arch/arm/mach-mxs/usb-imx23.c
+++ b/arch/arm/mach-mxs/usb-imx23.c
@@ -5,9 +5,9 @@
 
 #include <common.h>
 #include <io.h>
-#include <mach/imx23-regs.h>
-#include <mach/power.h>
-#include <mach/usb.h>
+#include <mach/mxs/imx23-regs.h>
+#include <mach/mxs/power.h>
+#include <mach/mxs/usb.h>
 
 #define USBPHY_PWD			(IMX_USBPHY_BASE + 0x0)
 
diff --git a/arch/arm/mach-mxs/usb-imx28.c b/arch/arm/mach-mxs/usb-imx28.c
index 3793169b59..9c65dc7212 100644
--- a/arch/arm/mach-mxs/usb-imx28.c
+++ b/arch/arm/mach-mxs/usb-imx28.c
@@ -6,8 +6,8 @@
 #include <common.h>
 #include <io.h>
 #include <errno.h>
-#include <mach/imx28-regs.h>
-#include <mach/usb.h>
+#include <mach/mxs/imx28-regs.h>
+#include <mach/mxs/usb.h>
 
 #define POWER_CTRL			(IMX_POWER_BASE + 0x0)
 #define POWER_CTRL_CLKGATE		0x40000000
diff --git a/common/imx-bbu-nand-fcb.c b/common/imx-bbu-nand-fcb.c
index f154f6705d..0d46192720 100644
--- a/common/imx-bbu-nand-fcb.c
+++ b/common/imx-bbu-nand-fcb.c
@@ -31,7 +31,7 @@
 #include <mach/imx/imx6.h>
 #include <mach/imx/generic.h>
 #else
-#include <mach/generic.h>
+#include <mach/mxs/generic.h>
 #endif
 
 static inline int fcb_is_bch_encoded(void)
@@ -1504,7 +1504,7 @@ int imx6_bbu_nand_register_handler(const char *name, unsigned long flags)
 #define	MX28_BCH_FLASHLAYOUT1_DATAN_SIZE_MASK		0xfff
 
 #ifdef CONFIG_ARCH_IMX28
-#include <mach/imx28-regs.h>
+#include <mach/mxs/imx28-regs.h>
 
 static void imx28_fcb_create(struct imx_nand_fcb_bbu_handler *imx_handler,
 		struct fcb_block *fcb, struct mtd_info *mtd)
diff --git a/drivers/clk/mxs/clk-imx23.c b/drivers/clk/mxs/clk-imx23.c
index b207e5f194..aa342f3d1b 100644
--- a/drivers/clk/mxs/clk-imx23.c
+++ b/drivers/clk/mxs/clk-imx23.c
@@ -10,7 +10,7 @@
 #include <io.h>
 #include <linux/clkdev.h>
 #include <linux/err.h>
-#include <mach/imx23-regs.h>
+#include <mach/mxs/imx23-regs.h>
 
 #include "clk.h"
 
diff --git a/drivers/clk/mxs/clk-imx28.c b/drivers/clk/mxs/clk-imx28.c
index 3edf430464..190c997403 100644
--- a/drivers/clk/mxs/clk-imx28.c
+++ b/drivers/clk/mxs/clk-imx28.c
@@ -10,7 +10,7 @@
 #include <io.h>
 #include <linux/clkdev.h>
 #include <linux/err.h>
-#include <mach/imx28-regs.h>
+#include <mach/mxs/imx28-regs.h>
 #include <of_address.h>
 
 #include "clk.h"
diff --git a/drivers/mci/mxs.c b/drivers/mci/mxs.c
index 6a348e331e..7c19032230 100644
--- a/drivers/mci/mxs.c
+++ b/drivers/mci/mxs.c
@@ -27,8 +27,8 @@
 #include <linux/clk.h>
 #include <linux/err.h>
 #include <asm/bitops.h>
-#include <mach/mci.h>
-#include <mach/ssp.h>
+#include <mach/mxs/mci.h>
+#include <mach/mxs/ssp.h>
 
 #define CLOCKRATE_MIN (1 * 1000 * 1000)
 #define CLOCKRATE_MAX (480 * 1000 * 1000)
diff --git a/drivers/spi/mxs_spi.c b/drivers/spi/mxs_spi.c
index c435e4f22b..d2ec42f064 100644
--- a/drivers/spi/mxs_spi.c
+++ b/drivers/spi/mxs_spi.c
@@ -18,8 +18,8 @@
 #include <stmp-device.h>
 #include <linux/clk.h>
 #include <linux/err.h>
-#include <mach/generic.h>
-#include <mach/ssp.h>
+#include <mach/mxs/generic.h>
+#include <mach/mxs/ssp.h>
 
 #define	MXS_SPI_MAX_TIMEOUT		(10 * MSECOND)
 
diff --git a/drivers/video/stm.c b/drivers/video/stm.c
index 1998e1996e..68ac4feed3 100644
--- a/drivers/video/stm.c
+++ b/drivers/video/stm.c
@@ -20,7 +20,7 @@
 #include <stmp-device.h>
 #include <linux/clk.h>
 #include <linux/err.h>
-#include <mach/fb.h>
+#include <mach/mxs/fb.h>
 
 #define HW_LCDIF_CTRL 0x00
 # define CTRL_SFTRST (1 << 31)
diff --git a/arch/arm/mach-mxs/include/mach/debug_ll.h b/include/mach/mxs/debug_ll.h
similarity index 93%
rename from arch/arm/mach-mxs/include/mach/debug_ll.h
rename to include/mach/mxs/debug_ll.h
index ac7a0e759d..49c8503765 100644
--- a/arch/arm/mach-mxs/include/mach/debug_ll.h
+++ b/include/mach/mxs/debug_ll.h
@@ -4,7 +4,7 @@
 #define __MACH_DEBUG_LL_H__
 
 #include <io.h>
-#include <mach/imx-regs.h>
+#include <mach/mxs/imx-regs.h>
 
 #define UARTDBGDR 0x00
 #define UARTDBGFR 0x18
diff --git a/arch/arm/mach-mxs/include/mach/devices.h b/include/mach/mxs/devices.h
similarity index 97%
rename from arch/arm/mach-mxs/include/mach/devices.h
rename to include/mach/mxs/devices.h
index c23f484973..d200b4b5cd 100644
--- a/arch/arm/mach-mxs/include/mach/devices.h
+++ b/include/mach/mxs/devices.h
@@ -7,7 +7,7 @@
 #include <linux/sizes.h>
 #include <xfuncs.h>
 #include <driver.h>
-#include <mach/imx-regs.h>
+#include <mach/mxs/imx-regs.h>
 
 static inline struct device *mxs_add_nand(unsigned long gpmi_base, unsigned long bch_base)
 {
diff --git a/arch/arm/mach-mxs/include/mach/fb.h b/include/mach/mxs/fb.h
similarity index 100%
rename from arch/arm/mach-mxs/include/mach/fb.h
rename to include/mach/mxs/fb.h
diff --git a/arch/arm/mach-mxs/include/mach/generic.h b/include/mach/mxs/generic.h
similarity index 100%
rename from arch/arm/mach-mxs/include/mach/generic.h
rename to include/mach/mxs/generic.h
diff --git a/arch/arm/mach-mxs/include/mach/imx-regs.h b/include/mach/mxs/imx-regs.h
similarity index 79%
rename from arch/arm/mach-mxs/include/mach/imx-regs.h
rename to include/mach/mxs/imx-regs.h
index 4aede1bc93..648b200bc5 100644
--- a/arch/arm/mach-mxs/include/mach/imx-regs.h
+++ b/include/mach/mxs/imx-regs.h
@@ -5,11 +5,11 @@
 # define _IMX_REGS_H
 
 #if defined CONFIG_ARCH_IMX23
-# include <mach/imx23-regs.h>
+#include <mach/mxs/imx23-regs.h>
 #endif
 
 #if defined CONFIG_ARCH_IMX28
-# include <mach/imx28-regs.h>
+#include <mach/mxs/imx28-regs.h>
 #endif
 
 #endif /* _IMX_REGS_H */
diff --git a/arch/arm/mach-mxs/include/mach/imx23-regs.h b/include/mach/mxs/imx23-regs.h
similarity index 100%
rename from arch/arm/mach-mxs/include/mach/imx23-regs.h
rename to include/mach/mxs/imx23-regs.h
diff --git a/arch/arm/mach-mxs/include/mach/imx23.h b/include/mach/mxs/imx23.h
similarity index 100%
rename from arch/arm/mach-mxs/include/mach/imx23.h
rename to include/mach/mxs/imx23.h
diff --git a/arch/arm/mach-mxs/include/mach/imx28-regs.h b/include/mach/mxs/imx28-regs.h
similarity index 100%
rename from arch/arm/mach-mxs/include/mach/imx28-regs.h
rename to include/mach/mxs/imx28-regs.h
diff --git a/arch/arm/mach-mxs/include/mach/imx28.h b/include/mach/mxs/imx28.h
similarity index 100%
rename from arch/arm/mach-mxs/include/mach/imx28.h
rename to include/mach/mxs/imx28.h
diff --git a/arch/arm/mach-mxs/include/mach/init.h b/include/mach/mxs/init.h
similarity index 100%
rename from arch/arm/mach-mxs/include/mach/init.h
rename to include/mach/mxs/init.h
diff --git a/arch/arm/mach-mxs/include/mach/iomux-imx23.h b/include/mach/mxs/iomux-imx23.h
similarity index 100%
rename from arch/arm/mach-mxs/include/mach/iomux-imx23.h
rename to include/mach/mxs/iomux-imx23.h
diff --git a/arch/arm/mach-mxs/include/mach/iomux-imx28.h b/include/mach/mxs/iomux-imx28.h
similarity index 100%
rename from arch/arm/mach-mxs/include/mach/iomux-imx28.h
rename to include/mach/mxs/iomux-imx28.h
diff --git a/arch/arm/mach-mxs/include/mach/iomux.h b/include/mach/mxs/iomux.h
similarity index 98%
rename from arch/arm/mach-mxs/include/mach/iomux.h
rename to include/mach/mxs/iomux.h
index 47e843e43f..b61661263e 100644
--- a/arch/arm/mach-mxs/include/mach/iomux.h
+++ b/include/mach/mxs/iomux.h
@@ -86,13 +86,13 @@
  */
 # define PORTF(bank,bit)	(BANK((bank) / 2) | BANKPIN((((bank) & 1) << 4) | (bit)) | ERROR((bit) & ~15) | ERROR((bank) & ~7))
 # define VE_2_5V		VOLTAGE(0)
-# include <mach/iomux-imx23.h>
+#include <mach/mxs/iomux-imx23.h>
 #endif
 
 #if defined CONFIG_ARCH_IMX28
 # define PORTF(bank,bit)	(BANK(bank) | BANKPIN(bit))
 # define VE_3_3V	VOLTAGE(1)
-# include <mach/iomux-imx28.h>
+#include <mach/mxs/iomux-imx28.h>
 #endif
 
 void imx_gpio_mode(uint32_t);
diff --git a/arch/arm/mach-mxs/include/mach/mci.h b/include/mach/mxs/mci.h
similarity index 100%
rename from arch/arm/mach-mxs/include/mach/mci.h
rename to include/mach/mxs/mci.h
diff --git a/arch/arm/mach-mxs/include/mach/ocotp.h b/include/mach/mxs/ocotp.h
similarity index 100%
rename from arch/arm/mach-mxs/include/mach/ocotp.h
rename to include/mach/mxs/ocotp.h
diff --git a/arch/arm/mach-mxs/include/mach/power.h b/include/mach/mxs/power.h
similarity index 100%
rename from arch/arm/mach-mxs/include/mach/power.h
rename to include/mach/mxs/power.h
diff --git a/arch/arm/mach-mxs/include/mach/regs-clkctrl-mx23.h b/include/mach/mxs/regs-clkctrl-mx23.h
similarity index 99%
rename from arch/arm/mach-mxs/include/mach/regs-clkctrl-mx23.h
rename to include/mach/mxs/regs-clkctrl-mx23.h
index 289b159b74..ad3e7a21b1 100644
--- a/arch/arm/mach-mxs/include/mach/regs-clkctrl-mx23.h
+++ b/include/mach/mxs/regs-clkctrl-mx23.h
@@ -13,7 +13,7 @@
 #ifndef __MX23_REGS_CLKCTRL_H__
 #define __MX23_REGS_CLKCTRL_H__
 
-#include <mach/regs-common.h>
+#include <mach/mxs/regs-common.h>
 
 #ifndef	__ASSEMBLY__
 struct mxs_clkctrl_regs {
diff --git a/arch/arm/mach-mxs/include/mach/regs-clkctrl-mx28.h b/include/mach/mxs/regs-clkctrl-mx28.h
similarity index 99%
rename from arch/arm/mach-mxs/include/mach/regs-clkctrl-mx28.h
rename to include/mach/mxs/regs-clkctrl-mx28.h
index aebb489d4b..ce01892274 100644
--- a/arch/arm/mach-mxs/include/mach/regs-clkctrl-mx28.h
+++ b/include/mach/mxs/regs-clkctrl-mx28.h
@@ -13,7 +13,7 @@
 #ifndef __MX28_REGS_CLKCTRL_H__
 #define __MX28_REGS_CLKCTRL_H__
 
-#include <mach/regs-common.h>
+#include <mach/mxs/regs-common.h>
 
 #ifndef	__ASSEMBLY__
 struct mxs_clkctrl_regs {
diff --git a/arch/arm/mach-mxs/include/mach/regs-common.h b/include/mach/mxs/regs-common.h
similarity index 100%
rename from arch/arm/mach-mxs/include/mach/regs-common.h
rename to include/mach/mxs/regs-common.h
diff --git a/arch/arm/mach-mxs/include/mach/regs-lradc.h b/include/mach/mxs/regs-lradc.h
similarity index 99%
rename from arch/arm/mach-mxs/include/mach/regs-lradc.h
rename to include/mach/mxs/regs-lradc.h
index 7f624be4c5..02e6b9bf09 100644
--- a/arch/arm/mach-mxs/include/mach/regs-lradc.h
+++ b/include/mach/mxs/regs-lradc.h
@@ -13,7 +13,7 @@
 #ifndef __MX28_REGS_LRADC_H__
 #define __MX28_REGS_LRADC_H__
 
-#include <mach/regs-common.h>
+#include <mach/mxs/regs-common.h>
 
 #ifndef	__ASSEMBLY__
 struct mxs_lradc_regs {
diff --git a/arch/arm/mach-mxs/include/mach/regs-power-mx28.h b/include/mach/mxs/regs-power-mx28.h
similarity index 99%
rename from arch/arm/mach-mxs/include/mach/regs-power-mx28.h
rename to include/mach/mxs/regs-power-mx28.h
index 7b7349662b..510305a2e2 100644
--- a/arch/arm/mach-mxs/include/mach/regs-power-mx28.h
+++ b/include/mach/mxs/regs-power-mx28.h
@@ -9,7 +9,7 @@
 #ifndef __MX28_REGS_POWER_H__
 #define __MX28_REGS_POWER_H__
 
-#include <mach/regs-common.h>
+#include <mach/mxs/regs-common.h>
 
 #ifndef	__ASSEMBLY__
 struct mxs_power_regs {
diff --git a/arch/arm/mach-mxs/include/mach/regs-rtc.h b/include/mach/mxs/regs-rtc.h
similarity index 99%
rename from arch/arm/mach-mxs/include/mach/regs-rtc.h
rename to include/mach/mxs/regs-rtc.h
index bd8fdad4f7..4d2e218e3b 100644
--- a/arch/arm/mach-mxs/include/mach/regs-rtc.h
+++ b/include/mach/mxs/regs-rtc.h
@@ -10,7 +10,7 @@
 #ifndef __MX28_REGS_RTC_H__
 #define __MX28_REGS_RTC_H__
 
-#include <mach/regs-common.h>
+#include <mach/mxs/regs-common.h>
 
 #ifndef	__ASSEMBLY__
 struct mxs_rtc_regs {
diff --git a/arch/arm/mach-mxs/include/mach/revision.h b/include/mach/mxs/revision.h
similarity index 100%
rename from arch/arm/mach-mxs/include/mach/revision.h
rename to include/mach/mxs/revision.h
diff --git a/arch/arm/mach-mxs/include/mach/ssp.h b/include/mach/mxs/ssp.h
similarity index 100%
rename from arch/arm/mach-mxs/include/mach/ssp.h
rename to include/mach/mxs/ssp.h
diff --git a/arch/arm/mach-mxs/include/mach/usb.h b/include/mach/mxs/usb.h
similarity index 100%
rename from arch/arm/mach-mxs/include/mach/usb.h
rename to include/mach/mxs/usb.h
-- 
2.30.2



