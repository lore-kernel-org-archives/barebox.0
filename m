Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g9P7e-0004wB-0I
 for barebox@lists.infradead.org; Mon, 08 Oct 2018 06:34:48 +0000
Received: by mail-pl1-x643.google.com with SMTP id y11-v6so6436991plt.3
 for <barebox@lists.infradead.org>; Sun, 07 Oct 2018 23:34:19 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun,  7 Oct 2018 23:34:04 -0700
Message-Id: <20181008063409.17566-2-andrew.smirnov@gmail.com>
In-Reply-To: <20181008063409.17566-1-andrew.smirnov@gmail.com>
References: <20181008063409.17566-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 1/6] ARM: i.MX: esdctl: Add memory size detection for i.MX7D
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/dts/imx7d-ddrc.dtsi               | 15 ++++++
 arch/arm/mach-imx/esdctl.c                 | 61 ++++++++++++++++++++++
 arch/arm/mach-imx/include/mach/esdctl.h    |  1 +
 arch/arm/mach-imx/include/mach/imx7-regs.h |  2 +
 4 files changed, 79 insertions(+)
 create mode 100644 arch/arm/dts/imx7d-ddrc.dtsi

diff --git a/arch/arm/dts/imx7d-ddrc.dtsi b/arch/arm/dts/imx7d-ddrc.dtsi
new file mode 100644
index 000000000..b4cd597be
--- /dev/null
+++ b/arch/arm/dts/imx7d-ddrc.dtsi
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
+&aips2 {
+	ddrc@307a0000 {
+		compatible = "fsl,imx7d-ddrc";
+		reg = <0x307a0000 0x10000>;
+	};
+};
\ No newline at end of file
diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index 14945bc7b..074e3ac5a 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -40,6 +40,7 @@
 #include <mach/imx6-regs.h>
 #include <mach/vf610-ddrmc.h>
 #include <mach/imx8mq-regs.h>
+#include <mach/imx7-regs.h>
 
 struct imx_esdctl_data {
 	unsigned long base0;
@@ -323,6 +324,7 @@ static void vf610_ddrmc_add_mem(void *mmdcbase, struct imx_esdctl_data *data)
 
 #define DDRC_ADDRMAP(n)				(0x200 + 4 * (n))
 #define DDRC_ADDRMAP6_LPDDR4_6GB_12GB_24GB	GENMASK(30, 29)
+#define DDRC_ADDRMAP6_LPDDR3_6GB_12GB		BIT(31)
 #define DDRC_ADDRMAP0_CS_BIT0			GENMASK(4, 0)
 
 #define DDRC_MSTR				0x0000
@@ -484,6 +486,48 @@ static void imx8mq_ddrc_add_mem(void *mmdcbase, struct imx_esdctl_data *data)
 			   imx8mq_ddrc_sdram_size(mmdcbase));
 }
 
