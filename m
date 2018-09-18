Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g28mG-0000KS-TS
 for barebox@lists.infradead.org; Tue, 18 Sep 2018 05:42:50 +0000
Received: by mail-pf1-x441.google.com with SMTP id p12-v6so447287pfh.2
 for <barebox@lists.infradead.org>; Mon, 17 Sep 2018 22:42:14 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 17 Sep 2018 22:41:47 -0700
Message-Id: <20180918054148.8878-8-andrew.smirnov@gmail.com>
In-Reply-To: <20180918054148.8878-1-andrew.smirnov@gmail.com>
References: <20180918054148.8878-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 7/8] ARM: i.MX: esdctl: Add memory size detection for i.MX8MQ
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add memory size detection for i.MX8MQ. Only basic LPDDR4
configurations are supported for now. Support for other types of
memory can be added later once we have any boards that use it.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/dts/imx8mq-ddrc.dtsi           | 17 +++++
 arch/arm/mach-imx/esdctl.c              | 98 +++++++++++++++++++++++++
 arch/arm/mach-imx/include/mach/esdctl.h |  1 +
 3 files changed, 116 insertions(+)
 create mode 100644 arch/arm/dts/imx8mq-ddrc.dtsi

diff --git a/arch/arm/dts/imx8mq-ddrc.dtsi b/arch/arm/dts/imx8mq-ddrc.dtsi
new file mode 100644
index 000000000..26d3da857
--- /dev/null
+++ b/arch/arm/dts/imx8mq-ddrc.dtsi
@@ -0,0 +1,17 @@
+/*
+ * Include file to switch board DTS form using hardcoded memory node
+ * to dynamic memory size detection based on DDR controller settings
+ */
+
+/ {
+
+	/delete-node/ memory@40000000;
+
+	peripherals@0 {
+		ddrc@3d400000 {
+			compatible = "fsl,imx8mq-ddrc";
+			reg = <0x3d400000 0x400000>;
+		};
+	};
+};
+
diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index 875e942de..af90c87bb 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -23,6 +23,7 @@
 #include <init.h>
 #include <of.h>
 #include <linux/err.h>
+#include <linux/bitfield.h>
 #include <asm/barebox-arm.h>
 #include <asm/memory.h>
 #include <mach/esdctl.h>
@@ -38,6 +39,7 @@
 #include <mach/imx53-regs.h>
 #include <mach/imx6-regs.h>
 #include <mach/vf610-ddrmc.h>
+#include <mach/imx8mq-regs.h>
 
 struct imx_esdctl_data {
 	unsigned long base0;
@@ -319,6 +321,76 @@ static void vf610_ddrmc_add_mem(void *mmdcbase, struct imx_esdctl_data *data)
 			   vf610_ddrmc_sdram_size(mmdcbase));
 }
 
