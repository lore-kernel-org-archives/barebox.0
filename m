Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fpCWl-0000K2-Hc
 for barebox@lists.infradead.org; Mon, 13 Aug 2018 13:05:04 +0000
From: Roland Hieber <r.hieber@pengutronix.de>
Date: Mon, 13 Aug 2018 15:02:51 +0200
Message-Id: <20180813130300.32497-6-r.hieber@pengutronix.de>
In-Reply-To: <20180813130300.32497-1-r.hieber@pengutronix.de>
References: <20180813130300.32497-1-r.hieber@pengutronix.de>
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
Subject: [PATCH v3 05/14] ARM: i.MX28: Add memory size detection
To: barebox@lists.infradead.org
Cc: Roland Hieber <r.hieber@pengutronix.de>

From: Sascha Hauer <s.hauer@pengutronix.de>

We can detect the SDRAM automatically, no need to let the boards
do it manually.
This also fixes device tree based i.MX28 boards like the duckbill.
These boards once had a /memory node in the device tree, but now
that this was changed to /memory@40000000 barebox didn't find it
anymore.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Tested-by: Roland Hieber <r.hieber@pengutronix.de>
Signed-off-by: Roland Hieber <r.hieber@pengutronix.de>
---
 .../boards/crystalfontz-cfa10036/cfa10036.c   | 24 ---------------
 arch/arm/boards/freescale-mx28-evk/mx28-evk.c |  8 -----
 arch/arm/boards/karo-tx28/tx28.c              |  8 -----
 arch/arm/mach-mxs/include/mach/imx28.h        | 30 +++++++++++++++++++
 arch/arm/mach-mxs/soc-imx28.c                 |  4 +++
 5 files changed, 34 insertions(+), 40 deletions(-)
 create mode 100644 arch/arm/mach-mxs/include/mach/imx28.h

diff --git a/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c b/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
index 947db7cff6..dcf560432d 100644
--- a/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
+++ b/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
@@ -89,30 +89,6 @@ static struct i2c_gpio_platform_data i2c_gpio_pdata = {
 	.udelay			= 5,		/* ~100 kHz */
 };
 
-void v5_mmu_cache_flush(void);
-long cfa10036_get_ram_size(void)
-{
-	volatile u32 *base = (void *)IMX_MEMORY_BASE;
-	volatile u32 *ofs = base + SZ_128M / sizeof(u32);
-
-	*base = *ofs = 0xdeadbeef;
-	*ofs = 0xbaadcafe;
-
-	v5_mmu_cache_flush();
-	if (*base == 0xbaadcafe)
-		return SZ_128M;
-	else
-		return SZ_256M;
-}
-
-static int cfa10036_mem_init(void)
-{
-	arm_add_mem_device("ram0", IMX_MEMORY_BASE, cfa10036_get_ram_size());
-
-	return 0;
-}
-mem_initcall(cfa10036_mem_init);
-
 static int cfa10036_devices_init(void)
 {
 	int i;
diff --git a/arch/arm/boards/freescale-mx28-evk/mx28-evk.c b/arch/arm/boards/freescale-mx28-evk/mx28-evk.c
index 9e5d612bda..06a2c21a47 100644
--- a/arch/arm/boards/freescale-mx28-evk/mx28-evk.c
+++ b/arch/arm/boards/freescale-mx28-evk/mx28-evk.c
@@ -232,14 +232,6 @@ static struct imx_fb_platformdata mx28_evk_fb_pdata = {
 	.enable = mx28_evk_fb_enable,
 };
 
-static int mx28_evk_mem_init(void)
-{
-	arm_add_mem_device("ram0", IMX_MEMORY_BASE, 128 * 1024 * 1024);
-
-	return 0;
-}
-mem_initcall(mx28_evk_mem_init);
-
 static const struct spi_board_info mx28evk_spi_board_info[] = {
 	{
 		.name = "m25p80",
diff --git a/arch/arm/boards/karo-tx28/tx28.c b/arch/arm/boards/karo-tx28/tx28.c
index 26dbc00790..47cac21307 100644
--- a/arch/arm/boards/karo-tx28/tx28.c
+++ b/arch/arm/boards/karo-tx28/tx28.c
@@ -73,14 +73,6 @@ static const uint32_t tx28_pad_setup[] = {
 
 extern void base_board_init(void);
 
-static int tx28_mem_init(void)
-{
-	arm_add_mem_device("ram0", IMX_MEMORY_BASE, 128 * 1024 * 1024);
-
-	return 0;
-}
-mem_initcall(tx28_mem_init);
-
 static int tx28_devices_init(void)
 {
 	int i;
diff --git a/arch/arm/mach-mxs/include/mach/imx28.h b/arch/arm/mach-mxs/include/mach/imx28.h
new file mode 100644
index 0000000000..5816625c89
--- /dev/null
+++ b/arch/arm/mach-mxs/include/mach/imx28.h
@@ -0,0 +1,30 @@
+#ifndef __MACH_IMX28_H
+#define __MACH_IMX28_H
+
+#include <linux/bitfield.h>
+#include <io.h>
+
+#define DRAM_CTL29_CS0_EN	BIT(24)
+#define DRAM_CTL29_CS1_EN	BIT(25)
+#define DRAM_CTL29_COLUMNS_DIFF	GENMASK(18, 16)
+#define DRAM_CTL29_ROWS_DIFF	GENMASK(10, 8)
+#define DRAM_CTL31_EIGHT_BANKS	BIT(16)
+
+#define DRAM_CTL(n)	(IMX_SDRAMC_BASE + 4 * (n))
+
+static inline u32 imx28_get_memsize(void)
+{
+	u32 ctl29 = readl(DRAM_CTL(29));
+	u32 ctl31 = readl(DRAM_CTL(31));
+	int rows, columns, banks, cs0, cs1;
+
+	columns = 12 - FIELD_GET(DRAM_CTL29_COLUMNS_DIFF, ctl29);
+	rows = 15 - FIELD_GET(DRAM_CTL29_ROWS_DIFF, ctl29);
+	banks = FIELD_GET(DRAM_CTL31_EIGHT_BANKS, ctl31) ? 8 : 4;
+	cs0 = FIELD_GET(DRAM_CTL29_CS0_EN, ctl29);
+	cs1 = FIELD_GET(DRAM_CTL29_CS1_EN, ctl29);
+
+	return (1 << columns) * (1 << rows) * banks * (cs0 + cs1);
+}
+
+#endif /* __MACH_IMX28_H */
\ No newline at end of file
diff --git a/arch/arm/mach-mxs/soc-imx28.c b/arch/arm/mach-mxs/soc-imx28.c
index dc6020aa36..49f870b5bf 100644
--- a/arch/arm/mach-mxs/soc-imx28.c
+++ b/arch/arm/mach-mxs/soc-imx28.c
@@ -19,6 +19,8 @@
 #include <restart.h>
 #include <mach/imx28-regs.h>
 #include <io.h>
+#include <asm/memory.h>
+#include <mach/imx28.h>
 
 #define HW_CLKCTRL_RESET 0x1e0
 # define HW_CLKCTRL_RESET_CHIP (1 << 1)
@@ -51,6 +53,8 @@ static int imx28_init(void)
 
 	restart_handler_register_fn(imx28_restart_soc);
 
+	arm_add_mem_device("ram0", IMX_MEMORY_BASE, imx28_get_memsize());
+
 	return 0;
 }
 postcore_initcall(imx28_init);
-- 
2.18.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
