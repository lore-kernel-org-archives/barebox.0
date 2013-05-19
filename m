Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-f47.google.com ([74.125.83.47])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ue8HY-0005pi-V4
 for barebox@lists.infradead.org; Sun, 19 May 2013 18:24:43 +0000
Received: by mail-ee0-f47.google.com with SMTP id t10so3484125eei.6
 for <barebox@lists.infradead.org>; Sun, 19 May 2013 11:24:11 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Sun, 19 May 2013 20:23:52 +0200
Message-Id: <1368987835-13323-9-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1368987835-13323-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1368987835-13323-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 08/11] arm: mvebu: convert Globalscale Mirabox to common init
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

With Marvell Armada 370 converted to common SoC init, board specific
lowlevel and init code can be removed. This patch leaves an empty board
source file to allow to have board specific quirks.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
---
 arch/arm/boards/globalscale-mirabox/Makefile       |    3 +--
 .../{globalscale-mirabox.c => board.c}             |   15 +++--------
 arch/arm/boards/globalscale-mirabox/lowlevel.c     |   26 --------------------
 3 files changed, 4 insertions(+), 40 deletions(-)
 rename arch/arm/boards/globalscale-mirabox/{globalscale-mirabox.c => board.c} (63%)
 delete mode 100644 arch/arm/boards/globalscale-mirabox/lowlevel.c

diff --git a/arch/arm/boards/globalscale-mirabox/Makefile b/arch/arm/boards/globalscale-mirabox/Makefile
index bd5d47e..9320510 100644
--- a/arch/arm/boards/globalscale-mirabox/Makefile
+++ b/arch/arm/boards/globalscale-mirabox/Makefile
@@ -1,2 +1 @@
-obj-y = globalscale-mirabox.o
-lwl-y += lowlevel.o
+obj-y += board.c
diff --git a/arch/arm/boards/globalscale-mirabox/globalscale-mirabox.c b/arch/arm/boards/globalscale-mirabox/board.c
similarity index 63%
rename from arch/arm/boards/globalscale-mirabox/globalscale-mirabox.c
rename to arch/arm/boards/globalscale-mirabox/board.c
index b8f4bff..9c800c5 100644
--- a/arch/arm/boards/globalscale-mirabox/globalscale-mirabox.c
+++ b/arch/arm/boards/globalscale-mirabox/board.c
@@ -1,5 +1,6 @@
 /*
- * Copyright (C) 2013 Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
+ * Copyright
+ * (C) 2013 Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
  *
  * This program is free software; you can redistribute it and/or
  * modify it under the terms of the GNU General Public License as
@@ -13,14 +14,4 @@
  *
  */
 
-#include <common.h>
-#include <init.h>
-#include <sizes.h>
-#include <mach/mvebu.h>
-
-static int globalscale_mirabox_console_init(void)
-{
-	return mvebu_add_uart0();
-}
-
-console_initcall(globalscale_mirabox_console_init);
+/* empty */
diff --git a/arch/arm/boards/globalscale-mirabox/lowlevel.c b/arch/arm/boards/globalscale-mirabox/lowlevel.c
deleted file mode 100644
index 3ca202e..0000000
--- a/arch/arm/boards/globalscale-mirabox/lowlevel.c
+++ /dev/null
@@ -1,26 +0,0 @@
-/*
- * Copyright (C) 2013 Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
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
-#include <common.h>
-#include <sizes.h>
-#include <asm/barebox-arm.h>
-#include <asm/barebox-arm-head.h>
-#include <mach/mvebu.h>
-
-void __naked barebox_arm_reset_vector(void)
-{
-	arm_cpu_lowlevel_init();
-	mvebu_barebox_entry();
-}
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
