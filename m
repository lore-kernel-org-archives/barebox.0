Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.4.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cUEZe-0004Bi-2a
 for barebox@lists.infradead.org; Thu, 19 Jan 2017 15:24:30 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 19 Jan 2017 16:23:51 +0100
Message-Id: <20170119152355.2280-2-s.hauer@pengutronix.de>
In-Reply-To: <20170119152355.2280-1-s.hauer@pengutronix.de>
References: <20170119152355.2280-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/5] ARM: i.MX: Add i.MX7 base architecture support
To: Barebox List <barebox@lists.infradead.org>
Cc: Juergen Borleis <jbe@pengutronix.de>

From: Juergen Borleis <jbe@pengutronix.de>

Signed-off-by Juergen Borleis <jbe@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Documentation/boards/imx.rst                   |  1 +
 arch/arm/mach-imx/Kconfig                      |  4 ++
 arch/arm/mach-imx/Makefile                     |  1 +
 arch/arm/mach-imx/boot.c                       | 70 ++++++++++++++++++++++++
 arch/arm/mach-imx/cpu_init.c                   |  5 ++
 arch/arm/mach-imx/imx.c                        |  6 +++
 arch/arm/mach-imx/imx7.c                       | 75 ++++++++++++++++++++++++++
 arch/arm/mach-imx/include/mach/debug_ll.h      |  3 ++
 arch/arm/mach-imx/include/mach/generic.h       | 16 ++++++
 arch/arm/mach-imx/include/mach/imx7-regs.h     | 24 +++++++++
 arch/arm/mach-imx/include/mach/imx7.h          | 59 ++++++++++++++++++++
 arch/arm/mach-imx/include/mach/imx_cpu_types.h |  1 +
 common/Kconfig                                 |  8 +++
 include/serial/imx-uart.h                      |  5 ++
 scripts/imx/imx.c                              |  1 +
 15 files changed, 279 insertions(+)
 create mode 100644 arch/arm/mach-imx/imx7.c
 create mode 100644 arch/arm/mach-imx/include/mach/imx7-regs.h
 create mode 100644 arch/arm/mach-imx/include/mach/imx7.h

diff --git a/Documentation/boards/imx.rst b/Documentation/boards/imx.rst
index 60cdcf072..b6e65060c 100644
--- a/Documentation/boards/imx.rst
+++ b/Documentation/boards/imx.rst
@@ -20,6 +20,7 @@ The Internal Boot Mode is supported on:
 * i.MX51
 * i.MX53
 * i.MX6
+* i.MX7
 
 With the Internal Boot Mode, the images contain a header which describes
 where the binary shall be loaded and started. These headers also contain
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 62e6494c2..ba5a9c445 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -157,6 +157,10 @@ config ARCH_IMX6UL
 	bool
 	select ARCH_IMX6
 
+config ARCH_IMX7
+	bool
+	select CPU_V7
+
 config ARCH_VF610
 	bool
 	select ARCH_HAS_L2X0
diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
index d0fe7abc0..fc5305f05 100644
--- a/arch/arm/mach-imx/Makefile
+++ b/arch/arm/mach-imx/Makefile
@@ -13,6 +13,7 @@ obj-$(CONFIG_ARCH_IMX53) += imx53.o imx5.o esdctl-v4.o
 pbl-$(CONFIG_ARCH_IMX53) += imx53.o imx5.o esdctl-v4.o
 obj-$(CONFIG_ARCH_IMX6) += imx6.o usb-imx6.o
 lwl-$(CONFIG_ARCH_IMX6) += imx6-mmdc.o
+obj-$(CONFIG_ARCH_IMX7) += imx7.o
 obj-$(CONFIG_ARCH_IMX_XLOAD) += xload.o
 obj-$(CONFIG_IMX_IIM)	+= iim.o
 obj-$(CONFIG_IMX_OCOTP)	+= ocotp.o
diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
index 489306072..72597f5e2 100644
--- a/arch/arm/mach-imx/boot.c
+++ b/arch/arm/mach-imx/boot.c
@@ -25,6 +25,7 @@
 #include <mach/imx51-regs.h>
 #include <mach/imx53-regs.h>
 #include <mach/imx6-regs.h>
