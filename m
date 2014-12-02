Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x231.google.com ([2a00:1450:4010:c03::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Xvav5-00044F-A7
 for barebox@lists.infradead.org; Tue, 02 Dec 2014 00:02:20 +0000
Received: by mail-la0-f49.google.com with SMTP id hs14so9562763lab.22
 for <barebox@lists.infradead.org>; Mon, 01 Dec 2014 16:01:56 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue,  2 Dec 2014 03:03:28 +0300
Message-Id: <1417478608-11670-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC] clock: incorporate dummy clocksource into core clock code
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 common/clock.c               | 20 ++++++++++++++--
 drivers/clocksource/Kconfig  | 27 ++++++++--------------
 drivers/clocksource/Makefile |  1 -
 drivers/clocksource/dummy.c  | 55 --------------------------------------------
 4 files changed, 28 insertions(+), 75 deletions(-)

diff --git a/common/clock.c b/common/clock.c
index 2ee81da..35c9e6c 100644
--- a/common/clock.c
+++ b/common/clock.c
@@ -22,6 +22,7 @@
  */
 
 #include <common.h>
+#include <init.h>
 #include <asm-generic/div64.h>
 #include <clock.h>
 #include <poller.h>
@@ -35,6 +36,16 @@ static uint64_t time_ns;
  */
 uint64_t time_beginning;
 
+static int dummy_csrc_warn(void)
+{
+	if (!current_clock) {
+		pr_warn("Warning: Using dummy clocksource\n");
+	}
+
+	return 0;
+}
+late_initcall(dummy_csrc_warn);
+
 /**
  * get_time_ns - get current timestamp in nanoseconds
  */
@@ -44,8 +55,13 @@ uint64_t get_time_ns(void)
 	uint64_t cycle_now, cycle_delta;
 	uint64_t ns_offset;
 
-	if (!cs)
-		return 0;
+	if (!cs) {
+		static uint64_t dummy_counter;
+
+		dummy_counter += CONFIG_CLOCKSOURCE_DUMMY_RATE;
+
+		return dummy_counter;
+	}
 
 	/* read clocksource: */
 	cycle_now = cs->read() & cs->mask;
diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
index fc5a389..598edc9 100644
--- a/drivers/clocksource/Kconfig
+++ b/drivers/clocksource/Kconfig
@@ -18,28 +18,21 @@ config CLOCKSOURCE_DIGIC
 	bool
 	depends on ARCH_DIGIC
 
-config CLOCKSOURCE_DUMMY
-	bool "Enable dummy software-only clocksource"
+config CLOCKSOURCE_DUMMY_RATE
+	int
+	prompt "dummy clocksource rate"
+	default 1000
 	help
 	  When porting barebox to a new SoC there might be a case
 	  of broken or absent clocksource. This causes barebox serial
 	  console to be non functional.
-	  To solve the problem this software-only clocksource driver is used.
-	      WARNING!!! This clocksource doesn't provide correct timing.
-	  To adjust this clocksource please use CONFIG_CLOCKSOURCE_DUMMY_RATE.
+	  To solve the problem barebox has built-in software-only clocksource.
+	  The software-only clocksource is used only if no hardware clocksource
+	  is registered. This can help if initialization order is wrong so that
+	  the time functions are used before the real clocksource was initialized.
+	      WARNING!!! Built-in software-only clocksource doesn't provide correct timing.
+	  The option CONFIG_CLOCKSOURCE_DUMMY_RATE is used to adjust this clocksource.
 	  The bigger rate valuest makes clocksource "faster".
-	  It's possible to add this clocksource unconditionally.
-	  This clocksource starts very early (pure_initcall) so
-	  real clocksource will take over.
-	  This can help if initialization order is wrong so that
-	  the time functions are used before the real clocksource
-	  was initialized.
-
-config CLOCKSOURCE_DUMMY_RATE
-	int
-	prompt "dummy clocksource rate"
-	depends on CLOCKSOURCE_DUMMY
-	default 1000
 
 config CLOCKSOURCE_MVEBU
 	bool
diff --git a/drivers/clocksource/Makefile b/drivers/clocksource/Makefile
index b80df6b..f5f5141 100644
--- a/drivers/clocksource/Makefile
+++ b/drivers/clocksource/Makefile
@@ -3,7 +3,6 @@ obj-$(CONFIG_ARM_SMP_TWD) += arm_smp_twd.o
 obj-$(CONFIG_CLOCKSOURCE_BCM2835) += bcm2835.o
 obj-$(CONFIG_CLOCKSOURCE_CLPS711X) += clps711x.o
 obj-$(CONFIG_CLOCKSOURCE_DIGIC)   += digic.o
-obj-$(CONFIG_CLOCKSOURCE_DUMMY)   += dummy.o
 obj-$(CONFIG_CLOCKSOURCE_MVEBU)   += mvebu.o
 obj-$(CONFIG_CLOCKSOURCE_NOMADIK) += nomadik.o
 obj-$(CONFIG_CLOCKSOURCE_ORION)   += orion.o
diff --git a/drivers/clocksource/dummy.c b/drivers/clocksource/dummy.c
deleted file mode 100644
index 96f9b6e..0000000
--- a/drivers/clocksource/dummy.c
+++ /dev/null
@@ -1,55 +0,0 @@
-/*
- * Copyright (C) 2013 Antony Pavlov <antonynpavlov@gmail.com>
- *
- * This file is part of barebox.
- * See file CREDITS for list of people who contributed to this project.
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2
- * as published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- */
-
-#include <common.h>
-#include <init.h>
-#include <clock.h>
-
-static uint64_t dummy_counter;
-
-static uint64_t dummy_cs_read(void)
-{
-	static int first;
-
-	if (!first) {
-		pr_warn("Warning: Using dummy clocksource\n");
-		first = 1;
-	}
-
-	dummy_counter += CONFIG_CLOCKSOURCE_DUMMY_RATE;
-
-	return dummy_counter;
-}
-
-static struct clocksource dummy_cs = {
-	.read	= dummy_cs_read,
-	.mask   = CLOCKSOURCE_MASK(32),
-};
-
-static int clocksource_init(void)
-{
-	dummy_counter = 0;
-
-	clocks_calc_mult_shift(&dummy_cs.mult, &dummy_cs.shift,
-		100000000, NSEC_PER_SEC, 10);
-
-	pr_debug("clocksource_init: mult=%08x, shift=%08x\n",
-			dummy_cs.mult, dummy_cs.shift);
-
-	return init_clock(&dummy_cs);
-}
-pure_initcall(clocksource_init);
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
