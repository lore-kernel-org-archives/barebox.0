Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R71zb-0004Ox-ED
	for barebox@lists.infradead.org; Fri, 23 Sep 2011 09:24:26 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 23 Sep 2011 11:24:11 +0200
Message-Id: <1316769860-24549-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1316769860-24549-1-git-send-email-s.hauer@pengutronix.de>
References: <1316769860-24549-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/12] arm: use asm-generic/io.h
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/include/asm/io.h |   49 +--------------------------------------------
 1 files changed, 1 insertions(+), 48 deletions(-)

diff --git a/arch/arm/include/asm/io.h b/arch/arm/include/asm/io.h
index e8e82f6..ab78be3 100644
--- a/arch/arm/include/asm/io.h
+++ b/arch/arm/include/asm/io.h
@@ -1,53 +1,6 @@
-/*
- *  linux/include/asm-arm/io.h
- *
- *  Copyright (C) 1996-2000 Russell King
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * Modifications:
- *  16-Sep-1996	RMK	Inlined the inx/outx functions & optimised for both
- *			constant addresses and variable addresses.
- *  04-Dec-1997	RMK	Moved a lot of this stuff to the new architecture
- *			specific IO header files.
- *  27-Mar-1999	PJB	Second parameter of memcpy_toio is const..
- *  04-Apr-1999	PJB	Added check_signature.
- *  12-Dec-1999	RMK	More cleanups
- *  18-Jun-2000 RMK	Removed virt_to_* and friends definitions
- */
-
-/**
- * @file
- * @brief ARM IO access functions
- */
-
 #ifndef __ASM_ARM_IO_H
 #define __ASM_ARM_IO_H
 
-#define __raw_writeb(v,a)	(__chk_io_ptr(a), *(volatile unsigned char __force  *)(a) = (v))
-#define __raw_writew(v,a)	(__chk_io_ptr(a), *(volatile unsigned short __force *)(a) = (v))
-#define __raw_writel(v,a)	(__chk_io_ptr(a), *(volatile unsigned int __force   *)(a) = (v))
-
-#define __raw_readb(a)		(__chk_io_ptr(a), *(volatile unsigned char __force  *)(a))
-#define __raw_readw(a)		(__chk_io_ptr(a), *(volatile unsigned short __force *)(a))
-#define __raw_readl(a)		(__chk_io_ptr(a), *(volatile unsigned int __force   *)(a))
-
-#define writeb(v,a) __raw_writeb(v,a)
-#define writew(v,a) __raw_writew(v,a)
-#define writel(v,a) __raw_writel(v,a)
-
-#define readb(a) __raw_readb(a)
-#define readw(a) __raw_readw(a)
-#define readl(a) __raw_readl(a)
-
-/* for the ARM architecture the string functions are library based */
-extern void writesb(void __iomem*, const void*, int);
-extern void writesw(void __iomem*, const void*, int);
-extern void writesl(void __iomem*, const void*, int);
-extern void readsb(const void __iomem*, void*, int);
-extern void readsw(const void __iomem*, void*, int);
-extern void readsl(const void __iomem*, void*, int);
+#include <asm-generic/io.h>
 
 #endif	/* __ASM_ARM_IO_H */
-- 
1.7.6.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
