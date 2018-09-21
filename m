Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g3EVS-0006Pj-0Y
 for barebox@lists.infradead.org; Fri, 21 Sep 2018 06:02:06 +0000
Received: by mail-pl1-x641.google.com with SMTP id b12-v6so5443832plr.8
 for <barebox@lists.infradead.org>; Thu, 20 Sep 2018 23:01:31 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 20 Sep 2018 23:01:01 -0700
Message-Id: <20180921060102.16341-8-andrew.smirnov@gmail.com>
In-Reply-To: <20180921060102.16341-1-andrew.smirnov@gmail.com>
References: <20180921060102.16341-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v3 7/8] ARM: i.MX: esdctl: Add memory size detection for
 i.MX8MQ
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add memory size detection for i.MX8MQ. Only basic LPDDR4
configurations are supported for now. Support for other types of
memory can be added later once we have any boards that use it.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/dts/imx8mq-ddrc.dtsi           |  17 +++
 arch/arm/mach-imx/esdctl.c              | 191 ++++++++++++++++++++++++
 arch/arm/mach-imx/include/mach/esdctl.h |   1 +
 3 files changed, 209 insertions(+)
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
index 875e942de..14945bc7b 100644
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
@@ -319,6 +321,169 @@ static void vf610_ddrmc_add_mem(void *mmdcbase, struct imx_esdctl_data *data)
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
+#define DDRC_ADDRMAP0_CS_BIT1			GENMASK(12,  8)
+
+#define DDRC_ADDRMAP1_BANK_B2			GENMASK(20, 16)
+
+#define DDRC_ADDRMAP2_COL_B5			GENMASK(27, 24)
+#define DDRC_ADDRMAP2_COL_B4			GENMASK(19, 16)
+
+#define DDRC_ADDRMAP3_COL_B9			GENMASK(27, 24)
+#define DDRC_ADDRMAP3_COL_B8			GENMASK(19, 16)
+#define DDRC_ADDRMAP3_COL_B7			GENMASK(11,  8)
+#define DDRC_ADDRMAP3_COL_B6			GENMASK( 3,  0)
+
+#define DDRC_ADDRMAP4_COL_B10			GENMASK(3, 0)
+#define DDRC_ADDRMAP4_COL_B11			GENMASK(11, 8)
+
+#define DDRC_ADDRMAP5_ROW_B11			GENMASK(27, 24)
+
+#define DDRC_ADDRMAP6_ROW_B15			GENMASK(27, 24)
+#define DDRC_ADDRMAP6_ROW_B14			GENMASK(19, 16)
+#define DDRC_ADDRMAP6_ROW_B13			GENMASK(11,  8)
+#define DDRC_ADDRMAP6_ROW_B12			GENMASK( 3,  0)
+
+#define DDRC_ADDRMAP7_ROW_B17			GENMASK(11,  8)
+#define DDRC_ADDRMAP7_ROW_B16			GENMASK( 3,  0)
+
+static unsigned int
+imx_ddrc_count_bits(unsigned int bits, const u8 config[],
+		     unsigned int config_num)
+{
+	unsigned int i;
+	for (i = 0; i < config_num && config[i] == 0b1111; i++)
+		bits--;
+
+	return bits;
+}
+
+static resource_size_t
+imx_ddrc_sdram_size(void __iomem *ddrc, const u32 addrmap[],
+		    u8 col_max, const u8 col_b[], unsigned int col_b_num,
+		    u8 row_max, const u8 row_b[], unsigned int row_b_num,
+		    bool reduced_adress_space)
+{
+	const u32 mstr = readl(ddrc + DDRC_MSTR);
+	unsigned int banks, ranks, columns, rows, active_ranks, width;
+	resource_size_t size;
+
+	banks = 2;
+	ranks = 0;
+
+	switch (FIELD_GET(DDRC_MSTR_ACTIVE_RANKS, mstr)) {
+	case 0b0001:
+		active_ranks = 1;
+		break;
+	case 0b0011:
+		active_ranks = 2;
+		break;
+	case 0b1111:
+		active_ranks = 4;
+		break;
+	default:
+		BUG();
+	}
+
+	switch (FIELD_GET(DDRC_MSTR_DATA_BUS_WIDTH, mstr)) {
+	case 0b00:	/* Full DQ bus  */
+		width = 4;
+		break;
+	case 0b01:      /* Half DQ bus  */
+		width = 2;
+		break;
+	case 0b10:	/* Quarter DQ bus  */
+		width = 1;
+		break;
+	default:
+		BUG();
+	}
+
+	if (active_ranks == 4 &&
+	    FIELD_GET(DDRC_ADDRMAP0_CS_BIT1, addrmap[0]) != 0b11111)
+		ranks++;
+
+	if (active_ranks > 1  &&
+	    FIELD_GET(DDRC_ADDRMAP0_CS_BIT0, addrmap[0]) != 0b11111)
+		ranks++;
+
+	if (FIELD_GET(DDRC_ADDRMAP1_BANK_B2, addrmap[1]) != 0b11111)
+		banks++;
+
+	columns = imx_ddrc_count_bits(col_max, col_b, col_b_num);
+	rows    = imx_ddrc_count_bits(row_max, row_b, row_b_num);
+
+	size = memory_sdram_size(columns, rows, 1 << banks, width) << ranks;
+
+	return reduced_adress_space ? size * 3 / 4 : size;
+}
+
+static resource_size_t imx8mq_ddrc_sdram_size(void __iomem *ddrc)
+{
+	const u32 addrmap[] = {
+		readl(ddrc + DDRC_ADDRMAP(0)),
+		readl(ddrc + DDRC_ADDRMAP(1)),
+		readl(ddrc + DDRC_ADDRMAP(2)),
+		readl(ddrc + DDRC_ADDRMAP(3)),
+		readl(ddrc + DDRC_ADDRMAP(4)),
+		readl(ddrc + DDRC_ADDRMAP(5)),
+		readl(ddrc + DDRC_ADDRMAP(6)),
+		readl(ddrc + DDRC_ADDRMAP(7))
+	};
+	const u8 col_b[] = {
+		/*
+		 * FIXME: DDR register spreadsheet mentiones that B10
+		 * and B11 are 5-bit fields instead of 4. Needs to be
+		 * clarified.
+		 */
+		FIELD_GET(DDRC_ADDRMAP4_COL_B11, addrmap[4]),
+		FIELD_GET(DDRC_ADDRMAP4_COL_B10, addrmap[4]),
+		FIELD_GET(DDRC_ADDRMAP3_COL_B9,  addrmap[3]),
+		FIELD_GET(DDRC_ADDRMAP3_COL_B8,  addrmap[3]),
+		FIELD_GET(DDRC_ADDRMAP3_COL_B7,  addrmap[3]),
+		FIELD_GET(DDRC_ADDRMAP3_COL_B6,  addrmap[3]),
+		FIELD_GET(DDRC_ADDRMAP2_COL_B5,  addrmap[2]),
+		FIELD_GET(DDRC_ADDRMAP2_COL_B4,  addrmap[2]),
+	};
+	const u8 row_b[] = {
+		/*
+		 * FIXME: RM mentions the following fields as being
+		 * present, but looking at the code generated by DDR
+		 * tool it doesn't look like those registers are
+		 * really implemented/used.
+		 *
+		 * FIELD_GET(DDRC_ADDRMAP7_ROW_B17, addrmap[7]),
+		 * FIELD_GET(DDRC_ADDRMAP7_ROW_B16, addrmap[7]),
+		 */
+		FIELD_GET(DDRC_ADDRMAP6_ROW_B15, addrmap[6]),
+		FIELD_GET(DDRC_ADDRMAP6_ROW_B14, addrmap[6]),
+		FIELD_GET(DDRC_ADDRMAP6_ROW_B13, addrmap[6]),
+		FIELD_GET(DDRC_ADDRMAP6_ROW_B12, addrmap[6]),
+		FIELD_GET(DDRC_ADDRMAP5_ROW_B11, addrmap[5]),
+	};
+	const bool reduced_adress_space =
+		FIELD_GET(DDRC_ADDRMAP6_LPDDR4_6GB_12GB_24GB, addrmap[6]);
+
+	return imx_ddrc_sdram_size(ddrc, addrmap,
+				   12, ARRAY_AND_SIZE(col_b),
+				   16, ARRAY_AND_SIZE(row_b),
+				   reduced_adress_space);
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
@@ -405,6 +570,11 @@ static __maybe_unused struct imx_esdctl_data vf610_data = {
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
@@ -469,6 +639,9 @@ static __maybe_unused struct of_device_id imx_esdctl_dt_ids[] = {
 	}, {
 		.compatible = "fsl,vf610-ddrmc",
 		.data = &vf610_data
+	}, {
+		.compatible = "fsl,imx8mq-ddrc",
+		.data = &imx8mq_data
 	}, {
 		/* sentinel */
 	}
@@ -643,3 +816,21 @@ void __noreturn vf610_barebox_entry(void *boarddata)
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
