Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gJhAC-0000V7-9V
 for barebox@lists.infradead.org; Mon, 05 Nov 2018 15:51:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  5 Nov 2018 16:51:00 +0100
Message-Id: <20181105155113.3434-10-s.hauer@pengutronix.de>
In-Reply-To: <20181105155113.3434-1-s.hauer@pengutronix.de>
References: <20181105155113.3434-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/22] ARM: at91: remove common matrix header file
To: Barebox List <barebox@lists.infradead.org>

The common matrix header file can be removed when the users include the
SoC specific one. Fix the only user and remove the file.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/pm9261/lowlevel_init.c        |  2 +-
 .../mach-at91/include/mach/at91sam9_matrix.h  | 30 -------------------
 2 files changed, 1 insertion(+), 31 deletions(-)
 delete mode 100644 arch/arm/mach-at91/include/mach/at91sam9_matrix.h

diff --git a/arch/arm/boards/pm9261/lowlevel_init.c b/arch/arm/boards/pm9261/lowlevel_init.c
index a4cb8af697..dbb58ee313 100644
--- a/arch/arm/boards/pm9261/lowlevel_init.c
+++ b/arch/arm/boards/pm9261/lowlevel_init.c
@@ -7,7 +7,7 @@
 #include <asm/barebox-arm.h>
 
 #include <mach/at91sam926x_board_init.h>
-#include <mach/at91sam9_matrix.h>
+#include <mach/at91sam9261_matrix.h>
 
 #define MASTER_PLL_DIV		15
 #define MASTER_PLL_MUL		162
diff --git a/arch/arm/mach-at91/include/mach/at91sam9_matrix.h b/arch/arm/mach-at91/include/mach/at91sam9_matrix.h
deleted file mode 100644
index 1d1d9059a5..0000000000
--- a/arch/arm/mach-at91/include/mach/at91sam9_matrix.h
+++ /dev/null
@@ -1,30 +0,0 @@
-/*
- * Copyright (C) 2009 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jrosoft.com>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; either version 2 of the License, or
- * (at your option) any later version.
- *
- */
-
-#ifndef __ASM_ARCH_AT91SAM9_MATRIX_H
-#define __ASM_ARCH_AT91SAM9_MATRIX_H
-
-#if defined(CONFIG_ARCH_AT91SAM9260) || defined(CONFIG_ARCH_AT91SAM9G20)
-#include <mach/at91sam9260_matrix.h>
-#elif defined(CONFIG_ARCH_AT91SAM9261) || defined(CONFIG_ARCH_AT91SAM9G10)
-#include <mach/at91sam9261_matrix.h>
-#elif defined(CONFIG_ARCH_AT91SAM9263)
-#include <mach/at91sam9263_matrix.h>
-#elif defined(CONFIG_ARCH_AT91SAM9RL)
-#include <mach/at91sam9rl_matrix.h>
-#elif defined(CONFIG_ARCH_AT91CAP9)
-#include <mach/at91cap9_matrix.h>
-#elif defined(CONFIG_ARCH_AT91SAM9G45) || defined(CONFIG_ARCH_AT91SAM9M10G45)
-#include <mach/at91sam9g45_matrix.h>
-#else
-#error "Unsupported AT91SAM9/CAP9 processor"
-#endif
-
-#endif /* __ASM_ARCH_AT91SAM9_MATRIX_H */
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
