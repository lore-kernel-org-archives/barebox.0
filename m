Delivery-date: Wed, 28 May 2025 14:19:48 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKFl6-001BZE-22
	for lore@lore.pengutronix.de;
	Wed, 28 May 2025 14:19:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKFl4-0000cU-Bk
	for lore@pengutronix.de; Wed, 28 May 2025 14:19:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ELObUIywOxAFD2TmkOmd18g4i1UHKL3hD6kNXlMgK+Y=; b=3RPM+Gfq2z8DCQ3FmQ7+5OI6m4
	9ujGr4tMHw+KvVlQKGPRFYroJ0gpJitmOYpWDdpGO6RLigbXtOfYOwb9UanxBPU+psIvTwVQA3EVY
	/mq/tJiDPQiAmvKUy8O9Ufm0WLHUX3KqgMwYMhMvIN2ynZ3M5pXFTWO4uC+llJdmLWZ7tbsepnCqH
	HYrrQetDJxPSLTed6j1IZYZlLTHM/Va3KdJIQ41U0GwC8yIit337CKaizCAi8FJ/nNhc3Wd0D9iDp
	sGAZxGew7/jFd58sYeEIv0SiR53E75WXyfFXp3laB6x3L89HtMUDeqaj7OESSwZ2HvYf4fcfYG3el
	5nkWwsGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKFkj-0000000D5QR-1AbI;
	Wed, 28 May 2025 12:19:25 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKEY1-0000000Cvyo-2TFL
	for barebox@bombadil.infradead.org;
	Wed, 28 May 2025 11:02:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=ELObUIywOxAFD2TmkOmd18g4i1UHKL3hD6kNXlMgK+Y=; b=gHvjW3XSujOOX6/OS353M/M3To
	BexVZXE3k/RB9yrOemQoGYxDvxbMZE6TXOw/bjlQ24Wv+M2Fw8r8n8WOasxMfFOQPNJT5oVNDmfPa
	qvhTGC0rBi3siXpJ5jJiTSJtRBLnocCZ++96vTWruVpCWwxta1ER9KIJQWD7pZvGQr5ie84txMfUf
	Nwv0RbPQyAPqmgzMVy8JJnpIaXJ35tIMJuxxskpzWzkt3oiSrgPoeWqxHIKj2IldimDqx1kU5WGQu
	wIXXFmqOrO/ZODFQygtvsAVnsMRq3l61SUM6S1Jl3Zz1Zxf+s/yvVr6gDZ6rR0kN6pJdu2M/XznAO
	N+P7TOFg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKEXw-0000000DXDq-3bs1
	for barebox@lists.infradead.org;
	Wed, 28 May 2025 11:02:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uKEXm-0001pA-GE; Wed, 28 May 2025 13:01:58 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uKEXm-000Zgz-0z;
	Wed, 28 May 2025 13:01:58 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uKEXm-00DuY0-0g;
	Wed, 28 May 2025 13:01:58 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 28 May 2025 12:50:39 +0200
Message-Id: <20250528105046.3270397-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250528105046.3270397-1-a.fatoum@pengutronix.de>
References: <20250528105046.3270397-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_120209_002210_D12A7528 
X-CRM114-Status: GOOD (  13.20  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 03/10] ARM: lib32: disable ATAGS support by default
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We haven't had any new platforms with ATAGS for many years, so it's
about time we make the support configurable and disable it by default.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .../migration-guides/migration-2025.07.0.rst  |   7 +
 arch/arm/Kconfig                              |  12 +-
 arch/arm/configs/animeo_ip_defconfig          |   1 +
 arch/arm/configs/at91rm9200ek_defconfig       |   1 +
 arch/arm/configs/at91sam9260ek_defconfig      |   1 +
 .../configs/at91sam9261ek_bootstrap_defconfig |   1 +
 arch/arm/configs/at91sam9261ek_defconfig      |   1 +
 arch/arm/configs/at91sam9g10ek_defconfig      |   1 +
 arch/arm/configs/at91sam9g20ek_defconfig      |   1 +
 arch/arm/configs/at91sam9m10g45ek_defconfig   |   1 +
 arch/arm/configs/at91sam9m10ihd_defconfig     |   1 +
 arch/arm/configs/at91sam9n12ek_defconfig      |   1 +
 arch/arm/configs/dss11_defconfig              |   1 +
 arch/arm/configs/haba_knx_lite_defconfig      |   1 +
 arch/arm/configs/imx23_defconfig              |   1 +
 arch/arm/configs/imx28_defconfig              |   1 +
 arch/arm/configs/kindle-mx50_defconfig        |   1 +
 arch/arm/configs/multi_v5_v6_defconfig        |   1 +
 arch/arm/configs/mvebu_defconfig              |   1 +
 arch/arm/configs/omap_defconfig               |   1 +
 arch/arm/configs/pm9261_defconfig             |   1 +
 arch/arm/configs/pm9263_defconfig             |   1 +
 arch/arm/configs/pm9g45_defconfig             |   1 +
 arch/arm/configs/qil_a9260_defconfig          |   1 +
 arch/arm/configs/qil_a9g20_defconfig          |   1 +
 arch/arm/configs/rockchip_v7a_defconfig       |   1 +
 arch/arm/configs/telit_evk_pro3_defconfig     |   1 +
 arch/arm/configs/tny_a9260_defconfig          |   1 +
 .../arm/configs/tny_a9263_bootstrap_defconfig |   1 +
 arch/arm/configs/tny_a9263_defconfig          |   1 +
 arch/arm/configs/tny_a9g20_defconfig          |   1 +
 arch/arm/configs/usb_a9260_defconfig          |   1 +
 .../arm/configs/usb_a9263_bootstrap_defconfig |   1 +
 arch/arm/configs/usb_a9263_defconfig          |   1 +
 arch/arm/configs/usb_a9g20_defconfig          |   1 +
 arch/arm/include/asm/armlinux.h               |  25 +-
 arch/arm/lib32/Makefile                       |   1 +
 arch/arm/lib32/armlinux.c                     | 234 +-----------------
 arch/arm/lib32/atags.c                        | 230 +++++++++++++++++
 arch/arm/mach-imx/Kconfig                     |   1 +
 40 files changed, 319 insertions(+), 224 deletions(-)
 create mode 100644 arch/arm/lib32/atags.c