+#include <mach/imx7-regs.h>
 
 /* [CTRL][TYPE] */
 static const enum bootsource locations[4][4] = {
@@ -346,3 +347,72 @@ void imx6_boot_save_loc(void)
 	bootsource_set(src);
 	bootsource_set_instance(instance);
 }
+
+#define IMX7_SRC_SBMR1	0x58
+#define IMX7_SRC_SBMR2	0x70
+
+void imx7_get_boot_source(enum bootsource *src, int *instance)
+{
+	void __iomem *src_base = IOMEM(MX7_SRC_BASE_ADDR);
+	uint32_t sbmr1 = readl(src_base + IMX7_SRC_SBMR1);
+	uint32_t sbmr2 = readl(src_base + IMX7_SRC_SBMR2);
+	int boot_mode;
+
+	/* BMOD[1:0] */
+	boot_mode = (sbmr2 >> 24) & 0x3;
+
+	switch (boot_mode) {
+	case 0: /* Fuses, fall through */
+	case 2: /* internal boot */
+		goto internal_boot;
+	case 1: /* Serial Downloader */
+		*src = BOOTSOURCE_SERIAL;
+		break;
+	case 3: /* reserved */
+		break;
+	};
+
+	return;
+
+internal_boot:
+
+	switch ((sbmr1 >> 12) & 0xf) {
+	case 1:
+	case 2:
+		*src = BOOTSOURCE_MMC;
+		*instance = (sbmr1 >> 10 & 0x3);
+		break;
+	case 3:
+		*src = BOOTSOURCE_NAND;
+		break;
+	case 4:
+		*src = BOOTSOURCE_SPI_NOR,
+		*instance = (sbmr1 >> 9 & 0x7);
+		break;
+	case 6:
+		*src = BOOTSOURCE_SPI; /* Really: qspi */
+		break;
+	case 5:
+		*src = BOOTSOURCE_NOR;
+		break;
+	default:
+		break;
+	}
+
+	/* BOOT_CFG1[7:0] */
+	if (sbmr1 & (1 << 7))
+		*src = BOOTSOURCE_NAND;
+
+	return;
+}
+
+void imx7_boot_save_loc(void)
+{
+	enum bootsource src = BOOTSOURCE_UNKNOWN;
+	int instance = BOOTSOURCE_INSTANCE_UNKNOWN;
+
+	imx7_get_boot_source(&src, &instance);
+
+	bootsource_set(src);
+	bootsource_set_instance(instance);
+}
diff --git a/arch/arm/mach-imx/cpu_init.c b/arch/arm/mach-imx/cpu_init.c
index 6971d89d9..2b388cad8 100644
--- a/arch/arm/mach-imx/cpu_init.c
+++ b/arch/arm/mach-imx/cpu_init.c
@@ -34,6 +34,11 @@ void imx6_cpu_lowlevel_init(void)
 	enable_arm_errata_845369_war();
 }
 
