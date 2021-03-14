Delivery-date: Sun, 14 Mar 2021 13:29:35 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lLPsF-0007mK-2v
	for lore@lore.pengutronix.de; Sun, 14 Mar 2021 13:29:35 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lLPsC-00074U-CT
	for lore@pengutronix.de; Sun, 14 Mar 2021 13:29:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iYm5fH4XSRRgTIqjn36XYixNJxJ0sJkmc6/o2p+WPHU=; b=fvKj0t5uY5X0pa+ZGVl93h1xy
	0/+VIKJGUPfmgn+Zud3Ek9io/g6GDc7eb5IFUrcA/aDaAhkkQy6Il/LVR4iSfr6rZAIv0DvtGozML
	btYNnhqDy2rtcJ7am0keOGSM013c7XoU3JOm/eDKYldmoeMhpegW49mwL+75PP/p6lUaq+EW6uwCA
	AwH+qJHnpErnvwSkStjLAxPctgVm+fIlUlAHpPUKof3zpl47fh7uRJyXZjZX0hrWSfdcblgbQnz/D
	zdDLk6dGn8OsFFwaf6lpQ1XtT+ed/bfqhVQfuAP1f/RnexH3GLEKEH1yIoThp6roohV8wJ1UHMdHk
	m+xNQhBbg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lLPr1-00EBwP-2F; Sun, 14 Mar 2021 12:28:19 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lLPqq-00EBs2-MB
 for barebox@lists.infradead.org; Sun, 14 Mar 2021 12:28:10 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lLPqo-0006LU-Pq; Sun, 14 Mar 2021 13:28:06 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lLPqn-000160-HF; Sun, 14 Mar 2021 13:28:05 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Sun, 14 Mar 2021 13:27:47 +0100
Message-Id: <20210314122804.4128-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210314122804.4128-1-a.fatoum@pengutronix.de>
References: <20210314122804.4128-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210314_122808_806077_F4584D88 
X-CRM114-Status: GOOD (  10.15  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, rcz@pengutronix.de
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
Subject: [PATCH 03/20] ARM: rename CONFIG_ARM_USE_COMPRESSED_DTB to
 CONFIG_USE_COMPRESSED_DTB
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Other PBL-enabled architecture can benefit from compressed dtbs as well.
As the symbol doesn't have a prompt, it's safe to rename all of
instances of it to drop the ARM qualifier.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/Kconfig           |  7 +------
 arch/arm/cpu/start.c       |  2 +-
 arch/arm/mach-at91/Kconfig |  2 +-
 arch/arm/mach-imx/Kconfig  | 26 +++++++++++++-------------
 arch/arm/mach-omap/Kconfig |  2 +-
 common/Kconfig             |  6 ++++++
 6 files changed, 23 insertions(+), 22 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 3b983c8b3d0a..0e444d17d5af 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -17,11 +17,6 @@ config ARM_LINUX
 config HAVE_MACH_ARM_HEAD
 	bool
 
-config ARM_USE_COMPRESSED_DTB
-	bool
-	select UNCOMPRESS
-	select LZO_DECOMPRESS
-
 config TEXT_BASE
 	hex
 	default 0x0
@@ -208,7 +203,7 @@ config ARCH_STM32MP
 	select ARCH_HAS_RESET_CONTROLLER
 	select ARM_AMBA
 	select ARM_SMCCC
-	select ARM_USE_COMPRESSED_DTB
+	select USE_COMPRESSED_DTB
 
 config ARCH_VERSATILE
 	bool "ARM Versatile boards (ARM926EJ-S)"
diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index f48f5beea807..5533466e01a7 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -75,7 +75,7 @@ void *barebox_arm_boot_dtb(void)
 		return barebox_boarddata;
 	}
 
