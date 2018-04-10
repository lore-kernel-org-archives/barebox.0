Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x243.google.com ([2607:f8b0:400e:c01::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f635B-0001jY-5G
 for barebox@lists.infradead.org; Tue, 10 Apr 2018 23:53:51 +0000
Received: by mail-pl0-x243.google.com with SMTP id c7-v6so25197plr.5
 for <barebox@lists.infradead.org>; Tue, 10 Apr 2018 16:53:40 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 10 Apr 2018 16:53:21 -0700
Message-Id: <20180410235323.5440-9-andrew.smirnov@gmail.com>
In-Reply-To: <20180410235323.5440-1-andrew.smirnov@gmail.com>
References: <20180410235323.5440-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 08/10] ARM: i.MX: esdctl: Add support for Vybrid's memory
 controller
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add code needed to dynamically detect the amount of RAM DDR controller
is configured to use as well as a simple entry function making use of
that functionality.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/dts/vf610-ddrmc.dtsi                | 15 +++++++++++
 arch/arm/mach-imx/esdctl.c                   | 38 ++++++++++++++++++++++++++++
 arch/arm/mach-imx/include/mach/esdctl.h      |  1 +
 arch/arm/mach-imx/include/mach/vf610-ddrmc.h | 18 +++++++++++++
 arch/arm/mach-imx/include/mach/vf610-regs.h  |  2 ++
 5 files changed, 74 insertions(+)
 create mode 100644 arch/arm/dts/vf610-ddrmc.dtsi
 create mode 100644 arch/arm/mach-imx/include/mach/vf610-ddrmc.h

diff --git a/arch/arm/dts/vf610-ddrmc.dtsi b/arch/arm/dts/vf610-ddrmc.dtsi
new file mode 100644
index 000000000..772131ec2
--- /dev/null
+++ b/arch/arm/dts/vf610-ddrmc.dtsi
@@ -0,0 +1,15 @@
+/*
+ * Include file to switch board DTS form using hardcoded memory node
+ * to dynamic memory size detection based on DDR controller settings
+ */
+
+/ {
+	/delete-node/ memory;
+};
+
+&aips1 {
+	ddrmc@400ae000 {
+		compatible = "fsl,vf610-ddrmc";
+		reg = <0x400ae000 0x1000>;
+	};
+};
diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index b8f048ee6..c1680d5ff 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -37,6 +37,7 @@
 #include <mach/imx51-regs.h>
 #include <mach/imx53-regs.h>
 #include <mach/imx6-regs.h>
+#include <mach/vf610-ddrmc.h>
 
 struct imx_esdctl_data {
 	unsigned long base0;
@@ -296,6 +297,28 @@ static void imx6_mmdc_add_mem(void *mmdcbase, struct imx_esdctl_data *data)
 			   imx6_mmdc_sdram_size(mmdcbase));
 }
 
