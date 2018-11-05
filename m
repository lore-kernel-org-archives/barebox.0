Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gJh9z-0000P0-Gn
 for barebox@lists.infradead.org; Mon, 05 Nov 2018 15:52:08 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  5 Nov 2018 16:51:01 +0100
Message-Id: <20181105155113.3434-11-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/22] ARM: at91: Add SoC namespace to matrix defines
To: Barebox List <barebox@lists.infradead.org>

Add SoC namespace to matrix define so we have one source less of
conflicting defines.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/at91sam9261ek/lowlevel_init.c |   4 +-
 arch/arm/boards/at91sam9263ek/lowlevel_init.c |   6 +-
 arch/arm/boards/at91sam9263ek/of_init.c       |   6 +-
 arch/arm/boards/at91sam9x5ek/init.c           |  16 +-
 arch/arm/boards/pm9261/lowlevel_init.c        |   4 +-
 arch/arm/boards/pm9263/lowlevel_init.c        |   6 +-
 .../arm/boards/tny-a926x/tny_a9263_lowlevel.c |   6 +-
 .../arm/boards/usb-a926x/usb_a9263_lowlevel.c |   6 +-
 arch/arm/mach-at91/at91sam9260_devices.c      |   5 +-
 arch/arm/mach-at91/at91sam9261_devices.c      |   5 +-
 arch/arm/mach-at91/at91sam9263_devices.c      |   5 +-
 arch/arm/mach-at91/at91sam9g45_devices.c      |   5 +-
 arch/arm/mach-at91/at91sam9n12_devices.c      |  12 +-
 arch/arm/mach-at91/at91sam9x5_devices.c       |   5 +-
 .../include/mach/at91sam9260_matrix.h         | 114 ++++----
 .../include/mach/at91sam9261_matrix.h         |  82 +++---
 .../include/mach/at91sam9263_matrix.h         | 208 +++++++--------
 .../include/mach/at91sam926x_board_init.h     |   4 +-
 .../include/mach/at91sam9g45_matrix.h         | 246 +++++++++---------
 .../include/mach/at91sam9n12_matrix.h         | 146 +++++------
 .../include/mach/at91sam9x5_matrix.h          | 228 ++++++++--------
 drivers/usb/gadget/at91_udc.c                 |  19 +-
 22 files changed, 575 insertions(+), 563 deletions(-)

