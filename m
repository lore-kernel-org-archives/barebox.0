Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og112.obsmtp.com ([64.18.0.24])
 by merlin.infradead.org with smtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VdigO-0005hs-HP
 for barebox@lists.infradead.org; Tue, 05 Nov 2013 15:36:45 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Tue,  5 Nov 2013 15:36:08 +0000
Message-Id: <1383665772-1167-2-git-send-email-renaud.barbier@ge.com>
In-Reply-To: <1383665772-1167-1-git-send-email-renaud.barbier@ge.com>
References: <1383665772-1167-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH 1/5] ppc: mpc85xx: mpc8544 support
To: barebox@lists.infradead.org

Definitions are added to support the mpc8544 sOC.

The function returning the I2C bus frequency is updated
to take into account the mpc8544 specific clock ratio.
A mininal GPIO API is added to enable and set the GPIO
out pins.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 arch/ppc/include/asm/fsl_lbc.h                     |   12 +++++
 arch/ppc/include/asm/processor.h                   |    2 +
 arch/ppc/mach-mpc85xx/cpuid.c                      |    2 +
 arch/ppc/mach-mpc85xx/fsl_gpio.c                   |   47 ++++++++++++++++++++
 .../ppc/mach-mpc85xx/include/mach/config_mpc85xx.h |    5 ++
 arch/ppc/mach-mpc85xx/include/mach/gpio.h          |   17 +++++++
 arch/ppc/mach-mpc85xx/include/mach/immap_85xx.h    |   23 ++++++++++
 arch/ppc/mach-mpc85xx/speed.c                      |    9 ++++
 8 files changed, 117 insertions(+), 0 deletions(-)
 create mode 100644 arch/ppc/mach-mpc85xx/fsl_gpio.c
 create mode 100644 arch/ppc/mach-mpc85xx/include/mach/gpio.h

diff --git a/arch/ppc/include/asm/fsl_lbc.h b/arch/ppc/include/asm/fsl_lbc.h
index 58cd080..a59725c 100644
--- a/arch/ppc/include/asm/fsl_lbc.h
+++ b/arch/ppc/include/asm/fsl_lbc.h
@@ -27,6 +27,7 @@
 #define BR_PS_32			0x00001800	/* Port Size 32 bit */
 #define BR_V				0x00000001
 #define BR_V_SHIFT			0
+#define BR_MS_UPMA			0x00000080
 
 /* Convert an address into the right format for the BR registers */
 #define BR_PHYS_ADDR(x) ((x) & 0xffff8000)
@@ -55,5 +56,16 @@
 #define fsl_set_lbc_br(x, v) (out_be32((LBC_BASE_ADDR + FSL_LBC_BRX(x)), v))
 #define fsl_set_lbc_or(x, v) (out_be32((LBC_BASE_ADDR + FSL_LBC_ORX(x)), v))
 
+#define FSL_LBC_MAR_OFFSET	0x68
+#define FSL_LBC_MAMR_OFFSET	0x70
+#define FSL_LBC_MDR_OFFSET	0x88
+#define FSL_LBC_LTESR_OFFSET	0xB0
+#define FSL_LBC_LTEIR_OFFSET	0xB8
+
+#define MxMR_MAD_MSK		0x0000003f /* Machine Address Mask         */
+#define MxMR_GPL_x4DIS		0x00040000 /* GPL_A4 Ouput Line Disable    */
+#define MxMR_OP_NORM		0x00000000 /* Normal Operation             */
+#define MxMR_OP_WARR		0x10000000 /* Write to Array               */
+
 #endif /* __ASSEMBLY__ */
 #endif /* __ASM_PPC_FSL_LBC_H */
diff --git a/arch/ppc/include/asm/processor.h b/arch/ppc/include/asm/processor.h
index 9145257..19530b0 100644
--- a/arch/ppc/include/asm/processor.h
+++ b/arch/ppc/include/asm/processor.h
@@ -858,6 +858,8 @@
 #define SVR_8548	0x8031
 #define SVR_8548_E	0x8039
 #define SVR_8641	0x8090
+#define SVR_8544	0x803401
+#define SVR_8544_E	0x803C01
 #define SVR_P2020	0x80E200
 #define SVR_P2020_E	0x80EA00
 
