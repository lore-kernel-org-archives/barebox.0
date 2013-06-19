Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.22])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UpEQr-0005Eg-5Q
 for barebox@lists.infradead.org; Wed, 19 Jun 2013 09:12:05 +0000
Received: from mailout-de.gmx.net ([10.1.76.30]) by mrigmx.server.lan
 (mrigmx001) with ESMTP (Nemesis) id 0Lkmks-1UHGaO3I9c-00aTGh for
 <barebox@lists.infradead.org>; Wed, 19 Jun 2013 11:11:40 +0200
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Wed, 19 Jun 2013 11:11:30 +0200
Message-Id: <1371633093-23179-6-git-send-email-linux@rempel-privat.de>
In-Reply-To: <1371633093-23179-1-git-send-email-linux@rempel-privat.de>
References: <1371633093-23179-1-git-send-email-linux@rempel-privat.de>
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
Subject: [PATCH 5/8] MIPS: netgear-wg102: add pbl support
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 .../netgear-wg102/include/board/board_pbl_start.h  | 69 ++++++++++++++++++++++
 arch/mips/mach-ar231x/Kconfig                      |  2 +
 2 files changed, 71 insertions(+)
 create mode 100644 arch/mips/boards/netgear-wg102/include/board/board_pbl_start.h

diff --git a/arch/mips/boards/netgear-wg102/include/board/board_pbl_start.h b/arch/mips/boards/netgear-wg102/include/board/board_pbl_start.h
new file mode 100644
index 0000000..4deae06
--- /dev/null
+++ b/arch/mips/boards/netgear-wg102/include/board/board_pbl_start.h
@@ -0,0 +1,69 @@
+/*
+ * Copyright (C) 2013 Antony Pavlov <antonynpavlov@gmail.com>
+ * Copyright (C) 2013 Oleksij Rempel <linux@rempel-privat.de>
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
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#include <asm/pbl_macros.h>
+#include <mach/pbl_macros.h>
+
+#include <mach/debug_ll.h>
+
+	.macro	board_pbl_start
+	.set	push
+	.set	noreorder
+
+	mips_barebox_10h
+
+	mips_disable_interrupts
+
+	pbl_ar2312_pll
+
+	pbl_ar2312_rst_uart0
+	debug_ll_ns16550_init
+
+	debug_ll_ns16550_outc 'a'
+	debug_ll_ns16550_outnl
+
+	/* check if SDRAM is already configured,
+	 * if yes, we are probably starting
+	 * as second stage loader and can skip configuration */
+	pbl_probe_mem t0, t1, KSEG1
+	beq t0, t1, sdram_configured
+	 nop
+
+	/* start SDRAM configuration */
+	pbl_ar2312_x16_sdram
+
+	/* check one more time. if some thing wrong,
+	 * we don't need to continue */
+	pbl_probe_mem t0, t1, KSEG1
+	beq t0, t1, sdram_configured
+	 nop
+	debug_ll_ns16550_outc '#'
+	debug_ll_ns16550_outnl
+
+1:
+	b	1b /* dead end */
+	 nop
+
+sdram_configured:
+	debug_ll_ns16550_outc 'b'
+	debug_ll_ns16550_outnl
+
+	copy_to_link_location	pbl_start
+
+	.set	pop
+	.endm
diff --git a/arch/mips/mach-ar231x/Kconfig b/arch/mips/mach-ar231x/Kconfig
index 1c6a12f..3f338ea 100644
--- a/arch/mips/mach-ar231x/Kconfig
+++ b/arch/mips/mach-ar231x/Kconfig
@@ -9,6 +9,8 @@ choice
 
 config BOARD_NETGEAR_WG102
 	bool "Netgear WG102"
+	select HAVE_PBL_IMAGE
+	select HAVE_IMAGE_COMPRESSION
 
 endchoice
 
-- 
1.8.1.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
