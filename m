Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TLB6i-00082c-43
 for barebox@lists.infradead.org; Mon, 08 Oct 2012 11:02:44 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  8 Oct 2012 13:02:36 +0200
Message-Id: <1349694156-30554-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM at91sam9260ek: remove unused reset entry
To: barebox@lists.infradead.org

The at91sam9260ek has a custom reset function which does the same thing
as the default function. Also it does not define MACH_HAS_LOWLEVEL_INIT
as it should do. Remove the function.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/at91sam9260ek/Makefile        |    1 -
 arch/arm/boards/at91sam9260ek/lowlevel_init.S |   25 -------------------------
 2 files changed, 26 deletions(-)
 delete mode 100644 arch/arm/boards/at91sam9260ek/lowlevel_init.S

diff --git a/arch/arm/boards/at91sam9260ek/Makefile b/arch/arm/boards/at91sam9260ek/Makefile
index 73ef72e..eb072c0 100644
--- a/arch/arm/boards/at91sam9260ek/Makefile
+++ b/arch/arm/boards/at91sam9260ek/Makefile
@@ -1,2 +1 @@
-obj-y += lowlevel_init.o
 obj-y += init.o
diff --git a/arch/arm/boards/at91sam9260ek/lowlevel_init.S b/arch/arm/boards/at91sam9260ek/lowlevel_init.S
deleted file mode 100644
index 0438921..0000000
--- a/arch/arm/boards/at91sam9260ek/lowlevel_init.S
+++ /dev/null
@@ -1,25 +0,0 @@
-/*
- * Board specific setup info
- *
- *
- * See file CREDITS for list of people who contributed to this
- * project.
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- */
-
-#include <asm/barebox-arm-head.h>
-
-.globl reset
-reset:
-	common_reset r0
-	b board_init_lowlevel_return
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
