Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rn6CM-0003NF-An
 for barebox@lists.infradead.org; Tue, 17 Jan 2012 10:23:31 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 17 Jan 2012 11:23:09 +0100
Message-Id: <1326795789-10058-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM pca-a-l1: fix board_init
To: barebox@lists.infradead.org
Cc: Juergen Kilb <J.Kilb@phytec.de>

board_init is now called omap3_board_init. broken since:

commit 494a12f703c33f80fe96e2a728545c490347eceb
Author: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date:   Sat Jan 14 15:51:05 2012 +0100

    omap3: move platform lowlevel init to mach-omap

    this will allow to switch omap3 to standard organisation

    Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
    Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/phycard-a-l1/Makefile   |    1 -
 arch/arm/boards/phycard-a-l1/lowlevel.c |   39 -------------------------------
 arch/arm/boards/phycard-a-l1/pca-a-l1.c |    2 +-
 3 files changed, 1 insertions(+), 41 deletions(-)
 delete mode 100644 arch/arm/boards/phycard-a-l1/lowlevel.c

diff --git a/arch/arm/boards/phycard-a-l1/Makefile b/arch/arm/boards/phycard-a-l1/Makefile
index cb0106b..db48b6d 100644
--- a/arch/arm/boards/phycard-a-l1/Makefile
+++ b/arch/arm/boards/phycard-a-l1/Makefile
@@ -18,5 +18,4 @@
 # Foundation, Inc., 59 Temple Place, Suite 330, Boston,
 # MA 02111-1307 USA
 
-obj-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += lowlevel.o
 obj-y += pca-a-l1.o
diff --git a/arch/arm/boards/phycard-a-l1/lowlevel.c b/arch/arm/boards/phycard-a-l1/lowlevel.c
deleted file mode 100644
index bffbb08..0000000
--- a/arch/arm/boards/phycard-a-l1/lowlevel.c
+++ /dev/null
@@ -1,39 +0,0 @@
-/*
- * (C) Copyright 2011
- * Phytec Messtechnik GmbH <www.phytec.de>
- * Juergen Kilb <j.kilb@phytec.de>
- *
- * See file CREDITS for list of people who contributed to this
- * project.
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License
- * version 2 as published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
- * MA 02111-1307 USA
- */
-#include <common.h>
-#include <asm/barebox-arm.h>
-#include <mach/sdrc.h>
-#include <mach/omap3-silicon.h>
-
-void __naked board_init_lowlevel(void)
-{
-	uint32_t r;
-
-	/* setup a stack */
-	r = OMAP_SRAM_STACK;
-	__asm__ __volatile__("mov sp, %0" : : "r"(r));
-
-	board_init();
-
-	board_init_lowlevel_return();
-}
diff --git a/arch/arm/boards/phycard-a-l1/pca-a-l1.c b/arch/arm/boards/phycard-a-l1/pca-a-l1.c
index 7b127f3..11e8638 100644
--- a/arch/arm/boards/phycard-a-l1/pca-a-l1.c
+++ b/arch/arm/boards/phycard-a-l1/pca-a-l1.c
@@ -224,7 +224,7 @@ static void pcaal1_mux_config(void)
  *
  * @return void
  */
-void board_init(void)
+void omap3_board_init(void)
 {
 	int in_sdram = running_in_sdram();
 
-- 
1.7.8.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
