Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo1.mail-out.ovh.net ([46.105.60.232]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VLnbC-0003a5-DJ
 for barebox@lists.infradead.org; Tue, 17 Sep 2013 05:13:19 +0000
Received: from mail610.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 107A41004E04
 for <barebox@lists.infradead.org>; Tue, 17 Sep 2013 07:12:57 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 17 Sep 2013 07:14:04 +0200
Message-Id: <1379394844-30759-1-git-send-email-plagnioj@jcrosoft.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/1] at91: add irq fixup
To: barebox@lists.infradead.org
Cc: Nicolas Ferre <nicolas.ferre@atmel.com>

Some of the irq can still be on after a reset or power on as the IP are
powered by the backup power. This could lead to an interrupt dead lock
when the kernel boot. So disable them before booting.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: Nicolas Ferre <nicolas.ferre@atmel.com>
---
 arch/arm/mach-at91/Makefile                |  2 +-
 arch/arm/mach-at91/at91sam9260_devices.c   |  8 +++++++
 arch/arm/mach-at91/at91sam9261_devices.c   |  8 +++++++
 arch/arm/mach-at91/at91sam9263_devices.c   |  8 +++++++
 arch/arm/mach-at91/at91sam9g45_devices.c   |  7 ++++++
 arch/arm/mach-at91/generic.h               |  2 ++
 arch/arm/mach-at91/include/mach/at91_rtt.h | 35 ++++++++++++++++++++++++++++++
 arch/arm/mach-at91/irq_fixup.c             | 22 +++++++++++++++++++
 8 files changed, 91 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/mach-at91/include/mach/at91_rtt.h
 create mode 100644 arch/arm/mach-at91/irq_fixup.c

diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
index f098e0e..ab80e5f 100644
--- a/arch/arm/mach-at91/Makefile
+++ b/arch/arm/mach-at91/Makefile
@@ -1,4 +1,4 @@
-obj-y += setup.o clock.o gpio.o
+obj-y += setup.o clock.o gpio.o irq_fixup.o
 obj-$(CONFIG_CMD_AT91_BOOT_TEST) += boot_test_cmd.o
 
 obj-$(CONFIG_AT91_BOOTSTRAP) += bootstrap.o
diff --git a/arch/arm/mach-at91/at91sam9260_devices.c b/arch/arm/mach-at91/at91sam9260_devices.c
index 84a0329..bf2b5b7 100644
--- a/arch/arm/mach-at91/at91sam9260_devices.c
+++ b/arch/arm/mach-at91/at91sam9260_devices.c
@@ -10,6 +10,7 @@
  *
  */
 #include <common.h>
+#include <init.h>
 #include <sizes.h>
 #include <gpio.h>
 #include <asm/armlinux.h>
@@ -398,3 +399,10 @@ void at91_add_device_mci(short mmc_id, struct atmel_mci_platform_data *data)
 #else
 void at91_add_device_mci(short mmc_id, struct atmel_mci_platform_data *data) {}
 #endif
+
+static int at91_fixup_device(void)
+{
+	at91_rtt_irq_fixup(IOMEM(AT91SAM9260_BASE_RTT));
+	return 0;
+}
+late_initcall(at91_fixup_device);
diff --git a/arch/arm/mach-at91/at91sam9261_devices.c b/arch/arm/mach-at91/at91sam9261_devices.c
index b522afb..9ac9f20 100644
--- a/arch/arm/mach-at91/at91sam9261_devices.c
+++ b/arch/arm/mach-at91/at91sam9261_devices.c
@@ -10,6 +10,7 @@
  *
  */
 #include <common.h>
+#include <init.h>
 #include <sizes.h>
 #include <gpio.h>
 #include <asm/armlinux.h>
@@ -351,3 +352,10 @@ void at91_add_device_mci(short mmc_id, struct atmel_mci_platform_data *data)
 #else
 void at91_add_device_mci(short mmc_id, struct atmel_mci_platform_data *data) {}
 #endif
+
+static int at91_fixup_device(void)
+{
+	at91_rtt_irq_fixup(IOMEM(AT91SAM9261_BASE_RTT));
+	return 0;
+}
+late_initcall(at91_fixup_device);
diff --git a/arch/arm/mach-at91/at91sam9263_devices.c b/arch/arm/mach-at91/at91sam9263_devices.c
index 9d8bc32..6860ad0 100644
--- a/arch/arm/mach-at91/at91sam9263_devices.c
+++ b/arch/arm/mach-at91/at91sam9263_devices.c
@@ -10,6 +10,7 @@
  *
  */
 #include <common.h>
+#include <init.h>
 #include <sizes.h>
 #include <gpio.h>
 #include <asm/armlinux.h>
@@ -426,3 +427,10 @@ void at91_add_device_mci(short mmc_id, struct atmel_mci_platform_data *data)
 void at91_add_device_mci(short mmc_id, struct atmel_mci_platform_data *data) {}
 #endif
 