-	if (!IS_ENABLED(CONFIG_ARM_USE_COMPRESSED_DTB) || !barebox_boarddata
+	if (!IS_ENABLED(CONFIG_USE_COMPRESSED_DTBS) || !barebox_boarddata
 			|| !blob_is_compressed_fdt(barebox_boarddata))
 		return NULL;
 
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 52eefc736138..2d13b71ce3a1 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -573,7 +573,7 @@ endif
 config AT91_MULTI_BOARDS
 	bool "Allow multiple boards to be selected"
 	select HAVE_PBL_MULTI_IMAGES
-	select ARM_USE_COMPRESSED_DTB
+	select USE_COMPRESSED_DTB
 
 if AT91_MULTI_BOARDS
 
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 3f8012c73211..55931058f6d7 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -345,7 +345,7 @@ config MACH_PROTONIC_IMX6
 	bool "Protonic-Holland i.MX6 based boards"
 	select ARCH_IMX6
 	select ARCH_IMX6UL
-	select ARM_USE_COMPRESSED_DTB
+	select USE_COMPRESSED_DTB
 
 config MACH_KONTRON_SAMX6I
         bool "Kontron sAMX6i"
@@ -409,18 +409,18 @@ config MACH_TECHNEXION_PICO_HOBBIT
 	bool "Technexion Pico Hobbit"
 	select ARCH_IMX6
 	select ARCH_IMX6UL
-	select ARM_USE_COMPRESSED_DTB
+	select USE_COMPRESSED_DTB
 
 config MACH_TECHNEXION_WANDBOARD
 	bool "Technexion Wandboard"
 	select ARCH_IMX6
-	select ARM_USE_COMPRESSED_DTB
+	select USE_COMPRESSED_DTB
 	select MCI_IMX_ESDHC_PBL
 
 config MACH_EMBEST_MARSBOARD
 	bool "Embest MarSboard"
 	select ARCH_IMX6
-	select ARM_USE_COMPRESSED_DTB
+	select USE_COMPRESSED_DTB
 
 config MACH_EMBEST_RIOTBOARD
 	bool "Embest RIoTboard"
@@ -454,7 +454,7 @@ config MACH_CM_FX6
 config MACH_ADVANTECH_ROM_742X
 	bool "Advantech ROM 742X"
 	select ARCH_IMX6
-	select ARM_USE_COMPRESSED_DTB
+	select USE_COMPRESSED_DTB
 
 config MACH_WARP7
 	bool "NXP i.MX7: element 14 WaRP7 Board"
@@ -464,7 +464,7 @@ config MACH_AC_SXB
 	bool "Atlas Copco: SXB board"
 	select ARCH_IMX7
 	select MCI_IMX_ESDHC_PBL
-	select ARM_USE_COMPRESSED_DTB
+	select USE_COMPRESSED_DTB
 
 config MACH_VF610_TWR
 	bool "Freescale VF610 Tower Board"
@@ -479,14 +479,14 @@ config MACH_ZII_RDU1
 	select MACH_FREESCALE_MX51_PDK_POWER
 	select CRC8
 	select MACH_ZII_COMMON
-	select ARM_USE_COMPRESSED_DTB
+	select USE_COMPRESSED_DTB
 
 config MACH_ZII_RDU2
 	bool "ZII i.MX6Q(+) RDU2"
 	select ARCH_IMX6
 	select MCI_IMX_ESDHC_PBL
 	select MACH_ZII_COMMON
-	select ARM_USE_COMPRESSED_DTB
+	select USE_COMPRESSED_DTB
 
 config MACH_ZII_IMX8MQ_DEV
 	bool "ZII i.MX8MQ based devices"
@@ -496,19 +496,19 @@ config MACH_ZII_IMX8MQ_DEV
 	select ARM_SMCCC
 	select MCI_IMX_ESDHC_PBL
 	select MACH_ZII_COMMON
-	select ARM_USE_COMPRESSED_DTB
+	select USE_COMPRESSED_DTB
 
 config MACH_ZII_VF610_DEV
 	bool "ZII VF610 Dev Family"
 	select ARCH_VF610
 	select CLKDEV_LOOKUP
 	select MACH_ZII_COMMON
-	select ARM_USE_COMPRESSED_DTB
+	select USE_COMPRESSED_DTB
 
 config MACH_ZII_IMX7D_DEV
 	bool "ZII i.MX7D based devices"
 	select ARCH_IMX7
-	select ARM_USE_COMPRESSED_DTB
+	select USE_COMPRESSED_DTB
 
 config MACH_PHYTEC_PHYCORE_IMX7
 	bool "Phytec phyCORE i.MX7"
@@ -576,12 +576,12 @@ config MACH_DIGI_CCIMX6ULSBCPRO
 	bool "Digi Internal CC-IMX6UL SBC Pro"
 	select ARCH_IMX6
 	select ARCH_IMX6UL
-	select ARM_USE_COMPRESSED_DTB
+	select USE_COMPRESSED_DTB
 
 config MACH_WEBASTO_CCBV2
 	bool "Webasto Common Communication Board V2"
 	select ARCH_IMX6UL
-	select ARM_USE_COMPRESSED_DTB
+	select USE_COMPRESSED_DTB
 
 config MACH_MNT_REFORM
 	bool "MNT Reform"
diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
index 220b6351679c..3347d277bbb0 100644
--- a/arch/arm/mach-omap/Kconfig
+++ b/arch/arm/mach-omap/Kconfig
@@ -41,7 +41,7 @@ config ARCH_AM33XX
 	select GENERIC_GPIO
 	select OFTREE
 	select CLOCKSOURCE_TI_DM
-	select ARM_USE_COMPRESSED_DTB
+	select USE_COMPRESSED_DTB
 	help
 	  Say Y here if you are using Texas Instrument's AM33xx based platform
 
diff --git a/common/Kconfig b/common/Kconfig
index b1f4543e03cd..36207274f07f 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -42,6 +42,12 @@ config BLOCK
 config BLOCK_WRITE
 	bool
 
+config USE_COMPRESSED_DTB
+	bool
+	depends on ARM
+	select UNCOMPRESS
+	select LZO_DECOMPRESS
+
 config ELF
 	bool "ELF Support" if COMPILE_TEST
 
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

