Delivery-date: Tue, 22 Apr 2025 07:27:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u76AF-003usy-16
	for lore@lore.pengutronix.de;
	Tue, 22 Apr 2025 07:27:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u76AD-0004Hh-Rr
	for lore@pengutronix.de; Tue, 22 Apr 2025 07:27:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KDGYJWWLfdqevl3+eNZhkDbCnM0QMx1SauJuetGG+o8=; b=1eOLVvyFbaSJcCy9lpPZKBnPrC
	otOA/7lKayAfldvTq5c6ptdz3xtrGsaAiNl0BhD03rC/qMcOgMJNszIT4D/gLki+zy2YQzAt8lqG4
	iH3Ap2TvnJpxGeaqSM1NlYpsuQ/tn3zW0PO9/I69z6jQpOHGryBCkTIU6M5PfsAGSPw+i0bd16BpD
	KHoMBe/QnVURg0tHQgeWl6u4Qr/zj8/9vfjH7L4vkAOu6vuri/j/tEJ7EKYAfz2vDiDj29ehFl//m
	a7Zw8MJPDI+rtQu5twhNRSZ7rqTfVeHA/uH4iWcbzlYSZr/HdseA24nm0bjdwtChlbT9XNOervODv
	kLMEzABw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u769i-00000005rMh-3ltW;
	Tue, 22 Apr 2025 05:26:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u769f-00000005rH9-1bzS
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 05:26:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u769W-0003je-4M; Tue, 22 Apr 2025 07:26:38 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u769V-001UvP-2n;
	Tue, 22 Apr 2025 07:26:37 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u769V-00EN4R-2W;
	Tue, 22 Apr 2025 07:26:37 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 22 Apr 2025 07:26:35 +0200
Message-Id: <20250422052635.3423961-10-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250422052635.3423961-1-a.fatoum@pengutronix.de>
References: <20250422052635.3423961-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250421_222647_458511_BF3C538B 
X-CRM114-Status: GOOD (  13.13  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 9/9] ARM: OMAP: beaglebone: add PBL SD xload support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

The existing "full" MLO image supports multiple boot media at once, but
the newcomer SD/MMC only image has the advantage of doing so in the same
build alongside barebox second stage.

This makes for easier integration in BSPs, so provide it as extra image
if CONFIG_OMAP_BUILD_IFT is disabled.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/beaglebone/lowlevel.c | 10 ++++++----
 arch/arm/mach-omap/Kconfig            |  8 ++++++--
 images/Makefile.am33xx                |  4 ++++
 3 files changed, 16 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boards/beaglebone/lowlevel.c b/arch/arm/boards/beaglebone/lowlevel.c
index fec4f177781c..05764fc9138b 100644
--- a/arch/arm/boards/beaglebone/lowlevel.c
+++ b/arch/arm/boards/beaglebone/lowlevel.c
@@ -16,6 +16,7 @@
 #include <mach/omap/syslib.h>
 #include <mach/omap/am33xx-mux.h>
 #include <mach/omap/am33xx-generic.h>
+#include <mach/omap/xload.h>
 
 #include "beaglebone.h"
 
@@ -116,9 +117,6 @@ static void __udelay(int us)
 static noinline int beaglebone_sram_init(void)
 {
 	uint32_t sdram_size;
-	void *fdt;
-
-	fdt = __dtb_z_am335x_bone_common_start;
 
 	if (is_beaglebone_black())
 		sdram_size = SZ_512M;
@@ -150,7 +148,11 @@ static noinline int beaglebone_sram_init(void)
 	 */
 	__udelay(3000);
 
-	barebox_arm_entry(OMAP_DRAM_ADDR_SPACE_START, sdram_size, fdt);
+	if (IS_ENABLED(CONFIG_OMAP_BUILD_IFT))
+		barebox_arm_entry(OMAP_DRAM_ADDR_SPACE_START, sdram_size,
+				  __dtb_z_am335x_bone_common_start);
+	else
+		am33xx_hsmmc_start_image();
 }
 
 ENTRY_FUNCTION(start_am33xx_beaglebone_sram, bootinfo, r1, r2)
diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
index e7a9b331125d..bf2ab75eaf68 100644
--- a/arch/arm/mach-omap/Kconfig
+++ b/arch/arm/mach-omap/Kconfig
@@ -60,12 +60,15 @@ config OMAP_GPMC
 	  NAND, OneNAND etc.
 
 config OMAP_BUILD_IFT
-	prompt "build ift binary (MLO)"
+	prompt "build ift binaries (MLO) only"
 	bool
 	help
-	  Say Y here if you want to build an MLO binary. On TI SoCs, this
+	  Say Y here if you want to build only MLO binaries. On TI SoCs, this
 	  binary is loaded to SRAM. It is responsible for initializing
 	  the SDRAM and possibly chainloading a full-featured barebox.
+	  If you say n here, barebox may still generate extra MLO binaries
+	  alongside second stage barebox binaries, but these are currently
+	  limited to only specific bootmedia as indicated in their file name.
 
 config OMAP_BUILD_SPI
 	prompt "build SPI binary"
@@ -153,6 +156,7 @@ config MACH_BEAGLE
 config MACH_BEAGLEBONE
 	bool "Texas Instrument's Beagle Bone"
 	select ARCH_AM33XX
+	select MCI_OMAP_HSMMC_PBL
 	help
 	  Say Y here if you are using Beagle Bone
 
diff --git a/images/Makefile.am33xx b/images/Makefile.am33xx
index a63def771ed3..2a1cf3a0c40b 100644
--- a/images/Makefile.am33xx
+++ b/images/Makefile.am33xx
@@ -132,6 +132,10 @@ pblb-$(CONFIG_MACH_BEAGLEBONE) += start_am33xx_beaglebone_sdram
 FILE_barebox-am33xx-beaglebone.img = start_am33xx_beaglebone_sdram.pblb
 am33xx-barebox-$(CONFIG_MACH_BEAGLEBONE) += barebox-am33xx-beaglebone.img
 
+pblb-$(CONFIG_MACH_BEAGLEBONE) += start_am33xx_beaglebone_sram
+FILE_barebox-am33xx-beaglebone-mlo.mmc.img = start_am33xx_beaglebone_sram.pblb.mlo
+am33xx-barebox-$(CONFIG_MACH_BEAGLEBONE) += barebox-am33xx-beaglebone-mlo.mmc.img
+
 pblb-$(CONFIG_MACH_BEAGLEBONE) += start_am33xx_beaglebone_sram
 FILE_barebox-am33xx-beaglebone-mlo.img = start_am33xx_beaglebone_sram.pblb.mlo
 am33xx-mlo-$(CONFIG_MACH_BEAGLEBONE) += barebox-am33xx-beaglebone-mlo.img
-- 
2.39.5



