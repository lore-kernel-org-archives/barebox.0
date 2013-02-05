Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 14.mo4.mail-out.ovh.net ([46.105.40.29]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U2msP-00010y-Jj
 for barebox@lists.infradead.org; Tue, 05 Feb 2013 18:04:15 +0000
Received: from mail423.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 45199104FDA4
 for <barebox@lists.infradead.org>; Tue,  5 Feb 2013 19:14:23 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue,  5 Feb 2013 19:02:58 +0100
Message-Id: <1360087380-5700-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20130205175927.GD19322@game.jcrosoft.org>
References: <20130205175927.GD19322@game.jcrosoft.org>
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
Subject: [PATCH 1/3] at91: add boot mode detection support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-at91/Kconfig                 |    8 ++++
 arch/arm/mach-at91/Makefile                |    2 +
 arch/arm/mach-at91/bootmode.c              |   57 ++++++++++++++++++++++
 arch/arm/mach-at91/include/mach/bootmode.h |   70 ++++++++++++++++++++++++++++
 arch/arm/mach-at91/setup.c                 |    3 ++
 5 files changed, 140 insertions(+)
 create mode 100644 arch/arm/mach-at91/bootmode.c
 create mode 100644 arch/arm/mach-at91/include/mach/bootmode.h

diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index b8528d0..f5c995d 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -9,6 +9,9 @@ config HAVE_AT91_DBGU1
 config HAVE_AT91_LOWLEVEL_INIT
 	bool
 
+config HAVE_AT91_BOOTMODE
+	bool
+
 config AT91SAM9_SMC
 	bool
 
@@ -573,4 +576,9 @@ config AT91_LOAD_BAREBOX_SRAM
 	depends on SHELL_NONE || HAVE_AT91_LOAD_BAREBOX_SRAM
 	default y if SHELL_NONE
 
+config AT91_BOOTMODE
+	bool "at91 bootmode detect and export"
+	depends on HAVE_AT91_BOOTMODE
+	default y
+
 endif
diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
index 53ca570..82b4e86 100644
--- a/arch/arm/mach-at91/Makefile
+++ b/arch/arm/mach-at91/Makefile
@@ -22,6 +22,8 @@ obj-$(CONFIG_AT91SAM9G45_RESET) += at91sam9g45_reset.o
 obj-$(CONFIG_AT91SAM9_SMC) += sam9_smc.o
 obj-$(CONFIG_AT91SAM9_TIMER) += at91sam926x_time.o
 
+obj-$(CONFIG_AT91_BOOTMODE) += bootmode.o
+
 # CPU-specific support
 obj-$(CONFIG_ARCH_AT91RM9200)	+= at91rm9200.o at91rm9200_time.o at91rm9200_devices.o
 obj-$(CONFIG_ARCH_AT91SAM9260) += at91sam9260.o at91sam9260_devices.o
diff --git a/arch/arm/mach-at91/bootmode.c b/arch/arm/mach-at91/bootmode.c
new file mode 100644
index 0000000..c731da9
--- /dev/null
+++ b/arch/arm/mach-at91/bootmode.c
@@ -0,0 +1,57 @@
+/*
+ * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * GPLv2 only
+ */
+
+#include <common.h>
+#include <mach/bootmode.h>
+
+struct at91_boot_mode at91_soc_boot_mode;
+
+static const char *soc_boot_from[] = {
+	[AT91_BOOT_FROM_SPI]		= "spi",
+	[AT91_BOOT_FROM_MCI]		= "mci",
+	[AT91_BOOT_FROM_SMC]		= "smc",
+	[AT91_BOOT_FROM_TWD]		= "twd",
+	[AT91_BOOT_FROM_UNKNOWN]	= "Unknown"
+};
+
+static const char *soc_boot_media[] = {
+	[AT91_BOOT_MEDIA_SD]		= "SD",
+	[AT91_BOOT_MEDIA_MMC]		= "MMC",
+	[AT91_BOOT_MEDIA_EMMC]		= "eMMC",
+	[AT91_BOOT_MEDIA_AT45]		= "at45",
+	[AT91_BOOT_MEDIA_AT25]		= "at25",
+	[AT91_BOOT_MEDIA_NAND]		= "NAND",
+	[AT91_BOOT_MEDIA_NOR]		= "NOR",
+	[AT91_BOOT_MEDIA_UNKNOWN]	= "Unknown"
+};
+
+void at91_bootmode_device_register(void)
+{
+	struct device_d *dev;
+	const char *name;
+	char str[16];
+
+	dev = add_generic_device_res("bootloc", DEVICE_ID_SINGLE, NULL, 0, NULL);
+
+	if (at91_soc_boot_mode.from > ARRAY_SIZE(soc_boot_from))
+		name = soc_boot_from[AT91_BOOT_FROM_UNKNOWN];
+	else
+		name = soc_boot_from[at91_soc_boot_mode.from];
+
+	dev_add_param_fixed(dev, "from", (char*)name);
+
+	if (at91_soc_boot_mode.media > ARRAY_SIZE(soc_boot_media))
+		name = soc_boot_media[AT91_BOOT_MEDIA_UNKNOWN];
+	else
+		name = soc_boot_media[at91_soc_boot_mode.media];
+
+	dev_add_param_fixed(dev, "media", (char*)name);
+	sprintf(str, "%d", at91_soc_boot_mode.interface);
+	dev_add_param_fixed(dev, "interface", str);
+	sprintf(str, "%d", at91_soc_boot_mode.cs);
+	dev_add_param_fixed(dev, "cs", str);
+
+}
diff --git a/arch/arm/mach-at91/include/mach/bootmode.h b/arch/arm/mach-at91/include/mach/bootmode.h
new file mode 100644
index 0000000..eb2f948
--- /dev/null
+++ b/arch/arm/mach-at91/include/mach/bootmode.h
@@ -0,0 +1,70 @@
+/*
+ * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * GPLv2 only
+ */
+
+#ifndef __BOOTMODE_H__
+#define __BOOTMODE_H__
+
+extern struct at91_boot_mode at91_soc_boot_mode;
+
+struct at91_boot_mode {
+	u16 from;
+	u16 interface;
+	u16 media;
+	u16 cs;
+};
+
+enum at91_soc_boot_from {
+	AT91_BOOT_FROM_UNKNOWN,
+	AT91_BOOT_FROM_SPI,
+	AT91_BOOT_FROM_MCI,
+	AT91_BOOT_FROM_SMC,
+	AT91_BOOT_FROM_TWD,
+};
+
+enum at91_soc_boot_media {
+	AT91_BOOT_MEDIA_UNKNOWN,
+	AT91_BOOT_MEDIA_SD,
+	AT91_BOOT_MEDIA_MMC,
+	AT91_BOOT_MEDIA_EMMC,
+	AT91_BOOT_MEDIA_AT45,
+	AT91_BOOT_MEDIA_AT25,
+	AT91_BOOT_MEDIA_NAND,
+	AT91_BOOT_MEDIA_NOR,
+};
+
+#ifdef CONFIG_AT91_BOOTMODE
+void at91_bootmode_device_register(void);
+
+#define at91_boot_from_spi()	(at91_soc_boot_mode.from == AT91_BOOT_FROM_SPI)
+#define at91_boot_from_mci()	(at91_soc_boot_mode.from == AT91_BOOT_FROM_MCI)
+#define at91_boot_from_smc()	(at91_soc_boot_mode.from == AT91_BOOT_FROM_SMC)
+#define at91_boot_from_twd()	(at91_soc_boot_mode.from == AT91_BOOT_FROM_TWD)
+
+#define at91_boot_media_sd()	(at91_soc_boot_mode.media == AT91_BOOT_MEDIA_SD)
+#define at91_boot_media_mmc()	(at91_soc_boot_mode.media == AT91_BOOT_MEDIA_MMC)
+#define at91_boot_media_emmc()	(at91_soc_boot_mode.media == AT91_BOOT_MEDIA_EMMC)
+#define at91_boot_media_at45()	(at91_soc_boot_mode.media == AT91_BOOT_MEDIA_AT45)
+#define at91_boot_media_at25()	(at91_soc_boot_mode.media == AT91_BOOT_MEDIA_AT25)
+#define at91_boot_media_nand()	(at91_soc_boot_mode.media == AT91_BOOT_MEDIA_NAND)
+#define at91_boot_media_nor()	(at91_soc_boot_mode.media == AT91_BOOT_MEDIA_NOR)
+#else
+static void inline void at91_bootmode_device_register(void) {}
+
+#define at91_boot_from_spi()	(0)
+#define at91_boot_from_mci()	(0)
+#define at91_boot_from_smc()	(0)
+#define at91_boot_from_twd()	(0)
+
+#define at91_boot_media_sd()	(0)
+#define at91_boot_media_mmc()	(0)
+#define at91_boot_media_emmc()	(0)
+#define at91_boot_media_at45()	(0)
+#define at91_boot_media_at25()	(0)
+#define at91_boot_media_nand()	(0)
+#define at91_boot_media_nor()	(0)
+#endif
+
+#endif /* __BOOTMODE_H__ */
diff --git a/arch/arm/mach-at91/setup.c b/arch/arm/mach-at91/setup.c
index 0444a5f..d5dc943 100644
--- a/arch/arm/mach-at91/setup.c
+++ b/arch/arm/mach-at91/setup.c
@@ -12,6 +12,7 @@
 #include <mach/hardware.h>
 #include <mach/cpu.h>
 #include <mach/at91_dbgu.h>
+#include <mach/bootmode.h>
 
 #include "soc.h"
 
@@ -248,6 +249,8 @@ static int at91_soc_device(void)
 	dev_add_param_fixed(dev, "name", (char*)at91_get_soc_type(&at91_soc_initdata));
 	dev_add_param_fixed(dev, "subname", (char*)at91_get_soc_subtype(&at91_soc_initdata));
 
+	at91_bootmode_device_register();
+
 	return 0;
 }
 coredevice_initcall(at91_soc_device);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