+static resource_size_t imx7d_ddrc_sdram_size(void __iomem *ddrc)
+{
+	const u32 addrmap[] = {
+		readl(ddrc + DDRC_ADDRMAP(0)),
+		readl(ddrc + DDRC_ADDRMAP(1)),
+		readl(ddrc + DDRC_ADDRMAP(2)),
+		readl(ddrc + DDRC_ADDRMAP(3)),
+		readl(ddrc + DDRC_ADDRMAP(4)),
+		readl(ddrc + DDRC_ADDRMAP(5)),
+		readl(ddrc + DDRC_ADDRMAP(6))
+	};
+	const u8 col_b[] = {
+		FIELD_GET(DDRC_ADDRMAP4_COL_B10, addrmap[4]),
+		FIELD_GET(DDRC_ADDRMAP3_COL_B9,  addrmap[3]),
+		FIELD_GET(DDRC_ADDRMAP3_COL_B8,  addrmap[3]),
+		FIELD_GET(DDRC_ADDRMAP3_COL_B7,  addrmap[3]),
+		FIELD_GET(DDRC_ADDRMAP3_COL_B6,  addrmap[3]),
+		FIELD_GET(DDRC_ADDRMAP2_COL_B5,  addrmap[2]),
+		FIELD_GET(DDRC_ADDRMAP2_COL_B4,  addrmap[2]),
+	};
+	const u8 row_b[] = {
+		FIELD_GET(DDRC_ADDRMAP6_ROW_B15, addrmap[6]),
+		FIELD_GET(DDRC_ADDRMAP6_ROW_B14, addrmap[6]),
+		FIELD_GET(DDRC_ADDRMAP6_ROW_B13, addrmap[6]),
+		FIELD_GET(DDRC_ADDRMAP6_ROW_B12, addrmap[6]),
+		FIELD_GET(DDRC_ADDRMAP5_ROW_B11, addrmap[5]),
+	};
+	const bool reduced_adress_space =
+		FIELD_GET(DDRC_ADDRMAP6_LPDDR3_6GB_12GB, addrmap[6]);
+
+	return imx_ddrc_sdram_size(ddrc, addrmap,
+				   11, ARRAY_AND_SIZE(col_b),
+				   15, ARRAY_AND_SIZE(row_b),
+				   reduced_adress_space);
+}
+
+static void imx7d_ddrc_add_mem(void *mmdcbase, struct imx_esdctl_data *data)
+{
+	arm_add_mem_device("ram0", data->base0,
+			   imx7d_ddrc_sdram_size(mmdcbase));
+}
+
 static int imx_esdctl_probe(struct device_d *dev)
 {
 	struct resource *iores;
@@ -575,6 +619,11 @@ static __maybe_unused struct imx_esdctl_data imx8mq_data = {
 	.add_mem = imx8mq_ddrc_add_mem,
 };
 
+static __maybe_unused struct imx_esdctl_data imx7d_data = {
+	.base0 = MX7_DDR_BASE_ADDR,
+	.add_mem = imx7d_ddrc_add_mem,
+};
+
 static struct platform_device_id imx_esdctl_ids[] = {
 #ifdef CONFIG_ARCH_IMX1
 	{
@@ -642,6 +691,9 @@ static __maybe_unused struct of_device_id imx_esdctl_dt_ids[] = {
 	}, {
 		.compatible = "fsl,imx8mq-ddrc",
 		.data = &imx8mq_data
+	}, {
+		.compatible = "fsl,imx7d-ddrc",
+		.data = &imx7d_data
 	}, {
 		/* sentinel */
 	}
@@ -834,3 +886,12 @@ void __noreturn imx8mq_barebox_entry(void *boarddata)
 	size = min_t(resource_size_t, SZ_4G - MX8MQ_DDR_CSD1_BASE_ADDR, size);
 	barebox_arm_entry(MX8MQ_DDR_CSD1_BASE_ADDR, size, boarddata);
 }
+
+void __noreturn imx7d_barebox_entry(void *boarddata)
+{
+	barebox_arm_entry(MX7_DDR_BASE_ADDR,
+			  imx7d_ddrc_sdram_size(IOMEM(MX7_DDRC_BASE_ADDR)),
+			  boarddata);
+}
+
+
diff --git a/arch/arm/mach-imx/include/mach/esdctl.h b/arch/arm/mach-imx/include/mach/esdctl.h
index ff109aa10..bc6c73395 100644
--- a/arch/arm/mach-imx/include/mach/esdctl.h
+++ b/arch/arm/mach-imx/include/mach/esdctl.h
@@ -140,6 +140,7 @@ void __noreturn imx6q_barebox_entry(void *boarddata);
 void __noreturn imx6ul_barebox_entry(void *boarddata);
 void __noreturn vf610_barebox_entry(void *boarddata);
 void __noreturn imx8mq_barebox_entry(void *boarddata);
+void __noreturn imx7d_barebox_entry(void *boarddata);
 void imx_esdctl_disable(void);
 #endif
 
diff --git a/arch/arm/mach-imx/include/mach/imx7-regs.h b/arch/arm/mach-imx/include/mach/imx7-regs.h
index 8625d0b61..21e2830b9 100644
--- a/arch/arm/mach-imx/include/mach/imx7-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx7-regs.h
@@ -116,4 +116,6 @@
 #define MX7_ENET1_BASE_ADDR		(MX7_AIPS3_BASE_ADDR + 0x3E0000)
 #define MX7_ENET2_BASE_ADDR		(MX7_AIPS3_BASE_ADDR + 0x3F0000)
 
+#define MX7_DDR_BASE_ADDR		0x80000000
+
 #endif /* __MACH_IMX7_REGS_H */
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
