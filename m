Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x22e.google.com ([2a00:1450:4013:c01::22e])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ue8HX-0005pc-W9
 for barebox@lists.infradead.org; Sun, 19 May 2013 18:24:38 +0000
Received: by mail-ea0-f174.google.com with SMTP id z7so3540862eaf.33
 for <barebox@lists.infradead.org>; Sun, 19 May 2013 11:24:09 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Sun, 19 May 2013 20:23:51 +0200
Message-Id: <1368987835-13323-8-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 07/11] arm: mvebu: convert SolidRun CuBox to common init
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

With Marvell Dove converted to common SoC init, board specific lowlevel
and init code can be removed. This patch leaves an empty board source
file to allow to have board specific quirks.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
---
 arch/arm/boards/solidrun-cubox/Makefile            |    3 +--
 .../solidrun-cubox/{solidrun-cubox.c => board.c}   |   14 +++--------
 arch/arm/boards/solidrun-cubox/lowlevel.c          |   26 --------------------
 3 files changed, 4 insertions(+), 39 deletions(-)
 rename arch/arm/boards/solidrun-cubox/{solidrun-cubox.c => board.c} (66%)
 delete mode 100644 arch/arm/boards/solidrun-cubox/lowlevel.c

diff --git a/arch/arm/boards/solidrun-cubox/Makefile b/arch/arm/boards/solidrun-cubox/Makefile
index 6dfe2c8..9320510 100644
--- a/arch/arm/boards/solidrun-cubox/Makefile
+++ b/arch/arm/boards/solidrun-cubox/Makefile
@@ -1,2 +1 @@
-obj-y = solidrun-cubox.o
-lwl-y += lowlevel.o
+obj-y += board.c
diff --git a/arch/arm/boards/solidrun-cubox/solidrun-cubox.c b/arch/arm/boards/solidrun-cubox/board.c
similarity index 66%
rename from arch/arm/boards/solidrun-cubox/solidrun-cubox.c
rename to arch/arm/boards/solidrun-cubox/board.c
index 1abce2f..a28f419 100644
--- a/arch/arm/boards/solidrun-cubox/solidrun-cubox.c
+++ b/arch/arm/boards/solidrun-cubox/board.c
@@ -1,6 +1,6 @@
 /*
- * Copyright
- * (C) 2013 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
+ * Copyright (C) 2013
+ *  Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
  *
  * This program is free software; you can redistribute it and/or
  * modify it under the terms of the GNU General Public License as
@@ -14,12 +14,4 @@
  *
  */
 
-#include <common.h>
-#include <init.h>
-#include <mach/dove.h>
-
-static int solidrun_cubox_console_init(void)
-{
-	return dove_add_uart(0);
-}
-console_initcall(solidrun_cubox_console_init);
+/* empty */
diff --git a/arch/arm/boards/solidrun-cubox/lowlevel.c b/arch/arm/boards/solidrun-cubox/lowlevel.c
deleted file mode 100644
index 8a06cbc..0000000
--- a/arch/arm/boards/solidrun-cubox/lowlevel.c
+++ /dev/null
@@ -1,26 +0,0 @@
-/*
- * Copyright
- * (C) 2013 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
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
-#include <mach/dove.h>
-#include <asm/barebox-arm.h>
-#include <asm/barebox-arm-head.h>
-
-void __naked barebox_arm_reset_vector(void)
-{
-	arm_cpu_lowlevel_init();
-	dove_barebox_entry();
-}
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