diff --git a/Documentation/migration-guides/migration-2025.07.0.rst b/Documentation/migration-guides/migration-2025.07.0.rst
index 55f0baef6550..896d2552e9ea 100644
--- a/Documentation/migration-guides/migration-2025.07.0.rst
+++ b/Documentation/migration-guides/migration-2025.07.0.rst
@@ -1,2 +1,9 @@
 Release v2025.07.0
 ==================
+
+Configuration options
+---------------------
+
+* The legacy ARM 32-bit ATAGS mechanism is now disabled by default.
+  It can be re-enabled using the newly added ``CONFIG_BOOT_ATAGS`` option.
+  Use of ATAGS is deprecated. Users should migrate to OpenFirmware device trees.
diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 0b1dbd43a8f0..48ed6773cd86 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -328,7 +328,7 @@ config THUMB2_BAREBOX
 
 config ARM_BOARD_APPEND_ATAG
 	bool "Let board specific code to add ATAGs to be passed to the kernel"
-	depends on ARM_LINUX && !CPU_V8
+	depends on BOOT_ATAGS
 	help
 	  This option is purely to start some vendor provided kernels.
 	  ** DO NOT USE FOR YOUR OWN DESIGNS! **
@@ -468,6 +468,16 @@ config ARM_MODULE_PLTS
 	  Say y if your memory configuration puts the heap to far away from the
 	  barebox image, causing relocation out of range errors
 
+config BOOT_ATAGS
+	bool "Support booting with legacy ATAGS mechanism"
+	depends on ARM_LINUX && ARM32
+	help
+	  Add support for passing hardware information with the legacy ATAGS
+	  mechanism that preceded OpenFirmware device trees.
+
+	  Unless you have a very old kernel, say n here and enable BOOTM_OFTREE
+	  instead.
+
 config ARM_BOOTM_ELF
 	bool
 	depends on BOOTM
diff --git a/arch/arm/configs/animeo_ip_defconfig b/arch/arm/configs/animeo_ip_defconfig
index 90e0c72a06b0..864721be93b2 100644
--- a/arch/arm/configs/animeo_ip_defconfig
+++ b/arch/arm/configs/animeo_ip_defconfig
@@ -1,6 +1,7 @@
 CONFIG_ARCH_AT91=y
 CONFIG_ARCH_AT91SAM9260=y
 CONFIG_AEABI=y
+CONFIG_BOOT_ATAGS=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
diff --git a/arch/arm/configs/at91rm9200ek_defconfig b/arch/arm/configs/at91rm9200ek_defconfig
index 34dc4058ba29..665b5b80ef8e 100644
--- a/arch/arm/configs/at91rm9200ek_defconfig
+++ b/arch/arm/configs/at91rm9200ek_defconfig
@@ -1,4 +1,5 @@
 CONFIG_ARCH_AT91=y
+CONFIG_BOOT_ATAGS=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
diff --git a/arch/arm/configs/at91sam9260ek_defconfig b/arch/arm/configs/at91sam9260ek_defconfig
index db5d8d6652a0..1ea33a116065 100644
--- a/arch/arm/configs/at91sam9260ek_defconfig
+++ b/arch/arm/configs/at91sam9260ek_defconfig
@@ -2,6 +2,7 @@ CONFIG_ARCH_AT91=y
 CONFIG_ARCH_AT91SAM9260=y
 CONFIG_MACH_AT91SAM9260EK=y
 CONFIG_AEABI=y
+CONFIG_BOOT_ATAGS=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
diff --git a/arch/arm/configs/at91sam9261ek_bootstrap_defconfig b/arch/arm/configs/at91sam9261ek_bootstrap_defconfig
index 3811594b1a63..09cc5b23ed47 100644
--- a/arch/arm/configs/at91sam9261ek_bootstrap_defconfig
+++ b/arch/arm/configs/at91sam9261ek_bootstrap_defconfig
@@ -2,6 +2,7 @@ CONFIG_ARCH_AT91=y
 CONFIG_ARCH_AT91SAM9261=y
 CONFIG_AT91_BOOTSTRAP=y
 CONFIG_AEABI=y
+CONFIG_BOOT_ATAGS=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x27000
diff --git a/arch/arm/configs/at91sam9261ek_defconfig b/arch/arm/configs/at91sam9261ek_defconfig
index bf0df025e3b5..ad37108b31f2 100644
--- a/arch/arm/configs/at91sam9261ek_defconfig
+++ b/arch/arm/configs/at91sam9261ek_defconfig
@@ -1,6 +1,7 @@
 CONFIG_ARCH_AT91=y
 CONFIG_ARCH_AT91SAM9261=y
 CONFIG_AEABI=y
+CONFIG_BOOT_ATAGS=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
diff --git a/arch/arm/configs/at91sam9g10ek_defconfig b/arch/arm/configs/at91sam9g10ek_defconfig
index 02432f2971f4..d92047683a4c 100644
--- a/arch/arm/configs/at91sam9g10ek_defconfig
+++ b/arch/arm/configs/at91sam9g10ek_defconfig
@@ -1,6 +1,7 @@
 CONFIG_ARCH_AT91=y
 CONFIG_ARCH_AT91SAM9G10=y
 CONFIG_AEABI=y
