Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h5oME-0001xI-Ij
 for barebox@lists.infradead.org; Mon, 18 Mar 2019 09:15:01 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 18 Mar 2019 10:14:45 +0100
Message-Id: <20190318091454.11386-3-s.hauer@pengutronix.de>
In-Reply-To: <20190318091454.11386-1-s.hauer@pengutronix.de>
References: <20190318091454.11386-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/11] treewide: Make locally used functions static
To: Barebox List <barebox@lists.infradead.org>

Many functions are only used locally but still are globally visible.
Make these function static. Avoids warnings generated with -Wmissing-prototypes

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 .../arm/boards/friendlyarm-tiny210/lowlevel.c |  3 +-
 arch/arm/boards/imx233-olinuxino/lowlevel.c   |  2 +-
 arch/arm/boards/kindle3/kindle3.c             |  2 +-
 .../boards/phytec-phycard-imx27/lowlevel.c    |  2 +-
 .../boards/phytec-phycard-omap3/lowlevel.c    |  4 +--
 arch/arm/crypto/sha1_glue.c                   |  4 +--
 arch/arm/crypto/sha256_glue.c                 |  8 +++---
 arch/arm/mach-highbank/reset.c                |  2 +-
 arch/arm/mach-imx/external-nand-boot.c        | 28 +++++--------------
 arch/arm/mach-mvebu/include/mach/bbu.h        |  2 +-
 arch/arm/mach-mxs/mem-init.c                  | 10 +++----
 arch/arm/mach-netx/clocksource.c              |  2 +-
 arch/arm/mach-netx/generic.c                  |  2 +-
 arch/arm/mach-pxa/clocksource.c               |  2 +-
 arch/arm/mach-samsung/clocks-s3c64xx.c        |  2 +-
 arch/arm/mach-samsung/clocks-s5pcxx.c         |  4 +--
 common/bootchooser.c                          |  2 +-
 drivers/clk/mvebu/common.c                    |  4 +--
 drivers/clk/mxs/clk-imx23.c                   |  2 +-
 drivers/clk/mxs/clk-imx28.c                   |  2 +-
 drivers/clocksource/mvebu.c                   |  2 +-
 drivers/net/mvneta.c                          |  2 +-
 drivers/usb/otg/twl4030.c                     |  2 +-
 drivers/w1/slaves/w1_ds2431.c                 |  2 +-
 fs/bpkfs.c                                    |  2 +-
 fs/uimagefs.c                                 |  2 +-
 26 files changed, 43 insertions(+), 58 deletions(-)

diff --git a/arch/arm/boards/friendlyarm-tiny210/lowlevel.c b/arch/arm/boards/friendlyarm-tiny210/lowlevel.c
index 4b9ba87d70..290cf57225 100644
--- a/arch/arm/boards/friendlyarm-tiny210/lowlevel.c
+++ b/arch/arm/boards/friendlyarm-tiny210/lowlevel.c
@@ -53,7 +53,8 @@ static inline void __bare_init debug_led(int led, bool state)
 #define ADDR_V210_SDMMC_BASE	0xD0037488
 #define ADDR_CopySDMMCtoMem	0xD0037F98
 