+void imx7_cpu_lowlevel_init(void)
+{
+	arm_cpu_lowlevel_init();
+}
+
 void vf610_cpu_lowlevel_init(void)
 {
 	arm_cpu_lowlevel_init();
diff --git a/arch/arm/mach-imx/imx.c b/arch/arm/mach-imx/imx.c
index 952db007d..907340fc5 100644
--- a/arch/arm/mach-imx/imx.c
+++ b/arch/arm/mach-imx/imx.c
@@ -65,6 +65,10 @@ static int imx_soc_from_dt(void)
 		return IMX_CPU_IMX6;
 	if (of_machine_is_compatible("fsl,imx6ul"))
 		return IMX_CPU_IMX6;
+	if (of_machine_is_compatible("fsl,imx7s"))
+		return IMX_CPU_IMX7;
+	if (of_machine_is_compatible("fsl,imx7d"))
+		return IMX_CPU_IMX7;
 	if (of_machine_is_compatible("fsl,vf610"))
 		return IMX_CPU_VF610;
 
@@ -103,6 +107,8 @@ static int imx_init(void)
 		ret = imx53_init();
 	else if (cpu_is_mx6())
 		ret = imx6_init();
+	else if (cpu_is_mx7())
+		ret = imx7_init();
 	else if (cpu_is_vf610())
 		ret = 0;
 	else
diff --git a/arch/arm/mach-imx/imx7.c b/arch/arm/mach-imx/imx7.c
new file mode 100644
index 000000000..fde66d838
--- /dev/null
+++ b/arch/arm/mach-imx/imx7.c
@@ -0,0 +1,75 @@
+/*
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
+#include <init.h>
+#include <common.h>
+#include <io.h>
+#include <linux/sizes.h>
+#include <mach/imx7.h>
+#include <mach/generic.h>
+#include <mach/revision.h>
+#include <mach/imx7-regs.h>
+
+void imx7_init_lowlevel(void)
+{
+	void __iomem *aips1 = IOMEM(MX7_AIPS1_CONFIG_BASE_ADDR);
+	void __iomem *aips2 = IOMEM(MX7_AIPS2_CONFIG_BASE_ADDR);
+
+	/*
+	 * Set all MPROTx to be non-bufferable, trusted for R/W,
+	 * not forced to user-mode.
+	 */
+	writel(0x77777777, aips1);
+	writel(0x77777777, aips1 + 0x4);
+	writel(0, aips1 + 0x40);
+	writel(0, aips1 + 0x44);
+	writel(0, aips1 + 0x48);
+	writel(0, aips1 + 0x4c);
+	writel(0, aips1 + 0x50);
+
+	writel(0x77777777, aips2);
+	writel(0x77777777, aips2 + 0x4);
+	writel(0, aips2 + 0x40);
+	writel(0, aips2 + 0x44);
+	writel(0, aips2 + 0x48);
+	writel(0, aips2 + 0x4c);
+	writel(0, aips2 + 0x50);
+}
+
+int imx7_init(void)
+{
+	const char *cputypestr;
+	u32 imx7_silicon_revision;
+
+	imx7_init_lowlevel();
+
+	imx7_boot_save_loc();
+
+	imx7_silicon_revision = imx7_cpu_revision();
+
+	switch (imx7_cpu_type()) {
+	case IMX7_CPUTYPE_IMX7D:
+		cputypestr = "i.MX7d";
+		break;
+	case IMX7_CPUTYPE_IMX7S:
+		cputypestr = "i.MX7s";
+		break;
+	default:
+		cputypestr = "unknown i.MX7";
+		break;
+	}
+
+	imx_set_silicon_revision(cputypestr, imx7_silicon_revision);
+
+	return 0;
+}
diff --git a/arch/arm/mach-imx/include/mach/debug_ll.h b/arch/arm/mach-imx/include/mach/debug_ll.h
index a132f3c16..39d710f7d 100644
--- a/arch/arm/mach-imx/include/mach/debug_ll.h
+++ b/arch/arm/mach-imx/include/mach/debug_ll.h
@@ -14,6 +14,7 @@
 #include <mach/imx51-regs.h>
 #include <mach/imx53-regs.h>
 #include <mach/imx6-regs.h>
+#include <mach/imx7-regs.h>
 #include <mach/vf610-regs.h>
 
 #include <serial/imx-uart.h>
@@ -44,6 +45,8 @@
 #define IMX_DEBUG_SOC MX53
 #elif defined CONFIG_DEBUG_IMX6Q_UART
 #define IMX_DEBUG_SOC MX6
+#elif defined CONFIG_DEBUG_IMX7D_UART
+#define IMX_DEBUG_SOC MX7
 #elif defined CONFIG_DEBUG_VF610_UART
 #define IMX_DEBUG_SOC VF610
 #else
diff --git a/arch/arm/mach-imx/include/mach/generic.h b/arch/arm/mach-imx/include/mach/generic.h
index 34194509e..73be9ceb5 100644
--- a/arch/arm/mach-imx/include/mach/generic.h
+++ b/arch/arm/mach-imx/include/mach/generic.h
@@ -14,12 +14,14 @@ void imx27_boot_save_loc(void);
 void imx51_boot_save_loc(void);
 void imx53_boot_save_loc(void);
 void imx6_boot_save_loc(void);
+void imx7_boot_save_loc(void);
 
 void imx25_get_boot_source(enum bootsource *src, int *instance);
 void imx35_get_boot_source(enum bootsource *src, int *instance);
 void imx51_get_boot_source(enum bootsource *src, int *instance);
 void imx53_get_boot_source(enum bootsource *src, int *instance);
 void imx6_get_boot_source(enum bootsource *src, int *instance);
+void imx7_get_boot_source(enum bootsource *src, int *instance);
 
 int imx1_init(void);
 int imx21_init(void);
