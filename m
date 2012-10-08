Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TLJFX-00058X-MS
 for barebox@lists.infradead.org; Mon, 08 Oct 2012 19:44:30 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  8 Oct 2012 21:44:19 +0200
Message-Id: <1349725459-20226-11-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1349725459-20226-1-git-send-email-s.hauer@pengutronix.de>
References: <1349725459-20226-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 10/10] ARM i.MX: Enable clocks in common place
To: barebox@lists.infradead.org

On i.MX we enable all necessary clocks during startup of the clock
controller driver, so we do not need the register hacking in the drivers
anymore.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c |   15 ---------------
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c |    1 -
 arch/arm/boards/guf-neso/lowlevel.c               |    2 --
 arch/arm/boards/imx21ads/imx21ads.c               |    1 -
 arch/arm/boards/pcm038/lowlevel.c                 |    2 --
 arch/arm/boards/pcm038/pcm038.c                   |    4 ----
 arch/arm/boards/pcm038/pcm970.c                   |    1 -
 arch/arm/boards/phycard-i.MX27/pca100.c           |    4 ----
 arch/arm/mach-imx/clocksource.c                   |   12 ------------
 drivers/mtd/nand/nand_imx.c                       |    6 ------
 drivers/net/fec_imx.c                             |    4 +---
 11 files changed, 1 insertion(+), 51 deletions(-)

diff --git a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
index bf3cbc3..39ed3b0 100644
--- a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
+++ b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
@@ -250,18 +250,3 @@ void __bare_init nand_boot(void)
 	imx_nand_load_image(_text, barebox_image_size);
 }
 #endif
-
-static int eukrea_cpuimx25_core_init(void) {
-	/* enable UART1, FEC, SDHC, USB & I2C clock */
-	writel(readl(MX25_CCM_BASE_ADDR + CCM_CGCR0) | (1 << 6) | (1 << 23)
-		| (1 << 15) | (1 << 21) | (1 << 3) | (1 << 28),
-		MX25_CCM_BASE_ADDR + CCM_CGCR0);
-	writel(readl(MX25_CCM_BASE_ADDR + CCM_CGCR1) | (1 << 23) | (1 << 15)
-		| (1 << 13), MX25_CCM_BASE_ADDR + CCM_CGCR1);
-	writel(readl(MX25_CCM_BASE_ADDR + CCM_CGCR2) | (1 << 14),
-		MX25_CCM_BASE_ADDR + CCM_CGCR2);
-
-	return 0;
-}
-
-core_initcall(eukrea_cpuimx25_core_init);
diff --git a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
index cff4f77..57c04c4 100644
--- a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
+++ b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
@@ -194,7 +194,6 @@ static int eukrea_cpuimx27_devices_init(void)
 #endif
 	imx27_add_nand(&nand_info);
 
-	PCCR0 |= PCCR0_I2C1_EN;
 	i2c_register_board_info(0, i2c_devices, ARRAY_SIZE(i2c_devices));
 	imx27_add_i2c0(NULL);
 
diff --git a/arch/arm/boards/guf-neso/lowlevel.c b/arch/arm/boards/guf-neso/lowlevel.c
index 52fe6cf..e2e3c78 100644
--- a/arch/arm/boards/guf-neso/lowlevel.c
+++ b/arch/arm/boards/guf-neso/lowlevel.c
@@ -35,8 +35,6 @@ static void __bare_init __naked insdram(void)
 {
 	uint32_t r;
 
-	PCCR1 |= PCCR1_NFC_BAUDEN;
-
 	/* setup a stack to be able to call imx_nand_load_image() */
 	r = STACK_BASE + STACK_SIZE - 12;
 	__asm__ __volatile__("mov sp, %0" : : "r"(r));
diff --git a/arch/arm/boards/imx21ads/imx21ads.c b/arch/arm/boards/imx21ads/imx21ads.c
index 22406be..26604a9 100644
--- a/arch/arm/boards/imx21ads/imx21ads.c
+++ b/arch/arm/boards/imx21ads/imx21ads.c
@@ -193,7 +193,6 @@ console_initcall(mx21ads_console_init);
 #ifdef CONFIG_NAND_IMX_BOOT
 void __bare_init nand_boot(void)
 {
-	PCCR0 |= PCCR0_NFC_EN;
 	imx_nand_load_image(_text, barebox_image_size);
 	board_init_lowlevel_return();
 }
diff --git a/arch/arm/boards/pcm038/lowlevel.c b/arch/arm/boards/pcm038/lowlevel.c
index 7ecff3a..bed1c3f 100644
--- a/arch/arm/boards/pcm038/lowlevel.c
+++ b/arch/arm/boards/pcm038/lowlevel.c
@@ -36,8 +36,6 @@ static void __bare_init __naked insdram(void)
 {
 	uint32_t r;
 
-	PCCR1 |= PCCR1_NFC_BAUDEN;
-
 	/* setup a stack to be able to call imx_nand_load_image() */
 	r = STACK_BASE + STACK_SIZE - 12;
 	__asm__ __volatile__("mov sp, %0" : : "r"(r));
diff --git a/arch/arm/boards/pcm038/pcm038.c b/arch/arm/boards/pcm038/pcm038.c
index 58b1ec9..dce852b 100644
--- a/arch/arm/boards/pcm038/pcm038.c
+++ b/arch/arm/boards/pcm038/pcm038.c
@@ -281,9 +281,6 @@ static int pcm038_devices_init(void)
 	for (i = 0; i < ARRAY_SIZE(mode); i++)
 		imx_gpio_mode(mode[i]);
 
-	PCCR0 |= PCCR0_CSPI1_EN;
-	PCCR1 |= PCCR1_PERCLK2_EN;
-
 	spi_register_board_info(pcm038_spi_board_info, ARRAY_SIZE(pcm038_spi_board_info));
 	imx27_add_spi0(&pcm038_spi_0_data);
 
@@ -293,7 +290,6 @@ static int pcm038_devices_init(void)
 	imx27_add_nand(&nand_info);
 	imx27_add_fb(&pcm038_fb_data);
 
-	PCCR0 |= PCCR0_I2C1_EN | PCCR0_I2C2_EN;
 	imx27_add_i2c0(NULL);
 	imx27_add_i2c1(NULL);
 
diff --git a/arch/arm/boards/pcm038/pcm970.c b/arch/arm/boards/pcm038/pcm970.c
index a6b6c83..5723fb3 100644
--- a/arch/arm/boards/pcm038/pcm970.c
+++ b/arch/arm/boards/pcm038/pcm970.c
@@ -162,7 +162,6 @@ static void pcm970_mmc_init(void)
 	for (i = 0; i < ARRAY_SIZE(mode); i++)
 		imx_gpio_mode(mode[i]);
 
-	PCCR0 |= PCCR0_SDHC2_EN;
 	imx27_add_mmc1(NULL);
 }
 
diff --git a/arch/arm/boards/phycard-i.MX27/pca100.c b/arch/arm/boards/phycard-i.MX27/pca100.c
index 45e59fb..b8abd1b 100644
--- a/arch/arm/boards/phycard-i.MX27/pca100.c
+++ b/arch/arm/boards/phycard-i.MX27/pca100.c
@@ -279,8 +279,6 @@ static int pca100_devices_init(void)
 		PD18_PF_I2C_CLK,
 	};
 
