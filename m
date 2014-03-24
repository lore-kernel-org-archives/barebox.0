Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x231.google.com ([2a00:1450:4010:c03::231])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WSBGX-0002QK-IF
 for barebox@lists.infradead.org; Mon, 24 Mar 2014 20:14:38 +0000
Received: by mail-la0-f49.google.com with SMTP id mc6so3971293lab.8
 for <barebox@lists.infradead.org>; Mon, 24 Mar 2014 13:14:15 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 25 Mar 2014 00:13:53 +0400
Message-Id: <1395692034-5821-8-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1395692034-5821-1-git-send-email-antonynpavlov@gmail.com>
References: <1395692034-5821-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v2 7/8] MIPS: mach-xburst: drop serial.c
To: barebox@lists.infradead.org

We use dts for serial port initialization,
so we have no need in mach-xburst/serial.c anymore.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/mach-xburst/Makefile |  1 -
 arch/mips/mach-xburst/serial.c | 60 ------------------------------------------
 2 files changed, 61 deletions(-)

diff --git a/arch/mips/mach-xburst/Makefile b/arch/mips/mach-xburst/Makefile
index 3e0cd73..e5634ba 100644
--- a/arch/mips/mach-xburst/Makefile
+++ b/arch/mips/mach-xburst/Makefile
@@ -1,2 +1 @@
-obj-y += serial.o
 obj-$(CONFIG_CPU_JZ4755) += csrc-jz4750.o reset-jz4750.o
diff --git a/arch/mips/mach-xburst/serial.c b/arch/mips/mach-xburst/serial.c
deleted file mode 100644
index acf5648..0000000
--- a/arch/mips/mach-xburst/serial.c
+++ /dev/null
@@ -1,60 +0,0 @@
-/*
- * Copyright (C) 2013 Antony Pavlov <antonynpavlov@gmail.com>
- *
- * Based on the linux kernel JZ4740 serial support:
- * Copyright (C) 2010, Lars-Peter Clausen <lars@metafoo.de>
- *
- * This file is part of barebox.
- * See file CREDITS for list of people who contributed to this project.
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2
- * as published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- */
-
-#include <common.h>
-#include <ns16550.h>
-#include <io.h>
-#include <mach/devices.h>
-
-#define JZ_UART_SHIFT	2
-
-#define ier		(1 << JZ_UART_SHIFT)
-#define fcr		(2 << JZ_UART_SHIFT)
-
-static void jz_serial_reg_write(unsigned int val, unsigned long base,
-	unsigned char reg_offset)
-{
-	switch (reg_offset) {
-	case fcr:
-		val |= 0x10; /* Enable uart module */
-		break;
-	case ier:
-		val |= (val & 0x4) << 2;
-		break;
-	default:
-		break;
-	}
-
-	writeb(val & 0xff, (void *)(base + reg_offset));
-}
-
-struct device_d *jz_add_uart(int id, unsigned long base, unsigned int clock)
-{
-	struct NS16550_plat *serial_plat;
-
-	serial_plat = xzalloc(sizeof(*serial_plat));
-
-	serial_plat->shift = JZ_UART_SHIFT;
-	serial_plat->reg_write = &jz_serial_reg_write;
-	serial_plat->clock = clock;
-
-	return add_ns16550_device(id, base, 8 << JZ_UART_SHIFT,
-			IORESOURCE_MEM_8BIT, serial_plat);
-}
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