@@ -31,6 +33,7 @@ int imx50_init(void);
 int imx51_init(void);
 int imx53_init(void);
 int imx6_init(void);
+int imx7_init(void);
 
 int imx1_devices_init(void);
 int imx21_devices_init(void);
@@ -45,6 +48,7 @@ int imx6_devices_init(void);
 
 void imx5_cpu_lowlevel_init(void);
 void imx6_cpu_lowlevel_init(void);
+void imx7_cpu_lowlevel_init(void);
 void vf610_cpu_lowlevel_init(void);
 
 /* There's a off-by-one betweem the gpio bank number and the gpiochip */
@@ -174,6 +178,18 @@ extern unsigned int __imx_cpu_type;
 # define cpu_is_mx6()		(0)
 #endif
 
+#ifdef CONFIG_ARCH_IMX7
+# ifdef imx_cpu_type
+#  undef imx_cpu_type
+#  define imx_cpu_type __imx_cpu_type
+# else
+#  define imx_cpu_type IMX_CPU_IMX7
+# endif
+# define cpu_is_mx7()		(imx_cpu_type == IMX_CPU_IMX7)
+#else
+# define cpu_is_mx7()		(0)
+#endif
+
 #ifdef CONFIG_ARCH_VF610
 # ifdef imx_cpu_type
 #  undef imx_cpu_type
diff --git a/arch/arm/mach-imx/include/mach/imx7-regs.h b/arch/arm/mach-imx/include/mach/imx7-regs.h
new file mode 100644
index 000000000..a96341d6d
--- /dev/null
+++ b/arch/arm/mach-imx/include/mach/imx7-regs.h
@@ -0,0 +1,24 @@
+#ifndef __MACH_IMX7_REGS_H
+#define __MACH_IMX7_REGS_H
+
+#define MX7_AIPS1_BASE_ADDR		0x30000000
+#define MX7_AIPS2_BASE_ADDR		0x30400000
+#define MX7_AIPS3_BASE_ADDR		0x30800000
+
+#define MX7_AIPS1_CONFIG_BASE_ADDR	0x301f0000
+#define MX7_IOMUX_BASE_ADDR		0x30330000
+#define MX7_OCOTP_BASE_ADDR		0x30350000
+#define MX7_ANATOP_BASE_ADDR		0x30360000
+#define MX7_CCM_BASE_ADDR               0x30380000
+#define MX7_SRC_BASE_ADDR		0x30390000
+#define MX7_SCTR_BASE_ADDR		0x306c0000
+#define MX7_UART1_BASE_ADDR		0x30860000
+#define MX7_UART2_BASE_ADDR		0x30870000
+#define MX7_UART3_BASE_ADDR		0x30880000
+#define MX7_UART4_BASE_ADDR		0x30a60000
+#define MX7_UART5_BASE_ADDR		0x30a70000
+#define MX7_UART6_BASE_ADDR		0x30a80000
+#define MX7_UART7_BASE_ADDR		0x30a90000
+#define MX7_AIPS2_CONFIG_BASE_ADDR	0x305f0000
+
+#endif /* __MACH_IMX7_REGS_H */
diff --git a/arch/arm/mach-imx/include/mach/imx7.h b/arch/arm/mach-imx/include/mach/imx7.h
new file mode 100644
index 000000000..851893546
--- /dev/null
+++ b/arch/arm/mach-imx/include/mach/imx7.h
@@ -0,0 +1,59 @@
+#ifndef __MACH_IMX7_H
+#define __MACH_IMX7_H
+
+#include <io.h>
+#include <mach/generic.h>
+#include <mach/imx7-regs.h>
+#include <mach/revision.h>
+
+void imx7_init_lowlevel(void);
+
+#define ANADIG_DIGPROG_IMX7	0x800
+
+#define IMX7_CPUTYPE_IMX7S	0x71
+#define IMX7_CPUTYPE_IMX7D	0x72
+
+static inline int __imx7_cpu_type(void)
+{
+	void __iomem *ocotp = IOMEM(MX7_OCOTP_BASE_ADDR);
+
+	if (readl(ocotp + 0x450) & 1)
+		return IMX7_CPUTYPE_IMX7S;
+	else
+		return IMX7_CPUTYPE_IMX7D;
+}
+
+static inline int imx7_cpu_type(void)
+{
+	if (!cpu_is_mx7())
+		return 0;
+
+	return __imx7_cpu_type();
+}
+
+static inline int imx7_cpu_revision(void)
+{
+	if (!cpu_is_mx7())
+		return IMX_CHIP_REV_UNKNOWN;
+
+	/* register value has the format of the IMX_CHIP_REV_* macros */
+	return readl(MX7_ANATOP_BASE_ADDR + ANADIG_DIGPROG_IMX7) & 0xff;
+}
+
+#define DEFINE_MX7_CPU_TYPE(str, type)					\
+	static inline int cpu_mx7_is_##str(void)			\
+	{								\
+		return __imx7_cpu_type() == type;			\
+	}								\
+									\
+	static inline int cpu_is_##str(void)				\
+	{								\
+		if (!cpu_is_mx7())					\
+			return 0;					\
+		return cpu_mx7_is_##str();				\
+	}
+
+DEFINE_MX7_CPU_TYPE(mx7s, IMX7_CPUTYPE_IMX7S);
+DEFINE_MX7_CPU_TYPE(mx7d, IMX7_CPUTYPE_IMX7D);
+
+#endif /* __MACH_IMX7_H */
\ No newline at end of file
diff --git a/arch/arm/mach-imx/include/mach/imx_cpu_types.h b/arch/arm/mach-imx/include/mach/imx_cpu_types.h
index 50be0b6b5..f95ef6f13 100644
--- a/arch/arm/mach-imx/include/mach/imx_cpu_types.h
+++ b/arch/arm/mach-imx/include/mach/imx_cpu_types.h
@@ -11,6 +11,7 @@
 #define IMX_CPU_IMX51	51
 #define IMX_CPU_IMX53	53
 #define IMX_CPU_IMX6	6