-	PCCR0 |= PCCR0_SDHC2_EN;
-
 	pca100_usb_init();
 
 	/* initizalize gpios */
@@ -292,8 +290,6 @@ static int pca100_devices_init(void)
 	imx27_add_mmc1(NULL);
 	imx27_add_fb(&pca100_fb_data);
 
-	PCCR1 |= PCCR1_PERCLK2_EN;
-
 #ifdef CONFIG_USB
 	pca100_usb_register();
 #endif
diff --git a/arch/arm/mach-imx/clocksource.c b/arch/arm/mach-imx/clocksource.c
index 69a688c..31e1fdf 100644
--- a/arch/arm/mach-imx/clocksource.c
+++ b/arch/arm/mach-imx/clocksource.c
@@ -108,18 +108,6 @@ static int imx_gpt_probe(struct device_d *dev)
 	/* setup GP Timer 1 */
 	writel(TCTL_SWR, timer_base + GPT_TCTL);
 
-#ifdef CONFIG_ARCH_IMX21
-	PCCR1 |= PCCR1_GPT1_EN;
-#endif
-#ifdef CONFIG_ARCH_IMX27
-	PCCR0 |= PCCR0_GPT1_EN;
-	PCCR1 |= PCCR1_PERCLK1_EN;
-#endif
-#ifdef CONFIG_ARCH_IMX25
-	writel(readl(IMX_CCM_BASE + CCM_CGCR1) | (1 << 19),
-		IMX_CCM_BASE + CCM_CGCR1);
-#endif
-
 	for (i = 0; i < 100; i++)
 		writel(0, timer_base + GPT_TCTL); /* We have no udelay by now */
 
diff --git a/drivers/mtd/nand/nand_imx.c b/drivers/mtd/nand/nand_imx.c
index b1b7f55..0489d09 100644
--- a/drivers/mtd/nand/nand_imx.c
+++ b/drivers/mtd/nand/nand_imx.c
@@ -1107,12 +1107,6 @@ static int __init imxnd_probe(struct device_d *dev)
 	struct nand_ecclayout *oob_smallpage, *oob_largepage, *oob_4kpage;
 	int err = 0;
 
-#ifdef CONFIG_ARCH_IMX27
-	PCCR1 |= PCCR1_NFC_BAUDEN;
-#endif
-#ifdef CONFIG_ARCH_IMX21
-	PCCR0 |= PCCR0_NFC_EN;
-#endif
 	/* Allocate memory for MTD device structure and private data */
 	host = kzalloc(sizeof(struct imx_nand_host) + NAND_MAX_PAGESIZE +
 			NAND_MAX_OOBSIZE, GFP_KERNEL);
diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index b95c4f0..cdb4a85 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -628,9 +628,7 @@ static int fec_probe(struct device_d *dev)
 	struct fec_priv *fec;
 	void *base;
 	int ret;
-#ifdef CONFIG_ARCH_IMX27
-	PCCR0 |= PCCR0_FEC_EN;
-#endif
+
 	fec = xzalloc(sizeof(*fec));
 	edev = &fec->edev;
 	dev->priv = fec;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
