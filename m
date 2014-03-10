Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22e.google.com ([2a00:1450:4010:c03::22e])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WN7qw-00068G-Qk
 for barebox@lists.infradead.org; Mon, 10 Mar 2014 21:35:20 +0000
Received: by mail-la0-f46.google.com with SMTP id hr17so5040605lab.19
 for <barebox@lists.infradead.org>; Mon, 10 Mar 2014 14:34:56 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 11 Mar 2014 01:34:34 +0400
Message-Id: <1394487281-10462-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1394487281-10462-1-git-send-email-antonynpavlov@gmail.com>
References: <1394487281-10462-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 1/8] clocksource: add dummy software-only clocksource
To: barebox@lists.infradead.org

This driver is very handy for initial barebox porting.
It was used for running barebox on DiGiC2-based camera
and initial porting barebox to Loongson-1 and ar9331.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Reported-by: Alexander Aring <alex.aring@gmail.com>
Reported-by: Alexander Shiyan <shc_work@mail.ru>
---
 drivers/clocksource/Kconfig  |  9 +++++++
 drivers/clocksource/Makefile |  1 +
 drivers/clocksource/dummy.c  | 56 ++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 66 insertions(+)

diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
index 4ef25ec..f9e00ff 100644
--- a/drivers/clocksource/Kconfig
+++ b/drivers/clocksource/Kconfig
@@ -14,6 +14,15 @@ config CLOCKSOURCE_CLPS711X
 	bool
 	depends on ARCH_CLPS711X
 
+config CLOCKSOURCE_DUMMY
+	bool "Enable dummy software-only clocksource"
+	default n
+
+config CLOCKSOURCE_DUMMY_RATE
+	int "compile loglevel"
+	depends on CLOCKSOURCE_DUMMY
+	default 1000
+
 config CLOCKSOURCE_MVEBU
 	bool
 	depends on ARCH_MVEBU
diff --git a/drivers/clocksource/Makefile b/drivers/clocksource/Makefile
index 25b7f46..834a15d 100644
--- a/drivers/clocksource/Makefile
+++ b/drivers/clocksource/Makefile
@@ -2,6 +2,7 @@ obj-$(CONFIG_AMBA_SP804) += amba-sp804.o
 obj-$(CONFIG_ARM_SMP_TWD) += arm_smp_twd.o
 obj-$(CONFIG_CLOCKSOURCE_BCM2835) += bcm2835.o
 obj-$(CONFIG_CLOCKSOURCE_CLPS711X) += clps711x.o
+obj-$(CONFIG_CLOCKSOURCE_DUMMY)   += dummy.o
 obj-$(CONFIG_CLOCKSOURCE_MVEBU)   += mvebu.o
 obj-$(CONFIG_CLOCKSOURCE_NOMADIK) += nomadik.o
 obj-$(CONFIG_CLOCKSOURCE_ORION)   += orion.o
diff --git a/drivers/clocksource/dummy.c b/drivers/clocksource/dummy.c
new file mode 100644
index 0000000..154a8cd
--- /dev/null
+++ b/drivers/clocksource/dummy.c
@@ -0,0 +1,56 @@
+/*
+ * Copyright (C) 2013 Antony Pavlov <antonynpavlov@gmail.com>
+ *
+ * This file is part of barebox.
+ * See file CREDITS for list of people who contributed to this project.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#include <common.h>
+#include <init.h>
+#include <clock.h>
+
+static uint64_t dummy_counter;
+
+static uint64_t dummy_cs_read(void)
+{
+	static int first;
+
+	if (!first) {
+		pr_warn("Warning: Using dummy clocksource\n");
+		first = 1;
+	}
+
+	dummy_counter += CONFIG_CLOCKSOURCE_DUMMY_RATE;
+
+	return dummy_counter;
+}
+
+static struct clocksource dummy_cs = {
+	.read	= dummy_cs_read,
+	.mask   = CLOCKSOURCE_MASK(32),
+};
+
+static int clocksource_init(void)
+{
+	dummy_counter = 0;
+
+	clocks_calc_mult_shift(&dummy_cs.mult, &dummy_cs.shift,
+		100000000, NSEC_PER_SEC, 10);
+
+	pr_debug("clocksource_init: mult=%08x, shift=%08x\n",
+			dummy_cs.mult, dummy_cs.shift);
+	init_clock(&dummy_cs);
+
+	return 0;
+}
+pure_initcall(clocksource_init);
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
