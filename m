Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-07.nifty.com ([210.131.2.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU14V-0002DT-L9
 for barebox@lists.infradead.org; Thu, 30 Apr 2020 04:45:17 +0000
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Thu, 30 Apr 2020 13:44:49 +0900
Message-Id: <20200430044449.762595-2-masahiroy@kernel.org>
In-Reply-To: <20200430044449.762595-1-masahiroy@kernel.org>
References: <20200430044449.762595-1-masahiroy@kernel.org>
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
Subject: [PATCH 2/2] mips: remove unused board/debug_ll.h
To: barebox@lists.infradead.org
Cc: Masahiro Yamada <masahiroy@kernel.org>

There is no way to include <board/debug_ll.h>. These three files
are dead code.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 .../loongson-ls1b/include/board/debug_ll.h    | 22 -------------------
 .../netgear-wg102/include/board/debug_ll.h    | 21 ------------------
 .../qemu-malta/include/board/debug_ll.h       | 18 ---------------
 3 files changed, 61 deletions(-)
 delete mode 100644 arch/mips/boards/loongson-ls1b/include/board/debug_ll.h
 delete mode 100644 arch/mips/boards/netgear-wg102/include/board/debug_ll.h
 delete mode 100644 arch/mips/boards/qemu-malta/include/board/debug_ll.h

diff --git a/arch/mips/boards/loongson-ls1b/include/board/debug_ll.h b/arch/mips/boards/loongson-ls1b/include/board/debug_ll.h
deleted file mode 100644
index 05420f73a..000000000
--- a/arch/mips/boards/loongson-ls1b/include/board/debug_ll.h
+++ /dev/null
@@ -1,22 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-/*
- * Copyright (C) 2014 Antony Pavlov <antonynpavlov@gmail.com>
- */
-
-/** @file
- *  This File contains declaration for early output support
- */
-#ifndef __LOONGSON_TECH_LS1B_DEBUG_LL_H__
-#define __LOONGSON_TECH_LS1B_DEBUG_LL_H__
-
-#include <asm/addrspace.h>
-#include <mach/loongson1.h>
-
-#define DEBUG_LL_UART_ADDR	KSEG1ADDR(LS1X_UART2_BASE)
-#define DEBUG_LL_UART_SHIFT	0
-
-#define DEBUG_LL_UART_CLK   (83000000 / 16)
-#define DEBUG_LL_UART_BPS   CONFIG_BAUDRATE
-#define DEBUG_LL_UART_DIVISOR   (DEBUG_LL_UART_CLK / DEBUG_LL_UART_BPS)
-
-#endif /* __LOONGSON_TECH_LS1B_DEBUG_LL_H__ */
diff --git a/arch/mips/boards/netgear-wg102/include/board/debug_ll.h b/arch/mips/boards/netgear-wg102/include/board/debug_ll.h
deleted file mode 100644
index cc3b1d74b..000000000
--- a/arch/mips/boards/netgear-wg102/include/board/debug_ll.h
+++ /dev/null
@@ -1,21 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-or-later */
-/*
- * Copyright (C) 2013 Oleksij Rempel <linux@rempel-privat.de>
- */
-
-/** @file
- *  This File contains declaration for early output support
- */
-#ifndef __NETGEAR_WG102_DEBUG_LL_H__
-#define __NETGEAR_WG102_DEBUG_LL_H__
-
-#include <mach/ar2312_regs.h>
-
-#define DEBUG_LL_UART_ADDR	KSEG1ADDR(AR2312_UART0)
-#define DEBUG_LL_UART_SHIFT	AR2312_UART_SHIFT
-
-#define DEBUG_LL_UART_CLK   (45000000 / 16)
-#define DEBUG_LL_UART_BPS   CONFIG_BAUDRATE
-#define DEBUG_LL_UART_DIVISOR   (DEBUG_LL_UART_CLK / DEBUG_LL_UART_BPS)
-
-#endif /* __NETGEAR_WG102_DEBUG_LL_H__ */
diff --git a/arch/mips/boards/qemu-malta/include/board/debug_ll.h b/arch/mips/boards/qemu-malta/include/board/debug_ll.h
deleted file mode 100644
index 5b112b8ae..000000000
--- a/arch/mips/boards/qemu-malta/include/board/debug_ll.h
+++ /dev/null
@@ -1,18 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-/*
- * Copyright (C) 2013 Antony Pavlov <antonynpavlov@gmail.com>
- */
-
-#ifndef __INCLUDE_BOARD_DEBUG_LL_QEMU_MALTA_H__
-#define __INCLUDE_BOARD_DEBUG_LL_QEMU_MALTA_H__
-
-#include <mach/hardware.h>
-
-#define DEBUG_LL_UART_ADDR	MALTA_PIIX4_UART0
-#define DEBUG_LL_UART_SHIFT	0
-
-#define DEBUG_LL_UART_CLK       1843200
-#define DEBUG_LL_UART_BPS       CONFIG_BAUDRATE
-#define DEBUG_LL_UART_DIVISOR   (DEBUG_LL_UART_CLK / DEBUG_LL_UART_BPS)
-
-#endif /* __INCLUDE_BOARD_DEBUG_LL_QEMU_MALTA_H__ */
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