diff --git a/arch/arm/boards/at91sam9261ek/lowlevel_init.c b/arch/arm/boards/at91sam9261ek/lowlevel_init.c
index c4e4957ca7..2ade3191d4 100644
--- a/arch/arm/boards/at91sam9261ek/lowlevel_init.c
+++ b/arch/arm/boards/at91sam9261ek/lowlevel_init.c
@@ -34,7 +34,7 @@ static void __bare_init at91sam9261ek_board_config(struct at91sam926x_board_cfg
 	cfg->ebi_pio_ppudr = 0xFFFF0000;
 	/* EBI0_CSA, CS1 SDRAM, CS3 NAND Flash, 3.3V memories */
 	cfg->ebi_csa =
-		AT91_MATRIX_DBPUC | AT91_MATRIX_CS1A_SDRAMC;
+		AT91SAM9261_MATRIX_DBPUC | AT91SAM9261_MATRIX_CS1A_SDRAMC;
 
 	cfg->smc_cs = 3;
 	cfg->smc_mode =
@@ -108,7 +108,7 @@ static void __bare_init at91sam9261ek_init(void)
 	cfg.pio = IOMEM(AT91SAM9261_BASE_PIOC);
 	cfg.sdramc = IOMEM(AT91SAM9261_BASE_SDRAMC);
 	cfg.ebi_pio_is_peripha = false;
-	cfg.matrix_csa = AT91_MATRIX_EBICSA;
+	cfg.matrix_csa = IOMEM(AT91SAM9261_BASE_MATRIX + AT91SAM9261_MATRIX_EBICSA);
 
 	at91sam9261ek_board_config(&cfg);
 	at91sam926x_board_init(&cfg);
diff --git a/arch/arm/boards/at91sam9263ek/lowlevel_init.c b/arch/arm/boards/at91sam9263ek/lowlevel_init.c
index 30c14089d1..af4b62c7a4 100644
--- a/arch/arm/boards/at91sam9263ek/lowlevel_init.c
+++ b/arch/arm/boards/at91sam9263ek/lowlevel_init.c
@@ -29,8 +29,8 @@ static void __bare_init at91sam9263ek_board_config(struct at91sam926x_board_cfg
 	cfg->ebi_pio_ppudr = 0xFFFF0000;
 	/* EBI0_CSA, CS1 SDRAM, CS3 NAND Flash, 3.3V memories */
 	cfg->ebi_csa =
-		AT91_MATRIX_EBI0_DBPUC | AT91_MATRIX_EBI0_VDDIOMSEL_3_3V |
-		AT91_MATRIX_EBI0_CS1A_SDRAMC;
+		AT91SAM9263_MATRIX_EBI0_DBPUC | AT91SAM9263_MATRIX_EBI0_VDDIOMSEL_3_3V |
+		AT91SAM9263_MATRIX_EBI0_CS1A_SDRAMC;
 
 	cfg->smc_cs = 0;
 	cfg->smc_mode =
@@ -106,7 +106,7 @@ static void __bare_init at91sam9263ek_init(void *fdt)
 	cfg.pio = IOMEM(AT91SAM9263_BASE_PIOD);
 	cfg.sdramc = IOMEM(AT91SAM9263_BASE_SDRAMC0);
 	cfg.ebi_pio_is_peripha = true;
-	cfg.matrix_csa = AT91_MATRIX_EBI0CSA;
+	cfg.matrix_csa = IOMEM(AT91SAM9263_BASE_MATRIX + AT91SAM9263_MATRIX_EBI0CSA);
 
 	at91sam9263ek_board_config(&cfg);
 	at91sam926x_board_init(&cfg);
diff --git a/arch/arm/boards/at91sam9263ek/of_init.c b/arch/arm/boards/at91sam9263ek/of_init.c
index b4d216fa3e..98af5adfc0 100644
--- a/arch/arm/boards/at91sam9263ek/of_init.c
+++ b/arch/arm/boards/at91sam9263ek/of_init.c
@@ -66,9 +66,9 @@ static int at91sam9263_smc_init(void)
 	else
 		ek_nand_smc_config.mode |= AT91_SMC_DBW_8;
 
-	csa = at91_sys_read(AT91_MATRIX_EBI0CSA);
-	csa |= AT91_MATRIX_EBI0_CS3A_SMC_SMARTMEDIA;
-	at91_sys_write(AT91_MATRIX_EBI0CSA, csa);
+	csa = readl(AT91SAM9263_BASE_MATRIX + AT91SAM9263_MATRIX_EBI0CSA);
+	csa |= AT91SAM9263_MATRIX_EBI0_CS3A_SMC_SMARTMEDIA;
+	writel(csa, AT91SAM9263_BASE_MATRIX + AT91SAM9263_MATRIX_EBI0CSA);
 
 	/* configure chip-select 3 (NAND) */
 	sam9_smc_configure(0, 3, &ek_nand_smc_config);
diff --git a/arch/arm/boards/at91sam9x5ek/init.c b/arch/arm/boards/at91sam9x5ek/init.c
index 649545e8a7..7ed6f58595 100644
--- a/arch/arm/boards/at91sam9x5ek/init.c
+++ b/arch/arm/boards/at91sam9x5ek/init.c
@@ -70,16 +70,16 @@ static int ek_add_device_smc(void)
 	if (!of_machine_is_compatible("atmel,at91sam9x5ek"))
 		return 0;
 
-	csa = at91_sys_read(AT91_MATRIX_EBICSA);
+	csa = readl(AT91SAM9X5_BASE_MATRIX + AT91SAM9X5_MATRIX_EBICSA);
 
 	/* Enable CS3 */
-	csa |= AT91_MATRIX_EBI_CS3A_SMC_NANDFLASH;
+	csa |= AT91SAM9X5_MATRIX_EBI_CS3A_SMC_NANDFLASH;
 	/* NAND flash on D16 */
-	csa |= AT91_MATRIX_NFD0_ON_D16;
+	csa |= AT91SAM9X5_MATRIX_NFD0_ON_D16;
 
 	/* Configure IO drive */
-	csa &= ~AT91_MATRIX_EBI_EBI_IOSR_NORMAL;
-	at91_sys_write(AT91_MATRIX_EBICSA, csa);
+	csa &= ~AT91SAM9X5_MATRIX_EBI_EBI_IOSR_NORMAL;
+	writel(csa, AT91SAM9X5_BASE_MATRIX + AT91SAM9X5_MATRIX_EBICSA);
 
 	add_generic_device("at91sam9-smc",
 			   DEVICE_ID_SINGLE, NULL,
@@ -96,9 +96,9 @@ static int ek_add_device_smc(void)
 	sam9_smc_configure(0, 3, &cm_nand_smc_config);
 
 	if (at91sam9x5ek_cm_is_vendor(VENDOR_COGENT)) {
-		csa = at91_sys_read(AT91_MATRIX_EBICSA);
-		csa |= AT91_MATRIX_EBI_VDDIOMSEL_1_8V;
-		at91_sys_write(AT91_MATRIX_EBICSA, csa);
+		csa = readl(AT91SAM9X5_BASE_MATRIX + AT91SAM9X5_MATRIX_EBICSA);
+		csa |= AT91SAM9X5_MATRIX_EBI_VDDIOMSEL_1_8V;
+		writel(csa, AT91SAM9X5_BASE_MATRIX + AT91SAM9X5_MATRIX_EBICSA);
 	}
 
 	return 0;
diff --git a/arch/arm/boards/pm9261/lowlevel_init.c b/arch/arm/boards/pm9261/lowlevel_init.c
index dbb58ee313..5464fda90c 100644
--- a/arch/arm/boards/pm9261/lowlevel_init.c
+++ b/arch/arm/boards/pm9261/lowlevel_init.c
@@ -28,7 +28,7 @@ static void __bare_init pm9261_board_config(struct at91sam926x_board_cfg *cfg)
 	cfg->ebi_pio_ppudr = 0xFFFF0000;
 	/* EBI0_CSA, CS1 SDRAM, CS3 NAND Flash, 3.3V memories */
 	cfg->ebi_csa =
-		AT91_MATRIX_DBPUC | AT91_MATRIX_CS1A_SDRAMC;
+		AT91SAM9261_MATRIX_DBPUC | AT91SAM9261_MATRIX_CS1A_SDRAMC;
 
 	cfg->smc_cs = 0;
 	cfg->smc_mode =
@@ -102,7 +102,7 @@ static void __bare_init pm9261_init(void)
 	cfg.pio = IOMEM(AT91SAM9261_BASE_PIOC);
 	cfg.sdramc = IOMEM(AT91SAM9261_BASE_SDRAMC);
 	cfg.ebi_pio_is_peripha = false;
-	cfg.matrix_csa = AT91_MATRIX_EBICSA;
+	cfg.matrix_csa = IOMEM(AT91SAM9261_BASE_MATRIX + AT91SAM9261_MATRIX_EBICSA);
 
 	pm9261_board_config(&cfg);
 	at91sam926x_board_init(&cfg);
diff --git a/arch/arm/boards/pm9263/lowlevel_init.c b/arch/arm/boards/pm9263/lowlevel_init.c
index 6849f0a5bf..bcbcf7d6ab 100644
--- a/arch/arm/boards/pm9263/lowlevel_init.c
+++ b/arch/arm/boards/pm9263/lowlevel_init.c
@@ -30,8 +30,8 @@ static void __bare_init pm9263_board_config(struct at91sam926x_board_cfg *cfg)
 	cfg->ebi_pio_ppudr = 0xFFFF0000;
 	/* EBI0_CSA, CS1 SDRAM, CS3 NAND Flash, 3.3V memories */
 	cfg->ebi_csa =
-		AT91_MATRIX_EBI0_DBPUC | AT91_MATRIX_EBI0_VDDIOMSEL_3_3V |
-		AT91_MATRIX_EBI0_CS1A_SDRAMC;
+		AT91SAM9263_MATRIX_EBI0_DBPUC | AT91SAM9263_MATRIX_EBI0_VDDIOMSEL_3_3V |
+		AT91SAM9263_MATRIX_EBI0_CS1A_SDRAMC;
 
 	cfg->smc_cs = 0;
 	cfg->smc_mode =
@@ -123,7 +123,7 @@ static void __bare_init pm9263_board_init(void)
 	cfg.pio = IOMEM(AT91SAM9263_BASE_PIOD);
 	cfg.sdramc = IOMEM(AT91SAM9263_BASE_SDRAMC0);
 	cfg.ebi_pio_is_peripha = true;
-	cfg.matrix_csa = AT91_MATRIX_EBI0CSA;
+	cfg.matrix_csa = IOMEM(AT91SAM9263_BASE_MATRIX + AT91SAM9263_MATRIX_EBI0CSA);
 
 	pm9263_board_config(&cfg);
 	at91sam926x_board_init(&cfg);
diff --git a/arch/arm/boards/tny-a926x/tny_a9263_lowlevel.c b/arch/arm/boards/tny-a926x/tny_a9263_lowlevel.c
index 4b57b74e13..b7630d4d6c 100644
--- a/arch/arm/boards/tny-a926x/tny_a9263_lowlevel.c
+++ b/arch/arm/boards/tny-a926x/tny_a9263_lowlevel.c
@@ -33,8 +33,8 @@ static void __bare_init tny_a9263_board_config(struct at91sam926x_board_cfg *cfg
 	cfg->ebi_pio_ppudr = 0xFFFF0000;
 	/* EBI0_CSA, CS1 SDRAM, CS3 NAND Flash, 3.3V memories */
 	cfg->ebi_csa =
-		AT91_MATRIX_EBI0_DBPUC | AT91_MATRIX_EBI0_VDDIOMSEL_3_3V |
-		AT91_MATRIX_EBI0_CS1A_SDRAMC;
+		AT91SAM9263_MATRIX_EBI0_DBPUC | AT91SAM9263_MATRIX_EBI0_VDDIOMSEL_3_3V |
+		AT91SAM9263_MATRIX_EBI0_CS1A_SDRAMC;
 
 	cfg->smc_cs = 3;
 	cfg->smc_mode =
@@ -107,7 +107,7 @@ static void __bare_init tny_a9263_init(void)
 	cfg.pio = IOMEM(AT91SAM9263_BASE_PIOD);
 	cfg.sdramc = IOMEM(AT91SAM9263_BASE_SDRAMC0);
 	cfg.ebi_pio_is_peripha = true;
-	cfg.matrix_csa = AT91_MATRIX_EBI0CSA;
+	cfg.matrix_csa = IOMEM(AT91SAM9263_BASE_MATRIX + AT91SAM9263_MATRIX_EBI0CSA);
 
         tny_a9263_board_config(&cfg);
 
diff --git a/arch/arm/boards/usb-a926x/usb_a9263_lowlevel.c b/arch/arm/boards/usb-a926x/usb_a9263_lowlevel.c
index 066452b956..6a3e7ca365 100644
--- a/arch/arm/boards/usb-a926x/usb_a9263_lowlevel.c
+++ b/arch/arm/boards/usb-a926x/usb_a9263_lowlevel.c
@@ -35,8 +35,8 @@ static void __bare_init usb_a9263_board_config(struct at91sam926x_board_cfg *cfg
 	cfg->ebi_pio_ppudr = 0xFFFF0000;
 	/* EBI0_CSA, CS1 SDRAM, CS3 NAND Flash, 3.3V memories */
 	cfg->ebi_csa =
-		AT91_MATRIX_EBI0_DBPUC | AT91_MATRIX_EBI0_VDDIOMSEL_3_3V |
-		AT91_MATRIX_EBI0_CS1A_SDRAMC;
+		AT91SAM9263_MATRIX_EBI0_DBPUC | AT91SAM9263_MATRIX_EBI0_VDDIOMSEL_3_3V |
+		AT91SAM9263_MATRIX_EBI0_CS1A_SDRAMC;
 
 	cfg->smc_cs = 3;
 	cfg->smc_mode =
@@ -113,7 +113,7 @@ static void __bare_init usb_a9263_init(void)
 	cfg.pio = IOMEM(AT91SAM9263_BASE_PIOD);
 	cfg.sdramc = IOMEM(AT91SAM9263_BASE_SDRAMC0);
 	cfg.ebi_pio_is_peripha = true;
-	cfg.matrix_csa = AT91_MATRIX_EBI0CSA;
+	cfg.matrix_csa = IOMEM(AT91SAM9263_BASE_MATRIX + AT91SAM9263_MATRIX_EBI0CSA);
 
 	usb_a9263_board_config(&cfg);
 	at91sam926x_board_init(&cfg);
diff --git a/arch/arm/mach-at91/at91sam9260_devices.c b/arch/arm/mach-at91/at91sam9260_devices.c
index 1cb8983514..c5323e2cb2 100644
--- a/arch/arm/mach-at91/at91sam9260_devices.c
+++ b/arch/arm/mach-at91/at91sam9260_devices.c
@@ -145,8 +145,9 @@ void at91_add_device_nand(struct atmel_nand_data *data)
 	if (!data)
 		return;
 
-	csa = at91_sys_read(AT91_MATRIX_EBICSA);
-	at91_sys_write(AT91_MATRIX_EBICSA, csa | AT91_MATRIX_CS3A_SMC_SMARTMEDIA);
+	csa = readl(AT91SAM9260_BASE_MATRIX + AT91SAM9260_MATRIX_EBICSA);
+	csa |= AT91SAM9260_MATRIX_CS3A_SMC_SMARTMEDIA;
+	writel(csa, AT91SAM9260_BASE_MATRIX + AT91SAM9260_MATRIX_EBICSA);
 
 	/* enable pin */
 	if (gpio_is_valid(data->enable_pin))
diff --git a/arch/arm/mach-at91/at91sam9261_devices.c b/arch/arm/mach-at91/at91sam9261_devices.c
index 6be390937d..9b7703ee97 100644
--- a/arch/arm/mach-at91/at91sam9261_devices.c
+++ b/arch/arm/mach-at91/at91sam9261_devices.c
@@ -94,8 +94,9 @@ void at91_add_device_nand(struct atmel_nand_data *data)
 	if (!data)
 		return;
 
-	csa = at91_sys_read(AT91_MATRIX_EBICSA);
-	at91_sys_write(AT91_MATRIX_EBICSA, csa | AT91_MATRIX_CS3A_SMC_SMARTMEDIA);
+	csa = readl(AT91SAM9261_BASE_MATRIX + AT91SAM9261_MATRIX_EBICSA);
+	csa |= AT91SAM9261_MATRIX_CS3A_SMC_SMARTMEDIA;
+	writel(csa, AT91SAM9261_BASE_MATRIX + AT91SAM9261_MATRIX_EBICSA);
 
 	/* enable pin */
 	if (gpio_is_valid(data->enable_pin))
diff --git a/arch/arm/mach-at91/at91sam9263_devices.c b/arch/arm/mach-at91/at91sam9263_devices.c
index 6302684b2d..ab3968eae2 100644
--- a/arch/arm/mach-at91/at91sam9263_devices.c
+++ b/arch/arm/mach-at91/at91sam9263_devices.c
@@ -139,8 +139,9 @@ void at91_add_device_nand(struct atmel_nand_data *data)
 	if (!data)
 		return;
 
-	csa = at91_sys_read(AT91_MATRIX_EBI0CSA);
-	at91_sys_write(AT91_MATRIX_EBI0CSA, csa | AT91_MATRIX_EBI0_CS3A_SMC_SMARTMEDIA);
+	csa = readl(AT91SAM9263_BASE_MATRIX + AT91SAM9263_MATRIX_EBI0CSA);
+	csa |= AT91SAM9263_MATRIX_EBI0_CS3A_SMC_SMARTMEDIA;
+	writel(csa, AT91SAM9263_BASE_MATRIX + AT91SAM9263_MATRIX_EBI0CSA);
 
 	/* enable pin */
 	if (gpio_is_valid(data->enable_pin))
diff --git a/arch/arm/mach-at91/at91sam9g45_devices.c b/arch/arm/mach-at91/at91sam9g45_devices.c
index 67ca3590c3..b44273a0de 100644
--- a/arch/arm/mach-at91/at91sam9g45_devices.c
+++ b/arch/arm/mach-at91/at91sam9g45_devices.c
@@ -141,8 +141,9 @@ void at91_add_device_nand(struct atmel_nand_data *data)
 	if (!data)
 		return;
 
-	csa = at91_sys_read(AT91_MATRIX_EBICSA);
-	at91_sys_write(AT91_MATRIX_EBICSA, csa | AT91_MATRIX_EBI_CS3A_SMC_SMARTMEDIA);
+	csa = readl(AT91SAM9G45_BASE_MATRIX + AT91SAM9G45_MATRIX_EBICSA);
+	csa |= AT91SAM9G45_MATRIX_EBI_CS3A_SMC_SMARTMEDIA;
+	writel(csa, AT91SAM9G45_BASE_MATRIX + AT91SAM9G45_MATRIX_EBICSA);
 
 	/* enable pin */
 	if (gpio_is_valid(data->enable_pin))
diff --git a/arch/arm/mach-at91/at91sam9n12_devices.c b/arch/arm/mach-at91/at91sam9n12_devices.c
index 84c871c6e8..e38fc77363 100644
--- a/arch/arm/mach-at91/at91sam9n12_devices.c
+++ b/arch/arm/mach-at91/at91sam9n12_devices.c
@@ -158,19 +158,19 @@ void __init at91_add_device_nand(struct atmel_nand_data *data)
 
 	data->pmecc_lookup_table_offset = 0x8000;
 
-	csa = at91_sys_read(AT91_MATRIX_EBICSA);
+	csa = readl(AT91SAM9N12_BASE_MATRIX + AT91SAM9N12_MATRIX_EBICSA);
 
 	/* Assign CS3 to NAND/SmartMedia Interface */
-	csa |= AT91_MATRIX_EBI_CS3A_SMC_NANDFLASH;
+	csa |= AT91SAM9N12_MATRIX_EBI_CS3A_SMC_NANDFLASH;
 	/* Configure databus */
 	if (!data->bus_on_d0)
-		csa |= AT91_MATRIX_NFD0_ON_D16;
+		csa |= AT91SAM9N12_MATRIX_NFD0_ON_D16;
 	else
-		csa &= ~AT91_MATRIX_NFD0_ON_D16;
+		csa &= ~AT91SAM9N12_MATRIX_NFD0_ON_D16;
 	/* Configure IO drive */
-	csa |= AT91_MATRIX_EBI_HIGH_DRIVE;
+	csa |= AT91SAM9N12_MATRIX_EBI_HIGH_DRIVE;
 
-	at91_sys_write(AT91_MATRIX_EBICSA, csa);
+	writel(csa, AT91SAM9N12_BASE_MATRIX + AT91SAM9N12_MATRIX_EBICSA);
 
 	/* enable pin */
 	if (gpio_is_valid(data->enable_pin))
diff --git a/arch/arm/mach-at91/at91sam9x5_devices.c b/arch/arm/mach-at91/at91sam9x5_devices.c
index d7ddda47c6..e21bd598c9 100644
--- a/arch/arm/mach-at91/at91sam9x5_devices.c
+++ b/arch/arm/mach-at91/at91sam9x5_devices.c
@@ -248,8 +248,9 @@ void __init at91_add_device_nand(struct atmel_nand_data *data)
 	if (!data)
 		return;
 
-	csa = at91_sys_read(AT91_MATRIX_EBICSA);
-	at91_sys_write(AT91_MATRIX_EBICSA, csa | AT91_MATRIX_EBI_CS3A_SMC_NANDFLASH);
+	csa = readl(AT91SAM9X5_BASE_MATRIX + AT91SAM9X5_MATRIX_EBICSA);
+	csa |= AT91SAM9X5_MATRIX_EBI_CS3A_SMC_NANDFLASH;
+	writel(csa, AT91SAM9X5_BASE_MATRIX + AT91SAM9X5_MATRIX_EBICSA);
 
 	data->pmecc_lookup_table_offset = 0x8000;
 
diff --git a/arch/arm/mach-at91/include/mach/at91sam9260_matrix.h b/arch/arm/mach-at91/include/mach/at91sam9260_matrix.h
index 020f02ed92..792afa39b7 100644
--- a/arch/arm/mach-at91/include/mach/at91sam9260_matrix.h
+++ b/arch/arm/mach-at91/include/mach/at91sam9260_matrix.h
@@ -15,66 +15,66 @@
 #ifndef AT91SAM9260_MATRIX_H
 #define AT91SAM9260_MATRIX_H
 
-#define AT91_MATRIX_MCFG0	(AT91_MATRIX + 0x00)	/* Master Configuration Register 0 */
-#define AT91_MATRIX_MCFG1	(AT91_MATRIX + 0x04)	/* Master Configuration Register 1 */
-#define AT91_MATRIX_MCFG2	(AT91_MATRIX + 0x08)	/* Master Configuration Register 2 */
-#define AT91_MATRIX_MCFG3	(AT91_MATRIX + 0x0C)	/* Master Configuration Register 3 */
-#define AT91_MATRIX_MCFG4	(AT91_MATRIX + 0x10)	/* Master Configuration Register 4 */
-#define AT91_MATRIX_MCFG5	(AT91_MATRIX + 0x14)	/* Master Configuration Register 5 */
-#define		AT91_MATRIX_ULBT		(7 << 0)	/* Undefined Length Burst Type */
-#define			AT91_MATRIX_ULBT_INFINITE	(0 << 0)
-#define			AT91_MATRIX_ULBT_SINGLE		(1 << 0)
-#define			AT91_MATRIX_ULBT_FOUR		(2 << 0)
-#define			AT91_MATRIX_ULBT_EIGHT		(3 << 0)
-#define			AT91_MATRIX_ULBT_SIXTEEN	(4 << 0)
+#define AT91SAM9260_MATRIX_MCFG0	(0x00)	/* Master Configuration Register 0 */
+#define AT91SAM9260_MATRIX_MCFG1	(0x04)	/* Master Configuration Register 1 */
+#define AT91SAM9260_MATRIX_MCFG2	(0x08)	/* Master Configuration Register 2 */
+#define AT91SAM9260_MATRIX_MCFG3	(0x0C)	/* Master Configuration Register 3 */
+#define AT91SAM9260_MATRIX_MCFG4	(0x10)	/* Master Configuration Register 4 */
+#define AT91SAM9260_MATRIX_MCFG5	(0x14)	/* Master Configuration Register 5 */
+#define		AT91SAM9260_MATRIX_ULBT		(7 << 0)	/* Undefined Length Burst Type */
+#define			AT91SAM9260_MATRIX_ULBT_INFINITE	(0 << 0)
+#define			AT91SAM9260_MATRIX_ULBT_SINGLE		(1 << 0)
+#define			AT91SAM9260_MATRIX_ULBT_FOUR		(2 << 0)
+#define			AT91SAM9260_MATRIX_ULBT_EIGHT		(3 << 0)
+#define			AT91SAM9260_MATRIX_ULBT_SIXTEEN	(4 << 0)
 
-#define AT91_MATRIX_SCFG0	(AT91_MATRIX + 0x40)	/* Slave Configuration Register 0 */
-#define AT91_MATRIX_SCFG1	(AT91_MATRIX + 0x44)	/* Slave Configuration Register 1 */
-#define AT91_MATRIX_SCFG2	(AT91_MATRIX + 0x48)	/* Slave Configuration Register 2 */
-#define AT91_MATRIX_SCFG3	(AT91_MATRIX + 0x4C)	/* Slave Configuration Register 3 */
-#define AT91_MATRIX_SCFG4	(AT91_MATRIX + 0x50)	/* Slave Configuration Register 4 */
-#define		AT91_MATRIX_SLOT_CYCLE		(0xff <<  0)	/* Maximum Number of Allowed Cycles for a Burst */
-#define		AT91_MATRIX_DEFMSTR_TYPE	(3    << 16)	/* Default Master Type */
-#define			AT91_MATRIX_DEFMSTR_TYPE_NONE	(0 << 16)
-#define			AT91_MATRIX_DEFMSTR_TYPE_LAST	(1 << 16)
-#define			AT91_MATRIX_DEFMSTR_TYPE_FIXED	(2 << 16)
-#define		AT91_MATRIX_FIXED_DEFMSTR	(7    << 18)	/* Fixed Index of Default Master */
-#define		AT91_MATRIX_ARBT		(3    << 24)	/* Arbitration Type */
-#define			AT91_MATRIX_ARBT_ROUND_ROBIN	(0 << 24)
-#define			AT91_MATRIX_ARBT_FIXED_PRIORITY	(1 << 24)
+#define AT91SAM9260_MATRIX_SCFG0	(0x40)	/* Slave Configuration Register 0 */
+#define AT91SAM9260_MATRIX_SCFG1	(0x44)	/* Slave Configuration Register 1 */
+#define AT91SAM9260_MATRIX_SCFG2	(0x48)	/* Slave Configuration Register 2 */
+#define AT91SAM9260_MATRIX_SCFG3	(0x4C)	/* Slave Configuration Register 3 */
+#define AT91SAM9260_MATRIX_SCFG4	(0x50)	/* Slave Configuration Register 4 */
+#define		AT91SAM9260_MATRIX_SLOT_CYCLE		(0xff <<  0)	/* Maximum Number of Allowed Cycles for a Burst */
+#define		AT91SAM9260_MATRIX_DEFMSTR_TYPE	(3    << 16)	/* Default Master Type */
+#define			AT91SAM9260_MATRIX_DEFMSTR_TYPE_NONE	(0 << 16)
+#define			AT91SAM9260_MATRIX_DEFMSTR_TYPE_LAST	(1 << 16)
+#define			AT91SAM9260_MATRIX_DEFMSTR_TYPE_FIXED	(2 << 16)
+#define		AT91SAM9260_MATRIX_FIXED_DEFMSTR	(7    << 18)	/* Fixed Index of Default Master */
+#define		AT91SAM9260_MATRIX_ARBT		(3    << 24)	/* Arbitration Type */
+#define			AT91SAM9260_MATRIX_ARBT_ROUND_ROBIN	(0 << 24)
+#define			AT91SAM9260_MATRIX_ARBT_FIXED_PRIORITY	(1 << 24)
 
-#define AT91_MATRIX_PRAS0	(AT91_MATRIX + 0x80)	/* Priority Register A for Slave 0 */
-#define AT91_MATRIX_PRAS1	(AT91_MATRIX + 0x88)	/* Priority Register A for Slave 1 */
-#define AT91_MATRIX_PRAS2	(AT91_MATRIX + 0x90)	/* Priority Register A for Slave 2 */
-#define AT91_MATRIX_PRAS3	(AT91_MATRIX + 0x98)	/* Priority Register A for Slave 3 */
-#define AT91_MATRIX_PRAS4	(AT91_MATRIX + 0xA0)	/* Priority Register A for Slave 4 */
-#define		AT91_MATRIX_M0PR		(3 << 0)	/* Master 0 Priority */
-#define		AT91_MATRIX_M1PR		(3 << 4)	/* Master 1 Priority */
-#define		AT91_MATRIX_M2PR		(3 << 8)	/* Master 2 Priority */
-#define		AT91_MATRIX_M3PR		(3 << 12)	/* Master 3 Priority */
-#define		AT91_MATRIX_M4PR		(3 << 16)	/* Master 4 Priority */
-#define		AT91_MATRIX_M5PR		(3 << 20)	/* Master 5 Priority */
+#define AT91SAM9260_MATRIX_PRAS0	(0x80)	/* Priority Register A for Slave 0 */
+#define AT91SAM9260_MATRIX_PRAS1	(0x88)	/* Priority Register A for Slave 1 */
+#define AT91SAM9260_MATRIX_PRAS2	(0x90)	/* Priority Register A for Slave 2 */
+#define AT91SAM9260_MATRIX_PRAS3	(0x98)	/* Priority Register A for Slave 3 */
+#define AT91SAM9260_MATRIX_PRAS4	(0xA0)	/* Priority Register A for Slave 4 */
+#define		AT91SAM9260_MATRIX_M0PR		(3 << 0)	/* Master 0 Priority */
+#define		AT91SAM9260_MATRIX_M1PR		(3 << 4)	/* Master 1 Priority */
+#define		AT91SAM9260_MATRIX_M2PR		(3 << 8)	/* Master 2 Priority */
+#define		AT91SAM9260_MATRIX_M3PR		(3 << 12)	/* Master 3 Priority */
+#define		AT91SAM9260_MATRIX_M4PR		(3 << 16)	/* Master 4 Priority */
+#define		AT91SAM9260_MATRIX_M5PR		(3 << 20)	/* Master 5 Priority */
 
-#define AT91_MATRIX_MRCR	(AT91_MATRIX + 0x100)	/* Master Remap Control Register */
-#define		AT91_MATRIX_RCB0		(1 << 0)	/* Remap Command for AHB Master 0 (ARM926EJ-S Instruction Master) */
-#define		AT91_MATRIX_RCB1		(1 << 1)	/* Remap Command for AHB Master 1 (ARM926EJ-S Data Master) */
+#define AT91SAM9260_MATRIX_MRCR	(0x100)	/* Master Remap Control Register */
+#define		AT91SAM9260_MATRIX_RCB0		(1 << 0)	/* Remap Command for AHB Master 0 (ARM926EJ-S Instruction Master) */
+#define		AT91SAM9260_MATRIX_RCB1		(1 << 1)	/* Remap Command for AHB Master 1 (ARM926EJ-S Data Master) */
 
-#define AT91_MATRIX_EBICSA	(AT91_MATRIX + 0x11C)	/* EBI Chip Select Assignment Register */
-#define		AT91_MATRIX_CS1A		(1 << 1)	/* Chip Select 1 Assignment */
-#define			AT91_MATRIX_CS1A_SMC		(0 << 1)
-#define			AT91_MATRIX_CS1A_SDRAMC		(1 << 1)
-#define		AT91_MATRIX_CS3A		(1 << 3)	/* Chip Select 3 Assignment */
-#define			AT91_MATRIX_CS3A_SMC		(0 << 3)
-#define			AT91_MATRIX_CS3A_SMC_SMARTMEDIA	(1 << 3)
-#define		AT91_MATRIX_CS4A		(1 << 4)	/* Chip Select 4 Assignment */
-#define			AT91_MATRIX_CS4A_SMC		(0 << 4)
-#define			AT91_MATRIX_CS4A_SMC_CF1	(1 << 4)
-#define		AT91_MATRIX_CS5A		(1 << 5)	/* Chip Select 5 Assignment */
-#define			AT91_MATRIX_CS5A_SMC		(0 << 5)
-#define			AT91_MATRIX_CS5A_SMC_CF2	(1 << 5)
-#define		AT91_MATRIX_DBPUC		(1 << 8)	/* Data Bus Pull-up Configuration */
-#define		AT91_MATRIX_VDDIOMSEL		(1 << 16)	/* Memory voltage selection */
-#define			AT91_MATRIX_VDDIOMSEL_1_8V	(0 << 16)
-#define			AT91_MATRIX_VDDIOMSEL_3_3V	(1 << 16)
+#define AT91SAM9260_MATRIX_EBICSA	(0x11C)	/* EBI Chip Select Assignment Register */
+#define		AT91SAM9260_MATRIX_CS1A		(1 << 1)	/* Chip Select 1 Assignment */
+#define			AT91SAM9260_MATRIX_CS1A_SMC		(0 << 1)
+#define			AT91SAM9260_MATRIX_CS1A_SDRAMC		(1 << 1)
+#define		AT91SAM9260_MATRIX_CS3A		(1 << 3)	/* Chip Select 3 Assignment */
+#define			AT91SAM9260_MATRIX_CS3A_SMC		(0 << 3)
+#define			AT91SAM9260_MATRIX_CS3A_SMC_SMARTMEDIA	(1 << 3)
+#define		AT91SAM9260_MATRIX_CS4A		(1 << 4)	/* Chip Select 4 Assignment */
+#define			AT91SAM9260_MATRIX_CS4A_SMC		(0 << 4)
+#define			AT91SAM9260_MATRIX_CS4A_SMC_CF1	(1 << 4)
+#define		AT91SAM9260_MATRIX_CS5A		(1 << 5)	/* Chip Select 5 Assignment */
+#define			AT91SAM9260_MATRIX_CS5A_SMC		(0 << 5)
+#define			AT91SAM9260_MATRIX_CS5A_SMC_CF2	(1 << 5)
+#define		AT91SAM9260_MATRIX_DBPUC		(1 << 8)	/* Data Bus Pull-up Configuration */
+#define		AT91SAM9260_MATRIX_VDDIOMSEL		(1 << 16)	/* Memory voltage selection */
+#define			AT91SAM9260_MATRIX_VDDIOMSEL_1_8V	(0 << 16)
+#define			AT91SAM9260_MATRIX_VDDIOMSEL_3_3V	(1 << 16)
 
 #endif
diff --git a/arch/arm/mach-at91/include/mach/at91sam9261_matrix.h b/arch/arm/mach-at91/include/mach/at91sam9261_matrix.h
index 7de01573a3..63e92ccd22 100644
--- a/arch/arm/mach-at91/include/mach/at91sam9261_matrix.h
+++ b/arch/arm/mach-at91/include/mach/at91sam9261_matrix.h
@@ -15,50 +15,50 @@
 #ifndef AT91SAM9261_MATRIX_H
 #define AT91SAM9261_MATRIX_H
 
-#define AT91_MATRIX_MCFG	(AT91_MATRIX + 0x00)	/* Master Configuration Register */
-#define		AT91_MATRIX_RCB0	(1 << 0)		/* Remap Command for AHB Master 0 (ARM926EJ-S Instruction Master) */
-#define		AT91_MATRIX_RCB1	(1 << 1)		/* Remap Command for AHB Master 1 (ARM926EJ-S Data Master) */
+#define AT91SAM9261_MATRIX_MCFG	(0x00)	/* Master Configuration Register */
+#define		AT91SAM9261_MATRIX_RCB0	(1 << 0)		/* Remap Command for AHB Master 0 (ARM926EJ-S Instruction Master) */
+#define		AT91SAM9261_MATRIX_RCB1	(1 << 1)		/* Remap Command for AHB Master 1 (ARM926EJ-S Data Master) */
 
-#define AT91_MATRIX_SCFG0	(AT91_MATRIX + 0x04)	/* Slave Configuration Register 0 */
-#define AT91_MATRIX_SCFG1	(AT91_MATRIX + 0x08)	/* Slave Configuration Register 1 */
-#define AT91_MATRIX_SCFG2	(AT91_MATRIX + 0x0C)	/* Slave Configuration Register 2 */
-#define AT91_MATRIX_SCFG3	(AT91_MATRIX + 0x10)	/* Slave Configuration Register 3 */
-#define AT91_MATRIX_SCFG4	(AT91_MATRIX + 0x14)	/* Slave Configuration Register 4 */
-#define		AT91_MATRIX_SLOT_CYCLE		(0xff << 0)	/* Maximum Number of Allowed Cycles for a Burst */
-#define		AT91_MATRIX_DEFMSTR_TYPE	(3    << 16)	/* Default Master Type */
-#define			AT91_MATRIX_DEFMSTR_TYPE_NONE	(0 << 16)
-#define			AT91_MATRIX_DEFMSTR_TYPE_LAST	(1 << 16)
-#define			AT91_MATRIX_DEFMSTR_TYPE_FIXED	(2 << 16)
-#define		AT91_MATRIX_FIXED_DEFMSTR	(7    << 18)	/* Fixed Index of Default Master */
+#define AT91SAM9261_MATRIX_SCFG0	(0x04)	/* Slave Configuration Register 0 */
+#define AT91SAM9261_MATRIX_SCFG1	(0x08)	/* Slave Configuration Register 1 */
+#define AT91SAM9261_MATRIX_SCFG2	(0x0C)	/* Slave Configuration Register 2 */
+#define AT91SAM9261_MATRIX_SCFG3	(0x10)	/* Slave Configuration Register 3 */
+#define AT91SAM9261_MATRIX_SCFG4	(0x14)	/* Slave Configuration Register 4 */
+#define		AT91SAM9261_MATRIX_SLOT_CYCLE		(0xff << 0)	/* Maximum Number of Allowed Cycles for a Burst */
+#define		AT91SAM9261_MATRIX_DEFMSTR_TYPE	(3    << 16)	/* Default Master Type */
+#define			AT91SAM9261_MATRIX_DEFMSTR_TYPE_NONE	(0 << 16)
+#define			AT91SAM9261_MATRIX_DEFMSTR_TYPE_LAST	(1 << 16)
+#define			AT91SAM9261_MATRIX_DEFMSTR_TYPE_FIXED	(2 << 16)
+#define		AT91SAM9261_MATRIX_FIXED_DEFMSTR	(7    << 18)	/* Fixed Index of Default Master */
 
-#define AT91_MATRIX_TCR		(AT91_MATRIX + 0x24)	/* TCM Configuration Register */
-#define		AT91_MATRIX_ITCM_SIZE		(0xf << 0)	/* Size of ITCM enabled memory block */
-#define			AT91_MATRIX_ITCM_0		(0 << 0)
-#define			AT91_MATRIX_ITCM_16		(5 << 0)
-#define			AT91_MATRIX_ITCM_32		(6 << 0)
-#define			AT91_MATRIX_ITCM_64		(7 << 0)
-#define		AT91_MATRIX_DTCM_SIZE		(0xf << 4)	/* Size of DTCM enabled memory block */
-#define			AT91_MATRIX_DTCM_0		(0 << 4)
-#define			AT91_MATRIX_DTCM_16		(5 << 4)
-#define			AT91_MATRIX_DTCM_32		(6 << 4)
-#define			AT91_MATRIX_DTCM_64		(7 << 4)
+#define AT91SAM9261_MATRIX_TCR		(0x24)	/* TCM Configuration Register */
+#define		AT91SAM9261_MATRIX_ITCM_SIZE		(0xf << 0)	/* Size of ITCM enabled memory block */
+#define			AT91SAM9261_MATRIX_ITCM_0		(0 << 0)
+#define			AT91SAM9261_MATRIX_ITCM_16		(5 << 0)
+#define			AT91SAM9261_MATRIX_ITCM_32		(6 << 0)
+#define			AT91SAM9261_MATRIX_ITCM_64		(7 << 0)
+#define		AT91SAM9261_MATRIX_DTCM_SIZE		(0xf << 4)	/* Size of DTCM enabled memory block */
+#define			AT91SAM9261_MATRIX_DTCM_0		(0 << 4)
+#define			AT91SAM9261_MATRIX_DTCM_16		(5 << 4)
+#define			AT91SAM9261_MATRIX_DTCM_32		(6 << 4)
+#define			AT91SAM9261_MATRIX_DTCM_64		(7 << 4)
 
-#define AT91_MATRIX_EBICSA	(AT91_MATRIX + 0x30)	/* EBI Chip Select Assignment Register */
-#define		AT91_MATRIX_CS1A		(1 << 1)	/* Chip Select 1 Assignment */
-#define			AT91_MATRIX_CS1A_SMC		(0 << 1)
-#define			AT91_MATRIX_CS1A_SDRAMC		(1 << 1)
-#define		AT91_MATRIX_CS3A		(1 << 3)	/* Chip Select 3 Assignment */
-#define			AT91_MATRIX_CS3A_SMC		(0 << 3)
-#define			AT91_MATRIX_CS3A_SMC_SMARTMEDIA	(1 << 3)
-#define		AT91_MATRIX_CS4A		(1 << 4)	/* Chip Select 4 Assignment */
-#define			AT91_MATRIX_CS4A_SMC		(0 << 4)
-#define			AT91_MATRIX_CS4A_SMC_CF1	(1 << 4)
-#define		AT91_MATRIX_CS5A		(1 << 5)	/* Chip Select 5 Assignment */
-#define			AT91_MATRIX_CS5A_SMC		(0 << 5)
-#define			AT91_MATRIX_CS5A_SMC_CF2	(1 << 5)
-#define		AT91_MATRIX_DBPUC		(1 << 8)	/* Data Bus Pull-up Configuration */
+#define AT91SAM9261_MATRIX_EBICSA	(0x30)	/* EBI Chip Select Assignment Register */
+#define		AT91SAM9261_MATRIX_CS1A		(1 << 1)	/* Chip Select 1 Assignment */
+#define			AT91SAM9261_MATRIX_CS1A_SMC		(0 << 1)
+#define			AT91SAM9261_MATRIX_CS1A_SDRAMC		(1 << 1)
+#define		AT91SAM9261_MATRIX_CS3A		(1 << 3)	/* Chip Select 3 Assignment */
+#define			AT91SAM9261_MATRIX_CS3A_SMC		(0 << 3)
+#define			AT91SAM9261_MATRIX_CS3A_SMC_SMARTMEDIA	(1 << 3)
+#define		AT91SAM9261_MATRIX_CS4A		(1 << 4)	/* Chip Select 4 Assignment */
+#define			AT91SAM9261_MATRIX_CS4A_SMC		(0 << 4)
+#define			AT91SAM9261_MATRIX_CS4A_SMC_CF1	(1 << 4)
+#define		AT91SAM9261_MATRIX_CS5A		(1 << 5)	/* Chip Select 5 Assignment */
+#define			AT91SAM9261_MATRIX_CS5A_SMC		(0 << 5)
+#define			AT91SAM9261_MATRIX_CS5A_SMC_CF2	(1 << 5)
+#define		AT91SAM9261_MATRIX_DBPUC		(1 << 8)	/* Data Bus Pull-up Configuration */
 
-#define AT91_MATRIX_USBPUCR	(AT91_MATRIX + 0x34)	/* USB Pad Pull-Up Control Register */
-#define		AT91_MATRIX_USBPUCR_PUON	(1 << 30)	/* USB Device PAD Pull-up Enable */
+#define AT91SAM9261_MATRIX_USBPUCR	(0x34)	/* USB Pad Pull-Up Control Register */
+#define		AT91SAM9261_MATRIX_USBPUCR_PUON	(1 << 30)	/* USB Device PAD Pull-up Enable */
 
 #endif
diff --git a/arch/arm/mach-at91/include/mach/at91sam9263_matrix.h b/arch/arm/mach-at91/include/mach/at91sam9263_matrix.h
index 83aaaab773..0082666cd3 100644
--- a/arch/arm/mach-at91/include/mach/at91sam9263_matrix.h
+++ b/arch/arm/mach-at91/include/mach/at91sam9263_matrix.h
@@ -15,115 +15,115 @@
 #ifndef AT91SAM9263_MATRIX_H
 #define AT91SAM9263_MATRIX_H
 
-#define AT91_MATRIX_MCFG0	(AT91_MATRIX + 0x00)	/* Master Configuration Register 0 */
-#define AT91_MATRIX_MCFG1	(AT91_MATRIX + 0x04)	/* Master Configuration Register 1 */
-#define AT91_MATRIX_MCFG2	(AT91_MATRIX + 0x08)	/* Master Configuration Register 2 */
-#define AT91_MATRIX_MCFG3	(AT91_MATRIX + 0x0C)	/* Master Configuration Register 3 */
-#define AT91_MATRIX_MCFG4	(AT91_MATRIX + 0x10)	/* Master Configuration Register 4 */
-#define AT91_MATRIX_MCFG5	(AT91_MATRIX + 0x14)	/* Master Configuration Register 5 */
-#define AT91_MATRIX_MCFG6	(AT91_MATRIX + 0x18)	/* Master Configuration Register 6 */
-#define AT91_MATRIX_MCFG7	(AT91_MATRIX + 0x1C)	/* Master Configuration Register 7 */
-#define AT91_MATRIX_MCFG8	(AT91_MATRIX + 0x20)	/* Master Configuration Register 8 */
-#define		AT91_MATRIX_ULBT	(7 << 0)	/* Undefined Length Burst Type */
-#define			AT91_MATRIX_ULBT_INFINITE	(0 << 0)
-#define			AT91_MATRIX_ULBT_SINGLE		(1 << 0)
-#define			AT91_MATRIX_ULBT_FOUR		(2 << 0)
-#define			AT91_MATRIX_ULBT_EIGHT		(3 << 0)
-#define			AT91_MATRIX_ULBT_SIXTEEN	(4 << 0)
+#define AT91SAM9263_MATRIX_MCFG0	(0x00)	/* Master Configuration Register 0 */
+#define AT91SAM9263_MATRIX_MCFG1	(0x04)	/* Master Configuration Register 1 */
+#define AT91SAM9263_MATRIX_MCFG2	(0x08)	/* Master Configuration Register 2 */
+#define AT91SAM9263_MATRIX_MCFG3	(0x0C)	/* Master Configuration Register 3 */
+#define AT91SAM9263_MATRIX_MCFG4	(0x10)	/* Master Configuration Register 4 */
+#define AT91SAM9263_MATRIX_MCFG5	(0x14)	/* Master Configuration Register 5 */
+#define AT91SAM9263_MATRIX_MCFG6	(0x18)	/* Master Configuration Register 6 */
+#define AT91SAM9263_MATRIX_MCFG7	(0x1C)	/* Master Configuration Register 7 */
+#define AT91SAM9263_MATRIX_MCFG8	(0x20)	/* Master Configuration Register 8 */
+#define		AT91SAM9263_MATRIX_ULBT	(7 << 0)	/* Undefined Length Burst Type */
+#define			AT91SAM9263_MATRIX_ULBT_INFINITE	(0 << 0)
+#define			AT91SAM9263_MATRIX_ULBT_SINGLE		(1 << 0)
+#define			AT91SAM9263_MATRIX_ULBT_FOUR		(2 << 0)
+#define			AT91SAM9263_MATRIX_ULBT_EIGHT		(3 << 0)
+#define			AT91SAM9263_MATRIX_ULBT_SIXTEEN	(4 << 0)
 
-#define AT91_MATRIX_SCFG0	(AT91_MATRIX + 0x40)	/* Slave Configuration Register 0 */
-#define AT91_MATRIX_SCFG1	(AT91_MATRIX + 0x44)	/* Slave Configuration Register 1 */
-#define AT91_MATRIX_SCFG2	(AT91_MATRIX + 0x48)	/* Slave Configuration Register 2 */
-#define AT91_MATRIX_SCFG3	(AT91_MATRIX + 0x4C)	/* Slave Configuration Register 3 */
-#define AT91_MATRIX_SCFG4	(AT91_MATRIX + 0x50)	/* Slave Configuration Register 4 */
-#define AT91_MATRIX_SCFG5	(AT91_MATRIX + 0x54)	/* Slave Configuration Register 5 */
-#define AT91_MATRIX_SCFG6	(AT91_MATRIX + 0x58)	/* Slave Configuration Register 6 */
-#define AT91_MATRIX_SCFG7	(AT91_MATRIX + 0x5C)	/* Slave Configuration Register 7 */
-#define		AT91_MATRIX_SLOT_CYCLE		(0xff << 0)	/* Maximum Number of Allowed Cycles for a Burst */
-#define		AT91_MATRIX_DEFMSTR_TYPE	(3    << 16)	/* Default Master Type */
-#define			AT91_MATRIX_DEFMSTR_TYPE_NONE	(0 << 16)
-#define			AT91_MATRIX_DEFMSTR_TYPE_LAST	(1 << 16)
-#define			AT91_MATRIX_DEFMSTR_TYPE_FIXED	(2 << 16)
-#define		AT91_MATRIX_FIXED_DEFMSTR	(0xf  << 18)	/* Fixed Index of Default Master */
-#define		AT91_MATRIX_ARBT		(3    << 24)	/* Arbitration Type */
-#define			AT91_MATRIX_ARBT_ROUND_ROBIN	(0 << 24)
-#define			AT91_MATRIX_ARBT_FIXED_PRIORITY	(1 << 24)
+#define AT91SAM9263_MATRIX_SCFG0	(0x40)	/* Slave Configuration Register 0 */
+#define AT91SAM9263_MATRIX_SCFG1	(0x44)	/* Slave Configuration Register 1 */
+#define AT91SAM9263_MATRIX_SCFG2	(0x48)	/* Slave Configuration Register 2 */
+#define AT91SAM9263_MATRIX_SCFG3	(0x4C)	/* Slave Configuration Register 3 */
+#define AT91SAM9263_MATRIX_SCFG4	(0x50)	/* Slave Configuration Register 4 */
+#define AT91SAM9263_MATRIX_SCFG5	(0x54)	/* Slave Configuration Register 5 */
+#define AT91SAM9263_MATRIX_SCFG6	(0x58)	/* Slave Configuration Register 6 */
+#define AT91SAM9263_MATRIX_SCFG7	(0x5C)	/* Slave Configuration Register 7 */
+#define		AT91SAM9263_MATRIX_SLOT_CYCLE		(0xff << 0)	/* Maximum Number of Allowed Cycles for a Burst */
+#define		AT91SAM9263_MATRIX_DEFMSTR_TYPE	(3    << 16)	/* Default Master Type */
+#define			AT91SAM9263_MATRIX_DEFMSTR_TYPE_NONE	(0 << 16)
+#define			AT91SAM9263_MATRIX_DEFMSTR_TYPE_LAST	(1 << 16)
+#define			AT91SAM9263_MATRIX_DEFMSTR_TYPE_FIXED	(2 << 16)
+#define		AT91SAM9263_MATRIX_FIXED_DEFMSTR	(0xf  << 18)	/* Fixed Index of Default Master */
+#define		AT91SAM9263_MATRIX_ARBT		(3    << 24)	/* Arbitration Type */
+#define			AT91SAM9263_MATRIX_ARBT_ROUND_ROBIN	(0 << 24)
+#define			AT91SAM9263_MATRIX_ARBT_FIXED_PRIORITY	(1 << 24)
 
-#define AT91_MATRIX_PRAS0	(AT91_MATRIX + 0x80)	/* Priority Register A for Slave 0 */
-#define AT91_MATRIX_PRBS0	(AT91_MATRIX + 0x84)	/* Priority Register B for Slave 0 */
-#define AT91_MATRIX_PRAS1	(AT91_MATRIX + 0x88)	/* Priority Register A for Slave 1 */
-#define AT91_MATRIX_PRBS1	(AT91_MATRIX + 0x8C)	/* Priority Register B for Slave 1 */
-#define AT91_MATRIX_PRAS2	(AT91_MATRIX + 0x90)	/* Priority Register A for Slave 2 */
-#define AT91_MATRIX_PRBS2	(AT91_MATRIX + 0x94)	/* Priority Register B for Slave 2 */
-#define AT91_MATRIX_PRAS3	(AT91_MATRIX + 0x98)	/* Priority Register A for Slave 3 */
-#define AT91_MATRIX_PRBS3	(AT91_MATRIX + 0x9C)	/* Priority Register B for Slave 3 */
-#define AT91_MATRIX_PRAS4	(AT91_MATRIX + 0xA0)	/* Priority Register A for Slave 4 */
-#define AT91_MATRIX_PRBS4	(AT91_MATRIX + 0xA4)	/* Priority Register B for Slave 4 */
-#define AT91_MATRIX_PRAS5	(AT91_MATRIX + 0xA8)	/* Priority Register A for Slave 5 */
-#define AT91_MATRIX_PRBS5	(AT91_MATRIX + 0xAC)	/* Priority Register B for Slave 5 */
-#define AT91_MATRIX_PRAS6	(AT91_MATRIX + 0xB0)	/* Priority Register A for Slave 6 */
-#define AT91_MATRIX_PRBS6	(AT91_MATRIX + 0xB4)	/* Priority Register B for Slave 6 */
-#define AT91_MATRIX_PRAS7	(AT91_MATRIX + 0xB8)	/* Priority Register A for Slave 7 */
-#define AT91_MATRIX_PRBS7	(AT91_MATRIX + 0xBC)	/* Priority Register B for Slave 7 */
-#define		AT91_MATRIX_M0PR		(3 << 0)	/* Master 0 Priority */
-#define		AT91_MATRIX_M1PR		(3 << 4)	/* Master 1 Priority */
-#define		AT91_MATRIX_M2PR		(3 << 8)	/* Master 2 Priority */
-#define		AT91_MATRIX_M3PR		(3 << 12)	/* Master 3 Priority */
-#define		AT91_MATRIX_M4PR		(3 << 16)	/* Master 4 Priority */
-#define		AT91_MATRIX_M5PR		(3 << 20)	/* Master 5 Priority */
-#define		AT91_MATRIX_M6PR		(3 << 24)	/* Master 6 Priority */
-#define		AT91_MATRIX_M7PR		(3 << 28)	/* Master 7 Priority */
-#define		AT91_MATRIX_M8PR		(3 << 0)	/* Master 8 Priority (in Register B) */
+#define AT91SAM9263_MATRIX_PRAS0	(0x80)	/* Priority Register A for Slave 0 */
+#define AT91SAM9263_MATRIX_PRBS0	(0x84)	/* Priority Register B for Slave 0 */
+#define AT91SAM9263_MATRIX_PRAS1	(0x88)	/* Priority Register A for Slave 1 */
+#define AT91SAM9263_MATRIX_PRBS1	(0x8C)	/* Priority Register B for Slave 1 */
+#define AT91SAM9263_MATRIX_PRAS2	(0x90)	/* Priority Register A for Slave 2 */
+#define AT91SAM9263_MATRIX_PRBS2	(0x94)	/* Priority Register B for Slave 2 */
+#define AT91SAM9263_MATRIX_PRAS3	(0x98)	/* Priority Register A for Slave 3 */
+#define AT91SAM9263_MATRIX_PRBS3	(0x9C)	/* Priority Register B for Slave 3 */
+#define AT91SAM9263_MATRIX_PRAS4	(0xA0)	/* Priority Register A for Slave 4 */
+#define AT91SAM9263_MATRIX_PRBS4	(0xA4)	/* Priority Register B for Slave 4 */
+#define AT91SAM9263_MATRIX_PRAS5	(0xA8)	/* Priority Register A for Slave 5 */
+#define AT91SAM9263_MATRIX_PRBS5	(0xAC)	/* Priority Register B for Slave 5 */
+#define AT91SAM9263_MATRIX_PRAS6	(0xB0)	/* Priority Register A for Slave 6 */
+#define AT91SAM9263_MATRIX_PRBS6	(0xB4)	/* Priority Register B for Slave 6 */
+#define AT91SAM9263_MATRIX_PRAS7	(0xB8)	/* Priority Register A for Slave 7 */
+#define AT91SAM9263_MATRIX_PRBS7	(0xBC)	/* Priority Register B for Slave 7 */
+#define		AT91SAM9263_MATRIX_M0PR		(3 << 0)	/* Master 0 Priority */
+#define		AT91SAM9263_MATRIX_M1PR		(3 << 4)	/* Master 1 Priority */
+#define		AT91SAM9263_MATRIX_M2PR		(3 << 8)	/* Master 2 Priority */
+#define		AT91SAM9263_MATRIX_M3PR		(3 << 12)	/* Master 3 Priority */
+#define		AT91SAM9263_MATRIX_M4PR		(3 << 16)	/* Master 4 Priority */
+#define		AT91SAM9263_MATRIX_M5PR		(3 << 20)	/* Master 5 Priority */
+#define		AT91SAM9263_MATRIX_M6PR		(3 << 24)	/* Master 6 Priority */
+#define		AT91SAM9263_MATRIX_M7PR		(3 << 28)	/* Master 7 Priority */
+#define		AT91SAM9263_MATRIX_M8PR		(3 << 0)	/* Master 8 Priority (in Register B) */
 
-#define AT91_MATRIX_MRCR	(AT91_MATRIX + 0x100)	/* Master Remap Control Register */
-#define		AT91_MATRIX_RCB0		(1 << 0)	/* Remap Command for AHB Master 0 (ARM926EJ-S Instruction Master) */
-#define		AT91_MATRIX_RCB1		(1 << 1)	/* Remap Command for AHB Master 1 (ARM926EJ-S Data Master) */
-#define		AT91_MATRIX_RCB2		(1 << 2)
-#define		AT91_MATRIX_RCB3		(1 << 3)
-#define		AT91_MATRIX_RCB4		(1 << 4)
-#define		AT91_MATRIX_RCB5		(1 << 5)
-#define		AT91_MATRIX_RCB6		(1 << 6)
-#define		AT91_MATRIX_RCB7		(1 << 7)
-#define		AT91_MATRIX_RCB8		(1 << 8)
+#define AT91SAM9263_MATRIX_MRCR	(0x100)	/* Master Remap Control Register */
+#define		AT91SAM9263_MATRIX_RCB0		(1 << 0)	/* Remap Command for AHB Master 0 (ARM926EJ-S Instruction Master) */
+#define		AT91SAM9263_MATRIX_RCB1		(1 << 1)	/* Remap Command for AHB Master 1 (ARM926EJ-S Data Master) */
+#define		AT91SAM9263_MATRIX_RCB2		(1 << 2)
+#define		AT91SAM9263_MATRIX_RCB3		(1 << 3)
+#define		AT91SAM9263_MATRIX_RCB4		(1 << 4)
+#define		AT91SAM9263_MATRIX_RCB5		(1 << 5)
+#define		AT91SAM9263_MATRIX_RCB6		(1 << 6)
+#define		AT91SAM9263_MATRIX_RCB7		(1 << 7)
+#define		AT91SAM9263_MATRIX_RCB8		(1 << 8)
 
-#define AT91_MATRIX_TCMR	(AT91_MATRIX + 0x114)	/* TCM Configuration Register */
-#define		AT91_MATRIX_ITCM_SIZE		(0xf << 0)	/* Size of ITCM enabled memory block */
-#define			AT91_MATRIX_ITCM_0		(0 << 0)
-#define			AT91_MATRIX_ITCM_16		(5 << 0)
-#define			AT91_MATRIX_ITCM_32		(6 << 0)
-#define		AT91_MATRIX_DTCM_SIZE		(0xf << 4)	/* Size of DTCM enabled memory block */
-#define			AT91_MATRIX_DTCM_0		(0 << 4)
-#define			AT91_MATRIX_DTCM_16		(5 << 4)
-#define			AT91_MATRIX_DTCM_32		(6 << 4)
+#define AT91SAM9263_MATRIX_TCMR	(0x114)	/* TCM Configuration Register */
+#define		AT91SAM9263_MATRIX_ITCM_SIZE		(0xf << 0)	/* Size of ITCM enabled memory block */
+#define			AT91SAM9263_MATRIX_ITCM_0		(0 << 0)
+#define			AT91SAM9263_MATRIX_ITCM_16		(5 << 0)
+#define			AT91SAM9263_MATRIX_ITCM_32		(6 << 0)
+#define		AT91SAM9263_MATRIX_DTCM_SIZE		(0xf << 4)	/* Size of DTCM enabled memory block */
+#define			AT91SAM9263_MATRIX_DTCM_0		(0 << 4)
+#define			AT91SAM9263_MATRIX_DTCM_16		(5 << 4)
+#define			AT91SAM9263_MATRIX_DTCM_32		(6 << 4)
 
-#define AT91_MATRIX_EBI0CSA	(AT91_MATRIX + 0x120)	/* EBI0 Chip Select Assignment Register */
-#define		AT91_MATRIX_EBI0_CS1A		(1 << 1)	/* Chip Select 1 Assignment */
-#define			AT91_MATRIX_EBI0_CS1A_SMC		(0 << 1)
-#define			AT91_MATRIX_EBI0_CS1A_SDRAMC		(1 << 1)
-#define		AT91_MATRIX_EBI0_CS3A		(1 << 3)	/* Chip Select 3 Assignment */
-#define			AT91_MATRIX_EBI0_CS3A_SMC		(0 << 3)
-#define			AT91_MATRIX_EBI0_CS3A_SMC_SMARTMEDIA	(1 << 3)
-#define		AT91_MATRIX_EBI0_CS4A		(1 << 4)	/* Chip Select 4 Assignment */
-#define			AT91_MATRIX_EBI0_CS4A_SMC		(0 << 4)
-#define			AT91_MATRIX_EBI0_CS4A_SMC_CF1		(1 << 4)
-#define		AT91_MATRIX_EBI0_CS5A		(1 << 5)	/* Chip Select 5 Assignment */
-#define			AT91_MATRIX_EBI0_CS5A_SMC		(0 << 5)
-#define			AT91_MATRIX_EBI0_CS5A_SMC_CF2		(1 << 5)
-#define		AT91_MATRIX_EBI0_DBPUC		(1 << 8)	/* Data Bus Pull-up Configuration */
-#define		AT91_MATRIX_EBI0_VDDIOMSEL	(1 << 16)	/* Memory voltage selection */
-#define			AT91_MATRIX_EBI0_VDDIOMSEL_1_8V		(0 << 16)
-#define			AT91_MATRIX_EBI0_VDDIOMSEL_3_3V		(1 << 16)
+#define AT91SAM9263_MATRIX_EBI0CSA	(0x120)	/* EBI0 Chip Select Assignment Register */
+#define		AT91SAM9263_MATRIX_EBI0_CS1A		(1 << 1)	/* Chip Select 1 Assignment */
+#define			AT91SAM9263_MATRIX_EBI0_CS1A_SMC		(0 << 1)
+#define			AT91SAM9263_MATRIX_EBI0_CS1A_SDRAMC		(1 << 1)
+#define		AT91SAM9263_MATRIX_EBI0_CS3A		(1 << 3)	/* Chip Select 3 Assignment */
+#define			AT91SAM9263_MATRIX_EBI0_CS3A_SMC		(0 << 3)
+#define			AT91SAM9263_MATRIX_EBI0_CS3A_SMC_SMARTMEDIA	(1 << 3)
+#define		AT91SAM9263_MATRIX_EBI0_CS4A		(1 << 4)	/* Chip Select 4 Assignment */
+#define			AT91SAM9263_MATRIX_EBI0_CS4A_SMC		(0 << 4)
+#define			AT91SAM9263_MATRIX_EBI0_CS4A_SMC_CF1		(1 << 4)
+#define		AT91SAM9263_MATRIX_EBI0_CS5A		(1 << 5)	/* Chip Select 5 Assignment */
+#define			AT91SAM9263_MATRIX_EBI0_CS5A_SMC		(0 << 5)
+#define			AT91SAM9263_MATRIX_EBI0_CS5A_SMC_CF2		(1 << 5)
+#define		AT91SAM9263_MATRIX_EBI0_DBPUC		(1 << 8)	/* Data Bus Pull-up Configuration */
+#define		AT91SAM9263_MATRIX_EBI0_VDDIOMSEL	(1 << 16)	/* Memory voltage selection */
+#define			AT91SAM9263_MATRIX_EBI0_VDDIOMSEL_1_8V		(0 << 16)
+#define			AT91SAM9263_MATRIX_EBI0_VDDIOMSEL_3_3V		(1 << 16)
 
-#define AT91_MATRIX_EBI1CSA	(AT91_MATRIX + 0x124)	/* EBI1 Chip Select Assignment Register */
-#define		AT91_MATRIX_EBI1_CS1A		(1 << 1)	/* Chip Select 1 Assignment */
-#define			AT91_MATRIX_EBI1_CS1A_SMC		(0 << 1)
-#define			AT91_MATRIX_EBI1_CS1A_SDRAMC		(1 << 1)
-#define		AT91_MATRIX_EBI1_CS2A		(1 << 3)	/* Chip Select 3 Assignment */
-#define			AT91_MATRIX_EBI1_CS2A_SMC		(0 << 3)
-#define			AT91_MATRIX_EBI1_CS2A_SMC_SMARTMEDIA	(1 << 3)
-#define		AT91_MATRIX_EBI1_DBPUC		(1 << 8)	/* Data Bus Pull-up Configuration */
-#define		AT91_MATRIX_EBI1_VDDIOMSEL	(1 << 16)	/* Memory voltage selection */
-#define			AT91_MATRIX_EBI1_VDDIOMSEL_1_8V		(0 << 16)
-#define			AT91_MATRIX_EBI1_VDDIOMSEL_3_3V		(1 << 16)
+#define AT91SAM9263_MATRIX_EBI1CSA	(0x124)	/* EBI1 Chip Select Assignment Register */
+#define		AT91SAM9263_MATRIX_EBI1_CS1A		(1 << 1)	/* Chip Select 1 Assignment */
+#define			AT91SAM9263_MATRIX_EBI1_CS1A_SMC		(0 << 1)
+#define			AT91SAM9263_MATRIX_EBI1_CS1A_SDRAMC		(1 << 1)
+#define		AT91SAM9263_MATRIX_EBI1_CS2A		(1 << 3)	/* Chip Select 3 Assignment */
+#define			AT91SAM9263_MATRIX_EBI1_CS2A_SMC		(0 << 3)
+#define			AT91SAM9263_MATRIX_EBI1_CS2A_SMC_SMARTMEDIA	(1 << 3)
+#define		AT91SAM9263_MATRIX_EBI1_DBPUC		(1 << 8)	/* Data Bus Pull-up Configuration */
+#define		AT91SAM9263_MATRIX_EBI1_VDDIOMSEL	(1 << 16)	/* Memory voltage selection */
+#define			AT91SAM9263_MATRIX_EBI1_VDDIOMSEL_1_8V		(0 << 16)
+#define			AT91SAM9263_MATRIX_EBI1_VDDIOMSEL_3_3V		(1 << 16)
 
 #endif
diff --git a/arch/arm/mach-at91/include/mach/at91sam926x_board_init.h b/arch/arm/mach-at91/include/mach/at91sam926x_board_init.h
index 42bb6a04c1..4141e80ddb 100644
--- a/arch/arm/mach-at91/include/mach/at91sam926x_board_init.h
+++ b/arch/arm/mach-at91/include/mach/at91sam926x_board_init.h
@@ -25,7 +25,7 @@ struct at91sam926x_board_cfg {
 	void __iomem *pio;
 	void __iomem *sdramc;
 	u32 ebi_pio_is_peripha;
-	u32 matrix_csa;
+	void __iomem *matrix_csa;
 
 	/* board specific */
 	u32 wdt_mr;
@@ -133,7 +133,7 @@ static void __always_inline at91sam926x_board_init(struct at91sam926x_board_cfg
 	if (cfg->ebi_pio_is_peripha)
 		at91_mux_set_A_periph(cfg->pio, cfg->ebi_pio_ppudr);
 
-	at91_sys_write(cfg->matrix_csa, cfg->ebi_csa);
+	writel(cfg->ebi_csa, cfg->matrix_csa);
 
 	/* flash */
 	at91_smc_write(cfg->smc_cs, AT91_SAM9_SMC_MODE, cfg->smc_mode);
diff --git a/arch/arm/mach-at91/include/mach/at91sam9g45_matrix.h b/arch/arm/mach-at91/include/mach/at91sam9g45_matrix.h
index c972d60e0a..53f50fef8f 100644
--- a/arch/arm/mach-at91/include/mach/at91sam9g45_matrix.h
+++ b/arch/arm/mach-at91/include/mach/at91sam9g45_matrix.h
@@ -15,139 +15,139 @@
 #ifndef AT91SAM9G45_MATRIX_H
 #define AT91SAM9G45_MATRIX_H
 
-#define AT91_MATRIX_MCFG0	(AT91_MATRIX + 0x00)	/* Master Configuration Register 0 */
-#define AT91_MATRIX_MCFG1	(AT91_MATRIX + 0x04)	/* Master Configuration Register 1 */
-#define AT91_MATRIX_MCFG2	(AT91_MATRIX + 0x08)	/* Master Configuration Register 2 */
-#define AT91_MATRIX_MCFG3	(AT91_MATRIX + 0x0C)	/* Master Configuration Register 3 */
-#define AT91_MATRIX_MCFG4	(AT91_MATRIX + 0x10)	/* Master Configuration Register 4 */
-#define AT91_MATRIX_MCFG5	(AT91_MATRIX + 0x14)	/* Master Configuration Register 5 */
-#define AT91_MATRIX_MCFG6	(AT91_MATRIX + 0x18)	/* Master Configuration Register 6 */
-#define AT91_MATRIX_MCFG7	(AT91_MATRIX + 0x1C)	/* Master Configuration Register 7 */
-#define AT91_MATRIX_MCFG8	(AT91_MATRIX + 0x20)	/* Master Configuration Register 8 */
-#define AT91_MATRIX_MCFG9	(AT91_MATRIX + 0x24)	/* Master Configuration Register 9 */
-#define AT91_MATRIX_MCFG10	(AT91_MATRIX + 0x28)	/* Master Configuration Register 10 */
-#define AT91_MATRIX_MCFG11	(AT91_MATRIX + 0x2C)	/* Master Configuration Register 11 */
-#define		AT91_MATRIX_ULBT	(7 << 0)	/* Undefined Length Burst Type */
-#define			AT91_MATRIX_ULBT_INFINITE	(0 << 0)
-#define			AT91_MATRIX_ULBT_SINGLE		(1 << 0)
-#define			AT91_MATRIX_ULBT_FOUR		(2 << 0)
-#define			AT91_MATRIX_ULBT_EIGHT		(3 << 0)
-#define			AT91_MATRIX_ULBT_SIXTEEN	(4 << 0)
-#define			AT91_MATRIX_ULBT_THIRTYTWO	(5 << 0)
-#define			AT91_MATRIX_ULBT_SIXTYFOUR	(6 << 0)
-#define			AT91_MATRIX_ULBT_128		(7 << 0)
+#define AT91SAM9G45_MATRIX_MCFG0	(0x00)	/* Master Configuration Register 0 */
+#define AT91SAM9G45_MATRIX_MCFG1	(0x04)	/* Master Configuration Register 1 */
+#define AT91SAM9G45_MATRIX_MCFG2	(0x08)	/* Master Configuration Register 2 */
+#define AT91SAM9G45_MATRIX_MCFG3	(0x0C)	/* Master Configuration Register 3 */
+#define AT91SAM9G45_MATRIX_MCFG4	(0x10)	/* Master Configuration Register 4 */
+#define AT91SAM9G45_MATRIX_MCFG5	(0x14)	/* Master Configuration Register 5 */
+#define AT91SAM9G45_MATRIX_MCFG6	(0x18)	/* Master Configuration Register 6 */
+#define AT91SAM9G45_MATRIX_MCFG7	(0x1C)	/* Master Configuration Register 7 */
+#define AT91SAM9G45_MATRIX_MCFG8	(0x20)	/* Master Configuration Register 8 */
+#define AT91SAM9G45_MATRIX_MCFG9	(0x24)	/* Master Configuration Register 9 */
+#define AT91SAM9G45_MATRIX_MCFG10	(0x28)	/* Master Configuration Register 10 */
+#define AT91SAM9G45_MATRIX_MCFG11	(0x2C)	/* Master Configuration Register 11 */
+#define		AT91SAM9G45_MATRIX_ULBT	(7 << 0)	/* Undefined Length Burst Type */
+#define			AT91SAM9G45_MATRIX_ULBT_INFINITE	(0 << 0)
+#define			AT91SAM9G45_MATRIX_ULBT_SINGLE		(1 << 0)
+#define			AT91SAM9G45_MATRIX_ULBT_FOUR		(2 << 0)
+#define			AT91SAM9G45_MATRIX_ULBT_EIGHT		(3 << 0)
+#define			AT91SAM9G45_MATRIX_ULBT_SIXTEEN	(4 << 0)
+#define			AT91SAM9G45_MATRIX_ULBT_THIRTYTWO	(5 << 0)
+#define			AT91SAM9G45_MATRIX_ULBT_SIXTYFOUR	(6 << 0)
+#define			AT91SAM9G45_MATRIX_ULBT_128		(7 << 0)
 
-#define AT91_MATRIX_SCFG0	(AT91_MATRIX + 0x40)	/* Slave Configuration Register 0 */
-#define AT91_MATRIX_SCFG1	(AT91_MATRIX + 0x44)	/* Slave Configuration Register 1 */
-#define AT91_MATRIX_SCFG2	(AT91_MATRIX + 0x48)	/* Slave Configuration Register 2 */
-#define AT91_MATRIX_SCFG3	(AT91_MATRIX + 0x4C)	/* Slave Configuration Register 3 */
-#define AT91_MATRIX_SCFG4	(AT91_MATRIX + 0x50)	/* Slave Configuration Register 4 */
-#define AT91_MATRIX_SCFG5	(AT91_MATRIX + 0x54)	/* Slave Configuration Register 5 */
-#define AT91_MATRIX_SCFG6	(AT91_MATRIX + 0x58)	/* Slave Configuration Register 6 */
-#define AT91_MATRIX_SCFG7	(AT91_MATRIX + 0x5C)	/* Slave Configuration Register 7 */
-#define		AT91_MATRIX_SLOT_CYCLE		(0x1ff << 0)	/* Maximum Number of Allowed Cycles for a Burst */
-#define		AT91_MATRIX_DEFMSTR_TYPE	(3    << 16)	/* Default Master Type */
-#define			AT91_MATRIX_DEFMSTR_TYPE_NONE	(0 << 16)
-#define			AT91_MATRIX_DEFMSTR_TYPE_LAST	(1 << 16)
-#define			AT91_MATRIX_DEFMSTR_TYPE_FIXED	(2 << 16)
-#define		AT91_MATRIX_FIXED_DEFMSTR	(0xf  << 18)	/* Fixed Index of Default Master */
+#define AT91SAM9G45_MATRIX_SCFG0	(0x40)	/* Slave Configuration Register 0 */
+#define AT91SAM9G45_MATRIX_SCFG1	(0x44)	/* Slave Configuration Register 1 */
+#define AT91SAM9G45_MATRIX_SCFG2	(0x48)	/* Slave Configuration Register 2 */
+#define AT91SAM9G45_MATRIX_SCFG3	(0x4C)	/* Slave Configuration Register 3 */
+#define AT91SAM9G45_MATRIX_SCFG4	(0x50)	/* Slave Configuration Register 4 */
+#define AT91SAM9G45_MATRIX_SCFG5	(0x54)	/* Slave Configuration Register 5 */
+#define AT91SAM9G45_MATRIX_SCFG6	(0x58)	/* Slave Configuration Register 6 */
+#define AT91SAM9G45_MATRIX_SCFG7	(0x5C)	/* Slave Configuration Register 7 */
+#define		AT91SAM9G45_MATRIX_SLOT_CYCLE		(0x1ff << 0)	/* Maximum Number of Allowed Cycles for a Burst */
+#define		AT91SAM9G45_MATRIX_DEFMSTR_TYPE	(3    << 16)	/* Default Master Type */
+#define			AT91SAM9G45_MATRIX_DEFMSTR_TYPE_NONE	(0 << 16)
+#define			AT91SAM9G45_MATRIX_DEFMSTR_TYPE_LAST	(1 << 16)
+#define			AT91SAM9G45_MATRIX_DEFMSTR_TYPE_FIXED	(2 << 16)
+#define		AT91SAM9G45_MATRIX_FIXED_DEFMSTR	(0xf  << 18)	/* Fixed Index of Default Master */
 
-#define AT91_MATRIX_PRAS0	(AT91_MATRIX + 0x80)	/* Priority Register A for Slave 0 */
-#define AT91_MATRIX_PRBS0	(AT91_MATRIX + 0x84)	/* Priority Register B for Slave 0 */
-#define AT91_MATRIX_PRAS1	(AT91_MATRIX + 0x88)	/* Priority Register A for Slave 1 */
-#define AT91_MATRIX_PRBS1	(AT91_MATRIX + 0x8C)	/* Priority Register B for Slave 1 */
-#define AT91_MATRIX_PRAS2	(AT91_MATRIX + 0x90)	/* Priority Register A for Slave 2 */
-#define AT91_MATRIX_PRBS2	(AT91_MATRIX + 0x94)	/* Priority Register B for Slave 2 */
-#define AT91_MATRIX_PRAS3	(AT91_MATRIX + 0x98)	/* Priority Register A for Slave 3 */
-#define AT91_MATRIX_PRBS3	(AT91_MATRIX + 0x9C)	/* Priority Register B for Slave 3 */
-#define AT91_MATRIX_PRAS4	(AT91_MATRIX + 0xA0)	/* Priority Register A for Slave 4 */
-#define AT91_MATRIX_PRBS4	(AT91_MATRIX + 0xA4)	/* Priority Register B for Slave 4 */
-#define AT91_MATRIX_PRAS5	(AT91_MATRIX + 0xA8)	/* Priority Register A for Slave 5 */
-#define AT91_MATRIX_PRBS5	(AT91_MATRIX + 0xAC)	/* Priority Register B for Slave 5 */
-#define AT91_MATRIX_PRAS6	(AT91_MATRIX + 0xB0)	/* Priority Register A for Slave 6 */
-#define AT91_MATRIX_PRBS6	(AT91_MATRIX + 0xB4)	/* Priority Register B for Slave 6 */
-#define AT91_MATRIX_PRAS7	(AT91_MATRIX + 0xB8)	/* Priority Register A for Slave 7 */
-#define AT91_MATRIX_PRBS7	(AT91_MATRIX + 0xBC)	/* Priority Register B for Slave 7 */
-#define		AT91_MATRIX_M0PR		(3 << 0)	/* Master 0 Priority */
-#define		AT91_MATRIX_M1PR		(3 << 4)	/* Master 1 Priority */
-#define		AT91_MATRIX_M2PR		(3 << 8)	/* Master 2 Priority */
-#define		AT91_MATRIX_M3PR		(3 << 12)	/* Master 3 Priority */
-#define		AT91_MATRIX_M4PR		(3 << 16)	/* Master 4 Priority */
-#define		AT91_MATRIX_M5PR		(3 << 20)	/* Master 5 Priority */
-#define		AT91_MATRIX_M6PR		(3 << 24)	/* Master 6 Priority */
-#define		AT91_MATRIX_M7PR		(3 << 28)	/* Master 7 Priority */
-#define		AT91_MATRIX_M8PR		(3 << 0)	/* Master 8 Priority (in Register B) */
-#define		AT91_MATRIX_M9PR		(3 << 4)	/* Master 9 Priority (in Register B) */
-#define		AT91_MATRIX_M10PR		(3 << 8)	/* Master 10 Priority (in Register B) */
-#define		AT91_MATRIX_M11PR		(3 << 12)	/* Master 11 Priority (in Register B) */
+#define AT91SAM9G45_MATRIX_PRAS0	(0x80)	/* Priority Register A for Slave 0 */
+#define AT91SAM9G45_MATRIX_PRBS0	(0x84)	/* Priority Register B for Slave 0 */
+#define AT91SAM9G45_MATRIX_PRAS1	(0x88)	/* Priority Register A for Slave 1 */
+#define AT91SAM9G45_MATRIX_PRBS1	(0x8C)	/* Priority Register B for Slave 1 */
+#define AT91SAM9G45_MATRIX_PRAS2	(0x90)	/* Priority Register A for Slave 2 */
+#define AT91SAM9G45_MATRIX_PRBS2	(0x94)	/* Priority Register B for Slave 2 */
+#define AT91SAM9G45_MATRIX_PRAS3	(0x98)	/* Priority Register A for Slave 3 */
+#define AT91SAM9G45_MATRIX_PRBS3	(0x9C)	/* Priority Register B for Slave 3 */
+#define AT91SAM9G45_MATRIX_PRAS4	(0xA0)	/* Priority Register A for Slave 4 */
+#define AT91SAM9G45_MATRIX_PRBS4	(0xA4)	/* Priority Register B for Slave 4 */
+#define AT91SAM9G45_MATRIX_PRAS5	(0xA8)	/* Priority Register A for Slave 5 */
+#define AT91SAM9G45_MATRIX_PRBS5	(0xAC)	/* Priority Register B for Slave 5 */
+#define AT91SAM9G45_MATRIX_PRAS6	(0xB0)	/* Priority Register A for Slave 6 */
+#define AT91SAM9G45_MATRIX_PRBS6	(0xB4)	/* Priority Register B for Slave 6 */
+#define AT91SAM9G45_MATRIX_PRAS7	(0xB8)	/* Priority Register A for Slave 7 */
+#define AT91SAM9G45_MATRIX_PRBS7	(0xBC)	/* Priority Register B for Slave 7 */
+#define		AT91SAM9G45_MATRIX_M0PR		(3 << 0)	/* Master 0 Priority */
+#define		AT91SAM9G45_MATRIX_M1PR		(3 << 4)	/* Master 1 Priority */
+#define		AT91SAM9G45_MATRIX_M2PR		(3 << 8)	/* Master 2 Priority */
+#define		AT91SAM9G45_MATRIX_M3PR		(3 << 12)	/* Master 3 Priority */
+#define		AT91SAM9G45_MATRIX_M4PR		(3 << 16)	/* Master 4 Priority */
+#define		AT91SAM9G45_MATRIX_M5PR		(3 << 20)	/* Master 5 Priority */
+#define		AT91SAM9G45_MATRIX_M6PR		(3 << 24)	/* Master 6 Priority */
+#define		AT91SAM9G45_MATRIX_M7PR		(3 << 28)	/* Master 7 Priority */
+#define		AT91SAM9G45_MATRIX_M8PR		(3 << 0)	/* Master 8 Priority (in Register B) */
+#define		AT91SAM9G45_MATRIX_M9PR		(3 << 4)	/* Master 9 Priority (in Register B) */
+#define		AT91SAM9G45_MATRIX_M10PR		(3 << 8)	/* Master 10 Priority (in Register B) */
+#define		AT91SAM9G45_MATRIX_M11PR		(3 << 12)	/* Master 11 Priority (in Register B) */
 
-#define AT91_MATRIX_MRCR	(AT91_MATRIX + 0x100)	/* Master Remap Control Register */
-#define		AT91_MATRIX_RCB0		(1 << 0)	/* Remap Command for AHB Master 0 (ARM926EJ-S Instruction Master) */
-#define		AT91_MATRIX_RCB1		(1 << 1)	/* Remap Command for AHB Master 1 (ARM926EJ-S Data Master) */
-#define		AT91_MATRIX_RCB2		(1 << 2)
-#define		AT91_MATRIX_RCB3		(1 << 3)
-#define		AT91_MATRIX_RCB4		(1 << 4)
-#define		AT91_MATRIX_RCB5		(1 << 5)
-#define		AT91_MATRIX_RCB6		(1 << 6)
-#define		AT91_MATRIX_RCB7		(1 << 7)
-#define		AT91_MATRIX_RCB8		(1 << 8)
-#define		AT91_MATRIX_RCB9		(1 << 9)
-#define		AT91_MATRIX_RCB10		(1 << 10)
-#define		AT91_MATRIX_RCB11		(1 << 11)
+#define AT91SAM9G45_MATRIX_MRCR	(0x100)	/* Master Remap Control Register */
+#define		AT91SAM9G45_MATRIX_RCB0		(1 << 0)	/* Remap Command for AHB Master 0 (ARM926EJ-S Instruction Master) */
+#define		AT91SAM9G45_MATRIX_RCB1		(1 << 1)	/* Remap Command for AHB Master 1 (ARM926EJ-S Data Master) */
+#define		AT91SAM9G45_MATRIX_RCB2		(1 << 2)
+#define		AT91SAM9G45_MATRIX_RCB3		(1 << 3)
+#define		AT91SAM9G45_MATRIX_RCB4		(1 << 4)
+#define		AT91SAM9G45_MATRIX_RCB5		(1 << 5)
+#define		AT91SAM9G45_MATRIX_RCB6		(1 << 6)
+#define		AT91SAM9G45_MATRIX_RCB7		(1 << 7)
+#define		AT91SAM9G45_MATRIX_RCB8		(1 << 8)
+#define		AT91SAM9G45_MATRIX_RCB9		(1 << 9)
+#define		AT91SAM9G45_MATRIX_RCB10		(1 << 10)
+#define		AT91SAM9G45_MATRIX_RCB11		(1 << 11)
 
-#define AT91_MATRIX_TCMR	(AT91_MATRIX + 0x110)	/* TCM Configuration Register */
-#define		AT91_MATRIX_ITCM_SIZE		(0xf << 0)	/* Size of ITCM enabled memory block */
-#define			AT91_MATRIX_ITCM_0		(0 << 0)
-#define			AT91_MATRIX_ITCM_32		(6 << 0)
-#define		AT91_MATRIX_DTCM_SIZE		(0xf << 4)	/* Size of DTCM enabled memory block */
-#define			AT91_MATRIX_DTCM_0		(0 << 4)
-#define			AT91_MATRIX_DTCM_32		(6 << 4)
-#define			AT91_MATRIX_DTCM_64		(7 << 4)
-#define		AT91_MATRIX_TCM_NWS		(0x1 << 11)	/* Wait state TCM register */
-#define			AT91_MATRIX_TCM_NO_WS		(0x0 << 11)
-#define			AT91_MATRIX_TCM_ONE_WS		(0x1 << 11)
+#define AT91SAM9G45_MATRIX_TCMR	(0x110)	/* TCM Configuration Register */
+#define		AT91SAM9G45_MATRIX_ITCM_SIZE		(0xf << 0)	/* Size of ITCM enabled memory block */
+#define			AT91SAM9G45_MATRIX_ITCM_0		(0 << 0)
+#define			AT91SAM9G45_MATRIX_ITCM_32		(6 << 0)
+#define		AT91SAM9G45_MATRIX_DTCM_SIZE		(0xf << 4)	/* Size of DTCM enabled memory block */
+#define			AT91SAM9G45_MATRIX_DTCM_0		(0 << 4)
+#define			AT91SAM9G45_MATRIX_DTCM_32		(6 << 4)
+#define			AT91SAM9G45_MATRIX_DTCM_64		(7 << 4)
+#define		AT91SAM9G45_MATRIX_TCM_NWS		(0x1 << 11)	/* Wait state TCM register */
+#define			AT91SAM9G45_MATRIX_TCM_NO_WS		(0x0 << 11)
+#define			AT91SAM9G45_MATRIX_TCM_ONE_WS		(0x1 << 11)
 
-#define AT91_MATRIX_VIDEO	(AT91_MATRIX + 0x118)	/* Video Mode Configuration Register */
+#define AT91SAM9G45_MATRIX_VIDEO	(0x118)	/* Video Mode Configuration Register */
 #define		AT91C_VDEC_SEL			(0x1 <<  0) /* Video Mode Selection */
 #define			AT91C_VDEC_SEL_OFF		(0 << 0)
 #define			AT91C_VDEC_SEL_ON		(1 << 0)
 
-#define AT91_MATRIX_EBICSA	(AT91_MATRIX + 0x128)	/* EBI Chip Select Assignment Register */
-#define		AT91_MATRIX_EBI_CS1A		(1 << 1)	/* Chip Select 1 Assignment */
-#define			AT91_MATRIX_EBI_CS1A_SMC		(0 << 1)
-#define			AT91_MATRIX_EBI_CS1A_SDRAMC		(1 << 1)
-#define		AT91_MATRIX_EBI_CS3A		(1 << 3)	/* Chip Select 3 Assignment */
-#define			AT91_MATRIX_EBI_CS3A_SMC		(0 << 3)
-#define			AT91_MATRIX_EBI_CS3A_SMC_SMARTMEDIA	(1 << 3)
-#define		AT91_MATRIX_EBI_CS4A		(1 << 4)	/* Chip Select 4 Assignment */
-#define			AT91_MATRIX_EBI_CS4A_SMC		(0 << 4)
-#define			AT91_MATRIX_EBI_CS4A_SMC_CF0		(1 << 4)
-#define		AT91_MATRIX_EBI_CS5A		(1 << 5)	/* Chip Select 5 Assignment */
-#define			AT91_MATRIX_EBI_CS5A_SMC		(0 << 5)
-#define			AT91_MATRIX_EBI_CS5A_SMC_CF1		(1 << 5)
-#define		AT91_MATRIX_EBI_DBPUC		(1 << 8)	/* Data Bus Pull-up Configuration */
-#define			AT91_MATRIX_EBI_DBPU_ON			(0 << 8)
-#define			AT91_MATRIX_EBI_DBPU_OFF		(1 << 8)
-#define		AT91_MATRIX_EBI_VDDIOMSEL	(1 << 16)	/* Memory voltage selection */
-#define			AT91_MATRIX_EBI_VDDIOMSEL_1_8V		(0 << 16)
-#define			AT91_MATRIX_EBI_VDDIOMSEL_3_3V		(1 << 16)
-#define		AT91_MATRIX_EBI_EBI_IOSR	(1 << 17)	/* EBI I/O slew rate selection */
-#define			AT91_MATRIX_EBI_EBI_IOSR_REDUCED	(0 << 17)
-#define			AT91_MATRIX_EBI_EBI_IOSR_NORMAL		(1 << 17)
-#define		AT91_MATRIX_EBI_DDR_IOSR	(1 << 18)	/* DDR2 dedicated port I/O slew rate selection */
-#define			AT91_MATRIX_EBI_DDR_IOSR_REDUCED	(0 << 18)
-#define			AT91_MATRIX_EBI_DDR_IOSR_NORMAL		(1 << 18)
+#define AT91SAM9G45_MATRIX_EBICSA	(0x128)	/* EBI Chip Select Assignment Register */
+#define		AT91SAM9G45_MATRIX_EBI_CS1A		(1 << 1)	/* Chip Select 1 Assignment */
+#define			AT91SAM9G45_MATRIX_EBI_CS1A_SMC		(0 << 1)
+#define			AT91SAM9G45_MATRIX_EBI_CS1A_SDRAMC		(1 << 1)
+#define		AT91SAM9G45_MATRIX_EBI_CS3A		(1 << 3)	/* Chip Select 3 Assignment */
+#define			AT91SAM9G45_MATRIX_EBI_CS3A_SMC		(0 << 3)
+#define			AT91SAM9G45_MATRIX_EBI_CS3A_SMC_SMARTMEDIA	(1 << 3)
+#define		AT91SAM9G45_MATRIX_EBI_CS4A		(1 << 4)	/* Chip Select 4 Assignment */
+#define			AT91SAM9G45_MATRIX_EBI_CS4A_SMC		(0 << 4)
+#define			AT91SAM9G45_MATRIX_EBI_CS4A_SMC_CF0		(1 << 4)
+#define		AT91SAM9G45_MATRIX_EBI_CS5A		(1 << 5)	/* Chip Select 5 Assignment */
+#define			AT91SAM9G45_MATRIX_EBI_CS5A_SMC		(0 << 5)
+#define			AT91SAM9G45_MATRIX_EBI_CS5A_SMC_CF1		(1 << 5)
+#define		AT91SAM9G45_MATRIX_EBI_DBPUC		(1 << 8)	/* Data Bus Pull-up Configuration */
+#define			AT91SAM9G45_MATRIX_EBI_DBPU_ON			(0 << 8)
+#define			AT91SAM9G45_MATRIX_EBI_DBPU_OFF		(1 << 8)
+#define		AT91SAM9G45_MATRIX_EBI_VDDIOMSEL	(1 << 16)	/* Memory voltage selection */
+#define			AT91SAM9G45_MATRIX_EBI_VDDIOMSEL_1_8V		(0 << 16)
+#define			AT91SAM9G45_MATRIX_EBI_VDDIOMSEL_3_3V		(1 << 16)
+#define		AT91SAM9G45_MATRIX_EBI_EBI_IOSR	(1 << 17)	/* EBI I/O slew rate selection */
+#define			AT91SAM9G45_MATRIX_EBI_EBI_IOSR_REDUCED	(0 << 17)
+#define			AT91SAM9G45_MATRIX_EBI_EBI_IOSR_NORMAL		(1 << 17)
+#define		AT91SAM9G45_MATRIX_EBI_DDR_IOSR	(1 << 18)	/* DDR2 dedicated port I/O slew rate selection */
+#define			AT91SAM9G45_MATRIX_EBI_DDR_IOSR_REDUCED	(0 << 18)
+#define			AT91SAM9G45_MATRIX_EBI_DDR_IOSR_NORMAL		(1 << 18)
 
-#define AT91_MATRIX_WPMR	(AT91_MATRIX + 0x1E4)	/* Write Protect Mode Register */
-#define		AT91_MATRIX_WPMR_WPEN		(1 << 0)	/* Write Protect ENable */
-#define			AT91_MATRIX_WPMR_WP_WPDIS		(0 << 0)
-#define			AT91_MATRIX_WPMR_WP_WPEN		(1 << 0)
-#define		AT91_MATRIX_WPMR_WPKEY		(0xFFFFFF << 8)	/* Write Protect KEY */
+#define AT91SAM9G45_MATRIX_WPMR	(0x1E4)	/* Write Protect Mode Register */
+#define		AT91SAM9G45_MATRIX_WPMR_WPEN		(1 << 0)	/* Write Protect ENable */
+#define			AT91SAM9G45_MATRIX_WPMR_WP_WPDIS		(0 << 0)
+#define			AT91SAM9G45_MATRIX_WPMR_WP_WPEN		(1 << 0)
+#define		AT91SAM9G45_MATRIX_WPMR_WPKEY		(0xFFFFFF << 8)	/* Write Protect KEY */
 
-#define AT91_MATRIX_WPSR	(AT91_MATRIX + 0x1E8)	/* Write Protect Status Register */
-#define		AT91_MATRIX_WPSR_WPVS		(1 << 0)	/* Write Protect Violation Status */
-#define			AT91_MATRIX_WPSR_NO_WPV		(0 << 0)
-#define			AT91_MATRIX_WPSR_WPV		(1 << 0)
-#define		AT91_MATRIX_WPSR_WPVSRC		(0xFFFF << 8)	/* Write Protect Violation Source */
+#define AT91SAM9G45_MATRIX_WPSR	(0x1E8)	/* Write Protect Status Register */
+#define		AT91SAM9G45_MATRIX_WPSR_WPVS		(1 << 0)	/* Write Protect Violation Status */
+#define			AT91SAM9G45_MATRIX_WPSR_NO_WPV		(0 << 0)
+#define			AT91SAM9G45_MATRIX_WPSR_WPV		(1 << 0)
+#define		AT91SAM9G45_MATRIX_WPSR_WPVSRC		(0xFFFF << 8)	/* Write Protect Violation Source */
 
 #endif
diff --git a/arch/arm/mach-at91/include/mach/at91sam9n12_matrix.h b/arch/arm/mach-at91/include/mach/at91sam9n12_matrix.h
index 0e42918f65..bdb0211abc 100644
--- a/arch/arm/mach-at91/include/mach/at91sam9n12_matrix.h
+++ b/arch/arm/mach-at91/include/mach/at91sam9n12_matrix.h
@@ -15,84 +15,84 @@
 #ifndef _AT91SAM9N12_MATRIX_H_
 #define _AT91SAM9N12_MATRIX_H_
 
-#define AT91_MATRIX_MCFG0	(AT91_MATRIX + 0x00)	/* Master Configuration Register 0 */
-#define AT91_MATRIX_MCFG1	(AT91_MATRIX + 0x04)	/* Master Configuration Register 1 */
-#define AT91_MATRIX_MCFG2	(AT91_MATRIX + 0x08)	/* Master Configuration Register 2 */
-#define AT91_MATRIX_MCFG3	(AT91_MATRIX + 0x0C)	/* Master Configuration Register 3 */
-#define AT91_MATRIX_MCFG4	(AT91_MATRIX + 0x10)	/* Master Configuration Register 4 */
-#define AT91_MATRIX_MCFG5	(AT91_MATRIX + 0x14)	/* Master Configuration Register 5 */
-#define		AT91_MATRIX_ULBT	(7 << 0)	/* Undefined Length Burst Type */
-#define			AT91_MATRIX_ULBT_INFINITE	(0 << 0)
-#define			AT91_MATRIX_ULBT_SINGLE		(1 << 0)
-#define			AT91_MATRIX_ULBT_FOUR		(2 << 0)
-#define			AT91_MATRIX_ULBT_EIGHT		(3 << 0)
-#define			AT91_MATRIX_ULBT_SIXTEEN	(4 << 0)
-#define			AT91_MATRIX_ULBT_THIRTYTWO	(5 << 0)
-#define			AT91_MATRIX_ULBT_SIXTYFOUR	(6 << 0)
-#define			AT91_MATRIX_ULBT_128		(7 << 0)
+#define AT91SAM9N12_MATRIX_MCFG0	(0x00)	/* Master Configuration Register 0 */
+#define AT91SAM9N12_MATRIX_MCFG1	(0x04)	/* Master Configuration Register 1 */
+#define AT91SAM9N12_MATRIX_MCFG2	(0x08)	/* Master Configuration Register 2 */
+#define AT91SAM9N12_MATRIX_MCFG3	(0x0C)	/* Master Configuration Register 3 */
+#define AT91SAM9N12_MATRIX_MCFG4	(0x10)	/* Master Configuration Register 4 */
+#define AT91SAM9N12_MATRIX_MCFG5	(0x14)	/* Master Configuration Register 5 */
+#define		AT91SAM9N12_MATRIX_ULBT	(7 << 0)	/* Undefined Length Burst Type */
+#define			AT91SAM9N12_MATRIX_ULBT_INFINITE	(0 << 0)
+#define			AT91SAM9N12_MATRIX_ULBT_SINGLE		(1 << 0)
+#define			AT91SAM9N12_MATRIX_ULBT_FOUR		(2 << 0)
+#define			AT91SAM9N12_MATRIX_ULBT_EIGHT		(3 << 0)
+#define			AT91SAM9N12_MATRIX_ULBT_SIXTEEN	(4 << 0)
+#define			AT91SAM9N12_MATRIX_ULBT_THIRTYTWO	(5 << 0)
+#define			AT91SAM9N12_MATRIX_ULBT_SIXTYFOUR	(6 << 0)
+#define			AT91SAM9N12_MATRIX_ULBT_128		(7 << 0)
 
-#define AT91_MATRIX_SCFG0	(AT91_MATRIX + 0x40)	/* Slave Configuration Register 0 */
-#define AT91_MATRIX_SCFG1	(AT91_MATRIX + 0x44)	/* Slave Configuration Register 1 */
-#define AT91_MATRIX_SCFG2	(AT91_MATRIX + 0x48)	/* Slave Configuration Register 2 */
-#define AT91_MATRIX_SCFG3	(AT91_MATRIX + 0x4C)	/* Slave Configuration Register 3 */
-#define AT91_MATRIX_SCFG4	(AT91_MATRIX + 0x50)	/* Slave Configuration Register 4 */
-#define		AT91_MATRIX_SLOT_CYCLE		(0x1ff << 0)	/* Maximum Number of Allowed Cycles for a Burst */
-#define		AT91_MATRIX_DEFMSTR_TYPE	(3 << 16)	/* Default Master Type */
-#define			AT91_MATRIX_DEFMSTR_TYPE_NONE	(0 << 16)
-#define			AT91_MATRIX_DEFMSTR_TYPE_LAST	(1 << 16)
-#define			AT91_MATRIX_DEFMSTR_TYPE_FIXED	(2 << 16)
-#define		AT91_MATRIX_FIXED_DEFMSTR	(0xf << 18)	/* Fixed Index of Default Master */
+#define AT91SAM9N12_MATRIX_SCFG0	(0x40)	/* Slave Configuration Register 0 */
+#define AT91SAM9N12_MATRIX_SCFG1	(0x44)	/* Slave Configuration Register 1 */
+#define AT91SAM9N12_MATRIX_SCFG2	(0x48)	/* Slave Configuration Register 2 */
+#define AT91SAM9N12_MATRIX_SCFG3	(0x4C)	/* Slave Configuration Register 3 */
+#define AT91SAM9N12_MATRIX_SCFG4	(0x50)	/* Slave Configuration Register 4 */
+#define		AT91SAM9N12_MATRIX_SLOT_CYCLE		(0x1ff << 0)	/* Maximum Number of Allowed Cycles for a Burst */
+#define		AT91SAM9N12_MATRIX_DEFMSTR_TYPE	(3 << 16)	/* Default Master Type */
+#define			AT91SAM9N12_MATRIX_DEFMSTR_TYPE_NONE	(0 << 16)
+#define			AT91SAM9N12_MATRIX_DEFMSTR_TYPE_LAST	(1 << 16)
+#define			AT91SAM9N12_MATRIX_DEFMSTR_TYPE_FIXED	(2 << 16)
+#define		AT91SAM9N12_MATRIX_FIXED_DEFMSTR	(0xf << 18)	/* Fixed Index of Default Master */
 
-#define AT91_MATRIX_PRAS0	(AT91_MATRIX + 0x80)	/* Priority Register A for Slave 0 */
-#define AT91_MATRIX_PRAS1	(AT91_MATRIX + 0x88)	/* Priority Register A for Slave 1 */
-#define AT91_MATRIX_PRAS2	(AT91_MATRIX + 0x90)	/* Priority Register A for Slave 2 */
-#define AT91_MATRIX_PRAS3	(AT91_MATRIX + 0x98)	/* Priority Register A for Slave 3 */
-#define AT91_MATRIX_PRAS4	(AT91_MATRIX + 0xA0)	/* Priority Register A for Slave 4 */
-#define		AT91_MATRIX_M0PR		(3 << 0)	/* Master 0 Priority */
-#define		AT91_MATRIX_M1PR		(3 << 4)	/* Master 1 Priority */
-#define		AT91_MATRIX_M2PR		(3 << 8)	/* Master 2 Priority */
-#define		AT91_MATRIX_M3PR		(3 << 12)	/* Master 3 Priority */
-#define		AT91_MATRIX_M4PR		(3 << 16)	/* Master 4 Priority */
-#define		AT91_MATRIX_M5PR		(3 << 20)	/* Master 5 Priority */
+#define AT91SAM9N12_MATRIX_PRAS0	(0x80)	/* Priority Register A for Slave 0 */
+#define AT91SAM9N12_MATRIX_PRAS1	(0x88)	/* Priority Register A for Slave 1 */
+#define AT91SAM9N12_MATRIX_PRAS2	(0x90)	/* Priority Register A for Slave 2 */
+#define AT91SAM9N12_MATRIX_PRAS3	(0x98)	/* Priority Register A for Slave 3 */
+#define AT91SAM9N12_MATRIX_PRAS4	(0xA0)	/* Priority Register A for Slave 4 */
+#define		AT91SAM9N12_MATRIX_M0PR		(3 << 0)	/* Master 0 Priority */
+#define		AT91SAM9N12_MATRIX_M1PR		(3 << 4)	/* Master 1 Priority */
+#define		AT91SAM9N12_MATRIX_M2PR		(3 << 8)	/* Master 2 Priority */
+#define		AT91SAM9N12_MATRIX_M3PR		(3 << 12)	/* Master 3 Priority */
+#define		AT91SAM9N12_MATRIX_M4PR		(3 << 16)	/* Master 4 Priority */
+#define		AT91SAM9N12_MATRIX_M5PR		(3 << 20)	/* Master 5 Priority */
 
-#define AT91_MATRIX_MRCR	(AT91_MATRIX + 0x100)	/* Master Remap Control Register */
-#define		AT91_MATRIX_RCB0		(1 << 0)	/* Remap Command for AHB Master 0 (ARM926EJ-S Instruction Master) */
-#define		AT91_MATRIX_RCB1		(1 << 1)	/* Remap Command for AHB Master 1 (ARM926EJ-S Data Master) */
-#define		AT91_MATRIX_RCB2		(1 << 2)
-#define		AT91_MATRIX_RCB3		(1 << 3)
-#define		AT91_MATRIX_RCB4		(1 << 4)
-#define		AT91_MATRIX_RCB5		(1 << 5)
+#define AT91SAM9N12_MATRIX_MRCR	(0x100)	/* Master Remap Control Register */
+#define		AT91SAM9N12_MATRIX_RCB0		(1 << 0)	/* Remap Command for AHB Master 0 (ARM926EJ-S Instruction Master) */
+#define		AT91SAM9N12_MATRIX_RCB1		(1 << 1)	/* Remap Command for AHB Master 1 (ARM926EJ-S Data Master) */
+#define		AT91SAM9N12_MATRIX_RCB2		(1 << 2)
+#define		AT91SAM9N12_MATRIX_RCB3		(1 << 3)
+#define		AT91SAM9N12_MATRIX_RCB4		(1 << 4)
+#define		AT91SAM9N12_MATRIX_RCB5		(1 << 5)
 
-#define AT91_MATRIX_EBICSA	(AT91_MATRIX + 0x118)	/* EBI Chip Select Assignment Register */
-#define		AT91_MATRIX_EBI_CS1A		(1 << 1)	/* Chip Select 1 Assignment */
-#define			AT91_MATRIX_EBI_CS1A_SMC		(0 << 1)
-#define			AT91_MATRIX_EBI_CS1A_SDRAMC		(1 << 1)
-#define		AT91_MATRIX_EBI_CS3A		(1 << 3)	/* Chip Select 3 Assignment */
-#define			AT91_MATRIX_EBI_CS3A_SMC		(0 << 3)
-#define			AT91_MATRIX_EBI_CS3A_SMC_NANDFLASH	(1 << 3)
-#define		AT91_MATRIX_EBI_DBPUC		(1 << 8)	/* Data Bus Pull-up Configuration */
-#define			AT91_MATRIX_EBI_DBPU_ON			(0 << 8)
-#define			AT91_MATRIX_EBI_DBPU_OFF		(1 << 8)
-#define		AT91_MATRIX_EBI_DBPDC		(1 << 9)	/* Data Bus Pull-up Configuration */
-#define			AT91_MATRIX_EBI_DBPD_ON			(0 << 9)
-#define			AT91_MATRIX_EBI_DBPD_OFF		(1 << 9)
-#define		AT91_MATRIX_EBI_DRIVE		(1 << 17)	/* EBI I/O Drive Configuration */
-#define			AT91_MATRIX_EBI_LOW_DRIVE		(0 << 17)
-#define			AT91_MATRIX_EBI_HIGH_DRIVE		(1 << 17)
-#define		AT91_MATRIX_NFD0_SELECT		(1 << 24)	/* NAND Flash Data Bus Selection */
-#define			AT91_MATRIX_NFD0_ON_D0			(0 << 24)
-#define			AT91_MATRIX_NFD0_ON_D16			(1 << 24)
+#define AT91SAM9N12_MATRIX_EBICSA	(0x118)	/* EBI Chip Select Assignment Register */
+#define		AT91SAM9N12_MATRIX_EBI_CS1A		(1 << 1)	/* Chip Select 1 Assignment */
+#define			AT91SAM9N12_MATRIX_EBI_CS1A_SMC		(0 << 1)
+#define			AT91SAM9N12_MATRIX_EBI_CS1A_SDRAMC		(1 << 1)
+#define		AT91SAM9N12_MATRIX_EBI_CS3A		(1 << 3)	/* Chip Select 3 Assignment */
+#define			AT91SAM9N12_MATRIX_EBI_CS3A_SMC		(0 << 3)
+#define			AT91SAM9N12_MATRIX_EBI_CS3A_SMC_NANDFLASH	(1 << 3)
+#define		AT91SAM9N12_MATRIX_EBI_DBPUC		(1 << 8)	/* Data Bus Pull-up Configuration */
+#define			AT91SAM9N12_MATRIX_EBI_DBPU_ON			(0 << 8)
+#define			AT91SAM9N12_MATRIX_EBI_DBPU_OFF		(1 << 8)
+#define		AT91SAM9N12_MATRIX_EBI_DBPDC		(1 << 9)	/* Data Bus Pull-up Configuration */
+#define			AT91SAM9N12_MATRIX_EBI_DBPD_ON			(0 << 9)
+#define			AT91SAM9N12_MATRIX_EBI_DBPD_OFF		(1 << 9)
+#define		AT91SAM9N12_MATRIX_EBI_DRIVE		(1 << 17)	/* EBI I/O Drive Configuration */
+#define			AT91SAM9N12_MATRIX_EBI_LOW_DRIVE		(0 << 17)
+#define			AT91SAM9N12_MATRIX_EBI_HIGH_DRIVE		(1 << 17)
+#define		AT91SAM9N12_MATRIX_NFD0_SELECT		(1 << 24)	/* NAND Flash Data Bus Selection */
+#define			AT91SAM9N12_MATRIX_NFD0_ON_D0			(0 << 24)
+#define			AT91SAM9N12_MATRIX_NFD0_ON_D16			(1 << 24)
 
-#define AT91_MATRIX_WPMR	(AT91_MATRIX + 0x1E4)	/* Write Protect Mode Register */
-#define		AT91_MATRIX_WPMR_WPEN		(1 << 0)	/* Write Protect ENable */
-#define			AT91_MATRIX_WPMR_WP_WPDIS		(0 << 0)
-#define			AT91_MATRIX_WPMR_WP_WPEN		(1 << 0)
-#define		AT91_MATRIX_WPMR_WPKEY		(0xFFFFFF << 8)	/* Write Protect KEY */
+#define AT91SAM9N12_MATRIX_WPMR	(0x1E4)	/* Write Protect Mode Register */
+#define		AT91SAM9N12_MATRIX_WPMR_WPEN		(1 << 0)	/* Write Protect ENable */
+#define			AT91SAM9N12_MATRIX_WPMR_WP_WPDIS		(0 << 0)
+#define			AT91SAM9N12_MATRIX_WPMR_WP_WPEN		(1 << 0)
+#define		AT91SAM9N12_MATRIX_WPMR_WPKEY		(0xFFFFFF << 8)	/* Write Protect KEY */
 
-#define AT91_MATRIX_WPSR	(AT91_MATRIX + 0x1E8)	/* Write Protect Status Register */
-#define		AT91_MATRIX_WPSR_WPVS		(1 << 0)	/* Write Protect Violation Status */
-#define			AT91_MATRIX_WPSR_NO_WPV		(0 << 0)
-#define			AT91_MATRIX_WPSR_WPV		(1 << 0)
-#define		AT91_MATRIX_WPSR_WPVSRC		(0xFFFF << 8)	/* Write Protect Violation Source */
+#define AT91SAM9N12_MATRIX_WPSR	(0x1E8)	/* Write Protect Status Register */
+#define		AT91SAM9N12_MATRIX_WPSR_WPVS		(1 << 0)	/* Write Protect Violation Status */
+#define			AT91SAM9N12_MATRIX_WPSR_NO_WPV		(0 << 0)
+#define			AT91SAM9N12_MATRIX_WPSR_WPV		(1 << 0)
+#define		AT91SAM9N12_MATRIX_WPSR_WPVSRC		(0xFFFF << 8)	/* Write Protect Violation Source */
 
 #endif
diff --git a/arch/arm/mach-at91/include/mach/at91sam9x5_matrix.h b/arch/arm/mach-at91/include/mach/at91sam9x5_matrix.h
index b070a407e8..fca7646d35 100644
--- a/arch/arm/mach-at91/include/mach/at91sam9x5_matrix.h
+++ b/arch/arm/mach-at91/include/mach/at91sam9x5_matrix.h
@@ -15,125 +15,125 @@
 #ifndef AT91SAM9X5_MATRIX_H
 #define AT91SAM9X5_MATRIX_H
 
-#define AT91_MATRIX_MCFG0	(AT91_MATRIX + 0x00)	/* Master Configuration Register 0 */
-#define AT91_MATRIX_MCFG1	(AT91_MATRIX + 0x04)	/* Master Configuration Register 1 */
-#define AT91_MATRIX_MCFG2	(AT91_MATRIX + 0x08)	/* Master Configuration Register 2 */
-#define AT91_MATRIX_MCFG3	(AT91_MATRIX + 0x0C)	/* Master Configuration Register 3 */
-#define AT91_MATRIX_MCFG4	(AT91_MATRIX + 0x10)	/* Master Configuration Register 4 */
-#define AT91_MATRIX_MCFG5	(AT91_MATRIX + 0x14)	/* Master Configuration Register 5 */
-#define AT91_MATRIX_MCFG6	(AT91_MATRIX + 0x18)	/* Master Configuration Register 6 */
-#define AT91_MATRIX_MCFG7	(AT91_MATRIX + 0x1C)	/* Master Configuration Register 7 */
-#define AT91_MATRIX_MCFG8	(AT91_MATRIX + 0x20)	/* Master Configuration Register 8 */
-#define AT91_MATRIX_MCFG9	(AT91_MATRIX + 0x24)	/* Master Configuration Register 9 */
-#define AT91_MATRIX_MCFG10	(AT91_MATRIX + 0x28)	/* Master Configuration Register 10 */
-#define AT91_MATRIX_MCFG11	(AT91_MATRIX + 0x2C)	/* Master Configuration Register 11 */
-#define		AT91_MATRIX_ULBT	(7 << 0)	/* Undefined Length Burst Type */
-#define			AT91_MATRIX_ULBT_INFINITE	(0 << 0)
-#define			AT91_MATRIX_ULBT_SINGLE		(1 << 0)
-#define			AT91_MATRIX_ULBT_FOUR		(2 << 0)
-#define			AT91_MATRIX_ULBT_EIGHT		(3 << 0)
-#define			AT91_MATRIX_ULBT_SIXTEEN	(4 << 0)
-#define			AT91_MATRIX_ULBT_THIRTYTWO	(5 << 0)
-#define			AT91_MATRIX_ULBT_SIXTYFOUR	(6 << 0)
-#define			AT91_MATRIX_ULBT_128		(7 << 0)
+#define AT91SAM9X5_MATRIX_MCFG0	(0x00)	/* Master Configuration Register 0 */
+#define AT91SAM9X5_MATRIX_MCFG1	(0x04)	/* Master Configuration Register 1 */
+#define AT91SAM9X5_MATRIX_MCFG2	(0x08)	/* Master Configuration Register 2 */
+#define AT91SAM9X5_MATRIX_MCFG3	(0x0C)	/* Master Configuration Register 3 */
+#define AT91SAM9X5_MATRIX_MCFG4	(0x10)	/* Master Configuration Register 4 */
+#define AT91SAM9X5_MATRIX_MCFG5	(0x14)	/* Master Configuration Register 5 */
+#define AT91SAM9X5_MATRIX_MCFG6	(0x18)	/* Master Configuration Register 6 */
+#define AT91SAM9X5_MATRIX_MCFG7	(0x1C)	/* Master Configuration Register 7 */
+#define AT91SAM9X5_MATRIX_MCFG8	(0x20)	/* Master Configuration Register 8 */
+#define AT91SAM9X5_MATRIX_MCFG9	(0x24)	/* Master Configuration Register 9 */
+#define AT91SAM9X5_MATRIX_MCFG10	(0x28)	/* Master Configuration Register 10 */
+#define AT91SAM9X5_MATRIX_MCFG11	(0x2C)	/* Master Configuration Register 11 */
+#define		AT91SAM9X5_MATRIX_ULBT	(7 << 0)	/* Undefined Length Burst Type */
+#define			AT91SAM9X5_MATRIX_ULBT_INFINITE	(0 << 0)
+#define			AT91SAM9X5_MATRIX_ULBT_SINGLE		(1 << 0)
+#define			AT91SAM9X5_MATRIX_ULBT_FOUR		(2 << 0)
+#define			AT91SAM9X5_MATRIX_ULBT_EIGHT		(3 << 0)
+#define			AT91SAM9X5_MATRIX_ULBT_SIXTEEN	(4 << 0)
+#define			AT91SAM9X5_MATRIX_ULBT_THIRTYTWO	(5 << 0)
+#define			AT91SAM9X5_MATRIX_ULBT_SIXTYFOUR	(6 << 0)
+#define			AT91SAM9X5_MATRIX_ULBT_128		(7 << 0)
 
-#define AT91_MATRIX_SCFG0	(AT91_MATRIX + 0x40)	/* Slave Configuration Register 0 */
-#define AT91_MATRIX_SCFG1	(AT91_MATRIX + 0x44)	/* Slave Configuration Register 1 */
-#define AT91_MATRIX_SCFG2	(AT91_MATRIX + 0x48)	/* Slave Configuration Register 2 */
-#define AT91_MATRIX_SCFG3	(AT91_MATRIX + 0x4C)	/* Slave Configuration Register 3 */
-#define AT91_MATRIX_SCFG4	(AT91_MATRIX + 0x50)	/* Slave Configuration Register 4 */
-#define AT91_MATRIX_SCFG5	(AT91_MATRIX + 0x54)	/* Slave Configuration Register 5 */
-#define AT91_MATRIX_SCFG6	(AT91_MATRIX + 0x58)	/* Slave Configuration Register 6 */
-#define AT91_MATRIX_SCFG7	(AT91_MATRIX + 0x5C)	/* Slave Configuration Register 7 */
-#define AT91_MATRIX_SCFG8	(AT91_MATRIX + 0x60)	/* Slave Configuration Register 8 */
-#define		AT91_MATRIX_SLOT_CYCLE		(0x1ff << 0)	/* Maximum Number of Allowed Cycles for a Burst */
-#define		AT91_MATRIX_DEFMSTR_TYPE	(3    << 16)	/* Default Master Type */
-#define			AT91_MATRIX_DEFMSTR_TYPE_NONE	(0 << 16)
-#define			AT91_MATRIX_DEFMSTR_TYPE_LAST	(1 << 16)
-#define			AT91_MATRIX_DEFMSTR_TYPE_FIXED	(2 << 16)
-#define		AT91_MATRIX_FIXED_DEFMSTR	(0xf  << 18)	/* Fixed Index of Default Master */
+#define AT91SAM9X5_MATRIX_SCFG0	(0x40)	/* Slave Configuration Register 0 */
+#define AT91SAM9X5_MATRIX_SCFG1	(0x44)	/* Slave Configuration Register 1 */
+#define AT91SAM9X5_MATRIX_SCFG2	(0x48)	/* Slave Configuration Register 2 */
+#define AT91SAM9X5_MATRIX_SCFG3	(0x4C)	/* Slave Configuration Register 3 */
+#define AT91SAM9X5_MATRIX_SCFG4	(0x50)	/* Slave Configuration Register 4 */
+#define AT91SAM9X5_MATRIX_SCFG5	(0x54)	/* Slave Configuration Register 5 */
+#define AT91SAM9X5_MATRIX_SCFG6	(0x58)	/* Slave Configuration Register 6 */
+#define AT91SAM9X5_MATRIX_SCFG7	(0x5C)	/* Slave Configuration Register 7 */
+#define AT91SAM9X5_MATRIX_SCFG8	(0x60)	/* Slave Configuration Register 8 */
+#define		AT91SAM9X5_MATRIX_SLOT_CYCLE		(0x1ff << 0)	/* Maximum Number of Allowed Cycles for a Burst */
+#define		AT91SAM9X5_MATRIX_DEFMSTR_TYPE	(3    << 16)	/* Default Master Type */
+#define			AT91SAM9X5_MATRIX_DEFMSTR_TYPE_NONE	(0 << 16)
+#define			AT91SAM9X5_MATRIX_DEFMSTR_TYPE_LAST	(1 << 16)
+#define			AT91SAM9X5_MATRIX_DEFMSTR_TYPE_FIXED	(2 << 16)
+#define		AT91SAM9X5_MATRIX_FIXED_DEFMSTR	(0xf  << 18)	/* Fixed Index of Default Master */
 
-#define AT91_MATRIX_PRAS0	(AT91_MATRIX + 0x80)	/* Priority Register A for Slave 0 */
-#define AT91_MATRIX_PRBS0	(AT91_MATRIX + 0x84)	/* Priority Register B for Slave 0 */
-#define AT91_MATRIX_PRAS1	(AT91_MATRIX + 0x88)	/* Priority Register A for Slave 1 */
-#define AT91_MATRIX_PRBS1	(AT91_MATRIX + 0x8C)	/* Priority Register B for Slave 1 */
-#define AT91_MATRIX_PRAS2	(AT91_MATRIX + 0x90)	/* Priority Register A for Slave 2 */
-#define AT91_MATRIX_PRBS2	(AT91_MATRIX + 0x94)	/* Priority Register B for Slave 2 */
-#define AT91_MATRIX_PRAS3	(AT91_MATRIX + 0x98)	/* Priority Register A for Slave 3 */
-#define AT91_MATRIX_PRBS3	(AT91_MATRIX + 0x9C)	/* Priority Register B for Slave 3 */
-#define AT91_MATRIX_PRAS4	(AT91_MATRIX + 0xA0)	/* Priority Register A for Slave 4 */
-#define AT91_MATRIX_PRBS4	(AT91_MATRIX + 0xA4)	/* Priority Register B for Slave 4 */
-#define AT91_MATRIX_PRAS5	(AT91_MATRIX + 0xA8)	/* Priority Register A for Slave 5 */
-#define AT91_MATRIX_PRBS5	(AT91_MATRIX + 0xAC)	/* Priority Register B for Slave 5 */
-#define AT91_MATRIX_PRAS6	(AT91_MATRIX + 0xB0)	/* Priority Register A for Slave 6 */
-#define AT91_MATRIX_PRBS6	(AT91_MATRIX + 0xB4)	/* Priority Register B for Slave 6 */
-#define AT91_MATRIX_PRAS7	(AT91_MATRIX + 0xB8)	/* Priority Register A for Slave 7 */
-#define AT91_MATRIX_PRBS7	(AT91_MATRIX + 0xBC)	/* Priority Register B for Slave 7 */
-#define AT91_MATRIX_PRAS8	(AT91_MATRIX + 0xC0)	/* Priority Register A for Slave 8 */
-#define AT91_MATRIX_PRBS8	(AT91_MATRIX + 0xC4)	/* Priority Register B for Slave 8 */
-#define		AT91_MATRIX_M0PR		(3 << 0)	/* Master 0 Priority */
-#define		AT91_MATRIX_M1PR		(3 << 4)	/* Master 1 Priority */
-#define		AT91_MATRIX_M2PR		(3 << 8)	/* Master 2 Priority */
-#define		AT91_MATRIX_M3PR		(3 << 12)	/* Master 3 Priority */
-#define		AT91_MATRIX_M4PR		(3 << 16)	/* Master 4 Priority */
-#define		AT91_MATRIX_M5PR		(3 << 20)	/* Master 5 Priority */
-#define		AT91_MATRIX_M6PR		(3 << 24)	/* Master 6 Priority */
-#define		AT91_MATRIX_M7PR		(3 << 28)	/* Master 7 Priority */
-#define		AT91_MATRIX_M8PR		(3 << 0)	/* Master 8 Priority (in Register B) */
-#define		AT91_MATRIX_M9PR		(3 << 4)	/* Master 9 Priority (in Register B) */
-#define		AT91_MATRIX_M10PR		(3 << 8)	/* Master 10 Priority (in Register B) */
-#define		AT91_MATRIX_M11PR		(3 << 12)	/* Master 11 Priority (in Register B) */
+#define AT91SAM9X5_MATRIX_PRAS0	(0x80)	/* Priority Register A for Slave 0 */
+#define AT91SAM9X5_MATRIX_PRBS0	(0x84)	/* Priority Register B for Slave 0 */
+#define AT91SAM9X5_MATRIX_PRAS1	(0x88)	/* Priority Register A for Slave 1 */
+#define AT91SAM9X5_MATRIX_PRBS1	(0x8C)	/* Priority Register B for Slave 1 */
+#define AT91SAM9X5_MATRIX_PRAS2	(0x90)	/* Priority Register A for Slave 2 */
+#define AT91SAM9X5_MATRIX_PRBS2	(0x94)	/* Priority Register B for Slave 2 */
+#define AT91SAM9X5_MATRIX_PRAS3	(0x98)	/* Priority Register A for Slave 3 */
+#define AT91SAM9X5_MATRIX_PRBS3	(0x9C)	/* Priority Register B for Slave 3 */
+#define AT91SAM9X5_MATRIX_PRAS4	(0xA0)	/* Priority Register A for Slave 4 */
+#define AT91SAM9X5_MATRIX_PRBS4	(0xA4)	/* Priority Register B for Slave 4 */
+#define AT91SAM9X5_MATRIX_PRAS5	(0xA8)	/* Priority Register A for Slave 5 */
+#define AT91SAM9X5_MATRIX_PRBS5	(0xAC)	/* Priority Register B for Slave 5 */
+#define AT91SAM9X5_MATRIX_PRAS6	(0xB0)	/* Priority Register A for Slave 6 */
+#define AT91SAM9X5_MATRIX_PRBS6	(0xB4)	/* Priority Register B for Slave 6 */
+#define AT91SAM9X5_MATRIX_PRAS7	(0xB8)	/* Priority Register A for Slave 7 */
+#define AT91SAM9X5_MATRIX_PRBS7	(0xBC)	/* Priority Register B for Slave 7 */
+#define AT91SAM9X5_MATRIX_PRAS8	(0xC0)	/* Priority Register A for Slave 8 */
+#define AT91SAM9X5_MATRIX_PRBS8	(0xC4)	/* Priority Register B for Slave 8 */
+#define		AT91SAM9X5_MATRIX_M0PR		(3 << 0)	/* Master 0 Priority */
+#define		AT91SAM9X5_MATRIX_M1PR		(3 << 4)	/* Master 1 Priority */
+#define		AT91SAM9X5_MATRIX_M2PR		(3 << 8)	/* Master 2 Priority */
+#define		AT91SAM9X5_MATRIX_M3PR		(3 << 12)	/* Master 3 Priority */
+#define		AT91SAM9X5_MATRIX_M4PR		(3 << 16)	/* Master 4 Priority */
+#define		AT91SAM9X5_MATRIX_M5PR		(3 << 20)	/* Master 5 Priority */
+#define		AT91SAM9X5_MATRIX_M6PR		(3 << 24)	/* Master 6 Priority */
+#define		AT91SAM9X5_MATRIX_M7PR		(3 << 28)	/* Master 7 Priority */
+#define		AT91SAM9X5_MATRIX_M8PR		(3 << 0)	/* Master 8 Priority (in Register B) */
+#define		AT91SAM9X5_MATRIX_M9PR		(3 << 4)	/* Master 9 Priority (in Register B) */
+#define		AT91SAM9X5_MATRIX_M10PR		(3 << 8)	/* Master 10 Priority (in Register B) */
+#define		AT91SAM9X5_MATRIX_M11PR		(3 << 12)	/* Master 11 Priority (in Register B) */
 
-#define AT91_MATRIX_MRCR	(AT91_MATRIX + 0x100)	/* Master Remap Control Register */
-#define		AT91_MATRIX_RCB0		(1 << 0)	/* Remap Command for AHB Master 0 (ARM926EJ-S Instruction Master) */
-#define		AT91_MATRIX_RCB1		(1 << 1)	/* Remap Command for AHB Master 1 (ARM926EJ-S Data Master) */
-#define		AT91_MATRIX_RCB2		(1 << 2)
-#define		AT91_MATRIX_RCB3		(1 << 3)
-#define		AT91_MATRIX_RCB4		(1 << 4)
-#define		AT91_MATRIX_RCB5		(1 << 5)
-#define		AT91_MATRIX_RCB6		(1 << 6)
-#define		AT91_MATRIX_RCB7		(1 << 7)
-#define		AT91_MATRIX_RCB8		(1 << 8)
-#define		AT91_MATRIX_RCB9		(1 << 9)
-#define		AT91_MATRIX_RCB10		(1 << 10)
-#define		AT91_MATRIX_RCB11		(1 << 11)
+#define AT91SAM9X5_MATRIX_MRCR	(0x100)	/* Master Remap Control Register */
+#define		AT91SAM9X5_MATRIX_RCB0		(1 << 0)	/* Remap Command for AHB Master 0 (ARM926EJ-S Instruction Master) */
+#define		AT91SAM9X5_MATRIX_RCB1		(1 << 1)	/* Remap Command for AHB Master 1 (ARM926EJ-S Data Master) */
+#define		AT91SAM9X5_MATRIX_RCB2		(1 << 2)
+#define		AT91SAM9X5_MATRIX_RCB3		(1 << 3)
+#define		AT91SAM9X5_MATRIX_RCB4		(1 << 4)
+#define		AT91SAM9X5_MATRIX_RCB5		(1 << 5)
+#define		AT91SAM9X5_MATRIX_RCB6		(1 << 6)
+#define		AT91SAM9X5_MATRIX_RCB7		(1 << 7)
+#define		AT91SAM9X5_MATRIX_RCB8		(1 << 8)
+#define		AT91SAM9X5_MATRIX_RCB9		(1 << 9)
+#define		AT91SAM9X5_MATRIX_RCB10		(1 << 10)
+#define		AT91SAM9X5_MATRIX_RCB11		(1 << 11)
 
-#define AT91_MATRIX_EBICSA	(AT91_MATRIX + 0x120)	/* EBI Chip Select Assignment Register */
-#define		AT91_MATRIX_EBI_CS1A		(1 << 1)	/* Chip Select 1 Assignment */
-#define			AT91_MATRIX_EBI_CS1A_SMC		(0 << 1)
-#define			AT91_MATRIX_EBI_CS1A_SDRAMC		(1 << 1)
-#define		AT91_MATRIX_EBI_CS3A		(1 << 3)	/* Chip Select 3 Assignment */
-#define			AT91_MATRIX_EBI_CS3A_SMC		(0 << 3)
-#define			AT91_MATRIX_EBI_CS3A_SMC_NANDFLASH	(1 << 3)
-#define		AT91_MATRIX_EBI_DBPUC		(1 << 8)	/* Data Bus Pull-up Configuration */
-#define			AT91_MATRIX_EBI_DBPU_ON			(0 << 8)
-#define			AT91_MATRIX_EBI_DBPU_OFF		(1 << 8)
-#define		AT91_MATRIX_EBI_VDDIOMSEL	(1 << 16)	/* Memory voltage selection */
-#define			AT91_MATRIX_EBI_VDDIOMSEL_1_8V		(0 << 16)
-#define			AT91_MATRIX_EBI_VDDIOMSEL_3_3V		(1 << 16)
-#define		AT91_MATRIX_EBI_EBI_IOSR	(1 << 17)	/* EBI I/O slew rate selection */
-#define			AT91_MATRIX_EBI_EBI_IOSR_REDUCED	(0 << 17)
-#define			AT91_MATRIX_EBI_EBI_IOSR_NORMAL		(1 << 17)
-#define		AT91_MATRIX_EBI_DDR_IOSR	(1 << 18)	/* DDR2 dedicated port I/O slew rate selection */
-#define			AT91_MATRIX_EBI_DDR_IOSR_REDUCED	(0 << 18)
-#define			AT91_MATRIX_EBI_DDR_IOSR_NORMAL		(1 << 18)
-#define		AT91_MATRIX_NFD0_SELECT		(1 << 24)	/* NAND Flash Data Bus Selection */
-#define			AT91_MATRIX_NFD0_ON_D0			(0 << 24)
-#define			AT91_MATRIX_NFD0_ON_D16			(1 << 24)
-#define		AT91_MATRIX_DDR_MP_EN		(1 << 25)	/* DDR Multi-port Enable */
-#define			AT91_MATRIX_MP_OFF			(0 << 25)
-#define			AT91_MATRIX_MP_ON			(1 << 25)
+#define AT91SAM9X5_MATRIX_EBICSA	(0x120)	/* EBI Chip Select Assignment Register */
+#define		AT91SAM9X5_MATRIX_EBI_CS1A		(1 << 1)	/* Chip Select 1 Assignment */
+#define			AT91SAM9X5_MATRIX_EBI_CS1A_SMC		(0 << 1)
+#define			AT91SAM9X5_MATRIX_EBI_CS1A_SDRAMC		(1 << 1)
+#define		AT91SAM9X5_MATRIX_EBI_CS3A		(1 << 3)	/* Chip Select 3 Assignment */
+#define			AT91SAM9X5_MATRIX_EBI_CS3A_SMC		(0 << 3)
+#define			AT91SAM9X5_MATRIX_EBI_CS3A_SMC_NANDFLASH	(1 << 3)
+#define		AT91SAM9X5_MATRIX_EBI_DBPUC		(1 << 8)	/* Data Bus Pull-up Configuration */
+#define			AT91SAM9X5_MATRIX_EBI_DBPU_ON			(0 << 8)
+#define			AT91SAM9X5_MATRIX_EBI_DBPU_OFF		(1 << 8)
+#define		AT91SAM9X5_MATRIX_EBI_VDDIOMSEL	(1 << 16)	/* Memory voltage selection */
+#define			AT91SAM9X5_MATRIX_EBI_VDDIOMSEL_1_8V		(0 << 16)
+#define			AT91SAM9X5_MATRIX_EBI_VDDIOMSEL_3_3V		(1 << 16)
+#define		AT91SAM9X5_MATRIX_EBI_EBI_IOSR	(1 << 17)	/* EBI I/O slew rate selection */
+#define			AT91SAM9X5_MATRIX_EBI_EBI_IOSR_REDUCED	(0 << 17)
+#define			AT91SAM9X5_MATRIX_EBI_EBI_IOSR_NORMAL		(1 << 17)
+#define		AT91SAM9X5_MATRIX_EBI_DDR_IOSR	(1 << 18)	/* DDR2 dedicated port I/O slew rate selection */
+#define			AT91SAM9X5_MATRIX_EBI_DDR_IOSR_REDUCED	(0 << 18)
+#define			AT91SAM9X5_MATRIX_EBI_DDR_IOSR_NORMAL		(1 << 18)
+#define		AT91SAM9X5_MATRIX_NFD0_SELECT		(1 << 24)	/* NAND Flash Data Bus Selection */
+#define			AT91SAM9X5_MATRIX_NFD0_ON_D0			(0 << 24)
+#define			AT91SAM9X5_MATRIX_NFD0_ON_D16			(1 << 24)
+#define		AT91SAM9X5_MATRIX_DDR_MP_EN		(1 << 25)	/* DDR Multi-port Enable */
+#define			AT91SAM9X5_MATRIX_MP_OFF			(0 << 25)
+#define			AT91SAM9X5_MATRIX_MP_ON			(1 << 25)
 
-#define AT91_MATRIX_WPMR	(AT91_MATRIX + 0x1E4)	/* Write Protect Mode Register */
-#define		AT91_MATRIX_WPMR_WPEN		(1 << 0)	/* Write Protect ENable */
-#define			AT91_MATRIX_WPMR_WP_WPDIS		(0 << 0)
-#define			AT91_MATRIX_WPMR_WP_WPEN		(1 << 0)
-#define		AT91_MATRIX_WPMR_WPKEY		(0xFFFFFF << 8)	/* Write Protect KEY */
+#define AT91SAM9X5_MATRIX_WPMR	(0x1E4)	/* Write Protect Mode Register */
+#define		AT91SAM9X5_MATRIX_WPMR_WPEN		(1 << 0)	/* Write Protect ENable */
+#define			AT91SAM9X5_MATRIX_WPMR_WP_WPDIS		(0 << 0)
+#define			AT91SAM9X5_MATRIX_WPMR_WP_WPEN		(1 << 0)
+#define		AT91SAM9X5_MATRIX_WPMR_WPKEY		(0xFFFFFF << 8)	/* Write Protect KEY */
 
-#define AT91_MATRIX_WPSR	(AT91_MATRIX + 0x1E8)	/* Write Protect Status Register */
-#define		AT91_MATRIX_WPSR_WPVS		(1 << 0)	/* Write Protect Violation Status */
-#define			AT91_MATRIX_WPSR_NO_WPV		(0 << 0)
-#define			AT91_MATRIX_WPSR_WPV		(1 << 0)
-#define		AT91_MATRIX_WPSR_WPVSRC		(0xFFFF << 8)	/* Write Protect Violation Source */
+#define AT91SAM9X5_MATRIX_WPSR	(0x1E8)	/* Write Protect Status Register */
+#define		AT91SAM9X5_MATRIX_WPSR_WPVS		(1 << 0)	/* Write Protect Violation Status */
+#define			AT91SAM9X5_MATRIX_WPSR_NO_WPV		(0 << 0)
+#define			AT91SAM9X5_MATRIX_WPSR_WPV		(1 << 0)
+#define		AT91SAM9X5_MATRIX_WPSR_WPVSRC		(0xFFFF << 8)	/* Write Protect Violation Source */
 
 #endif
diff --git a/drivers/usb/gadget/at91_udc.c b/drivers/usb/gadget/at91_udc.c
index 18427114d1..9d45323a53 100644
--- a/drivers/usb/gadget/at91_udc.c
+++ b/drivers/usb/gadget/at91_udc.c
@@ -30,6 +30,9 @@
 #include <asm/byteorder.h>
 
 #include <mach/hardware.h>
+#if defined CONFIG_ARCH_AT91SAM9261 || defined CONFIG_ARCH_AT91SAM9G10
+#include <mach/at91sam9261.h>
+#endif
 #include <mach/io.h>
 #include <mach/board.h>
 #include <mach/cpu.h>
@@ -691,10 +694,12 @@ static void pullup(struct at91_udc *udc, int is_on)
 			txvc |= AT91_UDP_TXVC_PUON;
 			at91_udp_write(udc, AT91_UDP_TXVC, txvc);
 		} else if (cpu_is_at91sam9261() || cpu_is_at91sam9g10()) {
+#if defined CONFIG_ARCH_AT91SAM9261 || defined CONFIG_ARCH_AT91SAM9G10
 			u32	usbpucr;
-			usbpucr = at91_sys_read(AT91_MATRIX_USBPUCR);
-			usbpucr |= AT91_MATRIX_USBPUCR_PUON;
-			at91_sys_write(AT91_MATRIX_USBPUCR, usbpucr);
+			usbpucr = readl(AT91SAM9261_BASE_MATRIX + AT91SAM9261_MATRIX_USBPUCR);
+			usbpucr |= AT91SAM9261_MATRIX_USBPUCR_PUON;
+			writel(usbpucr, AT91SAM9261_BASE_MATRIX + AT91SAM9261_MATRIX_USBPUCR);
+#endif
 		}
 	} else {
 		stop_activity(udc);
@@ -708,10 +713,12 @@ static void pullup(struct at91_udc *udc, int is_on)
 			txvc &= ~AT91_UDP_TXVC_PUON;
 			at91_udp_write(udc, AT91_UDP_TXVC, txvc);
 		} else if (cpu_is_at91sam9261() || cpu_is_at91sam9g10()) {
+#if defined CONFIG_ARCH_AT91SAM9261 || defined CONFIG_ARCH_AT91SAM9G10
 			u32	usbpucr;
-			usbpucr = at91_sys_read(AT91_MATRIX_USBPUCR);
-			usbpucr &= ~AT91_MATRIX_USBPUCR_PUON;
-			at91_sys_write(AT91_MATRIX_USBPUCR, usbpucr);
+			usbpucr = readl(AT91SAM9261_BASE_MATRIX + AT91SAM9261_MATRIX_USBPUCR);
+			usbpucr &= ~AT91SAM9261_MATRIX_USBPUCR_PUON;
+			writel(usbpucr, AT91SAM9261_BASE_MATRIX + AT91SAM9261_MATRIX_USBPUCR);
+#endif
 		}
 		clk_off(udc);
 	}
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