+#define DDRC_ADDRMAP(n)				(0x200 + 4 * (n))
+#define DDRC_ADDRMAP6_LPDDR4_6GB_12GB_24GB	GENMASK(30, 29)
+#define DDRC_ADDRMAP0_CS_BIT0			GENMASK(4, 0)
+
+#define DDRC_MSTR				0x0000
+#define DDRC_MSTR_LPDDR4			BIT(5)
+#define DDRC_MSTR_DATA_BUS_WIDTH		GENMASK(13, 12)
+#define DDRC_MSTR_ACTIVE_RANKS			GENMASK(27, 24)
+
+static resource_size_t imx8mq_ddrc_sdram_size(void __iomem *ddrc)
+{
+	const u32 addrmap6 = readl(ddrc + DDRC_ADDRMAP(6));
+	const u32 addrmap0 = readl(ddrc + DDRC_ADDRMAP(0));
+	const u32 mstr = readl(ddrc + DDRC_MSTR);
+	resource_size_t size = 0;
+	unsigned long dbw, cs0, r;
+
+	BUG_ON(!(mstr & DDRC_MSTR_LPDDR4));
+
+	switch (FIELD_GET(DDRC_ADDRMAP6_LPDDR4_6GB_12GB_24GB, addrmap6)) {
+	case 0b00:
+		cs0 = FIELD_GET(DDRC_ADDRMAP0_CS_BIT0, addrmap0) + 6;
+
+		switch (FIELD_GET(DDRC_MSTR_DATA_BUS_WIDTH, mstr)) {
+		case 0b00:	/* Full DQ bus  */
+			dbw = 1;
+			break;
+		case 0b01:      /* Half DQ bus  */
+			dbw = 0;
+			break;
+		case 0b10:	/* Quarter DQ bus  */
+		case 0b11:	/* Reserved */
+			BUG();
+		}
+
+		switch (FIELD_GET(DDRC_MSTR_ACTIVE_RANKS, mstr)) {
+		case 0b0001:
+			r = 0;
+			break;
+		case 0b0011:
+			r = 1;
+			break;
+		case 0b1111:
+			r = 2;
+			break;
+		default:
+			BUG();
+		}
+
+		size = 1UL << (cs0 + 1 + dbw + r);
+		break;
+	case 0b01:
+		size = SZ_1G + SZ_512M;
+		break;
+	case 0b10:
+		size = SZ_2G + SZ_1G;
+		break;
+	default:
+		BUG();
+	}
+
+	return size;
+}
+
+static void imx8mq_ddrc_add_mem(void *mmdcbase, struct imx_esdctl_data *data)
+{
+	arm_add_mem_device("ram0", data->base0,
+			   imx8mq_ddrc_sdram_size(mmdcbase));
+}
+
 static int imx_esdctl_probe(struct device_d *dev)
 {
 	struct resource *iores;
@@ -405,6 +477,11 @@ static __maybe_unused struct imx_esdctl_data vf610_data = {
 	.add_mem = vf610_ddrmc_add_mem,
 };
 
+static __maybe_unused struct imx_esdctl_data imx8mq_data = {
+	.base0 = MX8MQ_DDR_CSD1_BASE_ADDR,
+	.add_mem = imx8mq_ddrc_add_mem,
+};
+
 static struct platform_device_id imx_esdctl_ids[] = {
 #ifdef CONFIG_ARCH_IMX1
 	{
@@ -469,6 +546,9 @@ static __maybe_unused struct of_device_id imx_esdctl_dt_ids[] = {
 	}, {
 		.compatible = "fsl,vf610-ddrmc",
 		.data = &vf610_data
+	}, {
+		.compatible = "fsl,imx8mq-ddrc",
+		.data = &imx8mq_data
 	}, {
 		/* sentinel */
 	}
@@ -643,3 +723,21 @@ void __noreturn vf610_barebox_entry(void *boarddata)
 			  vf610_ddrmc_sdram_size(IOMEM(VF610_DDR_BASE_ADDR)),
 			  boarddata);
 }
+
+void __noreturn imx8mq_barebox_entry(void *boarddata)
+{
+	resource_size_t size;
+
+	size = imx8mq_ddrc_sdram_size(IOMEM(MX8MQ_DDRC_CTL_BASE_ADDR));
+	/*
+	 * We artificially limit detected memory size to force malloc
+	 * pool placement to be within 4GiB address space, so as to
+	 * make it accessible to 32-bit limited DMA.
+	 *
+	 * This limitation affects only early boot code and malloc
+	 * pool placement. The rest of the system should be able to
+	 * detect and utilize full amount of memory.
+	 */
+	size = min_t(resource_size_t, SZ_4G - MX8MQ_DDR_CSD1_BASE_ADDR, size);
+	barebox_arm_entry(MX8MQ_DDR_CSD1_BASE_ADDR, size, boarddata);
+}
diff --git a/arch/arm/mach-imx/include/mach/esdctl.h b/arch/arm/mach-imx/include/mach/esdctl.h
index 117e2bbad..ff109aa10 100644
--- a/arch/arm/mach-imx/include/mach/esdctl.h
+++ b/arch/arm/mach-imx/include/mach/esdctl.h
@@ -139,6 +139,7 @@ void __noreturn imx53_barebox_entry(void *boarddata);
 void __noreturn imx6q_barebox_entry(void *boarddata);
 void __noreturn imx6ul_barebox_entry(void *boarddata);
 void __noreturn vf610_barebox_entry(void *boarddata);
+void __noreturn imx8mq_barebox_entry(void *boarddata);
 void imx_esdctl_disable(void);
 #endif
 
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
