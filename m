Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x235.google.com ([2a00:1450:4010:c04::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YgiGb-0001zJ-AT
 for barebox@lists.infradead.org; Fri, 10 Apr 2015 23:23:18 +0000
Received: by lbbuc2 with SMTP id uc2so24028785lbb.2
 for <barebox@lists.infradead.org>; Fri, 10 Apr 2015 16:22:55 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sat, 11 Apr 2015 02:22:59 +0300
Message-Id: <1428708181-12506-4-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1428708181-12506-1-git-send-email-antonynpavlov@gmail.com>
References: <1428708181-12506-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 3/5] MIPS: xburst: add Ainol Novo7 Paladin support
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/Makefile                                 |  1 +
 arch/mips/boards/ainol-novo7-paladin/Makefile      |  1 +
 arch/mips/boards/ainol-novo7-paladin/board.c       | 27 +++++++++++++++++
 .../ainol-novo7-paladin/include/board/debug_ll.h   | 23 +++++++++++++++
 arch/mips/dts/ainol-novo7-paladin.dts              | 34 ++++++++++++++++++++++
 arch/mips/mach-xburst/Kconfig                      |  4 +++
 6 files changed, 90 insertions(+)

diff --git a/arch/mips/Makefile b/arch/mips/Makefile
index 6ef2bf7..8478aa3 100644
--- a/arch/mips/Makefile
+++ b/arch/mips/Makefile
@@ -88,6 +88,7 @@ machine-$(CONFIG_MACH_MIPS_LOONGSON)	:= loongson
 board-$(CONFIG_BOARD_LOONGSON_TECH_LS1B)	:= loongson-ls1b
 
 machine-$(CONFIG_MACH_MIPS_XBURST)	:= xburst
+board-$(CONFIG_BOARD_AINOL_NOVO7_PALADIN)	:= ainol-novo7-paladin
 board-$(CONFIG_BOARD_RZX50)	:= ritmix-rzx50
 board-$(CONFIG_BOARD_CI20)	:= img-ci20
 
diff --git a/arch/mips/boards/ainol-novo7-paladin/Makefile b/arch/mips/boards/ainol-novo7-paladin/Makefile
new file mode 100644
index 0000000..dcfc293
--- /dev/null
+++ b/arch/mips/boards/ainol-novo7-paladin/Makefile
@@ -0,0 +1 @@
+obj-y += board.o
diff --git a/arch/mips/boards/ainol-novo7-paladin/board.c b/arch/mips/boards/ainol-novo7-paladin/board.c
new file mode 100644
index 0000000..61ee886
--- /dev/null
+++ b/arch/mips/boards/ainol-novo7-paladin/board.c
@@ -0,0 +1,27 @@
+/*
+ * Copyright (C) 2015 Antony Pavlov <antonynpavlov@gmail.com>
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
+static int novo7_paladin_hostname_init(void)
+{
+	barebox_set_hostname("novo7-paladin");
+
+	return 0;
+}
+console_initcall(novo7_paladin_hostname_init);
diff --git a/arch/mips/boards/ainol-novo7-paladin/include/board/debug_ll.h b/arch/mips/boards/ainol-novo7-paladin/include/board/debug_ll.h
new file mode 100644
index 0000000..ef78f94
--- /dev/null
+++ b/arch/mips/boards/ainol-novo7-paladin/include/board/debug_ll.h
@@ -0,0 +1,23 @@
+/*
+ * Copyright (C) 2012, 2015 Antony Pavlov <antonynpavlov@gmail.com>
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
+#ifndef __INCLUDE_NOVO_7_PALADIN_BOARD_DEBUG_LL_H__
+#define __INCLUDE_NOVO_7_PALADIN_BOARD_DEBUG_LL_H__
+
+#include <mach/debug_ll_jz4770.h>
+
+#endif /* __INCLUDE_NOVO_7_PALADIN_BOARD_DEBUG_LL_H__ */
diff --git a/arch/mips/dts/ainol-novo7-paladin.dts b/arch/mips/dts/ainol-novo7-paladin.dts
new file mode 100644
index 0000000..cccd6ad
--- /dev/null
+++ b/arch/mips/dts/ainol-novo7-paladin.dts
@@ -0,0 +1,34 @@
+/*
+ * Ainol Novo7 Paladin device tree
+ *
+ * Copyright (c) 2015 Antony Pavlov <antonynpavlov@gmail.com>
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
+#include "jz4770.dtsi"
+
+/ {
+	model = "Ainol Novo7 Paladin";
+	compatible = "ainol,novo7-paladin";
+
+	memory {
+		device_type = "memory";
+		reg = <0x0 0x10000000>;
+	};
+};
+
+&uart2 {
+	status = "okay";
+};
diff --git a/arch/mips/mach-xburst/Kconfig b/arch/mips/mach-xburst/Kconfig
index 3623d1a..a0ee4c6 100644
--- a/arch/mips/mach-xburst/Kconfig
+++ b/arch/mips/mach-xburst/Kconfig
@@ -30,6 +30,10 @@ config BOARD_RZX50
 	select HAS_POWEROFF
 	select CPU_JZ4755
 
+config BOARD_AINOL_NOVO7_PALADIN
+	bool "Ainol Novo7 Paladin"
+	select CPU_JZ4770
+
 config BOARD_CI20
 	bool "Imagination Creator CI20"
 	select CPU_JZ4780
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
