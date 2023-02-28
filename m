Delivery-date: Tue, 28 Feb 2023 15:32:36 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pX11v-004kzG-9I
	for lore@lore.pengutronix.de; Tue, 28 Feb 2023 15:32:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pX11r-0004sn-Qq
	for lore@pengutronix.de; Tue, 28 Feb 2023 15:32:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=32MM4UL0YPCJRIY8S6wuJ8LqXDKR8fFCATdWG2ziR48=; b=PMqnrhqZcGkclkifKD6PvGoVZj
	D8T4B2w/u2l30Glif0BB+ZqFzU6vmHi/3ULiahPDqJ9S+ymMBZNlHk4Kr0INPVWFKgiGnrGwIS8Lj
	7wApVLvk/nHCwrs5/zxpbN8GWX6CFF2W8VsBZupNZg8IcK+8yTeaMglrc7BzW9djDTPySOCBma59W
	RMWJfGR9Tt1gDCtmy7+bmv/TEZUwh/WGdlfJleHgghAHc+qADsVo5S/kpPkgAcVm3Z1KMqP8qnewb
	li49mB2xuhbARJUdMXj/f3mCcgEQjjoQetLyE6KVMuGIRueWyQCRVKlDQGuZZxjgWa6xjPKHKpSHg
	mC3GPW+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pX10Y-00DT0B-1O; Tue, 28 Feb 2023 14:31:10 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pX101-00DSgW-13
	for barebox@lists.infradead.org; Tue, 28 Feb 2023 14:30:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pX0zz-00048u-Ql; Tue, 28 Feb 2023 15:30:35 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pX0zz-000t9F-6G; Tue, 28 Feb 2023 15:30:35 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pX0zx-007LXQ-1L; Tue, 28 Feb 2023 15:30:33 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 28 Feb 2023 15:30:31 +0100
Message-Id: <20230228143031.1718565-10-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230228143031.1718565-1-s.hauer@pengutronix.de>
References: <20230228143031.1718565-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230228_063037_426056_F2B5409C 
X-CRM114-Status: GOOD (  22.29  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 9/9] ARM: pxa: Move plat/ include files to mach/
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

pxa has include files in include/plat/. Move the content over to
include/mach/ to be in line with other architectures.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-pxa/include/mach/gpio.h       |  38 +-
 arch/arm/mach-pxa/include/mach/mfp-pxa2xx.h |   2 +-
 arch/arm/mach-pxa/include/mach/mfp-pxa3xx.h |   2 +-
 arch/arm/mach-pxa/include/mach/mfp.h        | 460 ++++++++++++++++++-
 arch/arm/mach-pxa/include/plat/gpio.h       |  42 --
 arch/arm/mach-pxa/include/plat/mfp.h        | 469 --------------------
 arch/arm/mach-pxa/mfp-pxa3xx.c              |   2 +-
 7 files changed, 494 insertions(+), 521 deletions(-)
 delete mode 100644 arch/arm/mach-pxa/include/plat/gpio.h
 delete mode 100644 arch/arm/mach-pxa/include/plat/mfp.h

diff --git a/arch/arm/mach-pxa/include/mach/gpio.h b/arch/arm/mach-pxa/include/mach/gpio.h
index e6724e1caf..d8eac99fbc 100644
--- a/arch/arm/mach-pxa/include/mach/gpio.h
+++ b/arch/arm/mach-pxa/include/mach/gpio.h
@@ -128,5 +128,41 @@ static inline int __gpio_is_occupied(unsigned gpio)
 	} else
 		return GPDR(gpio) & GPIO_bit(gpio);
 }
-#include <plat/gpio.h>
+
+/*
+ * We handle the GPIOs by banks, each bank covers up to 32 GPIOs with
+ * one set of registers. The register offsets are organized below:
+ *
+ *           GPLR    GPDR    GPSR    GPCR    GRER    GFER    GEDR
+ * BANK 0 - 0x0000  0x000C  0x0018  0x0024  0x0030  0x003C  0x0048
+ * BANK 1 - 0x0004  0x0010  0x001C  0x0028  0x0034  0x0040  0x004C
+ * BANK 2 - 0x0008  0x0014  0x0020  0x002C  0x0038  0x0044  0x0050
+ *
+ * BANK 3 - 0x0100  0x010C  0x0118  0x0124  0x0130  0x013C  0x0148
+ * BANK 4 - 0x0104  0x0110  0x011C  0x0128  0x0134  0x0140  0x014C
+ * BANK 5 - 0x0108  0x0114  0x0120  0x012C  0x0138  0x0144  0x0150
+ *
+ * NOTE:
+ *   BANK 3 is only available on PXA27x and later processors.
+ *   BANK 4 and 5 are only available on PXA935
+ */
+
+#define GPIO_BANK(n)    (GPIO_REGS_VIRT + BANK_OFF(n))
+
+#define GPLR_OFFSET     0x00
+#define GPDR_OFFSET     0x0C
+#define GPSR_OFFSET     0x18
+#define GPCR_OFFSET     0x24
+#define GRER_OFFSET     0x30
+#define GFER_OFFSET     0x3C
+#define GEDR_OFFSET     0x48
+
+/* NOTE: some PXAs have fewer on-chip GPIOs (like PXA255, with 85).
+ * Those cases currently cause holes in the GPIO number space, the
+ * actual number of the last GPIO is recorded by 'pxa_last_gpio'.
+ */
+extern int pxa_last_gpio;
+
+extern int pxa_init_gpio(int start, int end);
+
 #endif
diff --git a/arch/arm/mach-pxa/include/mach/mfp-pxa2xx.h b/arch/arm/mach-pxa/include/mach/mfp-pxa2xx.h
index b01f6188d4..2713d4cc9f 100644
--- a/arch/arm/mach-pxa/include/mach/mfp-pxa2xx.h
+++ b/arch/arm/mach-pxa/include/mach/mfp-pxa2xx.h
@@ -3,7 +3,7 @@
 #ifndef __ASM_ARCH_MFP_PXA2XX_H
 #define __ASM_ARCH_MFP_PXA2XX_H
 