+#define IMX_CPU_IMX7	7
 #define IMX_CPU_VF610	610
 
 #endif /* __MACH_IMX_CPU_TYPES_H */
diff --git a/common/Kconfig b/common/Kconfig
index 462c104fd..350e3d49d 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1072,6 +1072,13 @@ config DEBUG_IMX6Q_UART
 	  Say Y here if you want kernel low-level debugging support
 	  on i.MX6Q.
 
+config DEBUG_IMX7D_UART
+	bool "i.MX7D Debug UART"
+	depends on ARCH_IMX7
+	help
+	  Say Y here if you want barebox low-level debugging support
+	  on i.MX7D.
+
 config DEBUG_VF610_UART
 	bool "VF610 Debug UART"
 	depends on ARCH_VF610
@@ -1120,6 +1127,7 @@ config DEBUG_IMX_UART_PORT
 						DEBUG_IMX53_UART || \
 						DEBUG_IMX6Q_UART || \
 						DEBUG_IMX6SL_UART || \
+						DEBUG_IMX7D_UART || \
 						DEBUG_VF610_UART
 	default 1
 	depends on ARCH_IMX
diff --git a/include/serial/imx-uart.h b/include/serial/imx-uart.h
index b40044ea4..9cab32f35 100644
--- a/include/serial/imx-uart.h
+++ b/include/serial/imx-uart.h
@@ -175,6 +175,11 @@ static inline void imx6_uart_setup(void __iomem *uartbase)
 	imx_uart_setup(uartbase, 80000000);
 }
 
+static inline void imx7_uart_setup(void __iomem *uartbase)
+{
+	imx_uart_setup(uartbase, 24000000);
+}
+
 static inline void imx_uart_putc(void *base, int c)
 {
 	if (!(readl(base + UCR1) & UCR1_UARTEN))
diff --git a/scripts/imx/imx.c b/scripts/imx/imx.c
index bf3a42fb2..809d8a7f7 100644
--- a/scripts/imx/imx.c
+++ b/scripts/imx/imx.c
@@ -231,6 +231,7 @@ static struct soc_type socs[] = {
 	{ .name = "imx51", .header_version = 1, .cpu_type = IMX_CPU_IMX51 },
 	{ .name = "imx53", .header_version = 2, .cpu_type = IMX_CPU_IMX53 },
 	{ .name = "imx6", .header_version = 2, .cpu_type = IMX_CPU_IMX6 },
+	{ .name = "imx7", .header_version = 2, .cpu_type = IMX_CPU_IMX7 },
 	{ .name = "vf610", .header_version = 2, .cpu_type = IMX_CPU_VF610 },
 };
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
