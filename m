Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.15.15])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UpEQs-0005Ej-Bz
 for barebox@lists.infradead.org; Wed, 19 Jun 2013 09:12:07 +0000
Received: from mailout-de.gmx.net ([10.1.76.30]) by mrigmx.server.lan
 (mrigmx001) with ESMTP (Nemesis) id 0LZk7m-1USEwz1may-00lR8B for
 <barebox@lists.infradead.org>; Wed, 19 Jun 2013 11:11:41 +0200
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Wed, 19 Jun 2013 11:11:31 +0200
Message-Id: <1371633093-23179-7-git-send-email-linux@rempel-privat.de>
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
Subject: [PATCH 6/8] MIPS: netgear-wg102: add debug_ll
To: barebox@lists.infradead.org

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 .../boards/netgear-wg102/include/board/debug_ll.h  | 33 ++++++++++++++++++++++
 1 file changed, 33 insertions(+)
 create mode 100644 arch/mips/boards/netgear-wg102/include/board/debug_ll.h

diff --git a/arch/mips/boards/netgear-wg102/include/board/debug_ll.h b/arch/mips/boards/netgear-wg102/include/board/debug_ll.h
new file mode 100644
index 0000000..2725032
--- /dev/null
+++ b/arch/mips/boards/netgear-wg102/include/board/debug_ll.h
@@ -0,0 +1,33 @@
+/*
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
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+/** @file
+ *  This File contains declaration for early output support
+ */
+#ifndef __NETGEAR_WG102_DEBUG_LL_H__
+#define __NETGEAR_WG102_DEBUG_LL_H__
+
+#include <mach/ar2312_regs.h>
+
+#define DEBUG_LL_UART_ADDR	KSEG1ADDR(AR2312_UART0)
+#define DEBUG_LL_UART_SHIFT	AR2312_UART_SHIFT
+
+#define DEBUG_LL_UART_CLK   (45000000 / 16)
+#define DEBUG_LL_UART_BPS   CONFIG_BAUDRATE
+#define DEBUG_LL_UART_DIVISOR   (DEBUG_LL_UART_CLK / DEBUG_LL_UART_BPS)
+
+#endif /* __NETGEAR_WG102_DEBUG_LL_H__ */
-- 
1.8.1.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