-#include <plat/mfp.h>
+#include <mach/mfp.h>
 
 /*
  * the following MFP_xxx bit definitions in mfp.h are re-used for pxa2xx:
diff --git a/arch/arm/mach-pxa/include/mach/mfp-pxa3xx.h b/arch/arm/mach-pxa/include/mach/mfp-pxa3xx.h
index 00eb724709..8e4af7cde8 100644
--- a/arch/arm/mach-pxa/include/mach/mfp-pxa3xx.h
+++ b/arch/arm/mach-pxa/include/mach/mfp-pxa3xx.h
@@ -3,7 +3,7 @@
 #ifndef __ASM_ARCH_MFP_PXA3XX_H
 #define __ASM_ARCH_MFP_PXA3XX_H
 
-#include <plat/mfp.h>
+#include <mach/mfp.h>
 
 #define MFPR_BASE	(0x40e10000)
 
diff --git a/arch/arm/mach-pxa/include/mach/mfp.h b/arch/arm/mach-pxa/include/mach/mfp.h
index 271e249ae3..fd8c810552 100644
--- a/arch/arm/mach-pxa/include/mach/mfp.h
+++ b/arch/arm/mach-pxa/include/mach/mfp.h
@@ -1,7 +1,7 @@
 /*
- * arch/arm/mach-pxa/include/mach/mfp.h
+ * arch/arm/plat-pxa/include/plat/mfp.h
  *
- * Multi-Function Pin Definitions
+ *   Common Multi-Function Pin Definitions
  *
  * Copyright (C) 2007 Marvell International Ltd.
  *
@@ -13,9 +13,457 @@
  *  published by the Free Software Foundation.
  */
 
-#ifndef __ASM_ARCH_MFP_H
-#define __ASM_ARCH_MFP_H
+#ifndef __MACH_PXA_MFP_H
+#define __MACH_PXA_MFP_H
 
-#include <plat/mfp.h>
+#define mfp_to_gpio(m)	((m) % 256)
 
