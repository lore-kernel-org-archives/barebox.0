Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKpQA-0002bQ-Hq
 for barebox@lists.infradead.org; Sat, 04 Apr 2020 20:29:40 +0000
From: Clement Leger <cleger@kalray.eu>
Date: Sat,  4 Apr 2020 22:29:08 +0200
Message-Id: <20200404202910.12524-5-cleger@kalray.eu>
In-Reply-To: <20200404202910.12524-1-cleger@kalray.eu>
References: <20200404202910.12524-1-cleger@kalray.eu>
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
Subject: [PATCH v2 4/6] kvx: Implement reset source and reset
To: Sascha Hauer <s.hauer@pengutronix.de>, barebox@lists.infradead.org
Cc: Clement Leger <cleger@kalray.eu>

Implement reset and reset source handling using ftu. This support uses
regmap to access the ftu easily using "kalray,kvx-syscon" compatible.

Signed-off-by: Clement Leger <cleger@kalray.eu>
---
 arch/kvx/Kconfig                   |  2 +
 arch/kvx/configs/generic_defconfig |  1 +
 arch/kvx/cpu/Makefile              |  2 +-
 arch/kvx/cpu/reset.c               | 67 ++++++++++++++++++++++++++++++
 arch/kvx/include/asm/ftu.h         | 24 +++++++++++
 5 files changed, 95 insertions(+), 1 deletion(-)
 create mode 100644 arch/kvx/cpu/reset.c
 create mode 100644 arch/kvx/include/asm/ftu.h

diff --git a/arch/kvx/Kconfig b/arch/kvx/Kconfig
index 5af94cca7..5463bb4f1 100644
--- a/arch/kvx/Kconfig
+++ b/arch/kvx/Kconfig
@@ -7,9 +7,11 @@ config KVX
 	select FLEXIBLE_BOOTARGS
 	select GENERIC_FIND_NEXT_BIT
 	select LIBFDT
+	select MFD_SYSCON
 	select OF_BAREBOX_DRIVERS
 	select OFDEVICE
 	select PARTITION
+	select RESET_SOURCE
 	default y
 
 config PHYS_ADDR_T_64BIT
diff --git a/arch/kvx/configs/generic_defconfig b/arch/kvx/configs/generic_defconfig
index 535f1cf8b..3f7bb0f19 100644
--- a/arch/kvx/configs/generic_defconfig
+++ b/arch/kvx/configs/generic_defconfig
@@ -4,6 +4,7 @@ CONFIG_BAUDRATE=115200
 CONFIG_CMD_CMP=y
 CONFIG_CMD_OF_DUMP=y
 CONFIG_CMD_POWEROFF=y
+CONFIG_CMD_RESET=y
 CONFIG_CONSOLE_RATP=y
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_PINCTRL_SINGLE=y
diff --git a/arch/kvx/cpu/Makefile b/arch/kvx/cpu/Makefile
index 1d0635206..4a140ffd1 100644
--- a/arch/kvx/cpu/Makefile
+++ b/arch/kvx/cpu/Makefile
@@ -3,5 +3,5 @@
 # Copyright (C) 2019 Kalray Inc.
 #
 
-obj-y 		+= start.o cpu.o exception.o
+obj-y 		+= start.o cpu.o exception.o reset.o
 extra-y 	+= barebox.lds
diff --git a/arch/kvx/cpu/reset.c b/arch/kvx/cpu/reset.c
new file mode 100644
index 000000000..c7f2018e0
--- /dev/null
+++ b/arch/kvx/cpu/reset.c
@@ -0,0 +1,67 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright (C) 2020 Kalray Inc.
+ */
+
+#include <common.h>
+#include <reset_source.h>
+#include <mfd/syscon.h>
+#include <restart.h>
+#include <regmap.h>
+#include <init.h>
+
+#include <asm/ftu.h>
+
+static struct regmap *ftu_regmap;
+
+static void __noreturn kvx_restart_soc(struct restart_handler *rst)
+{
+	regmap_write(ftu_regmap, KVX_FTU_SW_RESET_OFFSET, 0x1);
+
+	/* Not reached */
+	hang();
+}
+
+
+static int kvx_reset_init(void)
+{
+	int ret;
+	u32 rst_cause;
+
+	ftu_regmap = syscon_regmap_lookup_by_compatible("kalray,kvx-syscon");
+	if (IS_ERR(ftu_regmap))
+		return PTR_ERR(ftu_regmap);
+
+	ret = regmap_read(ftu_regmap, KVX_FTU_RESET_CAUSE_OFFSET, &rst_cause);
+	if (ret < 0) {
+		reset_source_set(RESET_UKWN);
+		return ret;
+	}
+
+	switch (rst_cause) {
+	case KVX_FTU_RESET_CAUSE_CODE_DSU:
+		reset_source_set(RESET_JTAG);
+		break;
+	case KVX_FTU_RESET_CAUSE_CODE_SW:
+		reset_source_set(RESET_RST);
+		break;
+	case KVX_FTU_RESET_CAUSE_CODE_MPPA:
+		reset_source_set(RESET_POR);
+		break;
+	case KVX_FTU_RESET_CAUSE_CODE_PCIE:
+		reset_source_set(RESET_EXT);
+		break;
+	case KVX_FTU_RESET_CAUSE_CODE_WDOG_0:
+	case KVX_FTU_RESET_CAUSE_CODE_WDOG_1:
+	case KVX_FTU_RESET_CAUSE_CODE_WDOG_2:
+	case KVX_FTU_RESET_CAUSE_CODE_WDOG_3:
+	case KVX_FTU_RESET_CAUSE_CODE_WDOG_4:
+		reset_source_set(RESET_WDG);
+		break;
+	}
+
+	restart_handler_register_fn(kvx_restart_soc);
+
+	return 0;
+}
+device_initcall(kvx_reset_init);
diff --git a/arch/kvx/include/asm/ftu.h b/arch/kvx/include/asm/ftu.h
new file mode 100644
index 000000000..4bc935721
--- /dev/null
+++ b/arch/kvx/include/asm/ftu.h
@@ -0,0 +1,24 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2019 Kalray Inc.
+ */
+
+#ifndef _ASM_KVX_FTU_H
+#define _ASM_KVX_FTU_H
+
+/* FTU reset cause register definitions */
+#define KVX_FTU_RESET_CAUSE_OFFSET                 0x48
+#define KVX_FTU_RESET_CAUSE_CODE_MPPA              0x0
+#define KVX_FTU_RESET_CAUSE_CODE_DSU               0x1
+#define KVX_FTU_RESET_CAUSE_CODE_SW                0x2
+#define KVX_FTU_RESET_CAUSE_CODE_PCIE              0x3
+#define KVX_FTU_RESET_CAUSE_CODE_WDOG_0            0x8
+#define KVX_FTU_RESET_CAUSE_CODE_WDOG_1            0x9
+#define KVX_FTU_RESET_CAUSE_CODE_WDOG_2            0xA
+#define KVX_FTU_RESET_CAUSE_CODE_WDOG_3            0xB
+#define KVX_FTU_RESET_CAUSE_CODE_WDOG_4            0xC
+
+/* FTU reset register definitions */
+#define KVX_FTU_SW_RESET_OFFSET                    0x50
+
+#endif /* _ASM_KVX_FTU_H */
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
