Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gJh9z-0000P2-I0
 for barebox@lists.infradead.org; Mon, 05 Nov 2018 15:51:34 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  5 Nov 2018 16:51:11 +0100
Message-Id: <20181105155113.3434-21-s.hauer@pengutronix.de>
In-Reply-To: <20181105155113.3434-1-s.hauer@pengutronix.de>
References: <20181105155113.3434-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 20/22] ARM: at91: make at91sam926x_board_init board specific
To: Barebox List <barebox@lists.infradead.org>

The base addresses used in at91sam926x_board_init() differ with each
SoC. The board knows which SoC we are running on though, so create and
use SoC specific variants of these functions which pass the appropriate
base addresses to at91sam926x_board_init().

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/at91sam9261ek/lowlevel_init.c |  2 +-
 arch/arm/boards/at91sam9263ek/lowlevel_init.c |  2 +-
 arch/arm/boards/pm9261/lowlevel_init.c        |  2 +-
 arch/arm/boards/pm9263/lowlevel_init.c        |  2 +-
 .../arm/boards/tny-a926x/tny_a9263_lowlevel.c |  2 +-
 .../arm/boards/usb-a926x/usb_a9263_lowlevel.c |  2 +-
 .../include/mach/at91sam926x_board_init.h     | 35 ++++++++++++++++---
 .../arm/mach-at91/include/mach/at91sam9_smc.h |  6 ----
 8 files changed, 36 insertions(+), 17 deletions(-)

diff --git a/arch/arm/boards/at91sam9261ek/lowlevel_init.c b/arch/arm/boards/at91sam9261ek/lowlevel_init.c
index 2ade3191d4..33aa9430dc 100644
--- a/arch/arm/boards/at91sam9261ek/lowlevel_init.c
+++ b/arch/arm/boards/at91sam9261ek/lowlevel_init.c
@@ -111,7 +111,7 @@ static void __bare_init at91sam9261ek_init(void)
 	cfg.matrix_csa = IOMEM(AT91SAM9261_BASE_MATRIX + AT91SAM9261_MATRIX_EBICSA);
 
 	at91sam9261ek_board_config(&cfg);
-	at91sam926x_board_init(&cfg);
+	at91sam9261_board_init(&cfg);
 
 	barebox_arm_entry(AT91_CHIPSELECT_1, at91_get_sdram_size(cfg.sdramc),
 	                  NULL);
diff --git a/arch/arm/boards/at91sam9263ek/lowlevel_init.c b/arch/arm/boards/at91sam9263ek/lowlevel_init.c
index af4b62c7a4..f5d68cd7e8 100644
--- a/arch/arm/boards/at91sam9263ek/lowlevel_init.c
+++ b/arch/arm/boards/at91sam9263ek/lowlevel_init.c
@@ -109,7 +109,7 @@ static void __bare_init at91sam9263ek_init(void *fdt)
 	cfg.matrix_csa = IOMEM(AT91SAM9263_BASE_MATRIX + AT91SAM9263_MATRIX_EBI0CSA);
 
 	at91sam9263ek_board_config(&cfg);
-	at91sam926x_board_init(&cfg);
+	at91sam9263_board_init(&cfg);
 
 	barebox_arm_entry(AT91_CHIPSELECT_1, at91_get_sdram_size(cfg.sdramc),
 			  fdt);
diff --git a/arch/arm/boards/pm9261/lowlevel_init.c b/arch/arm/boards/pm9261/lowlevel_init.c
index 5464fda90c..0ab34b0db6 100644
--- a/arch/arm/boards/pm9261/lowlevel_init.c
+++ b/arch/arm/boards/pm9261/lowlevel_init.c
@@ -105,7 +105,7 @@ static void __bare_init pm9261_init(void)
 	cfg.matrix_csa = IOMEM(AT91SAM9261_BASE_MATRIX + AT91SAM9261_MATRIX_EBICSA);
 
 	pm9261_board_config(&cfg);
-	at91sam926x_board_init(&cfg);
+	at91sam9261_board_init(&cfg);
 
 	barebox_arm_entry(AT91_CHIPSELECT_1, at91_get_sdram_size(cfg.sdramc),
 	                  NULL);
diff --git a/arch/arm/boards/pm9263/lowlevel_init.c b/arch/arm/boards/pm9263/lowlevel_init.c
index bcbcf7d6ab..32850b2981 100644
--- a/arch/arm/boards/pm9263/lowlevel_init.c
+++ b/arch/arm/boards/pm9263/lowlevel_init.c
@@ -126,7 +126,7 @@ static void __bare_init pm9263_board_init(void)
 	cfg.matrix_csa = IOMEM(AT91SAM9263_BASE_MATRIX + AT91SAM9263_MATRIX_EBI0CSA);
 
 	pm9263_board_config(&cfg);
-	at91sam926x_board_init(&cfg);
+	at91sam9263_board_init(&cfg);
 
 	barebox_arm_entry(AT91_CHIPSELECT_1, at91_get_sdram_size(cfg.sdramc),
 	                  NULL);
diff --git a/arch/arm/boards/tny-a926x/tny_a9263_lowlevel.c b/arch/arm/boards/tny-a926x/tny_a9263_lowlevel.c
index b7630d4d6c..8566d27a0a 100644
--- a/arch/arm/boards/tny-a926x/tny_a9263_lowlevel.c
+++ b/arch/arm/boards/tny-a926x/tny_a9263_lowlevel.c
@@ -111,7 +111,7 @@ static void __bare_init tny_a9263_init(void)
 
         tny_a9263_board_config(&cfg);
 
