Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo4.mail-out.ovh.net ([188.165.54.143]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U21Rg-00034P-KV
 for barebox@lists.infradead.org; Sun, 03 Feb 2013 15:25:34 +0000
Received: from mail403.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 55C28104EC64
 for <barebox@lists.infradead.org>; Sun,  3 Feb 2013 16:35:34 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun,  3 Feb 2013 16:24:13 +0100
Message-Id: <1359905053-13109-5-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1359905053-13109-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130203152218.GF18068@game.jcrosoft.org>
 <1359905053-13109-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 5/5] at91sam9: drop AT91_BASE_SYS for sdram controller
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/tny-a926x/init.c                   |    2 +-
 arch/arm/boards/usb-a926x/init.c                   |    2 +-
 arch/arm/mach-at91/at91sam9260_devices.c           |    2 +-
 arch/arm/mach-at91/at91sam9260_lowlevel_init.c     |    3 +-
 arch/arm/mach-at91/at91sam9261_devices.c           |    2 +-
 arch/arm/mach-at91/at91sam9261_lowlevel_init.c     |    3 +-
 arch/arm/mach-at91/at91sam9263_devices.c           |    2 +-
 arch/arm/mach-at91/at91sam9263_lowlevel_init.c     |    3 +-
 arch/arm/mach-at91/at91sam926x_lowlevel_init.c     |  115 +++++++++++---------
 arch/arm/mach-at91/at91sam9_reset.S                |    4 +-
 .../mach-at91/include/mach/at91_lowlevel_init.h    |    1 +
 arch/arm/mach-at91/include/mach/at91sam9_sdramc.h  |  108 +++++++++++++++---
 12 files changed, 173 insertions(+), 74 deletions(-)

diff --git a/arch/arm/boards/tny-a926x/init.c b/arch/arm/boards/tny-a926x/init.c
index 4228254..5ea6c53 100644
--- a/arch/arm/boards/tny-a926x/init.c
+++ b/arch/arm/boards/tny-a926x/init.c
@@ -202,7 +202,7 @@ static void __init ek_add_device_spi(void)
 			ARRAY_SIZE(tny_a9263_spi_devices));
 		at91_add_device_spi(0, &tny_a9263_spi0_pdata);
 