+static inline resource_size_t vf610_ddrmc_sdram_size(void __iomem *ddrmc)
+{
+	const u32 cr01 = readl(ddrmc + DDRMC_CR(1));
+	const u32 cr73 = readl(ddrmc + DDRMC_CR(73));
+	const u32 cr78 = readl(ddrmc + DDRMC_CR(78));
+
+	unsigned int rows, cols, width, banks;
+
+	rows  = DDRMC_CR01_MAX_ROW_REG(cr01) - DDRMC_CR73_ROW_DIFF(cr73);
+	cols  = DDRMC_CR01_MAX_COL_REG(cr01) - DDRMC_CR73_COL_DIFF(cr73);
+	banks = 1 << (3 - DDRMC_CR73_BANK_DIFF(cr73));
+	width = (cr78 & DDRMC_CR78_REDUC) ? sizeof(u8) : sizeof(u16);
+
+	return memory_sdram_size(cols, rows, banks, width);
+}
+
+static void vf610_ddrmc_add_mem(void *mmdcbase, struct imx_esdctl_data *data)
+{
+	arm_add_mem_device("ram0", data->base0,
+			   vf610_ddrmc_sdram_size(mmdcbase));
+}
+
 static int imx_esdctl_probe(struct device_d *dev)
 {
 	struct resource *iores;
@@ -372,6 +395,11 @@ static __maybe_unused struct imx_esdctl_data imx6ul_data = {
 	.add_mem = imx6_mmdc_add_mem,
 };
 
+static __maybe_unused struct imx_esdctl_data vf610_data = {
+	.base0 = VF610_RAM_BASE_ADDR,
+	.add_mem = vf610_ddrmc_add_mem,
+};
+
 static struct platform_device_id imx_esdctl_ids[] = {
 #ifdef CONFIG_ARCH_IMX1
 	{
@@ -430,6 +458,9 @@ static __maybe_unused struct of_device_id imx_esdctl_dt_ids[] = {
 	}, {
 		.compatible = "fsl,imx6q-mmdc",
 		.data = &imx6q_data
+	}, {
+		.compatible = "fsl,vf610-ddrmc",
+		.data = &vf610_data
 	}, {
 		/* sentinel */
 	}
@@ -597,3 +628,10 @@ void __noreturn imx6ul_barebox_entry(void *boarddata)
 {
 	imx6_barebox_entry(MX6_MMDC_PORT0_BASE_ADDR, boarddata);
 }
+
+void __noreturn vf610_barebox_entry(void *boarddata)
+{
+	barebox_arm_entry(VF610_RAM_BASE_ADDR,
+			  vf610_ddrmc_sdram_size(IOMEM(VF610_DDR_BASE_ADDR)),
+			  boarddata);
+}
diff --git a/arch/arm/mach-imx/include/mach/esdctl.h b/arch/arm/mach-imx/include/mach/esdctl.h
index 53710b0f2..117e2bbad 100644
--- a/arch/arm/mach-imx/include/mach/esdctl.h
+++ b/arch/arm/mach-imx/include/mach/esdctl.h
@@ -138,6 +138,7 @@ void __noreturn imx51_barebox_entry(void *boarddata);
 void __noreturn imx53_barebox_entry(void *boarddata);
 void __noreturn imx6q_barebox_entry(void *boarddata);
 void __noreturn imx6ul_barebox_entry(void *boarddata);
+void __noreturn vf610_barebox_entry(void *boarddata);
 void imx_esdctl_disable(void);
 #endif
 
diff --git a/arch/arm/mach-imx/include/mach/vf610-ddrmc.h b/arch/arm/mach-imx/include/mach/vf610-ddrmc.h
new file mode 100644
index 000000000..07feb036e
--- /dev/null
+++ b/arch/arm/mach-imx/include/mach/vf610-ddrmc.h
@@ -0,0 +1,18 @@
+#ifndef __MACH_DDRMC_H
+#define __MACH_DDRMC_H
+
+#include <mach/vf610-regs.h>
+
+
+#define DDRMC_CR(x)	((x) * 4)
+
+#define DDRMC_CR01_MAX_COL_REG(reg)	(((reg) >>  8) & 0b01111)
+#define DDRMC_CR01_MAX_ROW_REG(reg)	(((reg) >>  0) & 0b11111)
+#define DDRMC_CR73_COL_DIFF(reg)	(((reg) >> 16) & 0b00111)
+#define DDRMC_CR73_ROW_DIFF(reg)	(((reg) >>  8) & 0b00011)
+#define DDRMC_CR73_BANK_DIFF(reg)	(((reg) >>  0) & 0b00011)
+
+#define DDRMC_CR78_REDUC	BIT(8)
+
+
+#endif /* __MACH_MMDC_H */
diff --git a/arch/arm/mach-imx/include/mach/vf610-regs.h b/arch/arm/mach-imx/include/mach/vf610-regs.h
index 8be220b68..87772ee76 100644
--- a/arch/arm/mach-imx/include/mach/vf610-regs.h
+++ b/arch/arm/mach-imx/include/mach/vf610-regs.h
@@ -13,6 +13,8 @@
 #define VF610_AIPS0_BASE_ADDR		0x40000000
 #define VF610_AIPS1_BASE_ADDR		0x40080000
 
+#define VF610_RAM_BASE_ADDR		0x80000000
+
 /* AIPS 0 */
 #define VF610_MSCM_BASE_ADDR		(VF610_AIPS0_BASE_ADDR + 0x00001000)
 #define VF610_MSCM_IR_BASE_ADDR		(VF610_AIPS0_BASE_ADDR + 0x00001800)
-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