diff --git a/arch/ppc/mach-mpc85xx/cpuid.c b/arch/ppc/mach-mpc85xx/cpuid.c
index de56d37..8094978 100644
--- a/arch/ppc/mach-mpc85xx/cpuid.c
+++ b/arch/ppc/mach-mpc85xx/cpuid.c
@@ -27,6 +27,8 @@
 #include <mach/immap_85xx.h>
 
 struct cpu_type cpu_type_list[] = {
+	CPU_TYPE_ENTRY(8544, 8544, 1),
+	CPU_TYPE_ENTRY(8544, 8544_E, 1),
 	CPU_TYPE_ENTRY(P2020, P2020, 2),
 	CPU_TYPE_ENTRY(P2020, P2020_E, 2),
 };
diff --git a/arch/ppc/mach-mpc85xx/fsl_gpio.c b/arch/ppc/mach-mpc85xx/fsl_gpio.c
new file mode 100644
index 0000000..ca6305a
--- /dev/null
+++ b/arch/ppc/mach-mpc85xx/fsl_gpio.c
@@ -0,0 +1,47 @@
+/*
+ * Copyright 2013 GE Intelligent Platforms, Inc.
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
+ * Minimal GPIO support.
+ */
+
+#include <common.h>
+#include <errno.h>
+#include <asm/io.h>
+#include <mach/gpio.h>
+#include <mach/immap_85xx.h>
+
+#ifdef CONFIG_MPC8544
+/* Enable all GPIO output pins */
+void fsl_enable_gpiout(void)
+{
+	void __iomem *gpiocr = IOMEM(MPC85xx_GUTS_ADDR + MPC85xx_GPIOCR_OFFSET);
+
+	out_be32(gpiocr, in_be32(gpiocr) | MPC85xx_GPIOCR_GPOUT);
+}
+
+void gpio_set_value(unsigned gpio, int val)
+{
+	void __iomem *gpout = IOMEM(MPC85xx_GUTS_ADDR + MPC85xx_GPOUTDR_OFFSET);
+	int gpoutdr;
+
+	if (gpio >= 8)
+		return;
+
+	gpoutdr = in_be32(gpout);
+	if (val)
+		gpoutdr |= MPC85xx_GPIOBIT(gpio);
+	else
+		gpoutdr &= ~MPC85xx_GPIOBIT(gpio);
+	out_be32(gpout, gpoutdr);
+}
+#endif
diff --git a/arch/ppc/mach-mpc85xx/include/mach/config_mpc85xx.h b/arch/ppc/mach-mpc85xx/include/mach/config_mpc85xx.h
index 9a5598f..7cdb37f 100644
--- a/arch/ppc/mach-mpc85xx/include/mach/config_mpc85xx.h
+++ b/arch/ppc/mach-mpc85xx/include/mach/config_mpc85xx.h
@@ -28,6 +28,11 @@
 #define MAX_CPUS	2
 #define FSL_NUM_LAWS	12
 #define FSL_SEC_COMPAT	2
+
+#elif defined(CONFIG_MPC8544)
+#define MAX_CPUS	1
+#define FSL_NUM_LAWS	10
+
 #else
 #error Processor type not defined for this platform
 #endif
diff --git a/arch/ppc/mach-mpc85xx/include/mach/gpio.h b/arch/ppc/mach-mpc85xx/include/mach/gpio.h
new file mode 100644
index 0000000..61f6349
--- /dev/null
+++ b/arch/ppc/mach-mpc85xx/include/mach/gpio.h
@@ -0,0 +1,17 @@
+/*
+ * Copyright 2013 GE Intelligent Platforms, Inc.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ */
+
+#ifndef _MACH_PPC_GPIO_H
+#define _MACH_PPC_GPIO_H
+
+#include <asm-generic/gpio.h>
+
+extern void fsl_enable_gpiout(void);
+
+#endif /* _MACH_PPC_GPIO_H */
diff --git a/arch/ppc/mach-mpc85xx/include/mach/immap_85xx.h b/arch/ppc/mach-mpc85xx/include/mach/immap_85xx.h
index bef4e29..ff3a312 100644
--- a/arch/ppc/mach-mpc85xx/include/mach/immap_85xx.h
+++ b/arch/ppc/mach-mpc85xx/include/mach/immap_85xx.h
@@ -32,6 +32,7 @@
 #define MPC85xx_ECM_OFFSET	0x1000
 #define MPC85xx_DDR_OFFSET	0x2000
 #define MPC85xx_LBC_OFFSET	0x5000