+static int at91_fixup_device(void)
+{
+	at91_rtt_irq_fixup(IOMEM(AT91SAM9263_BASE_RTT0));
+	at91_rtt_irq_fixup(IOMEM(AT91SAM9263_BASE_RTT1));
+	return 0;
+}
+late_initcall(at91_fixup_device);
diff --git a/arch/arm/mach-at91/at91sam9g45_devices.c b/arch/arm/mach-at91/at91sam9g45_devices.c
index 3e0bc10..bd7ab93 100644
--- a/arch/arm/mach-at91/at91sam9g45_devices.c
+++ b/arch/arm/mach-at91/at91sam9g45_devices.c
@@ -10,6 +10,7 @@
  *
  */
 #include <common.h>
+#include <init.h>
 #include <sizes.h>
 #include <gpio.h>
 #include <asm/armlinux.h>
@@ -451,3 +452,9 @@ void __init at91_add_device_lcdc(struct atmel_lcdfb_platform_data *data)
 void __init at91_add_device_lcdc(struct atmel_lcdfb_platform_data *data) {}
 #endif
 
+static int at91_fixup_device(void)
+{
+	at91_rtt_irq_fixup(IOMEM(AT91SAM9G45_BASE_RTT));
+	return 0;
+}
+late_initcall(at91_fixup_device);
diff --git a/arch/arm/mach-at91/generic.h b/arch/arm/mach-at91/generic.h
index deba019..a47bcb2 100644
--- a/arch/arm/mach-at91/generic.h
+++ b/arch/arm/mach-at91/generic.h
@@ -35,3 +35,5 @@ static inline struct device_d *at91_add_sam9_smc(int id, resource_size_t start,
 	return add_generic_device("at91sam9-smc", id, NULL, start, size,
 				  IORESOURCE_MEM, NULL);
 }
+
+void at91_rtt_irq_fixup(void *base);
diff --git a/arch/arm/mach-at91/include/mach/at91_rtt.h b/arch/arm/mach-at91/include/mach/at91_rtt.h
new file mode 100644
index 0000000..7ec75de
--- /dev/null
+++ b/arch/arm/mach-at91/include/mach/at91_rtt.h
@@ -0,0 +1,35 @@
+/*
+ * arch/arm/mach-at91/include/mach/at91_rtt.h
+ *
+ * Copyright (C) 2007 Andrew Victor
+ * Copyright (C) 2007 Atmel Corporation.
+ *
+ * Real-time Timer (RTT) - System peripherals regsters.
+ * Based on AT91SAM9261 datasheet revision D.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ */
+
+#ifndef AT91_RTT_H
+#define AT91_RTT_H
+
+#define AT91_RTT_MR		0x00			/* Real-time Mode Register */
+#define		AT91_RTT_RTPRES		(0xffff << 0)		/* Real-time Timer Prescaler Value */
+#define		AT91_RTT_ALMIEN		(1 << 16)		/* Alarm Interrupt Enable */
+#define		AT91_RTT_RTTINCIEN	(1 << 17)		/* Real Time Timer Increment Interrupt Enable */
+#define		AT91_RTT_RTTRST		(1 << 18)		/* Real Time Timer Restart */
+
+#define AT91_RTT_AR		0x04			/* Real-time Alarm Register */
+#define		AT91_RTT_ALMV		(0xffffffff)		/* Alarm Value */
+
+#define AT91_RTT_VR		0x08			/* Real-time Value Register */
+#define		AT91_RTT_CRTV		(0xffffffff)		/* Current Real-time Value */
+
+#define AT91_RTT_SR		0x0c			/* Real-time Status Register */
+#define		AT91_RTT_ALMS		(1 << 0)		/* Real-time Alarm Status */
+#define		AT91_RTT_RTTINC		(1 << 1)		/* Real-time Timer Increment */
+
+#endif
diff --git a/arch/arm/mach-at91/irq_fixup.c b/arch/arm/mach-at91/irq_fixup.c
new file mode 100644
index 0000000..a9eebd7
--- /dev/null
+++ b/arch/arm/mach-at91/irq_fixup.c
@@ -0,0 +1,22 @@
+/*
+ * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * Under GPLv2 only
+ */
+
+#include <io.h>
+#include <mach/at91_rtt.h>
+
+/*
+ * As the RTT is powered by the backup power so if the interrupt
+ * is still on when the kernel start, the kernel will end up with
+ * dead lock interrupt that it can not clear. Because the interrupt line is
+ * shared with the basic timer (PIT) on AT91_ID_SYS.
+ */
+void at91_rtt_irq_fixup(void *base)
+{
+	void *reg = base + AT91_RTT_MR;
+	u32 mr = readl(reg);
+
+	writel(mr & ~(AT91_RTT_ALMIEN | AT91_RTT_RTTINCIEN), reg);
+}
-- 
1.8.4.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
