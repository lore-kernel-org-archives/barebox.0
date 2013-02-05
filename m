Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo4.mail-out.ovh.net ([188.165.36.253]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U2msQ-000111-IC
 for barebox@lists.infradead.org; Tue, 05 Feb 2013 18:04:18 +0000
Received: from mail423.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 6387E104FDC9
 for <barebox@lists.infradead.org>; Tue,  5 Feb 2013 19:14:23 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue,  5 Feb 2013 19:02:59 +0100
Message-Id: <1360087380-5700-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1360087380-5700-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130205175927.GD19322@game.jcrosoft.org>
 <1360087380-5700-1-git-send-email-plagnioj@jcrosoft.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/3] sama5d3: add boot mode supprot
To: barebox@lists.infradead.org

on sama5d3 the bootmode is pass by the rom code via the register r4
so in the at91bootstrap we save the content of r4 in the 2nd gpbr and repass it
via r4 to barebox

you need to last at91bootstrap

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-at91/Kconfig                         |    1 +
 arch/arm/mach-at91/include/mach/sama5d3.h          |    1 +
 arch/arm/mach-at91/include/mach/sama5d3_bootmode.h |   45 +++++++++++
 arch/arm/mach-at91/sama5d3.c                       |   81 ++++++++++++++++++++
 4 files changed, 128 insertions(+)
 create mode 100644 arch/arm/mach-at91/include/mach/sama5d3_bootmode.h

diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index f5c995d..f6ac9cd 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -197,6 +197,7 @@ config ARCH_SAMA5D3
 	select HAVE_AT91_DBGU1
 	select HAS_MACB
 	select AT91SAM9G45_RESET
+	select HAVE_AT91_BOOTMODE
 
 endchoice
 
diff --git a/arch/arm/mach-at91/include/mach/sama5d3.h b/arch/arm/mach-at91/include/mach/sama5d3.h
index 6884ff6..4d1868e 100644
--- a/arch/arm/mach-at91/include/mach/sama5d3.h
+++ b/arch/arm/mach-at91/include/mach/sama5d3.h
@@ -102,6 +102,7 @@
 #define	SAMA5D3_BASE_HSMC	0xffffc000
 #define SAMA5D3_BASE_PIT	0xfffffe30
 #define SAMA5D3_BASE_WDT	0xfffffe40
+#define SAMA5D3_BASE_GPBR	0xfffffe60
 
 #define SAMA5D3_BASE_PMECC	0xffffc070
 #define SAMA5D3_BASE_PMERRLOC	0xffffc500
diff --git a/arch/arm/mach-at91/include/mach/sama5d3_bootmode.h b/arch/arm/mach-at91/include/mach/sama5d3_bootmode.h
new file mode 100644
index 0000000..5ab2895
--- /dev/null
+++ b/arch/arm/mach-at91/include/mach/sama5d3_bootmode.h
@@ -0,0 +1,45 @@
+/*
+ * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * GPLv2 only
+ */
+
+#ifndef __SAMA5D3_BOOTMODE_H__
+#define __SAMA5D3_BOOTMODE_H__
+
+#include <mach/sama5d3.h>
+
+#define SAMA5D3_BOOT_FROM_GPBR		(SAMA5D3_BASE_GPBR + 4)
+
+#define SAMA5D3_BOOT_FROM_KEY		(0xba << 24)
+
+#define SAMA5D3_BOOT_FROM		(0xf << 0)
+#define		SAMA5D3_BOOT_FROM_SPI		(0 << 0)
+#define		SAMA5D3_BOOT_FROM_MCI		(1 << 0)
+#define		SAMA5D3_BOOT_FROM_SMC		(2 << 0)
+#define		SAMA5D3_BOOT_FROM_TWD		(3 << 0)
+
+#define SAMA5D3_BOOT_FROM_INTERFACE	(0xf << 4)
+#define 	SAMA5D3_BOOT_FROM_INTERFACE_SHIFT	4
+#define		SAMA5D3_BOOT_FROM_INTERFACE_0	(0 << 4)
+#define		SAMA5D3_BOOT_FROM_INTERFACE_1	(1 << 4)
+#define		SAMA5D3_BOOT_FROM_INTERFACE_2	(2 << 4)
+#define		SAMA5D3_BOOT_FROM_INTERFACE_3	(3 << 4)
+#define		SAMA5D3_BOOT_FROM_INTERFACE_4	(4 << 4)
+
+#define SAMA5D3_BOOT_FROM_MEDIA_TYPE	(0xf << 8)
+#define		SAMA5D3_BOOT_FROM_MEDIA_SD	(0 << 8)
+#define		SAMA5D3_BOOT_FROM_MEDIA_MMC	(1 << 8)
+#define		SAMA5D3_BOOT_FROM_MEDIA_EMMC	(2 << 8)
+#define		SAMA5D3_BOOT_FROM_MEDIA_AT25	(0 << 8)
+#define		SAMA5D3_BOOT_FROM_MEDIA_AT45	(1 << 8)
+
+#define SAMA5D3_BOOT_FROM_CS		(0xf << 12)
+#define 	SAMA5D3_BOOT_FROM_CS_SHIFT	12
+#define		SAMA5D3_BOOT_FROM_CS_0		(0 << 12)
+#define		SAMA5D3_BOOT_FROM_CS_1		(1 << 12)
+#define		SAMA5D3_BOOT_FROM_CS_2		(2 << 12)
+#define		SAMA5D3_BOOT_FROM_CS_3		(3 << 12)
+#define		SAMA5D3_BOOT_FROM_CS_4		(4 << 12)
+
+#endif /* __SAMA5D3_BOOTMODE_H__ */
diff --git a/arch/arm/mach-at91/sama5d3.c b/arch/arm/mach-at91/sama5d3.c
index 0eec696..054683b 100644
--- a/arch/arm/mach-at91/sama5d3.c
+++ b/arch/arm/mach-at91/sama5d3.c
@@ -5,6 +5,8 @@
 #include <mach/at91_pmc.h>
 #include <mach/io.h>
 #include <mach/cpu.h>