+CONFIG_BOOT_ATAGS=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
diff --git a/arch/arm/configs/at91sam9g20ek_defconfig b/arch/arm/configs/at91sam9g20ek_defconfig
index 99dce447638d..7200f7a5b8ce 100644
--- a/arch/arm/configs/at91sam9g20ek_defconfig
+++ b/arch/arm/configs/at91sam9g20ek_defconfig
@@ -2,6 +2,7 @@ CONFIG_ARCH_AT91=y
 CONFIG_ARCH_AT91SAM9G20=y
 CONFIG_AT91_HAVE_2MMC=y
 CONFIG_AEABI=y
+CONFIG_BOOT_ATAGS=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
diff --git a/arch/arm/configs/at91sam9m10g45ek_defconfig b/arch/arm/configs/at91sam9m10g45ek_defconfig
index 17248c6504c3..d4988e58284d 100644
--- a/arch/arm/configs/at91sam9m10g45ek_defconfig
+++ b/arch/arm/configs/at91sam9m10g45ek_defconfig
@@ -2,6 +2,7 @@ CONFIG_ARCH_AT91=y
 CONFIG_ARCH_AT91SAM9G45=y
 CONFIG_MACH_AT91SAM9M10G45EK=y
 CONFIG_AEABI=y
+CONFIG_BOOT_ATAGS=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
diff --git a/arch/arm/configs/at91sam9m10ihd_defconfig b/arch/arm/configs/at91sam9m10ihd_defconfig
index be0a539f3eb9..f50025375f45 100644
--- a/arch/arm/configs/at91sam9m10ihd_defconfig
+++ b/arch/arm/configs/at91sam9m10ihd_defconfig
@@ -1,6 +1,7 @@
 CONFIG_ARCH_AT91=y
 CONFIG_ARCH_AT91SAM9G45=y
 CONFIG_AEABI=y
+CONFIG_BOOT_ATAGS=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
diff --git a/arch/arm/configs/at91sam9n12ek_defconfig b/arch/arm/configs/at91sam9n12ek_defconfig
index 8e6439aa7cad..4ef07dba2c94 100644
--- a/arch/arm/configs/at91sam9n12ek_defconfig
+++ b/arch/arm/configs/at91sam9n12ek_defconfig
@@ -2,6 +2,7 @@ CONFIG_TEXT_BASE=0x26f00000
 CONFIG_ARCH_AT91=y
 CONFIG_ARCH_AT91SAM9N12=y
 CONFIG_AEABI=y
+CONFIG_BOOT_ATAGS=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_IMAGE_COMPRESSION_XZKERN=y
 CONFIG_MMU=y
diff --git a/arch/arm/configs/dss11_defconfig b/arch/arm/configs/dss11_defconfig
index ecab7a6b14c9..af37fc0681a8 100644
--- a/arch/arm/configs/dss11_defconfig
+++ b/arch/arm/configs/dss11_defconfig
@@ -1,6 +1,7 @@
 CONFIG_ARCH_AT91=y
 CONFIG_ARCH_AT91SAM9G20=y
 CONFIG_MACH_DSS11=y
+CONFIG_BOOT_ATAGS=y
 CONFIG_MTD_NAND_ATMEL_BUSWIDTH_16=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
diff --git a/arch/arm/configs/haba_knx_lite_defconfig b/arch/arm/configs/haba_knx_lite_defconfig
index 2c68ed222aca..7d0201b3481a 100644
--- a/arch/arm/configs/haba_knx_lite_defconfig
+++ b/arch/arm/configs/haba_knx_lite_defconfig
@@ -2,6 +2,7 @@ CONFIG_TEXT_BASE=0x27f00000
 CONFIG_ARCH_AT91=y
 CONFIG_ARCH_AT91SAM9G20=y
 CONFIG_MACH_HABA_KNX_LITE=y
+CONFIG_BOOT_ATAGS=y
 CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_MMU=y
diff --git a/arch/arm/configs/imx23_defconfig b/arch/arm/configs/imx23_defconfig
index 48bf14a39006..aa47c6089ffc 100644
--- a/arch/arm/configs/imx23_defconfig
+++ b/arch/arm/configs/imx23_defconfig
@@ -4,6 +4,7 @@ CONFIG_MACH_CHUMBY=y
 CONFIG_MACH_IMX233_OLINUXINO=y
 CONFIG_MXS_OCOTP=y
 CONFIG_AEABI=y
+CONFIG_BOOT_ATAGS=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
 CONFIG_MMU=y
diff --git a/arch/arm/configs/imx28_defconfig b/arch/arm/configs/imx28_defconfig
index 8e66983e3582..a864c05b20d6 100644
--- a/arch/arm/configs/imx28_defconfig
+++ b/arch/arm/configs/imx28_defconfig
@@ -5,6 +5,7 @@ CONFIG_MACH_MX28EVK=y
 CONFIG_MACH_DUCKBILL=y
 CONFIG_MACH_CFA10036=y
 CONFIG_AEABI=y
+CONFIG_BOOT_ATAGS=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
 CONFIG_MMU=y
diff --git a/arch/arm/configs/kindle-mx50_defconfig b/arch/arm/configs/kindle-mx50_defconfig
index 1ceef8088ace..4694514f549f 100644
--- a/arch/arm/configs/kindle-mx50_defconfig
+++ b/arch/arm/configs/kindle-mx50_defconfig
@@ -1,6 +1,7 @@
 CONFIG_ARCH_IMX=y
 CONFIG_MACH_KINDLE_MX50=y
 CONFIG_THUMB2_BAREBOX=y
+CONFIG_BOOT_ATAGS=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
 CONFIG_IMAGE_COMPRESSION_XZKERN=y
diff --git a/arch/arm/configs/multi_v5_v6_defconfig b/arch/arm/configs/multi_v5_v6_defconfig
index 7748ec43b0ce..2afc072e129c 100644
--- a/arch/arm/configs/multi_v5_v6_defconfig
+++ b/arch/arm/configs/multi_v5_v6_defconfig
@@ -10,6 +10,7 @@ CONFIG_IMX_IIM=y
 CONFIG_IMX_IIM_FUSE_BLOW=y
 CONFIG_BOARD_GENERIC_DT=y
 CONFIG_AEABI=y
