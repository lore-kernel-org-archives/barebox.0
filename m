Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RoLxd-0003hd-VL
 for barebox@lists.infradead.org; Fri, 20 Jan 2012 21:25:27 +0000
From: Juergen Kilb <J.Kilb@phytec.de>
Date: Fri, 20 Jan 2012 22:25:01 +0100
Message-Id: <1327094703-6958-2-git-send-email-J.Kilb@phytec.de>
In-Reply-To: <1327094703-6958-1-git-send-email-J.Kilb@phytec.de>
References: <1327094703-6958-1-git-send-email-J.Kilb@phytec.de>
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
Subject: [PATCH] ARM pca-a-l1: delete platform.S
To: barebox@lists.infradead.org
Cc: Juergen Kilb <J.Kilb@phytec.de>

since commit 494a12f703c33f80fe96e2a728545c490347eceb
platform lowlevel init was moved to mach-omap.

Signed-off-by: Juergen Kilb <J.Kilb@phytec.de>
---
 arch/arm/boards/phycard-a-l1/platform.S |   65 -------------------------------
 1 files changed, 0 insertions(+), 65 deletions(-)
 delete mode 100644 arch/arm/boards/phycard-a-l1/platform.S

diff --git a/arch/arm/boards/phycard-a-l1/platform.S b/arch/arm/boards/phycard-a-l1/platform.S
deleted file mode 100644
index 596d3ab..0000000
--- a/arch/arm/boards/phycard-a-l1/platform.S
+++ /dev/null
@@ -1,65 +0,0 @@
-/**
- * @file
- * @brief Wrapper to call board level initialization routine
- *
- * FileName: arch/arm/boards/phycard-a-l1/platform.S
- *
- * board_init_lowlevel is defined here. This calls board_init which
- * is linked to the binary - the board_init only has a SRAM stack.
- * so it needs to be careful about the usage of global variables
- * and the likes. Enabled only if CONFIG_MACH_DO_LOWLEVEL_INIT is
- * defined
- */
-/*
- * (C) Copyright 2006-2008
- * Texas Instruments, <www.ti.com>
- * Nishanth Menon <x0nishan@ti.com>
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
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
- * MA 02111-1307 USA
- */
-
-#include <config.h>
-#include <mach/silicon.h>
-
-#ifdef CONFIG_MACH_DO_LOWLEVEL_INIT
-/**
- * @fn void board_init_lowlevel(void)
- *
- * @brief This provides a assembly wrapper setting up SRAM before calling
- * board_init
- *
- * @return void
- */
-.globl board_init_lowlevel
-board_init_lowlevel:
-	/* Setup a temporary stack so that we can call C functions
-	 * Yes. this might have been already done by arch code.
-	 * No harm in being a bit redundant to avoid future complications
-	 */
-	ldr	sp,	SRAM_STACK
-        str     ip,	[sp]    /* stash old link register */
-        str     lr,	[sp]    /* stash current link register */
-	mov	ip,	lr	/* save link reg across call */
-	/* Do the pin muxes, sdram init etc..board-xxx.c */
-	bl	board_init
-        ldr     lr,	[sp]    /* restore current link register */
-        ldr     ip,	[sp]    /* restore save ip */
-	/* back to arch calling code */
-	mov	pc,	lr
-SRAM_STACK:
-	.word	OMAP_SRAM_STACK
-
-#endif /* CONFIG_MACH_DO_LOWLEVEL_INIT */
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