+#include <mach/bootmode.h>
+#include <mach/sama5d3_bootmode.h>
 #include <linux/clk.h>
 
 #include "soc.h"
@@ -369,6 +371,82 @@ static void __init sama5d3_register_clocks(void)
 	//clk_enable(&dma1_clk);
 }
 
+static void sama5_boot_form_mci(uint32_t gpbr)
+{
+	switch (gpbr & SAMA5D3_BOOT_FROM_MEDIA_TYPE) {
+	case SAMA5D3_BOOT_FROM_MEDIA_SD:
+		at91_soc_boot_mode.media = AT91_BOOT_MEDIA_SD;
+		break;
+	case SAMA5D3_BOOT_FROM_MEDIA_MMC:
+		at91_soc_boot_mode.media = AT91_BOOT_MEDIA_MMC;
+		break;
+	case SAMA5D3_BOOT_FROM_MEDIA_EMMC:
+		at91_soc_boot_mode.media = AT91_BOOT_MEDIA_EMMC;
+		break;
+	}
+}
+
+static void sama5_boot_form_smc(void)
+{
+	switch (at91_soc_boot_mode.cs) {
+	case 0:
+		at91_soc_boot_mode.media = AT91_BOOT_MEDIA_NOR;
+		break;
+	case 3:
+		at91_soc_boot_mode.media = AT91_BOOT_MEDIA_NAND;
+		break;
+	}
+}
+
+static void sama5_boot_form_spi(uint32_t gpbr)
+{
+	switch (gpbr & SAMA5D3_BOOT_FROM_MEDIA_TYPE) {
+	case SAMA5D3_BOOT_FROM_MEDIA_SD:
+		at91_soc_boot_mode.media = AT91_BOOT_MEDIA_SD;
+		break;
+	case SAMA5D3_BOOT_FROM_MEDIA_MMC:
+		at91_soc_boot_mode.media = AT91_BOOT_MEDIA_MMC;
+		break;
+	case SAMA5D3_BOOT_FROM_MEDIA_EMMC:
+		at91_soc_boot_mode.media = AT91_BOOT_MEDIA_EMMC;
+		break;
+	}
+}
+
+static void sama5d3_boot_from(void)
+{
+	uint32_t gpbr = __raw_readl(SAMA5D3_BOOT_FROM_GPBR);
+
+	at91_soc_boot_mode.cs = 0;
+	at91_soc_boot_mode.media = AT91_BOOT_MEDIA_UNKNOWN;
+
+	if ((gpbr & SAMA5D3_BOOT_FROM_KEY) != SAMA5D3_BOOT_FROM_KEY) {
+		pr_warn("gpbr: boot from invalid\n");
+		return;
+	}
+
+	at91_soc_boot_mode.interface = (gpbr & SAMA5D3_BOOT_FROM_INTERFACE) >> SAMA5D3_BOOT_FROM_INTERFACE_SHIFT;
+	at91_soc_boot_mode.cs = (gpbr & SAMA5D3_BOOT_FROM_CS) >> SAMA5D3_BOOT_FROM_CS_SHIFT;
+
+	switch (gpbr & SAMA5D3_BOOT_FROM) {
+	case SAMA5D3_BOOT_FROM_SPI:
+		at91_soc_boot_mode.from = AT91_BOOT_FROM_SPI;
+		sama5_boot_form_spi(gpbr);
+		break;
+	case SAMA5D3_BOOT_FROM_MCI:
+		at91_soc_boot_mode.from = AT91_BOOT_FROM_MCI;
+		sama5_boot_form_mci(gpbr);
+		break;
+	case SAMA5D3_BOOT_FROM_SMC:
+		at91_soc_boot_mode.from = AT91_BOOT_FROM_SMC;
+		sama5_boot_form_smc();
+		break;
+	case SAMA5D3_BOOT_FROM_TWD:
+		at91_soc_boot_mode.from = AT91_BOOT_FROM_TWD;
+		break;
+	}
+}
+
 /* --------------------------------------------------------------------
  *  AT91SAM9x5 processor initialization
  * -------------------------------------------------------------------- */
@@ -381,6 +459,9 @@ static void sama5d3_initialize(void)
 	/* Register the processor-specific clocks */
 	sama5d3_register_clocks();
 
+	if (IS_ENABLED(CONFIG_AT91_BOOTMODE))
+		sama5d3_boot_from();
+
 	/* Register GPIO subsystem */
 	at91_add_sam9x5_gpio(0, SAMA5D3_BASE_PIOA);
 	at91_add_sam9x5_gpio(1, SAMA5D3_BASE_PIOB);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