+CONFIG_BOOT_ATAGS=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
 CONFIG_MMU=y
diff --git a/arch/arm/configs/mvebu_defconfig b/arch/arm/configs/mvebu_defconfig
index 6a436f3abdb7..f446d4b65989 100644
--- a/arch/arm/configs/mvebu_defconfig
+++ b/arch/arm/configs/mvebu_defconfig
@@ -12,6 +12,7 @@ CONFIG_MACH_GLOBALSCALE_GURUPLUG=y
 CONFIG_MACH_PLATHOME_OPENBLOCKS_A6=y
 CONFIG_MACH_USI_TOPKICK=y
 CONFIG_AEABI=y
+CONFIG_BOOT_ATAGS=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_MMU=y
 CONFIG_MALLOC_SIZE=0x0
diff --git a/arch/arm/configs/omap_defconfig b/arch/arm/configs/omap_defconfig
index 5c86a8f47a8f..a3e7629afab1 100644
--- a/arch/arm/configs/omap_defconfig
+++ b/arch/arm/configs/omap_defconfig
@@ -10,6 +10,7 @@ CONFIG_MACH_PHYTEC_SOM_AM335X=y
 CONFIG_MACH_VSCOM_BALTOS=y
 CONFIG_MACH_WAGO_PFC_AM35XX=y
 CONFIG_THUMB2_BAREBOX=y
+CONFIG_BOOT_ATAGS=y
 CONFIG_ARM_BOARD_APPEND_ATAG=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
diff --git a/arch/arm/configs/pm9261_defconfig b/arch/arm/configs/pm9261_defconfig
index 8e2d21664b8a..f3660b052798 100644
--- a/arch/arm/configs/pm9261_defconfig
+++ b/arch/arm/configs/pm9261_defconfig
@@ -1,6 +1,7 @@
 CONFIG_ARCH_AT91=y
 CONFIG_ARCH_AT91SAM9261=y
 CONFIG_MACH_PM9261=y
+CONFIG_BOOT_ATAGS=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_PROMPT="PM9261:"
 CONFIG_HUSH_FANCY_PROMPT=y
diff --git a/arch/arm/configs/pm9263_defconfig b/arch/arm/configs/pm9263_defconfig
index 2b7149c058b8..2b0e971e9c52 100644
--- a/arch/arm/configs/pm9263_defconfig
+++ b/arch/arm/configs/pm9263_defconfig
@@ -1,5 +1,6 @@
 CONFIG_ARCH_AT91=y
 CONFIG_ARCH_AT91SAM9263=y
+CONFIG_BOOT_ATAGS=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_PROMPT_HUSH_PS2="y"
 CONFIG_CMDLINE_EDITING=y
diff --git a/arch/arm/configs/pm9g45_defconfig b/arch/arm/configs/pm9g45_defconfig
index 969dd7a83074..061ea0e70c1b 100644
--- a/arch/arm/configs/pm9g45_defconfig
+++ b/arch/arm/configs/pm9g45_defconfig
@@ -2,6 +2,7 @@ CONFIG_ARCH_AT91=y
 CONFIG_ARCH_AT91SAM9G45=y
 CONFIG_MACH_PM9G45=y
 CONFIG_AEABI=y
+CONFIG_BOOT_ATAGS=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
diff --git a/arch/arm/configs/qil_a9260_defconfig b/arch/arm/configs/qil_a9260_defconfig
index 1ed7fc7ede0d..9949a1c785d0 100644
--- a/arch/arm/configs/qil_a9260_defconfig
+++ b/arch/arm/configs/qil_a9260_defconfig
@@ -3,6 +3,7 @@ CONFIG_ARCH_AT91SAM9260=y
 CONFIG_MACH_QIL_A9260=y
 CONFIG_CALAO_MB_QIL_A9260=y
 CONFIG_AEABI=y
+CONFIG_BOOT_ATAGS=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
diff --git a/arch/arm/configs/qil_a9g20_defconfig b/arch/arm/configs/qil_a9g20_defconfig
index 19748e355530..0eef133d877e 100644
--- a/arch/arm/configs/qil_a9g20_defconfig
+++ b/arch/arm/configs/qil_a9g20_defconfig
@@ -3,6 +3,7 @@ CONFIG_ARCH_AT91SAM9G20=y
 CONFIG_MACH_QIL_A9G20=y
 CONFIG_CALAO_MB_QIL_A9260=y
 CONFIG_AEABI=y
+CONFIG_BOOT_ATAGS=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
diff --git a/arch/arm/configs/rockchip_v7a_defconfig b/arch/arm/configs/rockchip_v7a_defconfig
index 67f5b5e8446f..f69320715695 100644
--- a/arch/arm/configs/rockchip_v7a_defconfig
+++ b/arch/arm/configs/rockchip_v7a_defconfig
@@ -4,6 +4,7 @@ CONFIG_MACH_RADXA_ROCK=y
 CONFIG_MACH_PHYTEC_SOM_RK3288=y
 CONFIG_BOARD_GENERIC_DT=y
 CONFIG_THUMB2_BAREBOX=y
+CONFIG_BOOT_ATAGS=y
 CONFIG_ARM_BOARD_APPEND_ATAG=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
diff --git a/arch/arm/configs/telit_evk_pro3_defconfig b/arch/arm/configs/telit_evk_pro3_defconfig
index 72246f3675cc..ead5c5826929 100644
--- a/arch/arm/configs/telit_evk_pro3_defconfig
+++ b/arch/arm/configs/telit_evk_pro3_defconfig
@@ -2,6 +2,7 @@ CONFIG_ARCH_AT91=y
 CONFIG_ARCH_AT91SAM9260=y
 CONFIG_MACH_GE863=y
 CONFIG_AEABI=y
