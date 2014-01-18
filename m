Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x233.google.com ([2a00:1450:4010:c04::233])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W4Xan-0006J5-95
 for barebox@lists.infradead.org; Sat, 18 Jan 2014 15:13:50 +0000
Received: by mail-lb0-f179.google.com with SMTP id l4so2212651lbv.10
 for <barebox@lists.infradead.org>; Sat, 18 Jan 2014 07:13:27 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sat, 18 Jan 2014 19:13:00 +0400
Message-Id: <1390057983-17921-11-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1390057983-17921-1-git-send-email-antonynpavlov@gmail.com>
References: <1390057983-17921-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 10/13] MIPS: loongson-ls1b: add PBL support
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 .../loongson-ls1b/include/board/board_pbl_start.h  | 38 ++++++++++++++++++++++
 arch/mips/mach-loongson/Kconfig                    |  2 ++
 2 files changed, 40 insertions(+)
 create mode 100644 arch/mips/boards/loongson-ls1b/include/board/board_pbl_start.h

diff --git a/arch/mips/boards/loongson-ls1b/include/board/board_pbl_start.h b/arch/mips/boards/loongson-ls1b/include/board/board_pbl_start.h
new file mode 100644
index 0000000..aa30e8d
--- /dev/null
+++ b/arch/mips/boards/loongson-ls1b/include/board/board_pbl_start.h
@@ -0,0 +1,38 @@
+/*
+ * Copyright (C) 2014 Antony Pavlov <antonynpavlov@gmail.com>
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
+#include <mach/loongson1.h>
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
+	debug_ll_ns16550_init
+
+	debug_ll_ns16550_outc '.'
+	debug_ll_ns16550_outnl
+
+	copy_to_link_location	pbl_start
+
+	.set	pop
+	.endm
diff --git a/arch/mips/mach-loongson/Kconfig b/arch/mips/mach-loongson/Kconfig
index 263b67e..fe48ed6 100644
--- a/arch/mips/mach-loongson/Kconfig
+++ b/arch/mips/mach-loongson/Kconfig
@@ -15,6 +15,8 @@ config BOARD_LOONGSON_TECH_LS1B
 	select CSRC_R4K_LIB
 	select HAS_DEBUG_LL
 	select DRIVER_SERIAL_NS16550
+	select HAVE_PBL_IMAGE
+	select HAVE_IMAGE_COMPRESSION
 
 endchoice
 
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