-int __bare_init s5p_irom_load_mmc(void *dest, uint32_t start_block, uint16_t block_count)
+static int __bare_init s5p_irom_load_mmc(void *dest, uint32_t start_block,
+					 uint16_t block_count)
 {
 	typedef uint32_t (*func_t) (int32_t, uint32_t, uint16_t, uint32_t*, int8_t);
 	uint32_t chbase = readl(ADDR_V210_SDMMC_BASE);
diff --git a/arch/arm/boards/imx233-olinuxino/lowlevel.c b/arch/arm/boards/imx233-olinuxino/lowlevel.c
index 5f36c17e52..07a2a0e293 100644
--- a/arch/arm/boards/imx233-olinuxino/lowlevel.c
+++ b/arch/arm/boards/imx233-olinuxino/lowlevel.c
@@ -115,7 +115,7 @@ static const uint32_t pad_setup[] = {
 
 
 /* Fine-tune the DRAM configuration. */
-void imx23_olinuxino_adjust_memory_params(uint32_t *dram_vals)
+static void imx23_olinuxino_adjust_memory_params(uint32_t *dram_vals)
 {
 	/* Enable Auto Precharge. */
 	dram_vals[3] |= 1 << 8;
diff --git a/arch/arm/boards/kindle3/kindle3.c b/arch/arm/boards/kindle3/kindle3.c
index e06b3d70ce..5f1b06aeb2 100644
--- a/arch/arm/boards/kindle3/kindle3.c
+++ b/arch/arm/boards/kindle3/kindle3.c
@@ -86,7 +86,7 @@ BAREBOX_MAGICVAR_NAMED(global_atags_revision16, global.board.revision16,
 /* The Kindle3 Kernel expects two custom ATAGs, ATAG_REVISION16 describing
  * the board and ATAG_SERIAL16 to identify the individual device.
  */
-struct tag *kindle3_append_atags(struct tag *params)
+static struct tag *kindle3_append_atags(struct tag *params)
 {
 	params = setup_16char_tag(params, ATAG_SERIAL16,
 				get_env_16char_tag("global.board.serial16"));
diff --git a/arch/arm/boards/phytec-phycard-imx27/lowlevel.c b/arch/arm/boards/phytec-phycard-imx27/lowlevel.c
index 1e96c0893f..09994e4492 100644
--- a/arch/arm/boards/phytec-phycard-imx27/lowlevel.c
+++ b/arch/arm/boards/phytec-phycard-imx27/lowlevel.c
@@ -77,7 +77,7 @@ static void sdram_init(int sdram)
 			MX27_ESDCTL_BASE_ADDR + IMX_ESDCTL0);
 }
 
-void __bare_init __naked phytec_phycard_imx27_common_init(void *fdt, int sdram)
+static void __bare_init __naked phytec_phycard_imx27_common_init(void *fdt, int sdram)
 {
 	unsigned long r;
 
diff --git a/arch/arm/boards/phytec-phycard-omap3/lowlevel.c b/arch/arm/boards/phytec-phycard-omap3/lowlevel.c
index 27b56b1e0c..d48c02625c 100644
--- a/arch/arm/boards/phytec-phycard-omap3/lowlevel.c
+++ b/arch/arm/boards/phytec-phycard-omap3/lowlevel.c
@@ -48,7 +48,7 @@ struct sdrc_config {
 /*********************************************************************
  * init_sdram_ddr() - Init DDR controller.
  *********************************************************************/
-void init_sdram_ddr(void)
+static void init_sdram_ddr(void)
 {
 	/* reset sdrc controller */
 	writel(SOFTRESET, OMAP3_SDRC_REG(SYSCONFIG));
@@ -67,7 +67,7 @@ void init_sdram_ddr(void)
 /*********************************************************************
  * config_sdram_ddr() - Init DDR on dev board.
  *********************************************************************/
-void config_sdram_ddr(u8 cs, u8 cfg)
+static void config_sdram_ddr(u8 cs, u8 cfg)
 {
 
 	writel(sdrc_config[cfg].mcfg, OMAP3_SDRC_REG(MCFG_0) + (0x30 * cs));
diff --git a/arch/arm/crypto/sha1_glue.c b/arch/arm/crypto/sha1_glue.c
index cc032f6af2..6a0e482aaa 100644
--- a/arch/arm/crypto/sha1_glue.c
+++ b/arch/arm/crypto/sha1_glue.c
@@ -63,7 +63,7 @@ static int __sha1_update(struct sha1_state *sctx, const u8 *data,
 }
 
 
-int sha1_update_arm(struct digest *desc, const void *data,
+static int sha1_update_arm(struct digest *desc, const void *data,
 			     unsigned long len)
 {
 	struct sha1_state *sctx = digest_ctx(desc);
@@ -79,8 +79,6 @@ int sha1_update_arm(struct digest *desc, const void *data,
 	res = __sha1_update(sctx, data, len, partial);
 	return res;
 }
-EXPORT_SYMBOL_GPL(sha1_update_arm);
-
 
 /* Add padding and return the message digest. */
 static int sha1_final(struct digest *desc, u8 *out)
diff --git a/arch/arm/crypto/sha256_glue.c b/arch/arm/crypto/sha256_glue.c
index d8a72a2cb9..3876f9adc9 100644
--- a/arch/arm/crypto/sha256_glue.c
+++ b/arch/arm/crypto/sha256_glue.c
@@ -26,7 +26,7 @@ void sha256_block_data_order(u32 *digest, const void *data,
 				      unsigned int num_blks);
 
 
-int sha256_init(struct digest *desc)
+static int sha256_init(struct digest *desc)
 {
 	struct sha256_state *sctx = digest_ctx(desc);
 
@@ -43,7 +43,7 @@ int sha256_init(struct digest *desc)
 	return 0;
 }
 
-int sha224_init(struct digest *desc)
+static int sha224_init(struct digest *desc)
 {
 	struct sha256_state *sctx = digest_ctx(desc);
 
@@ -60,7 +60,7 @@ int sha224_init(struct digest *desc)
 	return 0;
 }
 
-int __sha256_update(struct digest *desc, const u8 *data, unsigned int len,
+static int __sha256_update(struct digest *desc, const u8 *data, unsigned int len,
 		    unsigned int partial)
 {
 	struct sha256_state *sctx = digest_ctx(desc);
@@ -86,7 +86,7 @@ int __sha256_update(struct digest *desc, const u8 *data, unsigned int len,
 	return 0;
 }
 
-int sha256_update(struct digest *desc, const void *data,
+static int sha256_update(struct digest *desc, const void *data,
 			     unsigned long len)
 {
 	struct sha256_state *sctx = digest_ctx(desc);
diff --git a/arch/arm/mach-highbank/reset.c b/arch/arm/mach-highbank/reset.c
index b60f34452e..d73a0a76a5 100644
--- a/arch/arm/mach-highbank/reset.c
+++ b/arch/arm/mach-highbank/reset.c
@@ -21,7 +21,7 @@ static void __noreturn highbank_restart_soc(struct restart_handler *rst)
 	hang();
 }
 
-void __noreturn highbank_poweroff(struct poweroff_handler *handler)
+static void __noreturn highbank_poweroff(struct poweroff_handler *handler)
 {
 	shutdown_barebox();
 
diff --git a/arch/arm/mach-imx/external-nand-boot.c b/arch/arm/mach-imx/external-nand-boot.c
index 745a129b23..1a98878868 100644
--- a/arch/arm/mach-imx/external-nand-boot.c
+++ b/arch/arm/mach-imx/external-nand-boot.c
@@ -134,8 +134,8 @@ static noinline void __bare_init imx_nandboot_get_page(void *regs, int v1,
 	imx_nandboot_send_page(regs, v1, NFC_OUTPUT, pagesize_2k);
 }
 
-void __bare_init imx_nand_load_image(void *dest, int v1, int size, void __iomem *base,
-		int pagesize_2k)
+static void __bare_init imx_nand_load_image(void *dest, int v1, int size,
+					    void __iomem *base, int pagesize_2k)
 {
 	u32 tmp, page, block, blocksize, pagesize, badblocks;
 	int bbt = 0;
@@ -239,44 +239,30 @@ void __bare_init imx_nand_load_image(void *dest, int v1, int size, void __iomem
 	}
 }
 
-void BARE_INIT_FUNCTION(imx21_nand_load_image)(void *dest, int size,
-                void __iomem *base, int pagesize_2k)
-{
-        imx_nand_load_image(dest, 1, size, base, pagesize_2k);
-}
-
-void BARE_INIT_FUNCTION(imx25_nand_load_image)(void *dest, int size,
+static void BARE_INIT_FUNCTION(imx25_nand_load_image)(void *dest, int size,
                 void __iomem *base, int pagesize_2k)
 {
         imx_nand_load_image(dest, 0, size, base, pagesize_2k);
 }
 
-void BARE_INIT_FUNCTION(imx27_nand_load_image)(void *dest, int size,
+static void BARE_INIT_FUNCTION(imx27_nand_load_image)(void *dest, int size,
                 void __iomem *base, int pagesize_2k)
 {
         imx_nand_load_image(dest, 1, size, base, pagesize_2k);
 }
 
-void BARE_INIT_FUNCTION(imx31_nand_load_image)(void *dest, int size,
+static void BARE_INIT_FUNCTION(imx31_nand_load_image)(void *dest, int size,
                 void __iomem *base, int pagesize_2k)
 {
         imx_nand_load_image(dest, 1, size, base, pagesize_2k);
 }
 
-void BARE_INIT_FUNCTION(imx35_nand_load_image)(void *dest, int size,
+static void BARE_INIT_FUNCTION(imx35_nand_load_image)(void *dest, int size,
                 void __iomem *base, int pagesize_2k)
 {
         imx_nand_load_image(dest, 0, size, base, pagesize_2k);
 }
 
-static inline int imx21_pagesize_2k(void)
-{
-	if (readl(MX21_SYSCTRL_BASE_ADDR + 0x14) & (1 << 5))
-		return 1;
-	else
-		return 0;
-}
-
 static inline int imx25_pagesize_2k(void)
 {
 	if (readl(MX25_CCM_BASE_ADDR + MX25_CCM_RCSR) & (1 << 8))
@@ -318,7 +304,7 @@ static inline int imx35_pagesize_2k(void)
 
 #define DEFINE_EXTERNAL_NAND_ENTRY(soc)					\
 									\
-void __noreturn BARE_INIT_FUNCTION(imx##soc##_boot_nand_external_cont)  \
+static void __noreturn BARE_INIT_FUNCTION(imx##soc##_boot_nand_external_cont)  \
 			(void *boarddata)				\
 {									\
 	unsigned long nfc_base = MX##soc##_NFC_BASE_ADDR;		\
diff --git a/arch/arm/mach-mvebu/include/mach/bbu.h b/arch/arm/mach-mvebu/include/mach/bbu.h
index a06db2b144..f23c3269c0 100644
--- a/arch/arm/mach-mvebu/include/mach/bbu.h
+++ b/arch/arm/mach-mvebu/include/mach/bbu.h
@@ -3,7 +3,7 @@ int mvebu_bbu_flash_register_handler(const char *name,
 				     char *devicefile, int version,
 				     bool isdefault);
 #else
-int mvebu_bbu_flash_register_handler(const char *name,
+static inline int mvebu_bbu_flash_register_handler(const char *name,
                                      char *devicefile, int version,
                                      bool isdefault)
 {
diff --git a/arch/arm/mach-mxs/mem-init.c b/arch/arm/mach-mxs/mem-init.c
index 568db81302..44785c2bfc 100644
--- a/arch/arm/mach-mxs/mem-init.c
+++ b/arch/arm/mach-mxs/mem-init.c
@@ -30,8 +30,8 @@
 #define	MXS_BLOCK_SFTRST	(1 << 31)
 #define	MXS_BLOCK_CLKGATE	(1 << 30)
 
-int mxs_early_wait_mask_set(struct mxs_register_32 *reg, uint32_t mask, unsigned
-								int timeout)
+static int mxs_early_wait_mask_set(struct mxs_register_32 *reg, uint32_t mask,
+				   unsigned int timeout)
 {
 	while (--timeout) {
 		if ((readl(&reg->reg) & mask) == mask)
@@ -42,8 +42,8 @@ int mxs_early_wait_mask_set(struct mxs_register_32 *reg, uint32_t mask, unsigned
 	return !timeout;
 }
 
-int mxs_early_wait_mask_clr(struct mxs_register_32 *reg, uint32_t mask, unsigned
-								int timeout)
+static int mxs_early_wait_mask_clr(struct mxs_register_32 *reg, uint32_t mask,
+				   unsigned int timeout)
 {
 	while (--timeout) {
 		if ((readl(&reg->reg) & mask) == 0)
@@ -54,7 +54,7 @@ int mxs_early_wait_mask_clr(struct mxs_register_32 *reg, uint32_t mask, unsigned
 	return !timeout;
 }
 
-int mxs_early_reset_block(struct mxs_register_32 *reg)
+static int mxs_early_reset_block(struct mxs_register_32 *reg)
 {
 	/* Clear SFTRST */
 	writel(MXS_BLOCK_SFTRST, &reg->reg_clr);
diff --git a/arch/arm/mach-netx/clocksource.c b/arch/arm/mach-netx/clocksource.c
index 263547242e..1eb977d3c9 100644
--- a/arch/arm/mach-netx/clocksource.c
+++ b/arch/arm/mach-netx/clocksource.c
@@ -23,7 +23,7 @@
 #include <clock.h>
 #include <mach/netx-regs.h>
 
-uint64_t netx_clocksource_read(void)
+static uint64_t netx_clocksource_read(void)
 {
 	return GPIO_REG(GPIO_COUNTER_CURRENT(0));
 }
diff --git a/arch/arm/mach-netx/generic.c b/arch/arm/mach-netx/generic.c
index 6c3b953d1f..e818f97013 100644
--- a/arch/arm/mach-netx/generic.c
+++ b/arch/arm/mach-netx/generic.c
@@ -115,7 +115,7 @@ int loadxc(int xcno)
 	return 0;
 }
 
-int do_loadxc(int argc, char *argv[])
+static int do_loadxc(int argc, char *argv[])
 {
 	int xcno;
 
diff --git a/arch/arm/mach-pxa/clocksource.c b/arch/arm/mach-pxa/clocksource.c
index c941f154d4..5a890acb3c 100644
--- a/arch/arm/mach-pxa/clocksource.c
+++ b/arch/arm/mach-pxa/clocksource.c
@@ -22,7 +22,7 @@
 
 #define OSCR	0x40A00010
 
-uint64_t pxa_clocksource_read(void)
+static uint64_t pxa_clocksource_read(void)
 {
 	return readl(OSCR);
 }
diff --git a/arch/arm/mach-samsung/clocks-s3c64xx.c b/arch/arm/mach-samsung/clocks-s3c64xx.c
index cf7d0716fe..3c13f52d2e 100644
--- a/arch/arm/mach-samsung/clocks-s3c64xx.c
+++ b/arch/arm/mach-samsung/clocks-s3c64xx.c
@@ -322,7 +322,7 @@ void s3c_set_hsmmc_clk(int id, int src, unsigned div)
 	writel(readl(S3C_SCLK_GATE) | S3C_SCLK_GATE_MMC(id), S3C_SCLK_GATE);
 }
 
-int s3c64xx_dump_clocks(void)
+static int s3c64xx_dump_clocks(void)
 {
 	printf("refclk:  %7d kHz\n", S3C64XX_CLOCK_REFERENCE / 1000);
 	printf("apll:    %7d kHz\n", s3c_get_apllclk() / 1000);
diff --git a/arch/arm/mach-samsung/clocks-s5pcxx.c b/arch/arm/mach-samsung/clocks-s5pcxx.c
index 1f4790bc07..4a1574bd89 100644
--- a/arch/arm/mach-samsung/clocks-s5pcxx.c
+++ b/arch/arm/mach-samsung/clocks-s5pcxx.c
@@ -38,7 +38,7 @@ uint32_t s3c_get_mpllclk(void)
 	return m * ((S5PCXX_CLOCK_REFERENCE) / (p << s));
 }
 
-uint32_t s3c_get_apllclk(void)
+static uint32_t s3c_get_apllclk(void)
 {
 	uint32_t m, p, s;
 	uint32_t reg = readl(S5P_xPLL_CON + S5P_APLL);
@@ -84,7 +84,7 @@ unsigned s3c_get_uart_clk(unsigned src) {
 	return (src & 1) ? s3c_get_uart_clk_uclk1() : s3c_get_pclk();
 }
 
-int s5pcxx_dump_clocks(void)
+static int s5pcxx_dump_clocks(void)
 {
 	printf("refclk:  %7d kHz\n", S5PCXX_CLOCK_REFERENCE / 1000);
 	printf("apll:    %7d kHz\n", s3c_get_apllclk() / 1000);
diff --git a/common/bootchooser.c b/common/bootchooser.c
index c47c734c9c..c08db03eba 100644
--- a/common/bootchooser.c
+++ b/common/bootchooser.c
@@ -630,7 +630,7 @@ void bootchooser_info(struct bootchooser *bc)
  *
  * Return: The next target
  */
-struct bootchooser_target *bootchooser_get_target(struct bootchooser *bc)
+static struct bootchooser_target *bootchooser_get_target(struct bootchooser *bc)
 {
 	struct bootchooser_target *target;
 
diff --git a/drivers/clk/mvebu/common.c b/drivers/clk/mvebu/common.c
index f6f118f0db..609e63697c 100644
--- a/drivers/clk/mvebu/common.c
+++ b/drivers/clk/mvebu/common.c
@@ -42,7 +42,7 @@ static struct of_device_id mvebu_coreclk_ids[] = {
 	{ }
 };
 
-int mvebu_coreclk_probe(struct device_d *dev)
+static int mvebu_coreclk_probe(struct device_d *dev)
 {
 	struct resource *iores;
 	struct device_node *np = dev->device_node;
@@ -155,7 +155,7 @@ static struct of_device_id mvebu_clk_gating_ids[] = {
 	{ }
 };
 
-int mvebu_clk_gating_probe(struct device_d *dev)
+static int mvebu_clk_gating_probe(struct device_d *dev)
 {
 	struct resource *iores;
 	struct device_node *np = dev->device_node;
diff --git a/drivers/clk/mxs/clk-imx23.c b/drivers/clk/mxs/clk-imx23.c
index e28dae12f1..526efc52be 100644
--- a/drivers/clk/mxs/clk-imx23.c
+++ b/drivers/clk/mxs/clk-imx23.c
@@ -61,7 +61,7 @@ enum imx23_clk {
 
 static struct clk *clks[clk_max];
 
-int __init mx23_clocks_init(void __iomem *regs)
+static int __init mx23_clocks_init(void __iomem *regs)
 {
 	clks[ref_xtal] = mxs_clk_fixed("ref_xtal", 24000000);
 	clks[pll] = mxs_clk_pll("pll", "ref_xtal", PLLCTRL0, 16, 480000000);
diff --git a/drivers/clk/mxs/clk-imx28.c b/drivers/clk/mxs/clk-imx28.c
index dd17a74d79..12bc9dd977 100644
--- a/drivers/clk/mxs/clk-imx28.c
+++ b/drivers/clk/mxs/clk-imx28.c
@@ -74,7 +74,7 @@ enum imx28_clk {
 
 static struct clk *clks[clk_max];
 
-int __init mx28_clocks_init(void __iomem *regs)
+static int __init mx28_clocks_init(void __iomem *regs)
 {
 	clks[ref_xtal] = clk_fixed("ref_xtal", 24000000);
 	clks[pll0] = mxs_clk_pll("pll0", "ref_xtal", PLL0CTRL0, 17, 480000000);
diff --git a/drivers/clocksource/mvebu.c b/drivers/clocksource/mvebu.c
index 59bbc4be22..b55d72a343 100644
--- a/drivers/clocksource/mvebu.c
+++ b/drivers/clocksource/mvebu.c
@@ -43,7 +43,7 @@
 
 static __iomem void *timer_base;
 
-uint64_t mvebu_clocksource_read(void)
+static uint64_t mvebu_clocksource_read(void)
 {
 	return 0 - __raw_readl(timer_base + TIMER0_VAL_OFF);
 }
diff --git a/drivers/net/mvneta.c b/drivers/net/mvneta.c
index 7aa54a292d..359c70c927 100644
--- a/drivers/net/mvneta.c
+++ b/drivers/net/mvneta.c
@@ -580,7 +580,7 @@ static void mvneta_init_rx_ring(struct mvneta_port *priv)
 	priv->curr_rxdesc = 0;
 }
 
-void mvneta_setup_tx_rx(struct mvneta_port *priv)
+static void mvneta_setup_tx_rx(struct mvneta_port *priv)
 {
 	u32 val;
 
diff --git a/drivers/usb/otg/twl4030.c b/drivers/usb/otg/twl4030.c
index fd5f593dc6..3668870b9e 100644
--- a/drivers/usb/otg/twl4030.c
+++ b/drivers/usb/otg/twl4030.c
@@ -64,7 +64,7 @@ static int twl4030_usb_read(u8 address)
 	return ret;
 }
 
-void twl4030_power_init(void)
+static void twl4030_power_init(void)
 {
 	unsigned char byte;
 	struct twl4030 *twl4030 = twl4030_get();
diff --git a/drivers/w1/slaves/w1_ds2431.c b/drivers/w1/slaves/w1_ds2431.c
index 6446f4ba05..ab2ceffa42 100644
--- a/drivers/w1/slaves/w1_ds2431.c
+++ b/drivers/w1/slaves/w1_ds2431.c
@@ -60,7 +60,7 @@ static inline size_t ds2431_fix_count(loff_t off, size_t count, size_t size)
  *
  * count must not exceed W1_F2D_READ_MAXLEN.
  */
-int ds2431_readblock(struct w1_device *dev, int off, int count, char *buf)
+static int ds2431_readblock(struct w1_device *dev, int off, int count, char *buf)
 {
 	struct w1_bus *bus = dev->bus;
 	u8 wrbuf[3];
diff --git a/fs/bpkfs.c b/fs/bpkfs.c
index 655cde09b7..414108befe 100644
--- a/fs/bpkfs.c
+++ b/fs/bpkfs.c
@@ -25,7 +25,7 @@ static bool bpkfs_is_crc_file(struct bpkfs_handle_data *d)
 	return d->type & (1 << 31);
 }
 
-const char* bpkfs_type_to_str(uint32_t type)
+static const char* bpkfs_type_to_str(uint32_t type)
 {
 	switch (type) {
 	case BPKFS_TYPE_BL:
diff --git a/fs/uimagefs.c b/fs/uimagefs.c
index e5ada82da8..72641c58b5 100644
--- a/fs/uimagefs.c
+++ b/fs/uimagefs.c
@@ -25,7 +25,7 @@ static bool uimagefs_is_data_file(struct uimagefs_handle_data *d)
 	return d->type == UIMAGEFS_DATA;
 }
 
-const char* uimagefs_type_to_str(enum uimagefs_type type)
+static const char* uimagefs_type_to_str(enum uimagefs_type type)
 {
 	switch (type) {
 	case UIMAGEFS_DATA:
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