+CONFIG_BOOT_ATAGS=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
diff --git a/arch/arm/configs/tny_a9260_defconfig b/arch/arm/configs/tny_a9260_defconfig
index 72135a7277c8..e7be7ee912f4 100644
--- a/arch/arm/configs/tny_a9260_defconfig
+++ b/arch/arm/configs/tny_a9260_defconfig
@@ -3,6 +3,7 @@ CONFIG_ARCH_AT91SAM9260=y
 CONFIG_MACH_TNY_A9260=y
 CONFIG_CALAO_MOB_TNY_MD2=y
 CONFIG_AEABI=y
+CONFIG_BOOT_ATAGS=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
diff --git a/arch/arm/configs/tny_a9263_bootstrap_defconfig b/arch/arm/configs/tny_a9263_bootstrap_defconfig
index 80b42f5f86f1..76c0bd33a0b9 100644
--- a/arch/arm/configs/tny_a9263_bootstrap_defconfig
+++ b/arch/arm/configs/tny_a9263_bootstrap_defconfig
@@ -2,6 +2,7 @@ CONFIG_ARCH_AT91=y
 CONFIG_ARCH_AT91SAM9263=y
 CONFIG_MACH_TNY_A9263=y
 CONFIG_AEABI=y
+CONFIG_BOOT_ATAGS=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ENVIRONMENT_VARIABLES=y
 CONFIG_MMU=y
diff --git a/arch/arm/configs/tny_a9263_defconfig b/arch/arm/configs/tny_a9263_defconfig
index e0448cf187ab..f33d08c331d9 100644
--- a/arch/arm/configs/tny_a9263_defconfig
+++ b/arch/arm/configs/tny_a9263_defconfig
@@ -3,6 +3,7 @@ CONFIG_ARCH_AT91SAM9263=y
 CONFIG_MACH_TNY_A9263=y
 CONFIG_CALAO_MOB_TNY_MD2=y
 CONFIG_AEABI=y
+CONFIG_BOOT_ATAGS=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
diff --git a/arch/arm/configs/tny_a9g20_defconfig b/arch/arm/configs/tny_a9g20_defconfig
index 52bbae67d9f7..d404b12b3d93 100644
--- a/arch/arm/configs/tny_a9g20_defconfig
+++ b/arch/arm/configs/tny_a9g20_defconfig
@@ -3,6 +3,7 @@ CONFIG_ARCH_AT91SAM9G20=y
 CONFIG_MACH_TNY_A9G20=y
 CONFIG_CALAO_MOB_TNY_MD2=y
 CONFIG_AEABI=y
+CONFIG_BOOT_ATAGS=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
diff --git a/arch/arm/configs/usb_a9260_defconfig b/arch/arm/configs/usb_a9260_defconfig
index 47d0c633bbf0..fddced5ef0e7 100644
--- a/arch/arm/configs/usb_a9260_defconfig
+++ b/arch/arm/configs/usb_a9260_defconfig
@@ -2,6 +2,7 @@ CONFIG_ARCH_AT91=y
 CONFIG_ARCH_AT91SAM9260=y
 CONFIG_MACH_USB_A9260=y
 CONFIG_AEABI=y
+CONFIG_BOOT_ATAGS=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
diff --git a/arch/arm/configs/usb_a9263_bootstrap_defconfig b/arch/arm/configs/usb_a9263_bootstrap_defconfig
index 2adf1143891e..9df009d65b8e 100644
--- a/arch/arm/configs/usb_a9263_bootstrap_defconfig
+++ b/arch/arm/configs/usb_a9263_bootstrap_defconfig
@@ -3,6 +3,7 @@ CONFIG_ARCH_AT91SAM9263=y
 CONFIG_MACH_USB_A9263=y
 CONFIG_AT91_BOOTSTRAP=y
 CONFIG_AEABI=y
+CONFIG_BOOT_ATAGS=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ENVIRONMENT_VARIABLES=y
 CONFIG_MMU=y
diff --git a/arch/arm/configs/usb_a9263_defconfig b/arch/arm/configs/usb_a9263_defconfig
index 51494ad71284..1656ff4176b6 100644
--- a/arch/arm/configs/usb_a9263_defconfig
+++ b/arch/arm/configs/usb_a9263_defconfig
@@ -2,6 +2,7 @@ CONFIG_ARCH_AT91=y
 CONFIG_ARCH_AT91SAM9263=y
 CONFIG_MACH_USB_A9263=y
 CONFIG_AEABI=y
+CONFIG_BOOT_ATAGS=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
diff --git a/arch/arm/configs/usb_a9g20_defconfig b/arch/arm/configs/usb_a9g20_defconfig
index 56f78ba7a809..36c5203d5162 100644
--- a/arch/arm/configs/usb_a9g20_defconfig
+++ b/arch/arm/configs/usb_a9g20_defconfig
@@ -2,6 +2,7 @@ CONFIG_ARCH_AT91=y
 CONFIG_ARCH_AT91SAM9G20=y
 CONFIG_MACH_USB_A9G20=y
 CONFIG_AEABI=y
+CONFIG_BOOT_ATAGS=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
diff --git a/arch/arm/include/asm/armlinux.h b/arch/arm/include/asm/armlinux.h
index c648ef3d78d0..871664824643 100644
--- a/arch/arm/include/asm/armlinux.h
+++ b/arch/arm/include/asm/armlinux.h
@@ -6,21 +6,38 @@
 #include <asm/memory.h>
 #include <asm/setup.h>
 #include <asm/secure.h>
+#include <linux/bug.h>
 
-#if defined CONFIG_ARM_LINUX && defined CONFIG_CPU_32
+struct tag;
+
+#if defined CONFIG_BOOT_ATAGS
 void armlinux_set_bootparams(void *params);
