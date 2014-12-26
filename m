Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22a.google.com ([2a00:1450:4010:c04::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Y4ej7-0005pf-Bh
 for barebox@lists.infradead.org; Fri, 26 Dec 2014 23:55:26 +0000
Received: by mail-lb0-f170.google.com with SMTP id 10so9056234lbg.29
 for <barebox@lists.infradead.org>; Fri, 26 Dec 2014 15:55:03 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sat, 27 Dec 2014 02:56:29 +0300
Message-Id: <1419638189-5678-7-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1419638189-5678-1-git-send-email-antonynpavlov@gmail.com>
References: <1419638189-5678-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 6/6] ARM: bcm2835: add DEBUG_LL support
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/arm/Kconfig                              |  1 +
 arch/arm/mach-bcm2835/include/mach/debug_ll.h | 27 +++++++++++++++++++++++++++
 2 files changed, 28 insertions(+)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 97e2526..08d5b3d 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -53,6 +53,7 @@ config ARCH_BCM2835
 	select COMMON_CLK
 	select CLOCKSOURCE_BCM2835
 	select ARM_AMBA
+	select HAS_DEBUG_LL
 
 config ARCH_CLPS711X
 	bool "Cirrus Logic EP711x/EP721x/EP731x"
diff --git a/arch/arm/mach-bcm2835/include/mach/debug_ll.h b/arch/arm/mach-bcm2835/include/mach/debug_ll.h
new file mode 100644
index 0000000..be93cd9
--- /dev/null
+++ b/arch/arm/mach-bcm2835/include/mach/debug_ll.h
@@ -0,0 +1,27 @@
+/*
+ * Copyright (C) 2014 Antony Pavlov <antonynpavlov@gmail.com>
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
+#ifndef __MACH_BCM2835_DEBUG_LL_H__
+#define __MACH_BCM2835_DEBUG_LL_H__
+
+#include <mach/platform.h>
+
+#define DEBUG_LL_UART_ADDR BCM2835_UART0_BASE
+
+#include <asm/debug_ll_pl011.h>
+
+#endif /* __MACH_BCM2835_DEBUG_LL_H__ */
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
