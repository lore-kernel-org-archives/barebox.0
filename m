Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo3.mail-out.ovh.net ([87.98.172.162]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TMwXj-0007ob-Vv
 for barebox@lists.infradead.org; Sat, 13 Oct 2012 07:53:59 +0000
Received: from mail186.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 203C4FF88C5
 for <barebox@lists.infradead.org>; Sat, 13 Oct 2012 10:03:10 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat, 13 Oct 2012 09:51:29 +0200
Message-Id: <1350114689-19272-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1350114689-19272-1-git-send-email-plagnioj@jcrosoft.com>
References: <1350114689-19272-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 4/4] at91: add reset and wakeup source detection support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-at91/Makefile                  |    1 +
 arch/arm/mach-at91/include/mach/at91_shdwc.h |   40 +++++++++++++++++
 arch/arm/mach-at91/reset_source.c            |   59 ++++++++++++++++++++++++++
 3 files changed, 100 insertions(+)
 create mode 100644 arch/arm/mach-at91/include/mach/at91_shdwc.h
 create mode 100644 arch/arm/mach-at91/reset_source.c

diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
index 3ade725..1f912c6 100644
--- a/arch/arm/mach-at91/Makefile
+++ b/arch/arm/mach-at91/Makefile
@@ -8,6 +8,7 @@ pbl-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += $(lowlevel_init-y)
 
 obj-$(CONFIG_AT91SAM9_RESET) += at91sam9_reset.o
 obj-$(CONFIG_AT91SAM9G45_RESET) += at91sam9g45_reset.o
+obj-$(CONFIG_RESET_SOURCE) += reset_source.o
 
 # CPU-specific support
 obj-$(CONFIG_ARCH_AT91RM9200)	+= at91rm9200.o at91rm9200_time.o at91rm9200_devices.o
diff --git a/arch/arm/mach-at91/include/mach/at91_shdwc.h b/arch/arm/mach-at91/include/mach/at91_shdwc.h
new file mode 100644
index 0000000..75e6801
--- /dev/null
+++ b/arch/arm/mach-at91/include/mach/at91_shdwc.h
@@ -0,0 +1,40 @@
+/*
+ * arch/arm/mach-at91/include/mach/at91_shdwc.h
+ *
+ * Copyright (C) 2007 Andrew Victor
+ * Copyright (C) 2007 Atmel Corporation.
+ *
+ * Shutdown Controller (SHDWC) - System peripherals regsters.
+ * Based on AT91SAM9261 datasheet revision D.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ */
+
+#ifndef AT91_SHDWC_H
+#define AT91_SHDWC_H
+
+#define AT91_SHDW_CR		(AT91_SHDWC + 0x00)	/* Shut Down Control Register */
+#define		AT91_SHDW_SHDW		(1    << 0)		/* Shut Down command */
+#define		AT91_SHDW_KEY		(0xa5 << 24)		/* KEY Password */
+
+#define AT91_SHDW_MR		(AT91_SHDWC + 0x04)	/* Shut Down Mode Register */
+#define		AT91_SHDW_WKMODE0	(3 << 0)		/* Wake-up 0 Mode Selection */
+#define			AT91_SHDW_WKMODE0_NONE		0
+#define			AT91_SHDW_WKMODE0_HIGH		1
+#define			AT91_SHDW_WKMODE0_LOW		2
+#define			AT91_SHDW_WKMODE0_ANYLEVEL	3
+#define		AT91_SHDW_CPTWK0_MAX	0xf			/* Maximum Counter On Wake Up 0 */
+#define		AT91_SHDW_CPTWK0	(AT91_SHDW_CPTWK0_MAX << 4) /* Counter On Wake Up 0 */
+#define			AT91_SHDW_CPTWK0_(x)	((x) << 4)
+#define		AT91_SHDW_RTTWKEN	(1   << 16)		/* Real Time Timer Wake-up Enable */
+#define		AT91_SHDW_RTCWKEN	(1   << 17)		/* Real Time Clock Wake-up Enable */
+
+#define AT91_SHDW_SR		(AT91_SHDWC + 0x08)	/* Shut Down Status Register */
+#define		AT91_SHDW_WAKEUP0	(1 <<  0)		/* Wake-up 0 Status */
+#define		AT91_SHDW_RTTWK		(1 << 16)		/* Real-time Timer Wake-up */
+#define		AT91_SHDW_RTCWK		(1 << 17)		/* Real-time Clock Wake-up [SAM9RL] */
+
+#endif
diff --git a/arch/arm/mach-at91/reset_source.c b/arch/arm/mach-at91/reset_source.c
new file mode 100644
index 0000000..b078941
--- /dev/null
+++ b/arch/arm/mach-at91/reset_source.c
@@ -0,0 +1,59 @@
+/*
+ * (C) Copyright 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrsoft.com>
+ *
+ * GPLv2
+ */
+
+#include <reset_source.h>
+#include <io.h>
+#include <init.h>
+#include <mach/hardware.h>
+#include <mach/io.h>
+
+#include <mach/at91_rstc.h>
+#include <mach/at91_shdwc.h>
+
+static int at91_reset_status(void)
+{
+	u32 reset_type, wake_type;
+
+	reset_type = at91_sys_read(AT91_RSTC_SR) & AT91_RSTC_RSTTYP;
+	wake_type = at91_sys_read(AT91_SHDW_SR);
+
+	switch (reset_type) {
+	case AT91_RSTC_RSTTYP_GENERAL:
+		set_reset_source(RESET_POWER);
+		break;
+	case AT91_RSTC_RSTTYP_WAKEUP:
+		/* board-specific code enabled the wakeup sources */
+		set_reset_source(RESET_WAKEUP);
+
+		/* "wakeup signal" */
+		if (wake_type & AT91_SHDW_WAKEUP0)
+			set_wakeup_source(WAKEUP_USER);
+		else if (wake_type & AT91_SHDW_RTTWK)	/* rtt wakeup */
+			set_wakeup_source(WAKEUP_TIMER);
+		else if (wake_type & AT91_SHDW_RTCWK)	/* rtc wakeup */
+			set_wakeup_source(WAKEUP_RTC);
+		else if (wake_type == 0)		/* power-restored wakeup */
+			set_wakeup_source(WAKEUP_POWER);
+		else					/* unknown wakeup */
+			set_wakeup_source(WAKEUP_UKWNOWN);
+		break;
+	case AT91_RSTC_RSTTYP_WATCHDOG:
+		set_reset_source(RESET_WATCHDOG);
+		break;
+	case AT91_RSTC_RSTTYP_SOFTWARE:
+		set_reset_source(RESET_SOFTWARE);
+		break;
+	case AT91_RSTC_RSTTYP_USER:
+		set_reset_source(RESET_RESET);
+		break;
+	default:
+		set_reset_source(RESET_UKWNOWN);
+		break;
+	}
+
+	return 0;
+}
+device_initcall(at91_reset_status);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
