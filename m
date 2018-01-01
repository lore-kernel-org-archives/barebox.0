Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eVzwL-00031n-35
 for barebox@lists.infradead.org; Mon, 01 Jan 2018 13:15:50 +0000
From: Sam Ravnborg <sam@ravnborg.org>
Date: Mon,  1 Jan 2018 14:15:20 +0100
Message-Id: <20180101131523.1508-1-sam@ravnborg.org>
In-Reply-To: <20171231100244.GA16379@ravnborg.org>
References: <20171231100244.GA16379@ravnborg.org>
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
Subject: [PATCH 1/4] arm: at91: move irq_fixup to header file
To: Barebox List <barebox@lists.infradead.org>
Cc: Sam Ravnborg <sam@ravnborg.org>

This allows at91_rtt_irq_fixup() to be used outside
of the mach-at91/ directory.
Adjust all call sites to include the at91_rtt header.

Deleting one .c file is another nice side effect of this move.

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
---
 arch/arm/mach-at91/Makefile                |  2 +-
 arch/arm/mach-at91/at91sam9260_devices.c   |  1 +
 arch/arm/mach-at91/at91sam9261_devices.c   |  1 +
 arch/arm/mach-at91/at91sam9263_devices.c   |  1 +
 arch/arm/mach-at91/at91sam9g45_devices.c   |  1 +
 arch/arm/mach-at91/generic.h               |  2 --
 arch/arm/mach-at91/include/mach/at91_rtt.h | 16 ++++++++++++++++
 arch/arm/mach-at91/irq_fixup.c             | 22 ----------------------
 8 files changed, 21 insertions(+), 25 deletions(-)
 delete mode 100644 arch/arm/mach-at91/irq_fixup.c

diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
index 8462cba60..8adeee9bc 100644
--- a/arch/arm/mach-at91/Makefile
+++ b/arch/arm/mach-at91/Makefile
@@ -1,4 +1,4 @@
-obj-y += setup.o irq_fixup.o
+obj-y += setup.o
 
 ifeq ($(CONFIG_COMMON_CLK_OF_PROVIDER),)
 obj-y += clock.o
diff --git a/arch/arm/mach-at91/at91sam9260_devices.c b/arch/arm/mach-at91/at91sam9260_devices.c
index 99919b3f8..1cb898351 100644
--- a/arch/arm/mach-at91/at91sam9260_devices.c
+++ b/arch/arm/mach-at91/at91sam9260_devices.c
@@ -19,6 +19,7 @@
 #include <mach/at91_pmc.h>
 #include <mach/at91sam9260_matrix.h>
 #include <mach/at91sam9_sdramc.h>
+#include <mach/at91_rtt.h>
 #include <mach/iomux.h>
 #include <mach/io.h>
 #include <mach/cpu.h>
diff --git a/arch/arm/mach-at91/at91sam9261_devices.c b/arch/arm/mach-at91/at91sam9261_devices.c
index e63e0e751..6be390937 100644
--- a/arch/arm/mach-at91/at91sam9261_devices.c
+++ b/arch/arm/mach-at91/at91sam9261_devices.c
@@ -18,6 +18,7 @@
 #include <mach/at91_pmc.h>
 #include <mach/at91sam9261_matrix.h>
 #include <mach/at91sam9_sdramc.h>
+#include <mach/at91_rtt.h>
 #include <mach/board.h>
 #include <mach/iomux.h>
 #include <mach/io.h>
diff --git a/arch/arm/mach-at91/at91sam9263_devices.c b/arch/arm/mach-at91/at91sam9263_devices.c
index 559b77e9d..6302684b2 100644
--- a/arch/arm/mach-at91/at91sam9263_devices.c
+++ b/arch/arm/mach-at91/at91sam9263_devices.c
@@ -18,6 +18,7 @@
 #include <mach/at91_pmc.h>
 #include <mach/at91sam9263_matrix.h>
 #include <mach/at91sam9_sdramc.h>
