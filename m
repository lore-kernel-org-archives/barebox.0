Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22b.google.com ([2a00:1450:4010:c04::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WaMbc-0005Zb-2a
 for barebox@lists.infradead.org; Wed, 16 Apr 2014 09:58:12 +0000
Received: by mail-lb0-f171.google.com with SMTP id w7so7847581lbi.2
 for <barebox@lists.infradead.org>; Wed, 16 Apr 2014 02:57:49 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 16 Apr 2014 13:57:36 +0400
Message-Id: <1397642260-32606-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1397642260-32606-1-git-send-email-antonynpavlov@gmail.com>
References: <1397642260-32606-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 1/5] ARM: initial support for RC Module UEMD SoCs
To: barebox@lists.infradead.org

This commit adds minimal support for the UEMD SoCs
from RC Module (http://www.module.ru).

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/arm/Kconfig            |  5 +++++
 arch/arm/Makefile           |  1 +
 arch/arm/mach-uemd/Kconfig  |  7 +++++++
 arch/arm/mach-uemd/Makefile |  1 +
 arch/arm/mach-uemd/reset.c  | 24 ++++++++++++++++++++++++
 5 files changed, 38 insertions(+)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 3754646..040df54 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -184,6 +184,10 @@ config ARCH_TEGRA
 	select OFTREE
 	select RELOCATABLE
 
+config ARCH_UEMD
+	bool "RC Module UEMD Platform"
+	select CPU_ARM1176
+
 config ARCH_ZYNQ
 	bool "Xilinx Zynq-based boards"
 	select HAS_DEBUG_LL
@@ -209,6 +213,7 @@ source arch/arm/mach-socfpga/Kconfig
 source arch/arm/mach-versatile/Kconfig
 source arch/arm/mach-vexpress/Kconfig
 source arch/arm/mach-tegra/Kconfig
+source arch/arm/mach-uemd/Kconfig
 source arch/arm/mach-zynq/Kconfig
 
 config ARM_ASM_UNIFIED
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index c1bd836..c2ef824 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -69,6 +69,7 @@ machine-$(CONFIG_ARCH_SOCFPGA)		:= socfpga
 machine-$(CONFIG_ARCH_VERSATILE)	:= versatile
 machine-$(CONFIG_ARCH_VEXPRESS)		:= vexpress
 machine-$(CONFIG_ARCH_TEGRA)		:= tegra
+machine-$(CONFIG_ARCH_UEMD)		:= uemd
 machine-$(CONFIG_ARCH_ZYNQ)		:= zynq
 
 
diff --git a/arch/arm/mach-uemd/Kconfig b/arch/arm/mach-uemd/Kconfig
new file mode 100644
index 0000000..f9cf859
--- /dev/null
+++ b/arch/arm/mach-uemd/Kconfig
@@ -0,0 +1,7 @@
+if ARCH_UEMD
+
+config ARCH_TEXT_BASE
+	hex
+	default 0x40800000
+
+endif
diff --git a/arch/arm/mach-uemd/Makefile b/arch/arm/mach-uemd/Makefile
new file mode 100644
index 0000000..f3cc668
--- /dev/null
+++ b/arch/arm/mach-uemd/Makefile
@@ -0,0 +1 @@
+obj-y += reset.o
diff --git a/arch/arm/mach-uemd/reset.c b/arch/arm/mach-uemd/reset.c
new file mode 100644
index 0000000..df23e47
--- /dev/null
+++ b/arch/arm/mach-uemd/reset.c
@@ -0,0 +1,24 @@
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
+#include <common.h>
+
+void __noreturn reset_cpu(ulong addr)
+{
+	unreachable();
+}
+EXPORT_SYMBOL(reset_cpu);
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