-	} else if (machine_is_tny_a9g20() && at91_is_low_power_sdram()) {
+	} else if (machine_is_tny_a9g20() && at91sam9260_is_low_power_sdram()) {
 		spi_register_board_info(tny_a9g20_lpw_spi_devices,
 			ARRAY_SIZE(tny_a9g20_lpw_spi_devices));
 		at91_add_device_spi(1, &tny_a9g20_spi1_pdata);
diff --git a/arch/arm/boards/usb-a926x/init.c b/arch/arm/boards/usb-a926x/init.c
index e2da8ea..fd74c8f 100644
--- a/arch/arm/boards/usb-a926x/init.c
+++ b/arch/arm/boards/usb-a926x/init.c
@@ -200,7 +200,7 @@ static void usb_a9260_add_spi(void)
 		spi_register_board_info(usb_a9263_spi_devices,
 				ARRAY_SIZE(usb_a9263_spi_devices));
 		at91_add_device_spi(0, &spi_a9263_pdata);
-	} else if (machine_is_usb_a9g20() && at91_is_low_power_sdram()) {
+	} else if (machine_is_usb_a9g20() && at91sam9260_is_low_power_sdram()) {
 		spi_register_board_info(usb_a9g20_spi_devices,
 				ARRAY_SIZE(usb_a9g20_spi_devices));
 		at91_add_device_spi(1, &spi_a9g20_pdata);
diff --git a/arch/arm/mach-at91/at91sam9260_devices.c b/arch/arm/mach-at91/at91sam9260_devices.c
index 6e8c37b..1c375ee 100644
--- a/arch/arm/mach-at91/at91sam9260_devices.c
+++ b/arch/arm/mach-at91/at91sam9260_devices.c
@@ -27,7 +27,7 @@
 void at91_add_device_sdram(u32 size)
 {
 	if (!size)
-		size = at91_get_sdram_size();
+		size = at91sam9260_get_sdram_size();
 
 	arm_add_mem_device("ram0", AT91_CHIPSELECT_1, size);
 	if (cpu_is_at91sam9g20()) {
diff --git a/arch/arm/mach-at91/at91sam9260_lowlevel_init.c b/arch/arm/mach-at91/at91sam9260_lowlevel_init.c
index d12572d..4f9a727 100644
--- a/arch/arm/mach-at91/at91sam9260_lowlevel_init.c
+++ b/arch/arm/mach-at91/at91sam9260_lowlevel_init.c
@@ -28,12 +28,13 @@ void __bare_init at91sam9260_lowlevel_init(void)
 	struct at91sam926x_lowlevel_cfg cfg;
 
 	cfg.pio = IOMEM(AT91SAM9260_BASE_PIOC);
+	cfg.sdramc = IOMEM(AT91SAM9260_BASE_SDRAMC);
 	cfg.ebi_pio_is_peripha = false;
 	cfg.matrix_csa = AT91_MATRIX_EBICSA;
 
 	at91sam926x_lowlevel_init(&cfg);
 
-	barebox_arm_entry(AT91_CHIPSELECT_1, at91_get_sdram_size(), 0);
+	barebox_arm_entry(AT91_CHIPSELECT_1, at91_get_sdram_size(cfg.sdramc), 0);
 }
 
 void __naked __bare_init reset(void)
diff --git a/arch/arm/mach-at91/at91sam9261_devices.c b/arch/arm/mach-at91/at91sam9261_devices.c
index e9ca51c..e3e51bf 100644
--- a/arch/arm/mach-at91/at91sam9261_devices.c
+++ b/arch/arm/mach-at91/at91sam9261_devices.c
@@ -27,7 +27,7 @@
 void at91_add_device_sdram(u32 size)
 {
 	if (!size)
-		size = at91_get_sdram_size();
+		size = at91sam9261_get_sdram_size();
 
 	arm_add_mem_device("ram0", AT91_CHIPSELECT_1, size);
 	if (cpu_is_at91sam9g10())
diff --git a/arch/arm/mach-at91/at91sam9261_lowlevel_init.c b/arch/arm/mach-at91/at91sam9261_lowlevel_init.c
index 35d56b6..363193c 100644
--- a/arch/arm/mach-at91/at91sam9261_lowlevel_init.c
+++ b/arch/arm/mach-at91/at91sam9261_lowlevel_init.c
@@ -28,12 +28,13 @@ void __bare_init at91sam9261_lowlevel_init(void)
 	struct at91sam926x_lowlevel_cfg cfg;
 
 	cfg.pio = IOMEM(AT91SAM9261_BASE_PIOC);
+	cfg.sdramc = IOMEM(AT91SAM9261_BASE_SDRAMC);
 	cfg.ebi_pio_is_peripha = false;
 	cfg.matrix_csa = AT91_MATRIX_EBICSA;
 
 	at91sam926x_lowlevel_init(&cfg);
 
-	barebox_arm_entry(AT91_CHIPSELECT_1, at91_get_sdram_size(), 0);
+	barebox_arm_entry(AT91_CHIPSELECT_1, at91_get_sdram_size(cfg.sdramc), 0);
 }
 
 void __naked __bare_init reset(void)
diff --git a/arch/arm/mach-at91/at91sam9263_devices.c b/arch/arm/mach-at91/at91sam9263_devices.c
index 528a07b..f47a5fe 100644
--- a/arch/arm/mach-at91/at91sam9263_devices.c
+++ b/arch/arm/mach-at91/at91sam9263_devices.c
@@ -26,7 +26,7 @@
 void at91_add_device_sdram(u32 size)
 {
 	if (!size)
-		size = at91_get_sdram_size();
+		size = at91sam9263_get_sdram_size(0);
 
 	arm_add_mem_device("ram0", AT91_CHIPSELECT_1, size);
 	add_mem_device("sram0", AT91SAM9263_SRAM0_BASE,
diff --git a/arch/arm/mach-at91/at91sam9263_lowlevel_init.c b/arch/arm/mach-at91/at91sam9263_lowlevel_init.c
index 07a3ac9..d17c5c8 100644
--- a/arch/arm/mach-at91/at91sam9263_lowlevel_init.c
+++ b/arch/arm/mach-at91/at91sam9263_lowlevel_init.c
@@ -28,12 +28,13 @@ void __bare_init at91sam9263_lowlevel_init(void)
 	struct at91sam926x_lowlevel_cfg cfg;
 
 	cfg.pio = IOMEM(AT91SAM9263_BASE_PIOD);
+	cfg.sdramc = IOMEM(AT91SAM9263_BASE_SDRAMC0);
 	cfg.ebi_pio_is_peripha = true;
 	cfg.matrix_csa = AT91_MATRIX_EBI0CSA;
 
 	at91sam926x_lowlevel_init(&cfg);
 
-	barebox_arm_entry(AT91_CHIPSELECT_1, at91_get_sdram_size(), 0);
+	barebox_arm_entry(AT91_CHIPSELECT_1, at91_get_sdram_size(cfg.sdramc), 0);
 }
 
 void __naked __bare_init reset(void)
diff --git a/arch/arm/mach-at91/at91sam926x_lowlevel_init.c b/arch/arm/mach-at91/at91sam926x_lowlevel_init.c
index 1e3f939..985203a 100644
--- a/arch/arm/mach-at91/at91sam926x_lowlevel_init.c
+++ b/arch/arm/mach-at91/at91sam926x_lowlevel_init.c
@@ -49,12 +49,74 @@ static int inline running_in_sram(void)
 	return addr == 0;
 }
 
-void __bare_init at91sam926x_lowlevel_init(struct at91sam926x_lowlevel_cfg *cfg)
+#define at91_sdramc_read(field) \
+	__raw_readl(cfg->sdramc + field)
+
+#define at91_sdramc_write(field, value) \
+	__raw_writel(value, cfg->sdramc + field)
+
+void __bare_init at91sam926x_sdramc_init(struct at91sam926x_lowlevel_cfg *cfg)
 {
 	u32 r;
 	int i;
 	int in_sram = running_in_sram();
 
+	/*
+	 * SDRAMC Check if Refresh Timer Counter is already initialized
+	 */
+	r = at91_sdramc_read(AT91_SDRAMC_TR);
+	if (r && !in_sram)
+		return;
+
+	/* SDRAMC_MR : Normal Mode */
+	at91_sdramc_write(AT91_SDRAMC_MR, AT91_SDRAMC_MODE_NORMAL);
+
+	/* SDRAMC_TR - Refresh Timer register */
+	at91_sdramc_write(AT91_SDRAMC_TR, cfg->sdrc_tr1);
+
+	/* SDRAMC_CR - Configuration register*/
+	at91_sdramc_write(AT91_SDRAMC_CR, cfg->sdrc_cr);
+
+	/* Memory Device Type */
+	at91_sdramc_write(AT91_SDRAMC_MDR, cfg->sdrc_mdr);
+
+	/* SDRAMC_MR : Precharge All */
+	at91_sdramc_write(AT91_SDRAMC_MR, AT91_SDRAMC_MODE_PRECHARGE);
+
+	/* access SDRAM */
+	access_sdram();
+
+	/* SDRAMC_MR : refresh */
+	at91_sdramc_write(AT91_SDRAMC_MR, AT91_SDRAMC_MODE_REFRESH);
+
+	/* access SDRAM 8 times */
+	for (i = 0; i < 8; i++)
+		access_sdram();
+
+	/* SDRAMC_MR : Load Mode Register */
+	at91_sdramc_write(AT91_SDRAMC_MR, AT91_SDRAMC_MODE_LMR);
+
+	/* access SDRAM */
+	access_sdram();
+
+	/* SDRAMC_MR : Normal Mode */
+	at91_sdramc_write(AT91_SDRAMC_MR, AT91_SDRAMC_MODE_NORMAL);
+
+	/* access SDRAM */
+	access_sdram();
+
+	/* SDRAMC_TR : Refresh Timer Counter */
+	at91_sdramc_write(AT91_SDRAMC_TR, cfg->sdrc_tr2);
+
+	/* access SDRAM */
+	access_sdram();
+}
+
+void __bare_init at91sam926x_lowlevel_init(struct at91sam926x_lowlevel_cfg *cfg)
+{
+	u32 r;
+	int in_sram = running_in_sram();
+
 	at91sam926x_lowlevel_board_config(cfg);
 
 	__raw_writel(cfg->wdt_mr, AT91_BASE_WDT + AT91_WDT_MR);
@@ -118,56 +180,7 @@ void __bare_init at91sam926x_lowlevel_init(struct at91sam926x_lowlevel_cfg *cfg)
 	/*
 	 * Init SDRAM
 	 */
-
-	/*
-	 * SDRAMC Check if Refresh Timer Counter is already initialized
-	 */
-	r = at91_sys_read(AT91_SDRAMC_TR);
-	if (r && !in_sram)
-		return;
-
-	/* SDRAMC_MR : Normal Mode */
-	at91_sys_write(AT91_SDRAMC_MR, AT91_SDRAMC_MODE_NORMAL);
-
-	/* SDRAMC_TR - Refresh Timer register */
-	at91_sys_write(AT91_SDRAMC_TR, cfg->sdrc_tr1);
-
-	/* SDRAMC_CR - Configuration register*/
-	at91_sys_write(AT91_SDRAMC_CR, cfg->sdrc_cr);
-
-	/* Memory Device Type */
-	at91_sys_write(AT91_SDRAMC_MDR, cfg->sdrc_mdr);
-
-	/* SDRAMC_MR : Precharge All */
-	at91_sys_write(AT91_SDRAMC_MR, AT91_SDRAMC_MODE_PRECHARGE);
-
-	/* access SDRAM */
-	access_sdram();
-
-	/* SDRAMC_MR : refresh */
-	at91_sys_write(AT91_SDRAMC_MR, AT91_SDRAMC_MODE_REFRESH);
-
-	/* access SDRAM 8 times */
-	for (i = 0; i < 8; i++)
-		access_sdram();
-
-	/* SDRAMC_MR : Load Mode Register */
-	at91_sys_write(AT91_SDRAMC_MR, AT91_SDRAMC_MODE_LMR);
-
-	/* access SDRAM */
-	access_sdram();
-
-	/* SDRAMC_MR : Normal Mode */
-	at91_sys_write(AT91_SDRAMC_MR, AT91_SDRAMC_MODE_NORMAL);
-
-	/* access SDRAM */
-	access_sdram();
-
-	/* SDRAMC_TR : Refresh Timer Counter */
-	at91_sys_write(AT91_SDRAMC_TR, cfg->sdrc_tr2);
-
-	/* access SDRAM */
-	access_sdram();
+	at91sam926x_sdramc_init(cfg);
 
 	/* User reset enable*/
 	at91_sys_write(AT91_RSTC_MR, cfg->rstc_rmr);
diff --git a/arch/arm/mach-at91/at91sam9_reset.S b/arch/arm/mach-at91/at91sam9_reset.S
index 9a0bc0d..3a3e77a 100644
--- a/arch/arm/mach-at91/at91sam9_reset.S
+++ b/arch/arm/mach-at91/at91sam9_reset.S
@@ -31,8 +31,8 @@ reset_cpu:		ldr	r0, .at91_va_base_sdramc			@ preload constants
 
 			.balign	32						@ align to cache line
 
-			str	r2, [r0, #AT91_SDRAMC_TR - AT91_SDRAMC]		@ disable SDRAM access
-			str	r3, [r0, #AT91_SDRAMC_LPR - AT91_SDRAMC]	@ power down SDRAM
+			str	r2, [r0, #AT91_SDRAMC_TR]			@ disable SDRAM access
+			str	r3, [r0, #AT91_SDRAMC_LPR]			@ power down SDRAM
 			str	r4, [r1]					@ reset processor
 
 			b	.
diff --git a/arch/arm/mach-at91/include/mach/at91_lowlevel_init.h b/arch/arm/mach-at91/include/mach/at91_lowlevel_init.h
index 4f4887e..6b37e49 100644
--- a/arch/arm/mach-at91/include/mach/at91_lowlevel_init.h
+++ b/arch/arm/mach-at91/include/mach/at91_lowlevel_init.h
@@ -10,6 +10,7 @@
 struct at91sam926x_lowlevel_cfg {
 	/* SoC specific */
 	void __iomem *pio;
+	void __iomem *sdramc;
 	u32 ebi_pio_is_peripha;
 	u32 matrix_csa;
 
diff --git a/arch/arm/mach-at91/include/mach/at91sam9_sdramc.h b/arch/arm/mach-at91/include/mach/at91sam9_sdramc.h
index 971a772..91efa67 100644
--- a/arch/arm/mach-at91/include/mach/at91sam9_sdramc.h
+++ b/arch/arm/mach-at91/include/mach/at91sam9_sdramc.h
@@ -18,7 +18,7 @@
 #define AT91SAM9_SDRAMC_H
 
 /* SDRAM Controller (SDRAMC) registers */
-#define AT91_SDRAMC_MR		(AT91_SDRAMC + 0x00)	/* SDRAM Controller Mode Register */
+#define AT91_SDRAMC_MR		0x00	/* SDRAM Controller Mode Register */
 #define		AT91_SDRAMC_MODE	(0xf << 0)		/* Command Mode */
 #define			AT91_SDRAMC_MODE_NORMAL		0
 #define			AT91_SDRAMC_MODE_NOP		1
@@ -28,10 +28,10 @@
 #define			AT91_SDRAMC_MODE_EXT_LMR	5
 #define			AT91_SDRAMC_MODE_DEEP		6
 
-#define AT91_SDRAMC_TR		(AT91_SDRAMC + 0x04)	/* SDRAM Controller Refresh Timer Register */
+#define AT91_SDRAMC_TR		0x04	/* SDRAM Controller Refresh Timer Register */
 #define		AT91_SDRAMC_COUNT	(0xfff << 0)		/* Refresh Timer Counter */
 
-#define AT91_SDRAMC_CR		(AT91_SDRAMC + 0x08)	/* SDRAM Controller Configuration Register */
+#define AT91_SDRAMC_CR		0x08	/* SDRAM Controller Configuration Register */
 #define		AT91_SDRAMC_NC		(3 << 0)		/* Number of Column Bits */
 #define			AT91_SDRAMC_NC_8	(0 << 0)
 #define			AT91_SDRAMC_NC_9	(1 << 0)
@@ -58,7 +58,7 @@
 #define		AT91_SDRAMC_TRAS	(0xf << 24)		/* Active to Precharge Delay */
 #define		AT91_SDRAMC_TXSR	(0xf << 28)		/* Exit Self Refresh to Active Delay */
 
-#define AT91_SDRAMC_LPR		(AT91_SDRAMC + 0x10)	/* SDRAM Controller Low Power Register */
+#define AT91_SDRAMC_LPR		0x10	/* SDRAM Controller Low Power Register */
 #define		AT91_SDRAMC_LPCB		(3 << 0)	/* Low-power Configurations */
 #define			AT91_SDRAMC_LPCB_DISABLE		0
 #define			AT91_SDRAMC_LPCB_SELF_REFRESH		1
@@ -72,25 +72,25 @@
 #define			AT91_SDRAMC_TIMEOUT_64_CLK_CYCLES	(1 << 12)
 #define			AT91_SDRAMC_TIMEOUT_128_CLK_CYCLES	(2 << 12)
 
-#define AT91_SDRAMC_IER		(AT91_SDRAMC + 0x14)	/* SDRAM Controller Interrupt Enable Register */
-#define AT91_SDRAMC_IDR		(AT91_SDRAMC + 0x18)	/* SDRAM Controller Interrupt Disable Register */
-#define AT91_SDRAMC_IMR		(AT91_SDRAMC + 0x1C)	/* SDRAM Controller Interrupt Mask Register */
-#define AT91_SDRAMC_ISR		(AT91_SDRAMC + 0x20)	/* SDRAM Controller Interrupt Status Register */
+#define AT91_SDRAMC_IER		0x14	/* SDRAM Controller Interrupt Enable Register */
+#define AT91_SDRAMC_IDR		0x18	/* SDRAM Controller Interrupt Disable Register */
+#define AT91_SDRAMC_IMR		0x1C	/* SDRAM Controller Interrupt Mask Register */
+#define AT91_SDRAMC_ISR		0x20	/* SDRAM Controller Interrupt Status Register */
 #define		AT91_SDRAMC_RES		(1 << 0)		/* Refresh Error Status */
 
-#define AT91_SDRAMC_MDR		(AT91_SDRAMC + 0x24)	/* SDRAM Memory Device Register */
+#define AT91_SDRAMC_MDR		0x24	/* SDRAM Memory Device Register */
 #define		AT91_SDRAMC_MD		(3 << 0)		/* Memory Device Type */
 #define			AT91_SDRAMC_MD_SDRAM		0
 #define			AT91_SDRAMC_MD_LOW_POWER_SDRAM	1
 
 #ifndef __ASSEMBLY__
 #include <mach/io.h>
-static inline u32 at91_get_sdram_size(void)
+static inline u32 at91_get_sdram_size(void *base)
 {
 	u32 val;
 	u32 size;
 
-	val = at91_sys_read(AT91_SDRAMC_CR);
+	val = __raw_readl(base + AT91_SDRAMC_CR);
 
 	/* Formula:
 	 * size = bank << (col + row + 1);
@@ -111,10 +111,92 @@ static inline u32 at91_get_sdram_size(void)
 	return size;
 }
 
-static inline bool at91_is_low_power_sdram(void)
+
+static inline bool at91_is_low_power_sdram(void *base)
+{
+	return __raw_readl(base + AT91_SDRAMC_MDR) & AT91_SDRAMC_MD_LOW_POWER_SDRAM;
+}
+
+#ifdef CONFIG_SOC_AT91SAM9260
+static inline u32 at91sam9260_get_sdram_size(void)
+{
+	return at91_get_sdram_size(IOMEM(AT91SAM9260_BASE_SDRAMC));
+}
+
+static inline bool at91sam9260_is_low_power_sdram(void)
+{
+	return at91_is_low_power_sdram(IOMEM(AT91SAM9260_BASE_SDRAMC));
+}
+#else
+static inline u32 at91sam9260_get_sdram_size(void)
+{
+	return 0;
+}
+
+static inline bool at91sam9260_is_low_power_sdram(void)
+{
+	return false;
+}
+#endif
+
+#ifdef CONFIG_SOC_AT91SAM9261
+static inline u32 at91sam9261_get_sdram_size(void)
+{
+	return at91_get_sdram_size(IOMEM(AT91SAM9261_BASE_SDRAMC));
+}
+
+static inline bool at91sam9261_is_low_power_sdram(void)
 {
-	return at91_sys_read(AT91_SDRAMC_MDR) & AT91_SDRAMC_MD_LOW_POWER_SDRAM;
+	return at91_is_low_power_sdram(IOMEM(AT91SAM9261_BASE_SDRAMC));
 }
+#else
+static inline u32 at91sam9261_get_sdram_size(void)
+{
+	return 0;
+}
+
+static inline bool at91sam9261_is_low_power_sdram(void)
+{
+	return false;
+}
+#endif
+
+#ifdef CONFIG_SOC_AT91SAM9263
+static inline u32 at91sam9263_get_sdram_size(int bank)
+{
+	switch (bank) {
+	case 0:
+		return at91_get_sdram_size(IOMEM(AT91SAM9263_BASE_SDRAMC0));
+	case 1:
+		return at91_get_sdram_size(IOMEM(AT91SAM9263_BASE_SDRAMC1));
+	default:
+		return 0;
+	}
+}
+
+static inline bool at91sam9263_is_low_power_sdram(int bank)
+{
+	switch (bank) {
+	case 0:
+		return at91_is_low_power_sdram(IOMEM(AT91SAM9263_BASE_SDRAMC0));
+	case 1:
+		return at91_is_low_power_sdram(IOMEM(AT91SAM9263_BASE_SDRAMC1));
+	default:
+		return false;
+	}
+}
+#else
+static inline u32 at91sam9263_get_sdram_size(int bank)
+{
+	return 0;
+}
+
+static inline bool at91sam9263_is_low_power_sdram(void)
+{
+	return false;
+}
+#endif
+
 #endif
 
 #endif
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