-	at91sam926x_board_init(&cfg);
+	at91sam9263_board_init(&cfg);
 
 	barebox_arm_entry(AT91_CHIPSELECT_1,
 			  at91_get_sdram_size(IOMEM(AT91SAM9263_BASE_SDRAMC0)),
diff --git a/arch/arm/boards/usb-a926x/usb_a9263_lowlevel.c b/arch/arm/boards/usb-a926x/usb_a9263_lowlevel.c
index 6a3e7ca365..a7dd2b2ada 100644
--- a/arch/arm/boards/usb-a926x/usb_a9263_lowlevel.c
+++ b/arch/arm/boards/usb-a926x/usb_a9263_lowlevel.c
@@ -116,7 +116,7 @@ static void __bare_init usb_a9263_init(void)
 	cfg.matrix_csa = IOMEM(AT91SAM9263_BASE_MATRIX + AT91SAM9263_MATRIX_EBI0CSA);
 
 	usb_a9263_board_config(&cfg);
-	at91sam926x_board_init(&cfg);
+	at91sam9263_board_init(&cfg);
 
 	barebox_arm_entry(AT91_CHIPSELECT_1, at91_get_sdram_size(cfg.sdramc),
 	                  NULL);
diff --git a/arch/arm/mach-at91/include/mach/at91sam926x_board_init.h b/arch/arm/mach-at91/include/mach/at91sam926x_board_init.h
index 36fb84b63c..cbb08b9c7e 100644
--- a/arch/arm/mach-at91/include/mach/at91sam926x_board_init.h
+++ b/arch/arm/mach-at91/include/mach/at91sam926x_board_init.h
@@ -120,7 +120,8 @@ static void __always_inline at91sam926x_sdramc_init(struct at91sam926x_board_cfg
 	access_sdram();
 }
 
-static void __always_inline at91sam926x_board_init(struct at91sam926x_board_cfg *cfg)
+static void __always_inline at91sam926x_board_init(void __iomem *smcbase,
+						   struct at91sam926x_board_cfg *cfg)
 {
 	u32 r;
 	void __iomem *pmc = IOMEM(AT91SAM926X_BASE_PMC);
@@ -139,10 +140,10 @@ static void __always_inline at91sam926x_board_init(struct at91sam926x_board_cfg
 	writel(cfg->ebi_csa, cfg->matrix_csa);
 
 	/* flash */
-	at91_smc_write(cfg->smc_cs, AT91_SAM9_SMC_MODE, cfg->smc_mode);
-	at91_smc_write(cfg->smc_cs, AT91_SMC_CYCLE, cfg->smc_cycle);
-	at91_smc_write(cfg->smc_cs, AT91_SMC_PULSE, cfg->smc_pulse);
-	at91_smc_write(cfg->smc_cs, AT91_SMC_SETUP, cfg->smc_setup);
+	writel(cfg->smc_mode, smcbase + cfg->smc_cs * 0x10 + AT91_SAM9_SMC_MODE);
+	writel(cfg->smc_cycle, smcbase + cfg->smc_cs * 0x10 + AT91_SMC_CYCLE);
+	writel(cfg->smc_pulse, smcbase + cfg->smc_cs * 0x10 + AT91_SMC_PULSE);
+	writel(cfg->smc_setup, smcbase + cfg->smc_cs * 0x10 + AT91_SMC_SETUP);
 
 	/* PMC Check if the PLL is already initialized */
 	r = readl(pmc + AT91_PMC_MCKR);
@@ -184,4 +185,28 @@ static void __always_inline at91sam926x_board_init(struct at91sam926x_board_cfg
 	writel(0xffffffff, pmc + AT91_PMC_PCER);
 }
 
+#if defined CONFIG_ARCH_AT91SAM9260
+#include <mach/at91sam9260.h>
+static void __always_inline at91sam9260_board_init(struct at91sam926x_board_cfg *cfg)
+{
+	at91sam926x_board_init(IOMEM(AT91SAM9260_BASE_SMC), cfg);
+}
+#endif
+
+#if defined CONFIG_ARCH_AT91SAM9261 || defined CONFIG_ARCH_AT91SAM9G10
+#include <mach/at91sam9261.h>
+static void __always_inline at91sam9261_board_init(struct at91sam926x_board_cfg *cfg)
+{
+	at91sam926x_board_init(IOMEM(AT91SAM9261_BASE_SMC), cfg);
+}
+#endif
+
+#if defined CONFIG_ARCH_AT91SAM9263
+#include <mach/at91sam9263.h>
+static void __always_inline at91sam9263_board_init(struct at91sam926x_board_cfg *cfg)
+{
+	at91sam926x_board_init(IOMEM(AT91SAM9263_BASE_SMC0), cfg);
+}
+#endif
+
 #endif /* __AT91SAM926X_BOARD_INIT_H__ */
diff --git a/arch/arm/mach-at91/include/mach/at91sam9_smc.h b/arch/arm/mach-at91/include/mach/at91sam9_smc.h
index d19cf82eca..0908f6df25 100644
--- a/arch/arm/mach-at91/include/mach/at91sam9_smc.h
+++ b/arch/arm/mach-at91/include/mach/at91sam9_smc.h
@@ -16,12 +16,6 @@
 #ifndef AT91SAM9_SMC_H
 #define AT91SAM9_SMC_H
 
-#define at91_smc_read(id, field) \
-	__raw_readl(AT91_BASE_SMC + ((id) * 0x10) + field)
-
-#define at91_smc_write(id, field, value) \
-	__raw_writel(value, AT91_BASE_SMC + ((id) * 0x10) + field)
-
 #ifndef __ASSEMBLY__
 struct sam9_smc_config {
 	/* Setup register */
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