+struct tag *armlinux_get_bootparams(void);
 void armlinux_set_architecture(unsigned architecture);
+unsigned armlinux_get_architecture(void);
 void armlinux_set_revision(unsigned int);
 void armlinux_set_serial(u64);
+void armlinux_setup_tags(unsigned long initrd_address,
+			 unsigned long initrd_size, int swap);
 #else
 static inline void armlinux_set_bootparams(void *params)
 {
 }
 
+static inline struct tag *armlinux_get_bootparams(void)
+{
+	BUG();
+}
+
 static inline void armlinux_set_architecture(unsigned architecture)
 {
 }
 
+static inline unsigned armlinux_get_architecture(void)
+{
+	return 0;
+}
+
 static inline void armlinux_set_revision(unsigned int rev)
 {
 }
@@ -28,8 +45,12 @@ static inline void armlinux_set_revision(unsigned int rev)
 static inline void armlinux_set_serial(u64 serial)
 {
 }
-#endif
 
+static inline void armlinux_setup_tags(unsigned long initrd_address,
+				       unsigned long initrd_size, int swap)
+{
+}
+#endif
 #if defined CONFIG_ARM_BOARD_APPEND_ATAG
 void armlinux_set_atag_appender(struct tag *(*)(struct tag *));
 #else
diff --git a/arch/arm/lib32/Makefile b/arch/arm/lib32/Makefile
index a139a80fb849..f76010e93350 100644
--- a/arch/arm/lib32/Makefile
+++ b/arch/arm/lib32/Makefile
@@ -5,6 +5,7 @@ obj-$(CONFIG_CMD_BOOTZ)	+= bootz.o
 obj-$(CONFIG_BOOTM)     += bootm.o
 obj-$(CONFIG_BOOTM_OPTEE) += start-kernel-optee.o
 obj-$(CONFIG_CMD_BOOTU) += bootu.o
+obj-$(CONFIG_BOOT_ATAGS) += atags.o
 obj-y	+= div0.o
 obj-y	+= findbit.o
 obj-y	+= io.o
diff --git a/arch/arm/lib32/armlinux.c b/arch/arm/lib32/armlinux.c
index 56f278d3dbae..6890d9cb6fda 100644
--- a/arch/arm/lib32/armlinux.c
+++ b/arch/arm/lib32/armlinux.c
@@ -28,224 +28,6 @@
 #include <asm/secure.h>
 #include <asm/boot.h>
 
