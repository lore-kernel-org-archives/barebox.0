Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x236.google.com ([2a00:1450:4013:c00::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WeLQx-0007sE-DF
 for barebox@lists.infradead.org; Sun, 27 Apr 2014 09:31:40 +0000
Received: by mail-ee0-f54.google.com with SMTP id d49so3944265eek.13
 for <barebox@lists.infradead.org>; Sun, 27 Apr 2014 02:31:11 -0700 (PDT)
From: Beniamino Galvani <b.galvani@gmail.com>
Date: Sun, 27 Apr 2014 11:30:36 +0200
Message-Id: <1398591044-3616-4-git-send-email-b.galvani@gmail.com>
In-Reply-To: <1398591044-3616-1-git-send-email-b.galvani@gmail.com>
References: <1398591044-3616-1-git-send-email-b.galvani@gmail.com>
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
Subject: [PATCH 03/11] ARM: add basic support for Rockchip SoCs
To: barebox@lists.infradead.org

This patch adds a basic support for the ARM-based Rockchip SoCs of the
RK3xxx family.

Signed-off-by: Beniamino Galvani <b.galvani@gmail.com>
---
 arch/arm/Kconfig                                   |    6 +++++
 arch/arm/Makefile                                  |    1 +
 arch/arm/mach-rockchip/Kconfig                     |    7 +++++
 arch/arm/mach-rockchip/Makefile                    |    1 +
 arch/arm/mach-rockchip/core.c                      |   28 ++++++++++++++++++++
 .../arm/mach-rockchip/include/mach/rockchip-regs.h |   25 +++++++++++++++++
 6 files changed, 68 insertions(+)
 create mode 100644 arch/arm/mach-rockchip/Kconfig
 create mode 100644 arch/arm/mach-rockchip/Makefile
 create mode 100644 arch/arm/mach-rockchip/core.c
 create mode 100644 arch/arm/mach-rockchip/include/mach/rockchip-regs.h

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 3754646..a7db86c 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -125,6 +125,11 @@ config ARCH_PXA
 	select GENERIC_GPIO
 	select HAS_POWEROFF
 
+config ARCH_ROCKCHIP
+	bool "Rockchip RX3xxx"
+	select CPU_V7
+	select ARM_SMP_TWD
+
 config ARCH_SOCFPGA
 	bool "Altera SOCFPGA cyclone5"
 	select HAS_DEBUG_LL
@@ -204,6 +209,7 @@ source arch/arm/mach-netx/Kconfig
 source arch/arm/mach-nomadik/Kconfig
 source arch/arm/mach-omap/Kconfig
 source arch/arm/mach-pxa/Kconfig
+source arch/arm/mach-rockchip/Kconfig
 source arch/arm/mach-samsung/Kconfig
 source arch/arm/mach-socfpga/Kconfig
 source arch/arm/mach-versatile/Kconfig
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index c1bd836..3312a49 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -64,6 +64,7 @@ machine-$(CONFIG_ARCH_NOMADIK)		:= nomadik
 machine-$(CONFIG_ARCH_NETX)		:= netx
 machine-$(CONFIG_ARCH_OMAP)		:= omap
 machine-$(CONFIG_ARCH_PXA)		:= pxa
+machine-$(CONFIG_ARCH_ROCKCHIP)		:= rockchip
 machine-$(CONFIG_ARCH_SAMSUNG)		:= samsung
 machine-$(CONFIG_ARCH_SOCFPGA)		:= socfpga
 machine-$(CONFIG_ARCH_VERSATILE)	:= versatile
diff --git a/arch/arm/mach-rockchip/Kconfig b/arch/arm/mach-rockchip/Kconfig
new file mode 100644
index 0000000..dfaf146
--- /dev/null
+++ b/arch/arm/mach-rockchip/Kconfig
@@ -0,0 +1,7 @@
+if ARCH_ROCKCHIP
+
+config ARCH_TEXT_BASE
+	hex
+	default 0x68000000
+
+endif
diff --git a/arch/arm/mach-rockchip/Makefile b/arch/arm/mach-rockchip/Makefile
new file mode 100644
index 0000000..820eb10
--- /dev/null
+++ b/arch/arm/mach-rockchip/Makefile
@@ -0,0 +1 @@
+obj-y += core.o
diff --git a/arch/arm/mach-rockchip/core.c b/arch/arm/mach-rockchip/core.c
new file mode 100644
index 0000000..bab06df
--- /dev/null
+++ b/arch/arm/mach-rockchip/core.c
@@ -0,0 +1,28 @@
+/*
+ * Copyright (C) 2014 Beniamino Galvani <b.galvani@gmail.com>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * version 2 as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#include <asm/io.h>
+#include <common.h>
+#include <mach/rockchip-regs.h>
+
+void __noreturn reset_cpu(unsigned long addr)
+{
+	/* Map bootrom from address 0 */
+	writel(RK_SOC_CON0_REMAP << 16, RK_GRF_BASE + RK_GRF_SOC_CON0);
+	/* Reset */
+	writel(0xeca8, RK_CRU_BASE + RK_CRU_GLB_SRST_SND);
+
+	while (1)
+		;
+}
+EXPORT_SYMBOL(reset_cpu);
diff --git a/arch/arm/mach-rockchip/include/mach/rockchip-regs.h b/arch/arm/mach-rockchip/include/mach/rockchip-regs.h
new file mode 100644
index 0000000..a6a1c64
--- /dev/null
+++ b/arch/arm/mach-rockchip/include/mach/rockchip-regs.h
@@ -0,0 +1,25 @@
+/*
+ * Copyright (C) 2014 Beniamino Galvani <b.galvani@gmail.com>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * version 2 as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#ifndef __MACH_ROCKCHIP_REGS_H
+#define __MACH_ROCKCHIP_REGS_H
+
+#define RK_CRU_BASE		0x20000000
+#define RK_GRF_BASE		0x20008000
+
+#define RK_CRU_GLB_SRST_SND	0x0104
+#define RK_GRF_SOC_CON0		0x00a0
+
+#define RK_SOC_CON0_REMAP	(1 << 12)
+
+#endif /* __MACH_ROCKCHIP_REGS_H */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
