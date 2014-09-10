Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x231.google.com ([2a00:1450:4010:c03::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XRcYV-0003xd-Uo
 for barebox@lists.infradead.org; Wed, 10 Sep 2014 07:43:09 +0000
Received: by mail-la0-f49.google.com with SMTP id b17so21201316lan.36
 for <barebox@lists.infradead.org>; Wed, 10 Sep 2014 00:42:45 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 10 Sep 2014 11:42:24 +0400
Message-Id: <1410334946-12922-8-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1410334946-12922-1-git-send-email-antonynpavlov@gmail.com>
References: <1410334946-12922-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 7/9] MIPS: add MIPS Creator CI20 board support
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/Makefile                                 |  1 +
 arch/mips/boards/img-ci20/Makefile                 |  1 +
 arch/mips/boards/img-ci20/board.c                  | 27 ++++++++++++++
 .../img-ci20/include/board/board_pbl_start.h       | 43 ++++++++++++++++++++++
 arch/mips/boards/img-ci20/include/board/debug_ll.h | 23 ++++++++++++
 arch/mips/dts/img-ci20.dts                         | 35 ++++++++++++++++++
 arch/mips/mach-xburst/Kconfig                      |  4 ++
 7 files changed, 134 insertions(+)

diff --git a/arch/mips/Makefile b/arch/mips/Makefile
index a3cf112..f3f4f67 100644
--- a/arch/mips/Makefile
+++ b/arch/mips/Makefile
@@ -89,6 +89,7 @@ board-$(CONFIG_BOARD_LOONGSON_TECH_LS1B)	:= loongson-ls1b
 
 machine-$(CONFIG_MACH_MIPS_XBURST)	:= xburst
 board-$(CONFIG_BOARD_RZX50)	:= ritmix-rzx50
+board-$(CONFIG_BOARD_CI20)	:= img-ci20
 
 machdirs := $(patsubst %,arch/mips/mach-%/,$(machine-y))
 
diff --git a/arch/mips/boards/img-ci20/Makefile b/arch/mips/boards/img-ci20/Makefile
new file mode 100644
index 0000000..dcfc293
--- /dev/null
+++ b/arch/mips/boards/img-ci20/Makefile
@@ -0,0 +1 @@
+obj-y += board.o
diff --git a/arch/mips/boards/img-ci20/board.c b/arch/mips/boards/img-ci20/board.c
new file mode 100644
index 0000000..515ebae
--- /dev/null
+++ b/arch/mips/boards/img-ci20/board.c
@@ -0,0 +1,27 @@
+/*
+ * Copyright (C) 2012 Antony Pavlov <antonynpavlov@gmail.com>
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
+#include <common.h>
+#include <init.h>
+
+static int ci20_hostname_init(void)
+{
+	barebox_set_hostname("ci20");
+
+	return 0;
+}
+console_initcall(ci20_hostname_init);
diff --git a/arch/mips/boards/img-ci20/include/board/board_pbl_start.h b/arch/mips/boards/img-ci20/include/board/board_pbl_start.h
new file mode 100644
index 0000000..26232f5
--- /dev/null
+++ b/arch/mips/boards/img-ci20/include/board/board_pbl_start.h
@@ -0,0 +1,43 @@
+/*
+ * Startup Code for Imagination Creator CI20 board
+ *
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
+#include <mach/debug_ll.h>
+#include <asm/pbl_nmon.h>
+
+	.macro	board_pbl_start
+	.set	push
+	.set	noreorder
+
+	mips_disable_interrupts
+
+	/* CPU/SoC specific setup ... */
+	/* ... absent */
+
+	debug_ll_ns16550_init
+
+	debug_ll_ns16550_outc '.'
+	debug_ll_ns16550_outnl
+
+	mips_nmon
+
+	copy_to_link_location	pbl_start
+
+	.set	pop
+	.endm
diff --git a/arch/mips/boards/img-ci20/include/board/debug_ll.h b/arch/mips/boards/img-ci20/include/board/debug_ll.h
new file mode 100644
index 0000000..72612cf
--- /dev/null
+++ b/arch/mips/boards/img-ci20/include/board/debug_ll.h
@@ -0,0 +1,23 @@
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
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#ifndef __INCLUDE_CI20_BOARD_DEBUG_LL_H__
+#define __INCLUDE_CI20_BOARD_DEBUG_LL_H__
+
+#include <mach/debug_ll_jz4780.h>
+
+#endif  /* __INCLUDE_CI20_BOARD_DEBUG_LL_H__ */
diff --git a/arch/mips/dts/img-ci20.dts b/arch/mips/dts/img-ci20.dts
new file mode 100644
index 0000000..f2022dd
--- /dev/null
+++ b/arch/mips/dts/img-ci20.dts
@@ -0,0 +1,35 @@
+/*
+ * CI20 device tree
+ *
+ * Copyright (c) 2013 Imagination Technologies
+ * Author: Paul Burton <paul.burton@imgtec.com>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+/dts-v1/;
+
+#include "jz4780.dtsi"
+
+/ {
+	model = "MIPS Creator CI20";
+	compatible = "img,ci20";
+
+	memory {
+		device_type = "memory";
+		reg = <0x0 0x10000000>;
+	};
+};
+
+&uart0 {
+	status = "okay";
+};
diff --git a/arch/mips/mach-xburst/Kconfig b/arch/mips/mach-xburst/Kconfig
index e3db61e..f4a64c6 100644
--- a/arch/mips/mach-xburst/Kconfig
+++ b/arch/mips/mach-xburst/Kconfig
@@ -24,6 +24,10 @@ config BOARD_RZX50
 	select HAS_POWEROFF
 	select CPU_JZ4755
 
+config BOARD_CI20
+	bool "Imagination Creator CI20"
+	select CPU_JZ4780
+
 endchoice
 
 if DEBUG_LL
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
