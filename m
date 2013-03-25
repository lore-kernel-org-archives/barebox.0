Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UK8R0-0001Fw-OT
 for barebox@lists.infradead.org; Mon, 25 Mar 2013 14:31:41 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 25 Mar 2013 15:31:30 +0100
Message-Id: <1364221890-5671-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] clk: remove unused __clk_[get|put]
To: barebox@lists.infradead.org

This is some unused code resulting from copying stuff from the
kernel. Remove it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/include/asm/clkdev.h                 | 17 -----------------
 arch/arm/mach-at91/include/mach/clkdev.h      |  7 -------
 arch/arm/mach-bcm2835/include/mach/clkdev.h   |  7 -------
 arch/arm/mach-clps711x/include/mach/clkdev.h  |  7 -------
 arch/arm/mach-highbank/include/mach/clkdev.h  |  7 -------
 arch/arm/mach-imx/include/mach/clkdev.h       |  7 -------
 arch/arm/mach-nomadik/include/mach/clkdev.h   |  7 -------
 arch/arm/mach-versatile/include/mach/clkdev.h |  7 -------
 arch/arm/mach-vexpress/include/mach/clkdev.h  |  7 -------
 drivers/clk/clkdev.c                          |  3 ---
 include/linux/clkdev.h                        |  2 --
 11 files changed, 78 deletions(-)
 delete mode 100644 arch/arm/include/asm/clkdev.h
 delete mode 100644 arch/arm/mach-at91/include/mach/clkdev.h
 delete mode 100644 arch/arm/mach-bcm2835/include/mach/clkdev.h
 delete mode 100644 arch/arm/mach-clps711x/include/mach/clkdev.h
 delete mode 100644 arch/arm/mach-highbank/include/mach/clkdev.h
 delete mode 100644 arch/arm/mach-imx/include/mach/clkdev.h
 delete mode 100644 arch/arm/mach-nomadik/include/mach/clkdev.h
 delete mode 100644 arch/arm/mach-versatile/include/mach/clkdev.h
 delete mode 100644 arch/arm/mach-vexpress/include/mach/clkdev.h