+#define MPC85xx_PCI1_OFFSET	0x8000
 
 #define MPC85xx_GPIO_OFFSET	0xf000
 #define MPC85xx_L2_OFFSET	0x20000
@@ -58,6 +59,8 @@
 
 /* ECM Registers */
 #define MPC85xx_ECM_EEBPCR_OFFSET	0x00 /* ECM CCB Port Configuration */
+#define MPC85xx_ECM_EEDR_OFFSET		0xE00 /* ECM error detect register  */
+#define MPC85xx_ECM_EEER_OFFSET		0xE08 /* ECM error enable register  */
 
 /*
  * DDR Memory Controller Register Offsets
@@ -94,6 +97,9 @@
 /* training init and extended addr */
 #define MPC85xx_DDR_SDRAM_INIT_ADDR_OFFSET	0x148
 #define MPC85xx_DDR_SDRAM_INIT_ADDR_EXT_OFFSET	0x14c
+/* DDR IP block revision */
+#define MPC85xx_DDR_IP_REV1_OFFSET	0xbf8
+#define MPC85xx_DDR_IP_REV2_OFFSET	0xbfc
 
 #define DDR_OFF(REGNAME)	(MPC85xx_DDR_##REGNAME##_OFFSET)
 
@@ -102,6 +108,20 @@
  */
 #define MPC85xx_GPIO_GPDIR	0x00
 #define MPC85xx_GPIO_GPDAT	0x08
+#define MPC85xx_GPIO_GPDIR_OFFSET	0x00
+#define MPC85xx_GPIO_GPDAT_OFFSET	0x08
+
+/* Global Utilities Registers */
+#define MPC85xx_GPIOCR_OFFSET	0x30
+#define		MPC85xx_GPIOCR_GPOUT	0x00000200
+#define MPC85xx_GPOUTDR_OFFSET	0x40
+#define		MPC85xx_GPIOBIT(i)	(1 << (31 - i))
+#define MPC85xx_GPINDR_OFFSET	0x50
+
+#define MPC85xx_DEVDISR_OFFSET	0x70
+#define		MPC85xx_DEVDISR_TSEC1	0x00000080
+#define		MPC85xx_DEVDISR_TSEC2	0x00000040
+#define		MPC85xx_DEVDISR_TSEC3	0x00000020
 
 /*
  * L2 Cache Register Offsets
@@ -125,6 +145,8 @@
 #define MPC85xx_GUTS_PORPLLSR_OFFSET	0x0
 #define		MPC85xx_PORPLLSR_DDR_RATIO		0x00003e00
 #define		MPC85xx_PORPLLSR_DDR_RATIO_SHIFT	9
+#define MPC85xx_GUTS_PORDEVSR2_OFFSET	0x14
+#define		MPC85xx_PORDEVSR2_SEC_CFG		0x00000080
 #define MPC85xx_GUTS_DEVDISR_OFFSET	0x70
 #define		MPC85xx_DEVDISR_TB0	0x00004000
 #define		MPC85xx_DEVDISR_TB1	0x00001000
@@ -136,4 +158,5 @@
 #define I2C1_BASE_ADDR		(CFG_IMMR + 0x3000)
 #define I2C2_BASE_ADDR		(CFG_IMMR + 0x3100)
 
+#define PCI1_BASE_ADDR		(CFG_IMMR + MPC85xx_PCI1_OFFSET)
 #endif /*__IMMAP_85xx__*/
diff --git a/arch/ppc/mach-mpc85xx/speed.c b/arch/ppc/mach-mpc85xx/speed.c
index 8b447ea..64c10f9 100644
--- a/arch/ppc/mach-mpc85xx/speed.c
+++ b/arch/ppc/mach-mpc85xx/speed.c
@@ -101,9 +101,18 @@ unsigned long fsl_get_timebase_clock(void)
 
 unsigned long fsl_get_i2c_freq(void)
 {
+	uint svr;
 	struct sys_info sysinfo;
+	void __iomem *gur = IOMEM(MPC85xx_GUTS_ADDR);
 
 	fsl_get_sys_info(&sysinfo);
 
+	svr = get_svr();
+	if ((svr == SVR_8544) || (svr == SVR_8544_E)) {
+		if (in_be32(gur + MPC85xx_GUTS_PORDEVSR2_OFFSET) &
+				MPC85xx_PORDEVSR2_SEC_CFG)
+			return sysinfo.freqSystemBus / 3;
+	}
+
 	return sysinfo.freqSystemBus / 2;
 }
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
