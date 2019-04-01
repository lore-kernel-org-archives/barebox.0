Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hAu1R-0005N8-6d
 for barebox@lists.infradead.org; Mon, 01 Apr 2019 10:18:36 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  1 Apr 2019 12:18:13 +0200
Message-Id: <20190401101822.7392-6-a.fatoum@pengutronix.de>
In-Reply-To: <20190401101822.7392-1-a.fatoum@pengutronix.de>
References: <20190401101822.7392-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v3 05/15] ARM: at91: watchdog: implement at91_wdt_disable
To: barebox@lists.infradead.org
Cc: sam@ravnborg.org

Low level init code might want to disable the watchdog in PBL.
Provide a helper to do so.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-at91/include/mach/at91_wdt.h | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm/mach-at91/include/mach/at91_wdt.h b/arch/arm/mach-at91/include/mach/at91_wdt.h
index 36d37b9d2d64..d295d35d1b5c 100644
--- a/arch/arm/mach-at91/include/mach/at91_wdt.h
+++ b/arch/arm/mach-at91/include/mach/at91_wdt.h
@@ -35,4 +35,20 @@
 #define		AT91_WDT_WDUNF		(1 << 0)		/* Watchdog Underflow */
 #define		AT91_WDT_WDERR		(1 << 1)		/* Watchdog Error */
 
+#ifndef __ASSEMBLY__
+// SPDX-License-Identifier: BSD-1-Clause
+/*
+ * Copyright (c) 2006, Atmel Corporation
+ */
+
+#include <asm-generic/io.h>
+
+static inline void at91_wdt_disable(void __iomem *wdt_base)
+{
+	u32 reg = readl(wdt_base + AT91_WDT_MR);
+	reg |= AT91_WDT_WDDIS;
+	writel(reg, wdt_base + AT91_WDT_MR);
+}
+
+#endif /* __ASSEMBLY__ */
 #endif
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
