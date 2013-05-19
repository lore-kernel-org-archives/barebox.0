Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x233.google.com ([2a00:1450:4013:c01::233])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ue8HW-0005pb-SB
 for barebox@lists.infradead.org; Sun, 19 May 2013 18:24:39 +0000
Received: by mail-ea0-f179.google.com with SMTP id z16so3456974ead.38
 for <barebox@lists.infradead.org>; Sun, 19 May 2013 11:24:08 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Sun, 19 May 2013 20:23:46 +0200
Message-Id: <1368987835-13323-3-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1368987835-13323-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1368987835-13323-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 02/11] arm: mvebu: introduce common lowlevel and early init
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

At early stage after boot, all MVEBU SoCs are similar enough to have
a common lowlevel and barebox entry. We  also remap the internal register
base address to 0xf100000 as it gives some 512M more of contiguous address
space. As we cannot determine real memory size that early, we start with
a default memory size of 64M and probe correct size later in SoC init.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Tested-by: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
---
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
---
 arch/arm/mach-mvebu/Makefile                |    2 +
 arch/arm/mach-mvebu/common.c                |   57 +++++++++++++++++++++++++++
 arch/arm/mach-mvebu/include/mach/common.h   |   23 +++++++++++
 arch/arm/mach-mvebu/include/mach/lowlevel.h |   23 +++++++++++
 arch/arm/mach-mvebu/lowlevel.c              |   28 +++++++++++++
 5 files changed, 133 insertions(+)
 create mode 100644 arch/arm/mach-mvebu/common.c
 create mode 100644 arch/arm/mach-mvebu/include/mach/common.h
 create mode 100644 arch/arm/mach-mvebu/include/mach/lowlevel.h
 create mode 100644 arch/arm/mach-mvebu/lowlevel.c

diff --git a/arch/arm/mach-mvebu/Makefile b/arch/arm/mach-mvebu/Makefile
index 8047725..80b3947 100644
--- a/arch/arm/mach-mvebu/Makefile
+++ b/arch/arm/mach-mvebu/Makefile
@@ -1,3 +1,5 @@
+lwl-y				+= lowlevel.o
+obj-y				+= common.o
 obj-$(CONFIG_ARCH_ARMADA_370)	+= armada-370-xp.o
 obj-$(CONFIG_ARCH_ARMADA_XP)	+= armada-370-xp.o
 obj-$(CONFIG_ARCH_DOVE)		+= dove.o
diff --git a/arch/arm/mach-mvebu/common.c b/arch/arm/mach-mvebu/common.c
new file mode 100644
index 0000000..e2092c8
--- /dev/null
+++ b/arch/arm/mach-mvebu/common.c
@@ -0,0 +1,57 @@
+/*
+ * Copyright (C) 2013
+ *  Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
+ *  Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
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
+#include <common.h>
+#include <io.h>
+#include <sizes.h>
+#include <asm/barebox-arm.h>
+#include <mach/common.h>
+
+/*
+ * All MVEBU SoCs start with internal registers at 0xd0000000.
+ * To get more contiguous address space and as Linux expects them
+ * there, we remap them early to 0xf1000000.
+ *
+ * There is no way to determine internal registers base address
+ * safely later on, as the remap register itself is within the
+ * internal registers.
+ */
+#define MVEBU_BOOTUP_INT_REG_BASE	0xd0000000
+#define MVEBU_BRIDGE_REG_BASE		0x20000
+#define DEVICE_INTERNAL_BASE_ADDR	(MVEBU_BRIDGE_REG_BASE + 0x80)
+
+static void mvebu_remap_registers(void)
+{
+	writel(MVEBU_REMAP_INT_REG_BASE,
+	       IOMEM(MVEBU_BOOTUP_INT_REG_BASE) + DEVICE_INTERNAL_BASE_ADDR);
+}
+
+/*
+ * Determining the actual memory size is highly SoC dependent,
+ * but for all SoCs RAM starts at 0x00000000. Therefore, we start
+ * with a minimal memory setup of 64M and probe correct memory size
+ * later.
+ */
+#define MVEBU_BOOTUP_MEMORY_BASE	0x00000000
+#define MVEBU_BOOTUP_MEMORY_SIZE	SZ_64M
+
+void __naked __noreturn mvebu_barebox_entry(void)
+{
+	mvebu_remap_registers();
+	barebox_arm_entry(MVEBU_BOOTUP_MEMORY_BASE,
+			  MVEBU_BOOTUP_MEMORY_SIZE, 0);
+}
diff --git a/arch/arm/mach-mvebu/include/mach/common.h b/arch/arm/mach-mvebu/include/mach/common.h
new file mode 100644
index 0000000..3cc1bf7
--- /dev/null
+++ b/arch/arm/mach-mvebu/include/mach/common.h
@@ -0,0 +1,23 @@
+/*
+ * Copyright (C) 2013
+ *  Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
+ *  Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
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
+#ifndef __MACH_COMMON_H__
+#define __MACH_COMMON_H__
+
+#define MVEBU_REMAP_INT_REG_BASE	0xf1000000
+
+#endif
diff --git a/arch/arm/mach-mvebu/include/mach/lowlevel.h b/arch/arm/mach-mvebu/include/mach/lowlevel.h
new file mode 100644
index 0000000..e86d928
--- /dev/null
+++ b/arch/arm/mach-mvebu/include/mach/lowlevel.h
@@ -0,0 +1,23 @@
+/*
+ * Copyright (C) 2013
+ *  Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
+ *  Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
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
+#ifndef __MACH_LOWLEVEL_H__
+#define __MACH_LOWLEVEL_H__
+
+void mvebu_barebox_entry(void);
+
+#endif
diff --git a/arch/arm/mach-mvebu/lowlevel.c b/arch/arm/mach-mvebu/lowlevel.c
new file mode 100644
index 0000000..3f64c4a
--- /dev/null
+++ b/arch/arm/mach-mvebu/lowlevel.c
@@ -0,0 +1,28 @@
+/*
+ * Copyright (C) 2013
+ *  Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
+ *  Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
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
+#include <common.h>
+#include <sizes.h>
+#include <asm/barebox-arm.h>
+#include <asm/barebox-arm-head.h>
+#include <mach/lowlevel.h>
+
+void __naked barebox_arm_reset_vector(void)
+{
+	arm_cpu_lowlevel_init();
+	mvebu_barebox_entry();
+}
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