+#include <mach/at91_rtt.h>
 #include <mach/board.h>
 #include <mach/iomux.h>
 #include <mach/io.h>
diff --git a/arch/arm/mach-at91/at91sam9g45_devices.c b/arch/arm/mach-at91/at91sam9g45_devices.c
index bc4132040..67ca3590c 100644
--- a/arch/arm/mach-at91/at91sam9g45_devices.c
+++ b/arch/arm/mach-at91/at91sam9g45_devices.c
@@ -18,6 +18,7 @@
 #include <mach/at91_pmc.h>
 #include <mach/at91sam9g45_matrix.h>
 #include <mach/at91sam9_ddrsdr.h>
+#include <mach/at91_rtt.h>
 #include <mach/board.h>
 #include <mach/iomux.h>
 #include <mach/io.h>
diff --git a/arch/arm/mach-at91/generic.h b/arch/arm/mach-at91/generic.h
index a47bcb2c5..deba01924 100644
--- a/arch/arm/mach-at91/generic.h
+++ b/arch/arm/mach-at91/generic.h
@@ -35,5 +35,3 @@ static inline struct device_d *at91_add_sam9_smc(int id, resource_size_t start,
 	return add_generic_device("at91sam9-smc", id, NULL, start, size,
 				  IORESOURCE_MEM, NULL);
 }
-
-void at91_rtt_irq_fixup(void *base);
diff --git a/arch/arm/mach-at91/include/mach/at91_rtt.h b/arch/arm/mach-at91/include/mach/at91_rtt.h
index 7ec75de8b..ad29df191 100644
--- a/arch/arm/mach-at91/include/mach/at91_rtt.h
+++ b/arch/arm/mach-at91/include/mach/at91_rtt.h
@@ -16,6 +16,8 @@
 #ifndef AT91_RTT_H
 #define AT91_RTT_H
 
+#include <io.h>
+
 #define AT91_RTT_MR		0x00			/* Real-time Mode Register */
 #define		AT91_RTT_RTPRES		(0xffff << 0)		/* Real-time Timer Prescaler Value */
 #define		AT91_RTT_ALMIEN		(1 << 16)		/* Alarm Interrupt Enable */
@@ -32,4 +34,18 @@
 #define		AT91_RTT_ALMS		(1 << 0)		/* Real-time Alarm Status */
 #define		AT91_RTT_RTTINC		(1 << 1)		/* Real-time Timer Increment */
 
+
+/*
+ * As the RTT is powered by the backup power so if the interrupt
+ * is still on when the kernel start, the kernel will end up with
+ * dead lock interrupt that it can not clear. Because the interrupt line is
+ * shared with the basic timer (PIT) on AT91_ID_SYS.
+ */
+static inline void at91_rtt_irq_fixup(void *base)
+{
+	void __iomem *reg = base + AT91_RTT_MR;
+	u32 mr = readl(reg);
+
+	writel(mr & ~(AT91_RTT_ALMIEN | AT91_RTT_RTTINCIEN), reg);
+}
 #endif
diff --git a/arch/arm/mach-at91/irq_fixup.c b/arch/arm/mach-at91/irq_fixup.c
deleted file mode 100644
index 9815ac2ca..000000000
--- a/arch/arm/mach-at91/irq_fixup.c
+++ /dev/null
@@ -1,22 +0,0 @@
-/*
- * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
- *
- * Under GPLv2 only
- */
-
-#include <io.h>
-#include <mach/at91_rtt.h>
-
-/*
- * As the RTT is powered by the backup power so if the interrupt
- * is still on when the kernel start, the kernel will end up with
- * dead lock interrupt that it can not clear. Because the interrupt line is
- * shared with the basic timer (PIT) on AT91_ID_SYS.
- */
-void at91_rtt_irq_fixup(void *base)
-{
-	void __iomem *reg = base + AT91_RTT_MR;
-	u32 mr = readl(reg);
-
-	writel(mr & ~(AT91_RTT_ALMIEN | AT91_RTT_RTTINCIEN), reg);
-}
-- 
2.12.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
