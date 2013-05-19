Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-f44.google.com ([74.125.83.44])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ue8HX-0005pj-Et
 for barebox@lists.infradead.org; Sun, 19 May 2013 18:24:35 +0000
Received: by mail-ee0-f44.google.com with SMTP id b57so3666439eek.31
 for <barebox@lists.infradead.org>; Sun, 19 May 2013 11:24:09 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Sun, 19 May 2013 20:23:53 +0200
Message-Id: <1368987835-13323-10-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 09/11] arm: mvebu: convert PlatHome OpenBlocks AX3 to common
 init
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

With Marvell Armada XP converted to common SoC init, board specific
lowlevel and init code can be removed. This patch leaves an empty board
source file to allow to have board specific quirks.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Tested-by: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
---
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
---
 arch/arm/boards/plathome-openblocks-ax3/Makefile   |    3 +--
 .../{plathome-openblocks-ax3.c => board.c}         |   14 +++--------
 arch/arm/boards/plathome-openblocks-ax3/lowlevel.c |   25 --------------------
 3 files changed, 4 insertions(+), 38 deletions(-)
 rename arch/arm/boards/plathome-openblocks-ax3/{plathome-openblocks-ax3.c => board.c} (64%)
 delete mode 100644 arch/arm/boards/plathome-openblocks-ax3/lowlevel.c

diff --git a/arch/arm/boards/plathome-openblocks-ax3/Makefile b/arch/arm/boards/plathome-openblocks-ax3/Makefile
index 91dc764..dcfc293 100644
--- a/arch/arm/boards/plathome-openblocks-ax3/Makefile
+++ b/arch/arm/boards/plathome-openblocks-ax3/Makefile
@@ -1,2 +1 @@
-obj-y = plathome-openblocks-ax3.o
-lwl-y += lowlevel.o
+obj-y += board.o
diff --git a/arch/arm/boards/plathome-openblocks-ax3/plathome-openblocks-ax3.c b/arch/arm/boards/plathome-openblocks-ax3/board.c
similarity index 64%
rename from arch/arm/boards/plathome-openblocks-ax3/plathome-openblocks-ax3.c
rename to arch/arm/boards/plathome-openblocks-ax3/board.c
index 9daf020..9c800c5 100644
--- a/arch/arm/boards/plathome-openblocks-ax3/plathome-openblocks-ax3.c
+++ b/arch/arm/boards/plathome-openblocks-ax3/board.c
@@ -1,5 +1,6 @@
 /*
- * Copyright (C) 2013 Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
+ * Copyright
+ * (C) 2013 Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
  *
  * This program is free software; you can redistribute it and/or
  * modify it under the terms of the GNU General Public License as
@@ -13,13 +14,4 @@
  *
  */
 
-#include <common.h>
-#include <init.h>
-#include <mach/mvebu.h>
-
-static int plathome_openblocks_ax3_console_init(void)
-{
-	return mvebu_add_uart0();
-}
-
-console_initcall(plathome_openblocks_ax3_console_init);
+/* empty */
diff --git a/arch/arm/boards/plathome-openblocks-ax3/lowlevel.c b/arch/arm/boards/plathome-openblocks-ax3/lowlevel.c
deleted file mode 100644
index e9b2e30..0000000
--- a/arch/arm/boards/plathome-openblocks-ax3/lowlevel.c
+++ /dev/null
@@ -1,25 +0,0 @@
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
-#include <mach/mvebu.h>
-#include <asm/barebox-arm.h>
-#include <asm/barebox-arm-head.h>
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