diff --git a/arch/arm/include/asm/clkdev.h b/arch/arm/include/asm/clkdev.h
deleted file mode 100644
index ad33945..0000000
--- a/arch/arm/include/asm/clkdev.h
+++ /dev/null
@@ -1,17 +0,0 @@
-/*
- *  arch/arm/include/asm/clkdev.h
- *
- *  Copyright (C) 2008 Russell King.
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * Helper for the clk API to assist looking up a struct clk.
- */
-#ifndef __ASM_CLKDEV_H
-#define __ASM_CLKDEV_H
-
-#include <mach/clkdev.h>
-
-#endif
diff --git a/arch/arm/mach-at91/include/mach/clkdev.h b/arch/arm/mach-at91/include/mach/clkdev.h
deleted file mode 100644
index 04b37a8..0000000
--- a/arch/arm/mach-at91/include/mach/clkdev.h
+++ /dev/null
@@ -1,7 +0,0 @@
-#ifndef __ASM_MACH_CLKDEV_H
-#define __ASM_MACH_CLKDEV_H
-
-#define __clk_get(clk) ({ 1; })
-#define __clk_put(clk) do { } while (0)
-
-#endif
diff --git a/arch/arm/mach-bcm2835/include/mach/clkdev.h b/arch/arm/mach-bcm2835/include/mach/clkdev.h
deleted file mode 100644
index 04b37a8..0000000
--- a/arch/arm/mach-bcm2835/include/mach/clkdev.h
+++ /dev/null
@@ -1,7 +0,0 @@
-#ifndef __ASM_MACH_CLKDEV_H
-#define __ASM_MACH_CLKDEV_H
-
-#define __clk_get(clk) ({ 1; })
-#define __clk_put(clk) do { } while (0)
-
-#endif
diff --git a/arch/arm/mach-clps711x/include/mach/clkdev.h b/arch/arm/mach-clps711x/include/mach/clkdev.h
deleted file mode 100644
index 9278209..0000000
--- a/arch/arm/mach-clps711x/include/mach/clkdev.h
+++ /dev/null
@@ -1,7 +0,0 @@
-#ifndef __MACH_CLKDEV_H
-#define __MACH_CLKDEV_H
-
-#define __clk_get(clk)	({ 1; })
-#define __clk_put(clk)	do { } while (0)
-
-#endif
diff --git a/arch/arm/mach-highbank/include/mach/clkdev.h b/arch/arm/mach-highbank/include/mach/clkdev.h
deleted file mode 100644
index 04b37a8..0000000
--- a/arch/arm/mach-highbank/include/mach/clkdev.h
+++ /dev/null
@@ -1,7 +0,0 @@
-#ifndef __ASM_MACH_CLKDEV_H
-#define __ASM_MACH_CLKDEV_H
-
-#define __clk_get(clk) ({ 1; })
-#define __clk_put(clk) do { } while (0)
-
-#endif
diff --git a/arch/arm/mach-imx/include/mach/clkdev.h b/arch/arm/mach-imx/include/mach/clkdev.h
deleted file mode 100644
index 04b37a8..0000000
--- a/arch/arm/mach-imx/include/mach/clkdev.h
+++ /dev/null
@@ -1,7 +0,0 @@
-#ifndef __ASM_MACH_CLKDEV_H
-#define __ASM_MACH_CLKDEV_H
-
-#define __clk_get(clk) ({ 1; })
-#define __clk_put(clk) do { } while (0)
-
-#endif
diff --git a/arch/arm/mach-nomadik/include/mach/clkdev.h b/arch/arm/mach-nomadik/include/mach/clkdev.h
deleted file mode 100644
index 04b37a8..0000000
--- a/arch/arm/mach-nomadik/include/mach/clkdev.h
+++ /dev/null
@@ -1,7 +0,0 @@
-#ifndef __ASM_MACH_CLKDEV_H
-#define __ASM_MACH_CLKDEV_H
-
-#define __clk_get(clk) ({ 1; })
-#define __clk_put(clk) do { } while (0)
-
-#endif
diff --git a/arch/arm/mach-versatile/include/mach/clkdev.h b/arch/arm/mach-versatile/include/mach/clkdev.h
deleted file mode 100644
index 04b37a8..0000000
--- a/arch/arm/mach-versatile/include/mach/clkdev.h
+++ /dev/null
@@ -1,7 +0,0 @@
-#ifndef __ASM_MACH_CLKDEV_H
-#define __ASM_MACH_CLKDEV_H
-
-#define __clk_get(clk) ({ 1; })
-#define __clk_put(clk) do { } while (0)
-
-#endif
diff --git a/arch/arm/mach-vexpress/include/mach/clkdev.h b/arch/arm/mach-vexpress/include/mach/clkdev.h
deleted file mode 100644
index 04b37a8..0000000
--- a/arch/arm/mach-vexpress/include/mach/clkdev.h
+++ /dev/null
@@ -1,7 +0,0 @@
-#ifndef __ASM_MACH_CLKDEV_H
-#define __ASM_MACH_CLKDEV_H
-
-#define __clk_get(clk) ({ 1; })
-#define __clk_put(clk) do { } while (0)
-
-#endif
diff --git a/drivers/clk/clkdev.c b/drivers/clk/clkdev.c
index 5441eeb..338b9e8 100644
--- a/drivers/clk/clkdev.c
+++ b/drivers/clk/clkdev.c
@@ -95,8 +95,6 @@ struct clk *clk_get_sys(const char *dev_id, const char *con_id)
 	struct clk *clk;
 
 	clk = clk_find(dev_id, con_id);
-	if (clk && !__clk_get(clk))
-		clk = NULL;
 
 	return clk ? clk : ERR_PTR(-ENOENT);
 }
@@ -117,7 +115,6 @@ EXPORT_SYMBOL(clk_get);
 
 void clk_put(struct clk *clk)
 {
-	__clk_put(clk);
 }
 EXPORT_SYMBOL(clk_put);
 
diff --git a/include/linux/clkdev.h b/include/linux/clkdev.h
index 1fc0ab9..eeadcfe 100644
--- a/include/linux/clkdev.h
+++ b/include/linux/clkdev.h
@@ -12,8 +12,6 @@
 #ifndef __CLKDEV_H
 #define __CLKDEV_H
 
-#include <asm/clkdev.h>
-
 struct clk;
 struct device_d;
 
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
