Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jqYmE-0002h9-BQ
 for barebox@lists.infradead.org; Wed, 01 Jul 2020 09:11:37 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  1 Jul 2020 11:11:02 +0200
Message-Id: <20200701091122.3437-9-a.fatoum@pengutronix.de>
In-Reply-To: <20200701091122.3437-1-a.fatoum@pengutronix.de>
References: <20200701091122.3437-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 08/28] ARM: at91: watchdog: implement at91_wdt_disable
To: barebox@lists.infradead.org
Cc: Sam Ravnborg <sam@ravnborg.org>, Ahmad Fatoum <a.fatoum@pengutronix.de>

Board code might want to disable the watchdog in PBL and enable it later
prior to boot. Provide a helper to do so.

Reviewed-by: Sam Ravnborg <sam@ravnborg.org>
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
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
