Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOrmX-0004p6-19
 for barebox@lists.infradead.org; Sun, 27 Oct 2019 23:17:11 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 28 Oct 2019 00:16:47 +0100
Message-Id: <20191027231647.9884-8-a.fatoum@pengutronix.de>
In-Reply-To: <20191027231647.9884-1-a.fatoum@pengutronix.de>
References: <20191027231647.9884-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 8/8] ARM: stm32mp: implement SoC and boot source identification
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

The BSEC OTP holds information about SoC type and package.
The Tamp registers hold information from the BootROM about boot
source. Add support for both.

Additionally, the tamp registers can also hold a request from the
operating system about what mode to enter after boot, e.g.
boot-into-recovery. A global function is exported for this, but
unused so far.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-stm32mp/Makefile                |   3 +-
 .../mach-stm32mp/include/mach/bootsource.h    |  33 +++
 arch/arm/mach-stm32mp/include/mach/revision.h |  32 +++
 arch/arm/mach-stm32mp/init.c                  | 260 ++++++++++++++++++
 4 files changed, 327 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/mach-stm32mp/include/mach/bootsource.h
 create mode 100644 arch/arm/mach-stm32mp/include/mach/revision.h
 create mode 100644 arch/arm/mach-stm32mp/init.c

diff --git a/arch/arm/mach-stm32mp/Makefile b/arch/arm/mach-stm32mp/Makefile
index 204cad608f56..6f495288923a 100644
--- a/arch/arm/mach-stm32mp/Makefile
+++ b/arch/arm/mach-stm32mp/Makefile
@@ -1 +1,2 @@
-obj-$(CONFIG_BOOTM) := stm32image.o
+obj-y := init.o
+obj-$(CONFIG_BOOTM) += stm32image.o
diff --git a/arch/arm/mach-stm32mp/include/mach/bootsource.h b/arch/arm/mach-stm32mp/include/mach/bootsource.h
new file mode 100644
index 000000000000..1b6f562ac301
--- /dev/null
+++ b/arch/arm/mach-stm32mp/include/mach/bootsource.h
@@ -0,0 +1,33 @@
+/* SPDX-License-Identifier: GPL-2.0+ OR BSD-3-Clause */
+/*
+ * Copyright (C) 2018, STMicroelectronics - All Rights Reserved
+ */
+
+#ifndef __MACH_STM32_BOOTSOURCE_H__
+#define __MACH_STM32_BOOTSOURCE_H__
+
+enum stm32mp_boot_device {
+	STM32MP_BOOT_FLASH_SD		= 0x10, /* .. 0x13 */
+	STM32MP_BOOT_FLASH_EMMC		= 0x20, /* .. 0x23 */
+	STM32MP_BOOT_FLASH_NAND		= 0x30,
+	STM32MP_BOOT_FLASH_NAND_FMC	= 0x31,
+	STM32MP_BOOT_FLASH_NOR		= 0x40,
+	STM32MP_BOOT_FLASH_NOR_QSPI	= 0x41,
+	STM32MP_BOOT_SERIAL_UART	= 0x50, /* .. 0x58 */
+	STM32MP_BOOT_SERIAL_USB		= 0x60,
+	STM32MP_BOOT_SERIAL_USB_OTG	= 0x62,
+};
+
+enum stm32mp_forced_boot_mode {
+	STM32MP_BOOT_NORMAL	= 0x00,
+	STM32MP_BOOT_FASTBOOT	= 0x01,
+	STM32MP_BOOT_RECOVERY	= 0x02,
+	STM32MP_BOOT_STM32PROG	= 0x03,
+	STM32MP_BOOT_UMS_MMC0	= 0x10,
+	STM32MP_BOOT_UMS_MMC1	= 0x11,
+	STM32MP_BOOT_UMS_MMC2	= 0x12,
+};
+
+enum stm32mp_forced_boot_mode st32mp_get_forced_boot_mode(void);
+
+#endif
diff --git a/arch/arm/mach-stm32mp/include/mach/revision.h b/arch/arm/mach-stm32mp/include/mach/revision.h
new file mode 100644
index 000000000000..387201421de7
--- /dev/null
+++ b/arch/arm/mach-stm32mp/include/mach/revision.h
@@ -0,0 +1,32 @@
+/* SPDX-License-Identifier: GPL-2.0+ OR BSD-3-Clause */
+/*
+ * Copyright (C) 2015-2017, STMicroelectronics - All Rights Reserved
+ */
+
+#ifndef __MACH_CPUTYPE_H__
+#define __MACH_CPUTYPE_H__
+
+/* ID = Device Version (bit31:16) + Device Part Number (RPN) (bit15:0)*/
+#define CPU_STM32MP157Cxx	0x05000000
+#define CPU_STM32MP157Axx	0x05000001
+#define CPU_STM32MP153Cxx	0x05000024
+#define CPU_STM32MP153Axx	0x05000025
+#define CPU_STM32MP151Cxx	0x0500002E
+#define CPU_STM32MP151Axx	0x0500002F
+
+/* silicon revisions */
+#define CPU_REV_A	0x1000
+#define CPU_REV_B	0x2000
+
+int stm32mp_silicon_revision(void);
+int stm32mp_cputype(void);
+int stm32mp_package(void);
+
+#define cpu_is_stm32mp157c() (stm32mp_cputype() == CPU_STM32MP157Cxx)
+#define cpu_is_stm32mp157a() (stm32mp_cputype() == CPU_STM32MP157Axx)
+#define cpu_is_stm32mp153c() (stm32mp_cputype() == CPU_STM32MP153Cxx)
+#define cpu_is_stm32mp153a() (stm32mp_cputype() == CPU_STM32MP153Axx)
+#define cpu_is_stm32mp151c() (stm32mp_cputype() == CPU_STM32MP151Cxx)
+#define cpu_is_stm32mp151a() (stm32mp_cputype() == CPU_STM32MP151Axx)
+
+#endif /* __MACH_CPUTYPE_H__ */
diff --git a/arch/arm/mach-stm32mp/init.c b/arch/arm/mach-stm32mp/init.c
new file mode 100644
index 000000000000..7bad989a609b
--- /dev/null
+++ b/arch/arm/mach-stm32mp/init.c
@@ -0,0 +1,260 @@
+// SPDX-License-Identifier: GPL-2.0+ OR BSD-3-Clause
+/*
+ * Copyright (C) 2018, STMicroelectronics - All Rights Reserved
+ * Copyright (C) 2019 Ahmad Fatoum, Pengutronix
+ */
+
+#define pr_fmt(fmt) "stm32mp-init: " fmt
+
+#include <common.h>
+#include <init.h>
+#include <mach/stm32.h>
+#include <mach/bsec.h>
+#include <mach/revision.h>
+#include <mach/bootsource.h>
+#include <bootsource.h>
+
+/* DBGMCU register */
+#define DBGMCU_IDC		(STM32_DBGMCU_BASE + 0x00)
+#define DBGMCU_APB4FZ1		(STM32_DBGMCU_BASE + 0x2C)
+#define DBGMCU_APB4FZ1_IWDG2	BIT(2)
+#define DBGMCU_IDC_DEV_ID_MASK	GENMASK(11, 0)
+#define DBGMCU_IDC_DEV_ID_SHIFT	0
+#define DBGMCU_IDC_REV_ID_MASK	GENMASK(31, 16)
+#define DBGMCU_IDC_REV_ID_SHIFT	16
+
+#define RCC_DBGCFGR		(STM32_RCC_BASE + 0x080C)
+#define RCC_DBGCFGR_DBGCKEN	BIT(8)
+
+/* BSEC OTP index */
+#define BSEC_OTP_RPN	1
+#define BSEC_OTP_PKG	16
+
+/* Device Part Number (RPN) = OTP_DATA1 lower 8 bits */
+#define RPN_SHIFT	0
+#define RPN_MASK	GENMASK(7, 0)
+
+/* Package = bit 27:29 of OTP16
+ * - 100: LBGA448  (FFI) => AA = LFBGA 18x18mm 448 balls p. 0.8mm
+ * - 011: LBGA354  (LCI) => AB = LFBGA 16x16mm 359 balls p. 0.8mm
+ * - 010: TFBGA361 (FFC) => AC = TFBGA 12x12mm 361 balls p. 0.5mm
+ * - 001: TFBGA257 (LCC) => AD = TFBGA 10x10mm 257 balls p. 0.5mm
+ * - others: Reserved
+ */
+#define PKG_SHIFT	27
+#define PKG_MASK	GENMASK(2, 0)
+
+#define PKG_AA_LBGA448	4
+#define PKG_AB_LBGA354	3
+#define PKG_AC_TFBGA361	2
+#define PKG_AD_TFBGA257	1
+
+/*
+ * enumerated for boot interface from Bootrom, used in TAMP_BOOT_CONTEXT
+ * - boot device = bit 8:4
+ * - boot instance = bit 3:0
+ */
+#define BOOT_TYPE_MASK		0xF0
+#define BOOT_TYPE_SHIFT		4
+#define BOOT_INSTANCE_MASK	0x0F
+#define BOOT_INSTANCE_SHIFT	0
+
+/* TAMP registers */
+#define TAMP_BACKUP_REGISTER(x)         (STM32_TAMP_BASE + 0x100 + 4 * x)
+/* secure access */
+#define TAMP_BACKUP_MAGIC_NUMBER        TAMP_BACKUP_REGISTER(4)
+#define TAMP_BACKUP_BRANCH_ADDRESS      TAMP_BACKUP_REGISTER(5)
+/* non secure access */
+#define TAMP_BOOT_CONTEXT               TAMP_BACKUP_REGISTER(20)
+#define TAMP_BOOTCOUNT                  TAMP_BACKUP_REGISTER(21)
+
+#define TAMP_BOOT_MODE_MASK             GENMASK(15, 8)
+#define TAMP_BOOT_MODE_SHIFT            8
+#define TAMP_BOOT_DEVICE_MASK           GENMASK(7, 4)
+#define TAMP_BOOT_INSTANCE_MASK         GENMASK(3, 0)
+#define TAMP_BOOT_FORCED_MASK           GENMASK(7, 0)
+#define TAMP_BOOT_DEBUG_ON              BIT(16)
+
+
+static enum stm32mp_forced_boot_mode __stm32mp_forced_boot_mode;
+enum stm32mp_forced_boot_mode st32mp_get_forced_boot_mode(void)
+{
+	return __stm32mp_forced_boot_mode;
+}
+
+static void setup_boot_mode(void)
+{
+	u32 boot_ctx = readl(TAMP_BOOT_CONTEXT);
+	u32 boot_mode =
+		(boot_ctx & TAMP_BOOT_MODE_MASK) >> TAMP_BOOT_MODE_SHIFT;
+	int instance = (boot_mode & TAMP_BOOT_INSTANCE_MASK) - 1;
+	enum bootsource src = BOOTSOURCE_UNKNOWN;
+
+	switch (boot_mode & TAMP_BOOT_DEVICE_MASK) {
+	case STM32MP_BOOT_SERIAL_UART:
+		src = BOOTSOURCE_SERIAL;
+		break;
+	case STM32MP_BOOT_SERIAL_USB:
+		src = BOOTSOURCE_USB;
+		break;
+	case STM32MP_BOOT_FLASH_SD:
+	case STM32MP_BOOT_FLASH_EMMC:
+		src = BOOTSOURCE_MMC;
+		break;
+	case STM32MP_BOOT_FLASH_NAND:
+		src = BOOTSOURCE_NAND;
+		break;
+	case STM32MP_BOOT_FLASH_NOR:
+		instance = 0;
+		src = BOOTSOURCE_NOR;
+		break;
+	case STM32MP_BOOT_FLASH_NOR_QSPI:
+		instance--;
+		src = BOOTSOURCE_SPI_NOR;
+		break;
+	default:
+		pr_debug("unexpected boot mode\n");
+		break;
+	}
+
+	__stm32mp_forced_boot_mode = boot_ctx & TAMP_BOOT_FORCED_MASK;
+
+	pr_debug("[boot_ctx=0x%x] => mode=0x%x, instance=%d forced=0x%x\n",
+		 boot_ctx, boot_mode, instance, __stm32mp_forced_boot_mode);
+
+	bootsource_set(src);
+	bootsource_set_instance(instance);
+
+	/* clear TAMP for next reboot */
+	clrsetbits_le32(TAMP_BOOT_CONTEXT, TAMP_BOOT_FORCED_MASK,
+			STM32MP_BOOT_NORMAL);
+}
+
+static int __stm32mp_cputype;
+int stm32mp_cputype(void)
+{
+	return __stm32mp_cputype;
+}
+
+static int __stm32mp_silicon_revision;
+int stm32mp_silicon_revision(void)
+{
+	return __stm32mp_silicon_revision;
+}
+
+static int __stm32mp_package;
+int stm32mp_package(void)
+{
+	return __stm32mp_package;
+}
+
+static inline u32 read_idc(void)
+{
+	setbits_le32(RCC_DBGCFGR, RCC_DBGCFGR_DBGCKEN);
+	return readl(IOMEM(DBGMCU_IDC));
+}
+
+/* Get Device Part Number (RPN) from OTP */
+static u32 get_cpu_rpn(u32 *rpn)
+{
+	int ret = bsec_read_field(BSEC_OTP_RPN, rpn);
+	if (ret)
+		return ret;
+
+	*rpn = (*rpn >> RPN_SHIFT) & RPN_MASK;
+	return 0;
+}
+
+static u32 get_cpu_revision(void)
+{
+	return (read_idc() & DBGMCU_IDC_REV_ID_MASK) >> DBGMCU_IDC_REV_ID_SHIFT;
+}
+
+static u32 get_cpu_type(u32 *type)
+{
+	u32 id;
+	int ret = get_cpu_rpn(type);
+	if (ret)
+		return ret;
+
+	id = (read_idc() & DBGMCU_IDC_DEV_ID_MASK) >> DBGMCU_IDC_DEV_ID_SHIFT;
+	*type |= id << 16;
+	return 0;
+}
+
+static int get_cpu_package(u32 *pkg)
+{
+	int ret = bsec_read_field(BSEC_OTP_PKG, pkg);
+	if (ret)
+		return ret;
+
+	*pkg = (*pkg >> PKG_SHIFT) & PKG_MASK;
+	return 0;
+}
+
+static int setup_cpu_type(void)
+{
+	const char *cputypestr;
+	const char *cpupkgstr;
+
+	get_cpu_type(&__stm32mp_cputype);
+	switch (__stm32mp_cputype) {
+	case CPU_STM32MP157Cxx:
+		cputypestr = "157C";
+		break;
+	case CPU_STM32MP157Axx:
+		cputypestr = "157A";
+		break;
+	case CPU_STM32MP153Cxx:
+		cputypestr = "153C";
+		break;
+	case CPU_STM32MP153Axx:
+		cputypestr = "153A";
+		break;
+	case CPU_STM32MP151Cxx:
+		cputypestr = "151C";
+		break;
+	case CPU_STM32MP151Axx:
+		cputypestr = "151A";
+		break;
+	default:
+		cputypestr = "????";
+		break;
+	}
+
+	get_cpu_package(&__stm32mp_package );
+	switch (__stm32mp_package) {
+	case PKG_AA_LBGA448:
+		cpupkgstr = "AA";
+		break;
+	case PKG_AB_LBGA354:
+		cpupkgstr = "AB";
+		break;
+	case PKG_AC_TFBGA361:
+		cpupkgstr = "AC";
+		break;
+	case PKG_AD_TFBGA257:
+		cpupkgstr = "AD";
+		break;
+	default:
+		cpupkgstr = "??";
+		break;
+	}
+
+	__stm32mp_silicon_revision = get_cpu_revision();
+
+	pr_debug("cputype = 0x%x, package = 0x%x, revision = 0x%x\n",
+		 __stm32mp_cputype, __stm32mp_package, __stm32mp_silicon_revision);
+	pr_info("detected STM32MP%s%s Rev.%c\n", cputypestr, cpupkgstr,
+		(__stm32mp_silicon_revision >> 12) + 'A' - 1);
+	return 0;
+}
+
+static int stm32mp_init(void)
+{
+	setup_cpu_type();
+	setup_boot_mode();
+
+	return 0;
+}
+postcore_initcall(stm32mp_init);
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