-#endif /* __ASM_ARCH_MFP_H */
+/* list of all the configurable MFP pins */
+enum {
+	MFP_PIN_INVALID = -1,
+
+	MFP_PIN_GPIO0 = 0,
+	MFP_PIN_GPIO1,
+	MFP_PIN_GPIO2,
+	MFP_PIN_GPIO3,
+	MFP_PIN_GPIO4,
+	MFP_PIN_GPIO5,
+	MFP_PIN_GPIO6,
+	MFP_PIN_GPIO7,
+	MFP_PIN_GPIO8,
+	MFP_PIN_GPIO9,
+	MFP_PIN_GPIO10,
+	MFP_PIN_GPIO11,
+	MFP_PIN_GPIO12,
+	MFP_PIN_GPIO13,
+	MFP_PIN_GPIO14,
+	MFP_PIN_GPIO15,
+	MFP_PIN_GPIO16,
+	MFP_PIN_GPIO17,
+	MFP_PIN_GPIO18,
+	MFP_PIN_GPIO19,
+	MFP_PIN_GPIO20,
+	MFP_PIN_GPIO21,
+	MFP_PIN_GPIO22,
+	MFP_PIN_GPIO23,
+	MFP_PIN_GPIO24,
+	MFP_PIN_GPIO25,
+	MFP_PIN_GPIO26,
+	MFP_PIN_GPIO27,
+	MFP_PIN_GPIO28,
+	MFP_PIN_GPIO29,
+	MFP_PIN_GPIO30,
+	MFP_PIN_GPIO31,
+	MFP_PIN_GPIO32,
+	MFP_PIN_GPIO33,
+	MFP_PIN_GPIO34,
+	MFP_PIN_GPIO35,
+	MFP_PIN_GPIO36,
+	MFP_PIN_GPIO37,
+	MFP_PIN_GPIO38,
+	MFP_PIN_GPIO39,
+	MFP_PIN_GPIO40,
+	MFP_PIN_GPIO41,
+	MFP_PIN_GPIO42,
+	MFP_PIN_GPIO43,
+	MFP_PIN_GPIO44,
+	MFP_PIN_GPIO45,
+	MFP_PIN_GPIO46,
+	MFP_PIN_GPIO47,
+	MFP_PIN_GPIO48,
+	MFP_PIN_GPIO49,
+	MFP_PIN_GPIO50,
+	MFP_PIN_GPIO51,
+	MFP_PIN_GPIO52,
+	MFP_PIN_GPIO53,
+	MFP_PIN_GPIO54,
+	MFP_PIN_GPIO55,
+	MFP_PIN_GPIO56,
+	MFP_PIN_GPIO57,
+	MFP_PIN_GPIO58,
+	MFP_PIN_GPIO59,
+	MFP_PIN_GPIO60,
+	MFP_PIN_GPIO61,
+	MFP_PIN_GPIO62,
+	MFP_PIN_GPIO63,
+	MFP_PIN_GPIO64,
+	MFP_PIN_GPIO65,
+	MFP_PIN_GPIO66,
+	MFP_PIN_GPIO67,
+	MFP_PIN_GPIO68,
+	MFP_PIN_GPIO69,
+	MFP_PIN_GPIO70,
+	MFP_PIN_GPIO71,
+	MFP_PIN_GPIO72,
+	MFP_PIN_GPIO73,
+	MFP_PIN_GPIO74,
+	MFP_PIN_GPIO75,
+	MFP_PIN_GPIO76,
+	MFP_PIN_GPIO77,
+	MFP_PIN_GPIO78,
+	MFP_PIN_GPIO79,
+	MFP_PIN_GPIO80,
+	MFP_PIN_GPIO81,
+	MFP_PIN_GPIO82,
+	MFP_PIN_GPIO83,
+	MFP_PIN_GPIO84,
+	MFP_PIN_GPIO85,
+	MFP_PIN_GPIO86,
+	MFP_PIN_GPIO87,
+	MFP_PIN_GPIO88,
+	MFP_PIN_GPIO89,
+	MFP_PIN_GPIO90,
+	MFP_PIN_GPIO91,
+	MFP_PIN_GPIO92,
+	MFP_PIN_GPIO93,
+	MFP_PIN_GPIO94,
+	MFP_PIN_GPIO95,
+	MFP_PIN_GPIO96,
+	MFP_PIN_GPIO97,
+	MFP_PIN_GPIO98,
+	MFP_PIN_GPIO99,
+	MFP_PIN_GPIO100,
+	MFP_PIN_GPIO101,
+	MFP_PIN_GPIO102,
+	MFP_PIN_GPIO103,
+	MFP_PIN_GPIO104,
+	MFP_PIN_GPIO105,
+	MFP_PIN_GPIO106,
+	MFP_PIN_GPIO107,
+	MFP_PIN_GPIO108,
+	MFP_PIN_GPIO109,
+	MFP_PIN_GPIO110,
+	MFP_PIN_GPIO111,
+	MFP_PIN_GPIO112,
+	MFP_PIN_GPIO113,
+	MFP_PIN_GPIO114,
+	MFP_PIN_GPIO115,
+	MFP_PIN_GPIO116,
+	MFP_PIN_GPIO117,
+	MFP_PIN_GPIO118,
+	MFP_PIN_GPIO119,
+	MFP_PIN_GPIO120,
+	MFP_PIN_GPIO121,
+	MFP_PIN_GPIO122,
+	MFP_PIN_GPIO123,
+	MFP_PIN_GPIO124,
+	MFP_PIN_GPIO125,
+	MFP_PIN_GPIO126,
+	MFP_PIN_GPIO127,
+
+	MFP_PIN_GPIO128,
+	MFP_PIN_GPIO129,
+	MFP_PIN_GPIO130,
+	MFP_PIN_GPIO131,
+	MFP_PIN_GPIO132,
+	MFP_PIN_GPIO133,
+	MFP_PIN_GPIO134,
+	MFP_PIN_GPIO135,
+	MFP_PIN_GPIO136,
+	MFP_PIN_GPIO137,
+	MFP_PIN_GPIO138,
+	MFP_PIN_GPIO139,
+	MFP_PIN_GPIO140,
+	MFP_PIN_GPIO141,
+	MFP_PIN_GPIO142,
+	MFP_PIN_GPIO143,
+	MFP_PIN_GPIO144,
+	MFP_PIN_GPIO145,
+	MFP_PIN_GPIO146,
+	MFP_PIN_GPIO147,
+	MFP_PIN_GPIO148,
+	MFP_PIN_GPIO149,
+	MFP_PIN_GPIO150,
+	MFP_PIN_GPIO151,
+	MFP_PIN_GPIO152,
+	MFP_PIN_GPIO153,
+	MFP_PIN_GPIO154,
+	MFP_PIN_GPIO155,
+	MFP_PIN_GPIO156,
+	MFP_PIN_GPIO157,
+	MFP_PIN_GPIO158,
+	MFP_PIN_GPIO159,
+	MFP_PIN_GPIO160,
+	MFP_PIN_GPIO161,
+	MFP_PIN_GPIO162,
+	MFP_PIN_GPIO163,
+	MFP_PIN_GPIO164,
+	MFP_PIN_GPIO165,
+	MFP_PIN_GPIO166,
+	MFP_PIN_GPIO167,
+	MFP_PIN_GPIO168,
+	MFP_PIN_GPIO169,
+	MFP_PIN_GPIO170,
+	MFP_PIN_GPIO171,
+	MFP_PIN_GPIO172,
+	MFP_PIN_GPIO173,
+	MFP_PIN_GPIO174,
+	MFP_PIN_GPIO175,
+	MFP_PIN_GPIO176,
+	MFP_PIN_GPIO177,
+	MFP_PIN_GPIO178,
+	MFP_PIN_GPIO179,
+	MFP_PIN_GPIO180,
+	MFP_PIN_GPIO181,
+	MFP_PIN_GPIO182,
+	MFP_PIN_GPIO183,
+	MFP_PIN_GPIO184,
+	MFP_PIN_GPIO185,
+	MFP_PIN_GPIO186,
+	MFP_PIN_GPIO187,
+	MFP_PIN_GPIO188,
+	MFP_PIN_GPIO189,
+	MFP_PIN_GPIO190,
+	MFP_PIN_GPIO191,
+
+	MFP_PIN_GPIO255 = 255,
+
+	MFP_PIN_GPIO0_2,
+	MFP_PIN_GPIO1_2,
+	MFP_PIN_GPIO2_2,
+	MFP_PIN_GPIO3_2,
+	MFP_PIN_GPIO4_2,
+	MFP_PIN_GPIO5_2,
+	MFP_PIN_GPIO6_2,
+	MFP_PIN_GPIO7_2,
+	MFP_PIN_GPIO8_2,
+	MFP_PIN_GPIO9_2,
+	MFP_PIN_GPIO10_2,
+	MFP_PIN_GPIO11_2,
+	MFP_PIN_GPIO12_2,
+	MFP_PIN_GPIO13_2,
+	MFP_PIN_GPIO14_2,
+	MFP_PIN_GPIO15_2,
+	MFP_PIN_GPIO16_2,
+	MFP_PIN_GPIO17_2,
+
+	MFP_PIN_ULPI_STP,
+	MFP_PIN_ULPI_NXT,
+	MFP_PIN_ULPI_DIR,
+
+	MFP_PIN_nXCVREN,
+	MFP_PIN_DF_CLE_nOE,
+	MFP_PIN_DF_nADV1_ALE,
+	MFP_PIN_DF_SCLK_E,
+	MFP_PIN_DF_SCLK_S,
+	MFP_PIN_nBE0,
+	MFP_PIN_nBE1,
+	MFP_PIN_DF_nADV2_ALE,
+	MFP_PIN_DF_INT_RnB,
+	MFP_PIN_DF_nCS0,
+	MFP_PIN_DF_nCS1,
+	MFP_PIN_nLUA,
+	MFP_PIN_nLLA,
+	MFP_PIN_DF_nWE,
+	MFP_PIN_DF_ALE_nWE,
+	MFP_PIN_DF_nRE_nOE,
+	MFP_PIN_DF_ADDR0,
+	MFP_PIN_DF_ADDR1,
+	MFP_PIN_DF_ADDR2,
+	MFP_PIN_DF_ADDR3,
+	MFP_PIN_DF_IO0,
+	MFP_PIN_DF_IO1,
+	MFP_PIN_DF_IO2,
+	MFP_PIN_DF_IO3,
+	MFP_PIN_DF_IO4,
+	MFP_PIN_DF_IO5,
+	MFP_PIN_DF_IO6,
+	MFP_PIN_DF_IO7,
+	MFP_PIN_DF_IO8,
+	MFP_PIN_DF_IO9,
+	MFP_PIN_DF_IO10,
+	MFP_PIN_DF_IO11,
+	MFP_PIN_DF_IO12,
+	MFP_PIN_DF_IO13,
+	MFP_PIN_DF_IO14,
+	MFP_PIN_DF_IO15,
+	MFP_PIN_DF_nCS0_SM_nCS2,
+	MFP_PIN_DF_nCS1_SM_nCS3,
+	MFP_PIN_SM_nCS0,
+	MFP_PIN_SM_nCS1,
+	MFP_PIN_DF_WEn,
+	MFP_PIN_DF_REn,
+	MFP_PIN_DF_CLE_SM_OEn,
+	MFP_PIN_DF_ALE_SM_WEn,
+	MFP_PIN_DF_RDY0,
+	MFP_PIN_DF_RDY1,
+
+	MFP_PIN_SM_SCLK,
+	MFP_PIN_SM_BE0,
+	MFP_PIN_SM_BE1,
+	MFP_PIN_SM_ADV,
+	MFP_PIN_SM_ADVMUX,
+	MFP_PIN_SM_RDY,
+
+	MFP_PIN_MMC1_DAT7,
+	MFP_PIN_MMC1_DAT6,
+	MFP_PIN_MMC1_DAT5,
+	MFP_PIN_MMC1_DAT4,
+	MFP_PIN_MMC1_DAT3,
+	MFP_PIN_MMC1_DAT2,
+	MFP_PIN_MMC1_DAT1,
+	MFP_PIN_MMC1_DAT0,
+	MFP_PIN_MMC1_CMD,
+	MFP_PIN_MMC1_CLK,
+	MFP_PIN_MMC1_CD,
+	MFP_PIN_MMC1_WP,
+
+	/* additional pins on PXA930 */
+	MFP_PIN_GSIM_UIO,
+	MFP_PIN_GSIM_UCLK,
+	MFP_PIN_GSIM_UDET,
+	MFP_PIN_GSIM_nURST,
+	MFP_PIN_PMIC_INT,
+	MFP_PIN_RDY,
+
+	MFP_PIN_MAX,
+};
+
+/*
+ * a possible MFP configuration is represented by a 32-bit integer
+ *
+ * bit  0.. 9 - MFP Pin Number (1024 Pins Maximum)
+ * bit 10..12 - Alternate Function Selection
+ * bit 13..15 - Drive Strength
+ * bit 16..18 - Low Power Mode State
+ * bit 19..20 - Low Power Mode Edge Detection
+ * bit 21..22 - Run Mode Pull State
+ *
+ * to facilitate the definition, the following macros are provided
+ *
+ * MFP_CFG_DEFAULT - default MFP configuration value, with
+ *		alternate function = 0,
+ *		drive strength = fast 3mA (MFP_DS03X)
+ *		low power mode = default
+ *		edge detection = none
+ *
+ * MFP_CFG	- default MFPR value with alternate function
+ * MFP_CFG_DRV	- default MFPR value with alternate function and
+ *		  pin drive strength
+ * MFP_CFG_LPM	- default MFPR value with alternate function and
+ *		  low power mode
+ * MFP_CFG_X	- default MFPR value with alternate function,
+ *		  pin drive strength and low power mode
+ */
+
+typedef unsigned long mfp_cfg_t;
+
+#define MFP_PIN(x)		((x) & 0x3ff)
+
+#define MFP_AF0			(0x0 << 10)
+#define MFP_AF1			(0x1 << 10)
+#define MFP_AF2			(0x2 << 10)
+#define MFP_AF3			(0x3 << 10)
+#define MFP_AF4			(0x4 << 10)
+#define MFP_AF5			(0x5 << 10)
+#define MFP_AF6			(0x6 << 10)
+#define MFP_AF7			(0x7 << 10)
+#define MFP_AF_MASK		(0x7 << 10)
+#define MFP_AF(x)		(((x) >> 10) & 0x7)
+
+#define MFP_DS01X		(0x0 << 13)
+#define MFP_DS02X		(0x1 << 13)
+#define MFP_DS03X		(0x2 << 13)
+#define MFP_DS04X		(0x3 << 13)
+#define MFP_DS06X		(0x4 << 13)
+#define MFP_DS08X		(0x5 << 13)
+#define MFP_DS10X		(0x6 << 13)
+#define MFP_DS13X		(0x7 << 13)
+#define MFP_DS_MASK		(0x7 << 13)
+#define MFP_DS(x)		(((x) >> 13) & 0x7)
+
+#define MFP_LPM_DEFAULT		(0x0 << 16)
+#define MFP_LPM_DRIVE_LOW	(0x1 << 16)
+#define MFP_LPM_DRIVE_HIGH	(0x2 << 16)
+#define MFP_LPM_PULL_LOW	(0x3 << 16)
+#define MFP_LPM_PULL_HIGH	(0x4 << 16)
+#define MFP_LPM_FLOAT		(0x5 << 16)
+#define MFP_LPM_INPUT		(0x6 << 16)
+#define MFP_LPM_STATE_MASK	(0x7 << 16)
+#define MFP_LPM_STATE(x)	(((x) >> 16) & 0x7)
+
+#define MFP_LPM_EDGE_NONE	(0x0 << 19)
+#define MFP_LPM_EDGE_RISE	(0x1 << 19)
+#define MFP_LPM_EDGE_FALL	(0x2 << 19)
+#define MFP_LPM_EDGE_BOTH	(0x3 << 19)
+#define MFP_LPM_EDGE_MASK	(0x3 << 19)
+#define MFP_LPM_EDGE(x)		(((x) >> 19) & 0x3)
+
+#define MFP_PULL_NONE		(0x0 << 21)
+#define MFP_PULL_LOW		(0x1 << 21)
+#define MFP_PULL_HIGH		(0x2 << 21)
+#define MFP_PULL_BOTH		(0x3 << 21)
+#define MFP_PULL_FLOAT		(0x4 << 21)
+#define MFP_PULL_MASK		(0x7 << 21)
+#define MFP_PULL(x)		(((x) >> 21) & 0x7)
+
+#define MFP_CFG_DEFAULT		(MFP_AF0 | MFP_DS03X | MFP_LPM_DEFAULT |\
+				 MFP_LPM_EDGE_NONE | MFP_PULL_NONE)
+
+#define MFP_CFG(pin, af)		\
+	((MFP_CFG_DEFAULT & ~MFP_AF_MASK) |\
+	 (MFP_PIN(MFP_PIN_##pin) | MFP_##af))
+
+#define MFP_CFG_DRV(pin, af, drv)	\
+	((MFP_CFG_DEFAULT & ~(MFP_AF_MASK | MFP_DS_MASK)) |\
+	 (MFP_PIN(MFP_PIN_##pin) | MFP_##af | MFP_##drv))
+
+#define MFP_CFG_LPM(pin, af, lpm)	\
+	((MFP_CFG_DEFAULT & ~(MFP_AF_MASK | MFP_LPM_STATE_MASK)) |\
+	 (MFP_PIN(MFP_PIN_##pin) | MFP_##af | MFP_LPM_##lpm))
+
+#define MFP_CFG_X(pin, af, drv, lpm)	\
+	((MFP_CFG_DEFAULT & ~(MFP_AF_MASK | MFP_DS_MASK | MFP_LPM_STATE_MASK)) |\
+	 (MFP_PIN(MFP_PIN_##pin) | MFP_##af | MFP_##drv | MFP_LPM_##lpm))
+
+#if defined(CONFIG_ARCH_PXA3XX)
+/*
+ * each MFP pin will have a MFPR register, since the offset of the
+ * register varies between processors, the processor specific code
+ * should initialize the pin offsets by mfp_init()
+ *
+ * mfp_init_base() - accepts a virtual base for all MFPR registers and
+ * initialize the MFP table to a default state
+ *
+ * mfp_init_addr() - accepts a table of "mfp_addr_map" structure, which
+ * represents a range of MFP pins from "start" to "end", with the offset
+ * begining at "offset", to define a single pin, let "end" = -1.
+ *
+ * use
+ *
+ * MFP_ADDR_X() to define a range of pins
+ * MFP_ADDR()   to define a single pin
+ * MFP_ADDR_END to signal the end of pin offset definitions
+ */
+struct mfp_addr_map {
+	unsigned int	start;
+	unsigned int	end;
+	unsigned long	offset;
+};
+
+#define MFP_ADDR_X(start, end, offset) \
+	{ MFP_PIN_##start, MFP_PIN_##end, offset }
+
+#define MFP_ADDR(pin, offset) \
+	{ MFP_PIN_##pin, -1, offset }
+
+#define MFP_ADDR_END	{ MFP_PIN_INVALID, 0 }
+
+void __init mfp_init_base(void __iomem *mfpr_base);
+void __init mfp_init_addr(struct mfp_addr_map *map);
+
+/*
+ * mfp_{read, write}()	- for direct read/write access to the MFPR register
+ * mfp_config()		- for configuring a group of MFPR registers
+ * mfp_config_lpm()	- configuring all low power MFPR registers for suspend
+ * mfp_config_run()	- configuring all run time  MFPR registers after resume
+ */
+unsigned long mfp_read(int mfp);
+void mfp_write(int mfp, unsigned long mfpr_val);
+void mfp_config(unsigned long *mfp_cfgs, int num);
+void mfp_config_run(void);
+void mfp_config_lpm(void);
+void mfp_init(void);
+#endif /* CONFIG_ARCH_PXA3XX */
+
+#endif /* __MACH_PXA_MFP_H */
diff --git a/arch/arm/mach-pxa/include/plat/gpio.h b/arch/arm/mach-pxa/include/plat/gpio.h
deleted file mode 100644
index 35f90715e0..0000000000
--- a/arch/arm/mach-pxa/include/plat/gpio.h
+++ /dev/null
@@ -1,42 +0,0 @@
-#ifndef __PLAT_GPIO_H
-#define __PLAT_GPIO_H
-
-#include <mach/gpio.h>
-
-/*
- * We handle the GPIOs by banks, each bank covers up to 32 GPIOs with
- * one set of registers. The register offsets are organized below:
- *
- *           GPLR    GPDR    GPSR    GPCR    GRER    GFER    GEDR
- * BANK 0 - 0x0000  0x000C  0x0018  0x0024  0x0030  0x003C  0x0048
- * BANK 1 - 0x0004  0x0010  0x001C  0x0028  0x0034  0x0040  0x004C
- * BANK 2 - 0x0008  0x0014  0x0020  0x002C  0x0038  0x0044  0x0050
- *
- * BANK 3 - 0x0100  0x010C  0x0118  0x0124  0x0130  0x013C  0x0148
- * BANK 4 - 0x0104  0x0110  0x011C  0x0128  0x0134  0x0140  0x014C
- * BANK 5 - 0x0108  0x0114  0x0120  0x012C  0x0138  0x0144  0x0150
- *
- * NOTE:
- *   BANK 3 is only available on PXA27x and later processors.
- *   BANK 4 and 5 are only available on PXA935
- */
-
-#define GPIO_BANK(n)	(GPIO_REGS_VIRT + BANK_OFF(n))
-
-#define GPLR_OFFSET	0x00
-#define GPDR_OFFSET	0x0C
-#define GPSR_OFFSET	0x18
-#define GPCR_OFFSET	0x24
-#define GRER_OFFSET	0x30
-#define GFER_OFFSET	0x3C
-#define GEDR_OFFSET	0x48
-
-/* NOTE: some PXAs have fewer on-chip GPIOs (like PXA255, with 85).
- * Those cases currently cause holes in the GPIO number space, the
- * actual number of the last GPIO is recorded by 'pxa_last_gpio'.
- */
-extern int pxa_last_gpio;
-
-extern int pxa_init_gpio(int start, int end);
-
-#endif /* __PLAT_GPIO_H */
diff --git a/arch/arm/mach-pxa/include/plat/mfp.h b/arch/arm/mach-pxa/include/plat/mfp.h
deleted file mode 100644
index aedb956cd3..0000000000
--- a/arch/arm/mach-pxa/include/plat/mfp.h
+++ /dev/null
@@ -1,469 +0,0 @@
-/*
- * arch/arm/plat-pxa/include/plat/mfp.h
- *
- *   Common Multi-Function Pin Definitions
- *
- * Copyright (C) 2007 Marvell International Ltd.
- *
- * 2007-8-21: eric miao <eric.miao@marvell.com>
- *            initial version
- *
- *  This program is free software; you can redistribute it and/or modify
- *  it under the terms of the GNU General Public License version 2 as
- *  published by the Free Software Foundation.
- */
-
-#ifndef __ASM_PLAT_MFP_H
-#define __ASM_PLAT_MFP_H
-
-#define mfp_to_gpio(m)	((m) % 256)
-
-/* list of all the configurable MFP pins */
-enum {
-	MFP_PIN_INVALID = -1,
-
-	MFP_PIN_GPIO0 = 0,
-	MFP_PIN_GPIO1,
-	MFP_PIN_GPIO2,
-	MFP_PIN_GPIO3,
-	MFP_PIN_GPIO4,
-	MFP_PIN_GPIO5,
-	MFP_PIN_GPIO6,
-	MFP_PIN_GPIO7,
-	MFP_PIN_GPIO8,
-	MFP_PIN_GPIO9,
-	MFP_PIN_GPIO10,
-	MFP_PIN_GPIO11,
-	MFP_PIN_GPIO12,
-	MFP_PIN_GPIO13,
-	MFP_PIN_GPIO14,
-	MFP_PIN_GPIO15,
-	MFP_PIN_GPIO16,
-	MFP_PIN_GPIO17,
-	MFP_PIN_GPIO18,
-	MFP_PIN_GPIO19,
-	MFP_PIN_GPIO20,
-	MFP_PIN_GPIO21,
-	MFP_PIN_GPIO22,
-	MFP_PIN_GPIO23,
-	MFP_PIN_GPIO24,
-	MFP_PIN_GPIO25,
-	MFP_PIN_GPIO26,
-	MFP_PIN_GPIO27,
-	MFP_PIN_GPIO28,
-	MFP_PIN_GPIO29,
-	MFP_PIN_GPIO30,
-	MFP_PIN_GPIO31,
-	MFP_PIN_GPIO32,
-	MFP_PIN_GPIO33,
-	MFP_PIN_GPIO34,
-	MFP_PIN_GPIO35,
-	MFP_PIN_GPIO36,
-	MFP_PIN_GPIO37,
-	MFP_PIN_GPIO38,
-	MFP_PIN_GPIO39,
-	MFP_PIN_GPIO40,
-	MFP_PIN_GPIO41,
-	MFP_PIN_GPIO42,
-	MFP_PIN_GPIO43,
-	MFP_PIN_GPIO44,
-	MFP_PIN_GPIO45,
-	MFP_PIN_GPIO46,
-	MFP_PIN_GPIO47,
-	MFP_PIN_GPIO48,
-	MFP_PIN_GPIO49,
-	MFP_PIN_GPIO50,
-	MFP_PIN_GPIO51,
-	MFP_PIN_GPIO52,
-	MFP_PIN_GPIO53,
-	MFP_PIN_GPIO54,
-	MFP_PIN_GPIO55,
-	MFP_PIN_GPIO56,
-	MFP_PIN_GPIO57,
-	MFP_PIN_GPIO58,
-	MFP_PIN_GPIO59,
-	MFP_PIN_GPIO60,
-	MFP_PIN_GPIO61,
-	MFP_PIN_GPIO62,
-	MFP_PIN_GPIO63,
-	MFP_PIN_GPIO64,
-	MFP_PIN_GPIO65,
-	MFP_PIN_GPIO66,
-	MFP_PIN_GPIO67,
-	MFP_PIN_GPIO68,
-	MFP_PIN_GPIO69,
-	MFP_PIN_GPIO70,
-	MFP_PIN_GPIO71,
-	MFP_PIN_GPIO72,
-	MFP_PIN_GPIO73,
-	MFP_PIN_GPIO74,
-	MFP_PIN_GPIO75,
-	MFP_PIN_GPIO76,
-	MFP_PIN_GPIO77,
-	MFP_PIN_GPIO78,
-	MFP_PIN_GPIO79,
-	MFP_PIN_GPIO80,
-	MFP_PIN_GPIO81,
-	MFP_PIN_GPIO82,
-	MFP_PIN_GPIO83,
-	MFP_PIN_GPIO84,
-	MFP_PIN_GPIO85,
-	MFP_PIN_GPIO86,
-	MFP_PIN_GPIO87,
-	MFP_PIN_GPIO88,
-	MFP_PIN_GPIO89,
-	MFP_PIN_GPIO90,
-	MFP_PIN_GPIO91,
-	MFP_PIN_GPIO92,
-	MFP_PIN_GPIO93,
-	MFP_PIN_GPIO94,
-	MFP_PIN_GPIO95,
-	MFP_PIN_GPIO96,
-	MFP_PIN_GPIO97,
-	MFP_PIN_GPIO98,
-	MFP_PIN_GPIO99,
-	MFP_PIN_GPIO100,
-	MFP_PIN_GPIO101,
-	MFP_PIN_GPIO102,
-	MFP_PIN_GPIO103,
-	MFP_PIN_GPIO104,
-	MFP_PIN_GPIO105,
-	MFP_PIN_GPIO106,
-	MFP_PIN_GPIO107,
-	MFP_PIN_GPIO108,
-	MFP_PIN_GPIO109,
-	MFP_PIN_GPIO110,
-	MFP_PIN_GPIO111,
-	MFP_PIN_GPIO112,
-	MFP_PIN_GPIO113,
-	MFP_PIN_GPIO114,
-	MFP_PIN_GPIO115,
-	MFP_PIN_GPIO116,
-	MFP_PIN_GPIO117,
-	MFP_PIN_GPIO118,
-	MFP_PIN_GPIO119,
-	MFP_PIN_GPIO120,
-	MFP_PIN_GPIO121,
-	MFP_PIN_GPIO122,
-	MFP_PIN_GPIO123,
-	MFP_PIN_GPIO124,
-	MFP_PIN_GPIO125,
-	MFP_PIN_GPIO126,
-	MFP_PIN_GPIO127,
-
-	MFP_PIN_GPIO128,
-	MFP_PIN_GPIO129,
-	MFP_PIN_GPIO130,
-	MFP_PIN_GPIO131,
-	MFP_PIN_GPIO132,
-	MFP_PIN_GPIO133,
-	MFP_PIN_GPIO134,
-	MFP_PIN_GPIO135,
-	MFP_PIN_GPIO136,
-	MFP_PIN_GPIO137,
-	MFP_PIN_GPIO138,
-	MFP_PIN_GPIO139,
-	MFP_PIN_GPIO140,
-	MFP_PIN_GPIO141,
-	MFP_PIN_GPIO142,
-	MFP_PIN_GPIO143,
-	MFP_PIN_GPIO144,
-	MFP_PIN_GPIO145,
-	MFP_PIN_GPIO146,
-	MFP_PIN_GPIO147,
-	MFP_PIN_GPIO148,
-	MFP_PIN_GPIO149,
-	MFP_PIN_GPIO150,
-	MFP_PIN_GPIO151,
-	MFP_PIN_GPIO152,
-	MFP_PIN_GPIO153,
-	MFP_PIN_GPIO154,
-	MFP_PIN_GPIO155,
-	MFP_PIN_GPIO156,
-	MFP_PIN_GPIO157,
-	MFP_PIN_GPIO158,
-	MFP_PIN_GPIO159,
-	MFP_PIN_GPIO160,
-	MFP_PIN_GPIO161,
-	MFP_PIN_GPIO162,
-	MFP_PIN_GPIO163,
-	MFP_PIN_GPIO164,
-	MFP_PIN_GPIO165,
-	MFP_PIN_GPIO166,
-	MFP_PIN_GPIO167,
-	MFP_PIN_GPIO168,
-	MFP_PIN_GPIO169,
-	MFP_PIN_GPIO170,
-	MFP_PIN_GPIO171,
-	MFP_PIN_GPIO172,
-	MFP_PIN_GPIO173,
-	MFP_PIN_GPIO174,
-	MFP_PIN_GPIO175,
-	MFP_PIN_GPIO176,
-	MFP_PIN_GPIO177,
-	MFP_PIN_GPIO178,
-	MFP_PIN_GPIO179,
-	MFP_PIN_GPIO180,
-	MFP_PIN_GPIO181,
-	MFP_PIN_GPIO182,
-	MFP_PIN_GPIO183,
-	MFP_PIN_GPIO184,
-	MFP_PIN_GPIO185,
-	MFP_PIN_GPIO186,
-	MFP_PIN_GPIO187,
-	MFP_PIN_GPIO188,
-	MFP_PIN_GPIO189,
-	MFP_PIN_GPIO190,
-	MFP_PIN_GPIO191,
-
-	MFP_PIN_GPIO255 = 255,
-
-	MFP_PIN_GPIO0_2,
-	MFP_PIN_GPIO1_2,
-	MFP_PIN_GPIO2_2,
-	MFP_PIN_GPIO3_2,
-	MFP_PIN_GPIO4_2,
-	MFP_PIN_GPIO5_2,
-	MFP_PIN_GPIO6_2,
-	MFP_PIN_GPIO7_2,
-	MFP_PIN_GPIO8_2,
-	MFP_PIN_GPIO9_2,
-	MFP_PIN_GPIO10_2,
-	MFP_PIN_GPIO11_2,
-	MFP_PIN_GPIO12_2,
-	MFP_PIN_GPIO13_2,
-	MFP_PIN_GPIO14_2,
-	MFP_PIN_GPIO15_2,
-	MFP_PIN_GPIO16_2,
-	MFP_PIN_GPIO17_2,
-
-	MFP_PIN_ULPI_STP,
-	MFP_PIN_ULPI_NXT,
-	MFP_PIN_ULPI_DIR,
-
-	MFP_PIN_nXCVREN,
-	MFP_PIN_DF_CLE_nOE,
-	MFP_PIN_DF_nADV1_ALE,
-	MFP_PIN_DF_SCLK_E,
-	MFP_PIN_DF_SCLK_S,
-	MFP_PIN_nBE0,
-	MFP_PIN_nBE1,
-	MFP_PIN_DF_nADV2_ALE,
-	MFP_PIN_DF_INT_RnB,
-	MFP_PIN_DF_nCS0,
-	MFP_PIN_DF_nCS1,
-	MFP_PIN_nLUA,
-	MFP_PIN_nLLA,
-	MFP_PIN_DF_nWE,
-	MFP_PIN_DF_ALE_nWE,
-	MFP_PIN_DF_nRE_nOE,
-	MFP_PIN_DF_ADDR0,
-	MFP_PIN_DF_ADDR1,
-	MFP_PIN_DF_ADDR2,
-	MFP_PIN_DF_ADDR3,
-	MFP_PIN_DF_IO0,
-	MFP_PIN_DF_IO1,
-	MFP_PIN_DF_IO2,
-	MFP_PIN_DF_IO3,
-	MFP_PIN_DF_IO4,
-	MFP_PIN_DF_IO5,
-	MFP_PIN_DF_IO6,
-	MFP_PIN_DF_IO7,
-	MFP_PIN_DF_IO8,
-	MFP_PIN_DF_IO9,
-	MFP_PIN_DF_IO10,
-	MFP_PIN_DF_IO11,
-	MFP_PIN_DF_IO12,
-	MFP_PIN_DF_IO13,
-	MFP_PIN_DF_IO14,
-	MFP_PIN_DF_IO15,
-	MFP_PIN_DF_nCS0_SM_nCS2,
-	MFP_PIN_DF_nCS1_SM_nCS3,
-	MFP_PIN_SM_nCS0,
-	MFP_PIN_SM_nCS1,
-	MFP_PIN_DF_WEn,
-	MFP_PIN_DF_REn,
-	MFP_PIN_DF_CLE_SM_OEn,
-	MFP_PIN_DF_ALE_SM_WEn,
-	MFP_PIN_DF_RDY0,
-	MFP_PIN_DF_RDY1,
-
-	MFP_PIN_SM_SCLK,
-	MFP_PIN_SM_BE0,
-	MFP_PIN_SM_BE1,
-	MFP_PIN_SM_ADV,
-	MFP_PIN_SM_ADVMUX,
-	MFP_PIN_SM_RDY,
-
-	MFP_PIN_MMC1_DAT7,
-	MFP_PIN_MMC1_DAT6,
-	MFP_PIN_MMC1_DAT5,
-	MFP_PIN_MMC1_DAT4,
-	MFP_PIN_MMC1_DAT3,
-	MFP_PIN_MMC1_DAT2,
-	MFP_PIN_MMC1_DAT1,
-	MFP_PIN_MMC1_DAT0,
-	MFP_PIN_MMC1_CMD,
-	MFP_PIN_MMC1_CLK,
-	MFP_PIN_MMC1_CD,
-	MFP_PIN_MMC1_WP,
-
-	/* additional pins on PXA930 */
-	MFP_PIN_GSIM_UIO,
-	MFP_PIN_GSIM_UCLK,
-	MFP_PIN_GSIM_UDET,
-	MFP_PIN_GSIM_nURST,
-	MFP_PIN_PMIC_INT,
-	MFP_PIN_RDY,
-
-	MFP_PIN_MAX,
-};
-
-/*
- * a possible MFP configuration is represented by a 32-bit integer
- *
- * bit  0.. 9 - MFP Pin Number (1024 Pins Maximum)
- * bit 10..12 - Alternate Function Selection
- * bit 13..15 - Drive Strength
- * bit 16..18 - Low Power Mode State
- * bit 19..20 - Low Power Mode Edge Detection
- * bit 21..22 - Run Mode Pull State
- *
- * to facilitate the definition, the following macros are provided
- *
- * MFP_CFG_DEFAULT - default MFP configuration value, with
- *		alternate function = 0,
- *		drive strength = fast 3mA (MFP_DS03X)
- *		low power mode = default
- *		edge detection = none
- *
- * MFP_CFG	- default MFPR value with alternate function
- * MFP_CFG_DRV	- default MFPR value with alternate function and
- *		  pin drive strength
- * MFP_CFG_LPM	- default MFPR value with alternate function and
- *		  low power mode
- * MFP_CFG_X	- default MFPR value with alternate function,
- *		  pin drive strength and low power mode
- */
-
-typedef unsigned long mfp_cfg_t;
-
-#define MFP_PIN(x)		((x) & 0x3ff)
-
-#define MFP_AF0			(0x0 << 10)
-#define MFP_AF1			(0x1 << 10)
-#define MFP_AF2			(0x2 << 10)
-#define MFP_AF3			(0x3 << 10)
-#define MFP_AF4			(0x4 << 10)
-#define MFP_AF5			(0x5 << 10)
-#define MFP_AF6			(0x6 << 10)
-#define MFP_AF7			(0x7 << 10)
-#define MFP_AF_MASK		(0x7 << 10)
-#define MFP_AF(x)		(((x) >> 10) & 0x7)
-
-#define MFP_DS01X		(0x0 << 13)
-#define MFP_DS02X		(0x1 << 13)
-#define MFP_DS03X		(0x2 << 13)
-#define MFP_DS04X		(0x3 << 13)
-#define MFP_DS06X		(0x4 << 13)
-#define MFP_DS08X		(0x5 << 13)
-#define MFP_DS10X		(0x6 << 13)
-#define MFP_DS13X		(0x7 << 13)
-#define MFP_DS_MASK		(0x7 << 13)
-#define MFP_DS(x)		(((x) >> 13) & 0x7)
-
-#define MFP_LPM_DEFAULT		(0x0 << 16)
-#define MFP_LPM_DRIVE_LOW	(0x1 << 16)
-#define MFP_LPM_DRIVE_HIGH	(0x2 << 16)
-#define MFP_LPM_PULL_LOW	(0x3 << 16)
-#define MFP_LPM_PULL_HIGH	(0x4 << 16)
-#define MFP_LPM_FLOAT		(0x5 << 16)
-#define MFP_LPM_INPUT		(0x6 << 16)
-#define MFP_LPM_STATE_MASK	(0x7 << 16)
-#define MFP_LPM_STATE(x)	(((x) >> 16) & 0x7)
-
-#define MFP_LPM_EDGE_NONE	(0x0 << 19)
-#define MFP_LPM_EDGE_RISE	(0x1 << 19)
-#define MFP_LPM_EDGE_FALL	(0x2 << 19)
-#define MFP_LPM_EDGE_BOTH	(0x3 << 19)
-#define MFP_LPM_EDGE_MASK	(0x3 << 19)
-#define MFP_LPM_EDGE(x)		(((x) >> 19) & 0x3)
-
-#define MFP_PULL_NONE		(0x0 << 21)
-#define MFP_PULL_LOW		(0x1 << 21)
-#define MFP_PULL_HIGH		(0x2 << 21)
-#define MFP_PULL_BOTH		(0x3 << 21)
-#define MFP_PULL_FLOAT		(0x4 << 21)
-#define MFP_PULL_MASK		(0x7 << 21)
-#define MFP_PULL(x)		(((x) >> 21) & 0x7)
-
-#define MFP_CFG_DEFAULT		(MFP_AF0 | MFP_DS03X | MFP_LPM_DEFAULT |\
-				 MFP_LPM_EDGE_NONE | MFP_PULL_NONE)
-
-#define MFP_CFG(pin, af)		\
-	((MFP_CFG_DEFAULT & ~MFP_AF_MASK) |\
-	 (MFP_PIN(MFP_PIN_##pin) | MFP_##af))
-
-#define MFP_CFG_DRV(pin, af, drv)	\
-	((MFP_CFG_DEFAULT & ~(MFP_AF_MASK | MFP_DS_MASK)) |\
-	 (MFP_PIN(MFP_PIN_##pin) | MFP_##af | MFP_##drv))
-
-#define MFP_CFG_LPM(pin, af, lpm)	\
-	((MFP_CFG_DEFAULT & ~(MFP_AF_MASK | MFP_LPM_STATE_MASK)) |\
-	 (MFP_PIN(MFP_PIN_##pin) | MFP_##af | MFP_LPM_##lpm))
-
-#define MFP_CFG_X(pin, af, drv, lpm)	\
-	((MFP_CFG_DEFAULT & ~(MFP_AF_MASK | MFP_DS_MASK | MFP_LPM_STATE_MASK)) |\
-	 (MFP_PIN(MFP_PIN_##pin) | MFP_##af | MFP_##drv | MFP_LPM_##lpm))
-
-#if defined(CONFIG_ARCH_PXA3XX)
-/*
- * each MFP pin will have a MFPR register, since the offset of the
- * register varies between processors, the processor specific code
- * should initialize the pin offsets by mfp_init()
- *
- * mfp_init_base() - accepts a virtual base for all MFPR registers and
- * initialize the MFP table to a default state
- *
- * mfp_init_addr() - accepts a table of "mfp_addr_map" structure, which
- * represents a range of MFP pins from "start" to "end", with the offset
- * begining at "offset", to define a single pin, let "end" = -1.
- *
- * use
- *
- * MFP_ADDR_X() to define a range of pins
- * MFP_ADDR()   to define a single pin
- * MFP_ADDR_END to signal the end of pin offset definitions
- */
-struct mfp_addr_map {
-	unsigned int	start;
-	unsigned int	end;
-	unsigned long	offset;
-};
-
-#define MFP_ADDR_X(start, end, offset) \
-	{ MFP_PIN_##start, MFP_PIN_##end, offset }
-
-#define MFP_ADDR(pin, offset) \
-	{ MFP_PIN_##pin, -1, offset }
-
-#define MFP_ADDR_END	{ MFP_PIN_INVALID, 0 }
-
-void __init mfp_init_base(void __iomem *mfpr_base);
-void __init mfp_init_addr(struct mfp_addr_map *map);
-
-/*
- * mfp_{read, write}()	- for direct read/write access to the MFPR register
- * mfp_config()		- for configuring a group of MFPR registers
- * mfp_config_lpm()	- configuring all low power MFPR registers for suspend
- * mfp_config_run()	- configuring all run time  MFPR registers after resume
- */
-unsigned long mfp_read(int mfp);
-void mfp_write(int mfp, unsigned long mfpr_val);
-void mfp_config(unsigned long *mfp_cfgs, int num);
-void mfp_config_run(void);
-void mfp_config_lpm(void);
-void mfp_init(void);
-#endif /* CONFIG_ARCH_PXA3XX */
-
-#endif /* __ASM_PLAT_MFP_H */
diff --git a/arch/arm/mach-pxa/mfp-pxa3xx.c b/arch/arm/mach-pxa/mfp-pxa3xx.c
index df4922453d..af80ab24ad 100644
--- a/arch/arm/mach-pxa/mfp-pxa3xx.c
+++ b/arch/arm/mach-pxa/mfp-pxa3xx.c
@@ -18,7 +18,7 @@
 #include <io.h>
 #include <mach/hardware.h>
 #include <mach/mfp-pxa3xx.h>
-#include <plat/mfp.h>
+#include <mach/mfp.h>
 
 #define MFPR_SIZE	(PAGE_SIZE)
 
-- 
2.30.2



