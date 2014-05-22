Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x232.google.com ([2a00:1450:4010:c03::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WnYzd-0004tn-Fk
 for barebox@lists.infradead.org; Thu, 22 May 2014 19:49:34 +0000
Received: by mail-la0-f50.google.com with SMTP id b8so3073976lan.9
 for <barebox@lists.infradead.org>; Thu, 22 May 2014 12:49:10 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 22 May 2014 23:48:44 +0400
Message-Id: <1400788130-24202-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1400788130-24202-1-git-send-email-antonynpavlov@gmail.com>
References: <1400788130-24202-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v2 1/7] ARM: initial support for RC Module UEMD SoCs
To: barebox@lists.infradead.org

This commit adds minimal support for the UEMD SoCs
from RC Module (http://www.module.ru).

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/arm/Kconfig                           | 11 +++++++++++
 arch/arm/Makefile                          |  1 +
 arch/arm/mach-uemd/Kconfig                 |  7 +++++++
 arch/arm/mach-uemd/Makefile                |  1 +
 arch/arm/mach-uemd/include/mach/hardware.h |  7 +++++++
 arch/arm/mach-uemd/reset.c                 | 24 ++++++++++++++++++++++++
 6 files changed, 51 insertions(+)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 38b100d..81ee19b 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -194,6 +194,16 @@ config ARCH_TEGRA
 	select RELOCATABLE
 	select RESET_CONTROLLER
 
+config ARCH_UEMD
+	bool "RC Module UEMD Platform"
+	select CPU_ARM1176
+	select COMMON_CLK
+	select COMMON_CLK_OF_PROVIDER
+	select CLKDEV_LOOKUP
+	select OFDEVICE
+	select OFTREE
+	select CLOCKSOURCE_UEMD
+
 config ARCH_ZYNQ
 	bool "Xilinx Zynq-based boards"
 	select HAS_DEBUG_LL
@@ -220,6 +230,7 @@ source arch/arm/mach-socfpga/Kconfig
 source arch/arm/mach-versatile/Kconfig
 source arch/arm/mach-vexpress/Kconfig
 source arch/arm/mach-tegra/Kconfig
+source arch/arm/mach-uemd/Kconfig
 source arch/arm/mach-zynq/Kconfig
 
 config ARM_ASM_UNIFIED
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index c576999..64db73c 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -70,6 +70,7 @@ machine-$(CONFIG_ARCH_SOCFPGA)		:= socfpga
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
diff --git a/arch/arm/mach-uemd/include/mach/hardware.h b/arch/arm/mach-uemd/include/mach/hardware.h
new file mode 100644
index 0000000..2311ebf
--- /dev/null
+++ b/arch/arm/mach-uemd/include/mach/hardware.h
@@ -0,0 +1,7 @@
+#ifndef __ASM_ARCH_HARDWARE_H
+#define __ASM_ARCH_HARDWARE_H
+
+#define UEMD_EHCI_BASE	0x10040000
+#define UEMD_UART0_BASE	0x2002b000
+
+#endif /* __ASM_ARCH_HARDWARE_H */
diff --git a/arch/arm/mach-uemd/reset.c b/arch/arm/mach-uemd/reset.c
new file mode 100644
index 0000000..00ae0be
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
+	hang();
+}
+EXPORT_SYMBOL(reset_cpu);
-- 
1.9.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