-static struct tag *params;
-static void *armlinux_bootparams = NULL;
-
-static unsigned armlinux_architecture;
-static u32 armlinux_system_rev;
-static u64 armlinux_system_serial;
-
-BAREBOX_MAGICVAR(armlinux_architecture, "ARM machine ID");
-BAREBOX_MAGICVAR(armlinux_system_rev, "ARM system revision");
-BAREBOX_MAGICVAR(armlinux_system_serial, "ARM system serial");
-
-void armlinux_set_architecture(unsigned architecture)
-{
-	export_env_ull("armlinux_architecture", architecture);
-	armlinux_architecture = architecture;
-}
-
-static unsigned armlinux_get_architecture(void)
-{
-	getenv_uint("armlinux_architecture", &armlinux_architecture);
-
-	return armlinux_architecture;
-}
-
-void armlinux_set_revision(unsigned int rev)
-{
-	export_env_ull("armlinux_system_rev", rev);
-	armlinux_system_rev = rev;
-}
-
-static unsigned int armlinux_get_revision(void)
-{
-	getenv_uint("armlinux_system_rev", &armlinux_system_rev);
-
-	return armlinux_system_rev;
-}
-
-void armlinux_set_serial(u64 serial)
-{
-	export_env_ull("armlinux_system_serial", serial);
-	armlinux_system_serial = serial;
-}
-
-static u64 armlinux_get_serial(void)
-{
-	getenv_ull("armlinux_system_serial", &armlinux_system_serial);
-
-	return armlinux_system_serial;
-}
-
-void armlinux_set_bootparams(void *params)
-{
-	armlinux_bootparams = params;
-}
-
-static struct tag *armlinux_get_bootparams(void)
-{
-	struct memory_bank *mem;
-
-	if (armlinux_bootparams)
-		return armlinux_bootparams;
-
-	for_each_memory_bank(mem)
-		return (void *)mem->start + 0x100;
-
-	BUG();
-}
-
-static struct tag *(*atag_appender)(struct tag *);
-
-#if defined CONFIG_ARM_BOARD_APPEND_ATAG
-void armlinux_set_atag_appender(struct tag *(*func)(struct tag *))
-{
-	atag_appender = func;
-}
-#endif
-
-static void setup_start_tag(void)
-{
-	params = armlinux_get_bootparams();
-
-	params->hdr.tag = ATAG_CORE;
-	params->hdr.size = tag_size(tag_core);
-
-	params->u.core.flags = 0;
-	params->u.core.pagesize = 0;
-	params->u.core.rootdev = 0;
-
-	params = tag_next(params);
-}
-
-static void setup_memory_tags(void)
-{
-	struct memory_bank *bank;
-
-	for_each_memory_bank(bank) {
-		params->hdr.tag = ATAG_MEM;
-		params->hdr.size = tag_size(tag_mem32);
-
-		params->u.mem.start = bank->start;
-		params->u.mem.size = bank->size;
-
-		params = tag_next(params);
-	}
-}
-
-static void setup_commandline_tag(const char *commandline, int swap)
-{
-	const char *p;
-	size_t words;
-
-	if (!commandline)
-		return;
-
-	/* eat leading white space */
-	for (p = commandline; *p == ' '; p++) ;
-
-	/*
-	 * skip non-existent command lines so the kernel will still
-	 * use its default command line.
-	 */
-	if (*p == '\0')
-		return;
-
-	words = (strlen(p) + 1 /* NUL */ + 3 /* round up */) >> 2;
-	params->hdr.tag = ATAG_CMDLINE;
-	params->hdr.size = (sizeof(struct tag_header) >> 2) + words;
-
-	strcpy(params->u.cmdline.cmdline, p);
-
-#ifdef CONFIG_BOOT_ENDIANNESS_SWITCH
-	if (swap) {
-		u32 *cmd = (u32 *)params->u.cmdline.cmdline;
-		while (words--)
-			cmd[words] = swab32(cmd[words]);
-	}
-#endif
-
-	params = tag_next(params);
-}
-
-static void setup_revision_tag(void)
-{
-	u32 system_rev = armlinux_get_revision();
-
-	if (system_rev) {
-		params->hdr.tag = ATAG_REVISION;
-		params->hdr.size = tag_size(tag_revision);
-
-		params->u.revision.rev = system_rev;
-
-		params = tag_next(params);
-	}
-}
-
-static void setup_serial_tag(void)
-{
-	u64 system_serial = armlinux_get_serial();
-
-	if (system_serial) {
-		params->hdr.tag = ATAG_SERIAL;
-		params->hdr.size = tag_size(tag_serialnr);
-
-		params->u.serialnr.low  = system_serial & 0xffffffff;
-		params->u.serialnr.high = system_serial >> 32;
-
-		params = tag_next(params);
-	}
-}
-
-static void setup_initrd_tag(unsigned long start, unsigned long size)
-{
-	/* an ATAG_INITRD node tells the kernel where the compressed
-	 * ramdisk can be found. ATAG_RDIMG is a better name, actually.
-	 */
-	params->hdr.tag = ATAG_INITRD2;
-	params->hdr.size = tag_size(tag_initrd);
-
-	params->u.initrd.start = start;
-	params->u.initrd.size = size;
-
-	params = tag_next(params);
-}
-
-static void setup_end_tag (void)
-{
-	params->hdr.tag = ATAG_NONE;
-	params->hdr.size = 0;
-}
-
-static void setup_tags(unsigned long initrd_address,
-		unsigned long initrd_size, int swap)
-{
-	const char *commandline = linux_bootargs_get();
-
-	setup_start_tag();
-	if (IS_ENABLED(CONFIG_ARM_BOARD_PREPEND_ATAG) && atag_appender)
-		params = atag_appender(params);
-
-	setup_memory_tags();
-	setup_commandline_tag(commandline, swap);
-
-	if (initrd_size)
-		setup_initrd_tag(initrd_address, initrd_size);
-
-	setup_revision_tag();
-	setup_serial_tag();
-	if (IS_ENABLED(CONFIG_ARM_BOARD_APPEND_ATAG) && atag_appender &&
-			!IS_ENABLED(CONFIG_ARM_BOARD_PREPEND_ATAG))
-		params = atag_appender(params);
-
-	setup_end_tag();
-
-	printf("commandline: %s\n"
-	       "arch_number: %u\n", commandline, armlinux_get_architecture());
-
-}
-
 void start_kernel_optee(void *optee, void *kernel, void *oftree);
 
 void start_linux(void *adr, int swap, unsigned long initrd_address,
@@ -265,15 +47,25 @@ void start_linux(void *adr, int swap, unsigned long initrd_address,
 	if (oftree) {
 		pr_debug("booting kernel with devicetree\n");
 		params = virt_to_phys(oftree);
-	} else {
+		architecture = ~0;
+	} else if (IS_ENABLED(CONFIG_BOOT_ATAGS)) {
+		pr_debug("booting kernel with ATAGS\n");
+
 		params = virt_to_phys(armlinux_get_bootparams());
 
 		if (params < PAGE_SIZE)
 			zero_page_access();
 
-		setup_tags(initrd_address, initrd_size, swap);
+		armlinux_setup_tags(initrd_address, initrd_size, swap);
+		architecture = armlinux_get_architecture();
+	} else {
+		static struct tag dummy = {
+			.hdr.tag = ATAG_NONE, .hdr.size = 0
+		};
+		params = virt_to_phys(&dummy);
+		architecture = 0;
+		pr_debug("booting kernel without external device tree\n");
 	}
-	architecture = armlinux_get_architecture();
 
 	shutdown_barebox();
 
diff --git a/arch/arm/lib32/atags.c b/arch/arm/lib32/atags.c
new file mode 100644
index 000000000000..d567a13563b6
--- /dev/null
+++ b/arch/arm/lib32/atags.c
@@ -0,0 +1,230 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+// SPDX-FileCopyrightText: 2002 Sysgo Real-Time Solutions GmbH (http://www.elinos.com, Marius Groeger <mgroeger@sysgo.de>)
+// SPDX-FileCopyrightText: 2001 Erik Mouw <J.A.K.Mouw@its.tudelft.nl>
+
+#include <bootargs.h>
+#include <common.h>
+#include <environment.h>
+#include <xfuncs.h>
+#include <magicvar.h>
+
+#include <asm/setup.h>
+#include <asm/armlinux.h>
+
+static struct tag *params;
+static void *armlinux_bootparams = NULL;
+
+static unsigned armlinux_architecture;
+static u32 armlinux_system_rev;
+static u64 armlinux_system_serial;
+
+BAREBOX_MAGICVAR(armlinux_architecture, "ARM machine ID");
+BAREBOX_MAGICVAR(armlinux_system_rev, "ARM system revision");
+BAREBOX_MAGICVAR(armlinux_system_serial, "ARM system serial");
+
+void armlinux_set_architecture(unsigned architecture)
+{
+	export_env_ull("armlinux_architecture", architecture);
+	armlinux_architecture = architecture;
+}
+
+unsigned armlinux_get_architecture(void)
+{
+	getenv_uint("armlinux_architecture", &armlinux_architecture);
+
+	return armlinux_architecture;
+}
+
+void armlinux_set_revision(unsigned int rev)
+{
+	export_env_ull("armlinux_system_rev", rev);
+	armlinux_system_rev = rev;
+}
+
+static unsigned int armlinux_get_revision(void)
+{
+	getenv_uint("armlinux_system_rev", &armlinux_system_rev);
+
+	return armlinux_system_rev;
+}
+
+void armlinux_set_serial(u64 serial)
+{
+	export_env_ull("armlinux_system_serial", serial);
+	armlinux_system_serial = serial;
+}
+
+static u64 armlinux_get_serial(void)
+{
+	getenv_ull("armlinux_system_serial", &armlinux_system_serial);
+
+	return armlinux_system_serial;
+}
+
+void armlinux_set_bootparams(void *params)
+{
+	armlinux_bootparams = params;
+}
+
+struct tag *armlinux_get_bootparams(void)
+{
+	struct memory_bank *mem;
+
+	if (armlinux_bootparams)
+		return armlinux_bootparams;
+
+	for_each_memory_bank(mem)
+		return (void *)mem->start + 0x100;
+
+	BUG();
+}
+
+static struct tag *(*atag_appender)(struct tag *);
+
+#if defined CONFIG_ARM_BOARD_APPEND_ATAG
+void armlinux_set_atag_appender(struct tag *(*func)(struct tag *))
+{
+	atag_appender = func;
+}
+#endif
+
+static void setup_start_tag(void)
+{
+	params = armlinux_get_bootparams();
+
+	params->hdr.tag = ATAG_CORE;
+	params->hdr.size = tag_size(tag_core);
+
+	params->u.core.flags = 0;
+	params->u.core.pagesize = 0;
+	params->u.core.rootdev = 0;
+
+	params = tag_next(params);
+}
+
+static void setup_memory_tags(void)
+{
+	struct memory_bank *bank;
+
+	for_each_memory_bank(bank) {
+		params->hdr.tag = ATAG_MEM;
+		params->hdr.size = tag_size(tag_mem32);
+
+		params->u.mem.start = bank->start;
+		params->u.mem.size = bank->size;
+
+		params = tag_next(params);
+	}
+}
+
+static void setup_commandline_tag(const char *commandline, int swap)
+{
+	const char *p;
+	size_t words;
+
+	if (!commandline)
+		return;
+
+	/* eat leading white space */
+	for (p = commandline; *p == ' '; p++) ;
+
+	/*
+	 * skip non-existent command lines so the kernel will still
+	 * use its default command line.
+	 */
+	if (*p == '\0')
+		return;
+
+	words = (strlen(p) + 1 /* NUL */ + 3 /* round up */) >> 2;
+	params->hdr.tag = ATAG_CMDLINE;
+	params->hdr.size = (sizeof(struct tag_header) >> 2) + words;
+
+	strcpy(params->u.cmdline.cmdline, p);
+
+#ifdef CONFIG_BOOT_ENDIANNESS_SWITCH
+	if (swap) {
+		u32 *cmd = (u32 *)params->u.cmdline.cmdline;
+		while (words--)
+			cmd[words] = swab32(cmd[words]);
+	}
+#endif
+
+	params = tag_next(params);
+}
+
+static void setup_revision_tag(void)
+{
+	u32 system_rev = armlinux_get_revision();
+
+	if (system_rev) {
+		params->hdr.tag = ATAG_REVISION;
+		params->hdr.size = tag_size(tag_revision);
+
+		params->u.revision.rev = system_rev;
+
+		params = tag_next(params);
+	}
+}
+
+static void setup_serial_tag(void)
+{
+	u64 system_serial = armlinux_get_serial();
+
+	if (system_serial) {
+		params->hdr.tag = ATAG_SERIAL;
+		params->hdr.size = tag_size(tag_serialnr);
+
+		params->u.serialnr.low  = system_serial & 0xffffffff;
+		params->u.serialnr.high = system_serial >> 32;
+
+		params = tag_next(params);
+	}
+}
+
+static void setup_initrd_tag(unsigned long start, unsigned long size)
+{
+	/* an ATAG_INITRD node tells the kernel where the compressed
+	 * ramdisk can be found. ATAG_RDIMG is a better name, actually.
+	 */
+	params->hdr.tag = ATAG_INITRD2;
+	params->hdr.size = tag_size(tag_initrd);
+
+	params->u.initrd.start = start;
+	params->u.initrd.size = size;
+
+	params = tag_next(params);
+}
+
+static void setup_end_tag (void)
+{
+	params->hdr.tag = ATAG_NONE;
+	params->hdr.size = 0;
+}
+
+void armlinux_setup_tags(unsigned long initrd_address,
+			 unsigned long initrd_size, int swap)
+{
+	const char *commandline = linux_bootargs_get();
+
+	setup_start_tag();
+	if (IS_ENABLED(CONFIG_ARM_BOARD_PREPEND_ATAG) && atag_appender)
+		params = atag_appender(params);
+
+	setup_memory_tags();
+	setup_commandline_tag(commandline, swap);
+
+	if (initrd_size)
+		setup_initrd_tag(initrd_address, initrd_size);
+
+	setup_revision_tag();
+	setup_serial_tag();
+	if (IS_ENABLED(CONFIG_ARM_BOARD_APPEND_ATAG) && atag_appender &&
+			!IS_ENABLED(CONFIG_ARM_BOARD_PREPEND_ATAG))
+		params = atag_appender(params);
+
+	setup_end_tag();
+
+	printf("commandline: %s\n"
+	       "arch_number: %u\n", commandline, armlinux_get_architecture());
+
+}
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 552e7227a022..0b233f7b3fe4 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -258,6 +258,7 @@ config MACH_KINDLE_MX50
 	select I2C
 	select I2C_IMX
 	select MFD_MC13XXX
+	select BOOT_ATAGS
 	select ARM_BOARD_APPEND_ATAG
 	select ARM_LINUX
 	select OFTREE
-- 
2.39.5



