Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x244.google.com ([2607:f8b0:400e:c05::244])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cr2jM-0005F1-EB
 for barebox@lists.infradead.org; Thu, 23 Mar 2017 13:24:50 +0000
Received: by mail-pg0-x244.google.com with SMTP id w20so11323511pgc.1
 for <barebox@lists.infradead.org>; Thu, 23 Mar 2017 06:24:27 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 23 Mar 2017 06:23:58 -0700
Message-Id: <20170323132358.8539-15-andrew.smirnov@gmail.com>
In-Reply-To: <20170323132358.8539-1-andrew.smirnov@gmail.com>
References: <20170323132358.8539-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 14/14] at91sam9x5ek: Configure NAND in DT
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/at91sam9x5ek/init.c | 47 +++++++++++++------------------------
 1 file changed, 16 insertions(+), 31 deletions(-)

diff --git a/arch/arm/boards/at91sam9x5ek/init.c b/arch/arm/boards/at91sam9x5ek/init.c
index 29da97d..646cff5 100644
--- a/arch/arm/boards/at91sam9x5ek/init.c
+++ b/arch/arm/boards/at91sam9x5ek/init.c
@@ -45,22 +45,6 @@
 
 #include "hw_version.h"
 
-static struct atmel_nand_data nand_pdata = {
-	.ale		= 21,
-	.cle		= 22,
-	.det_pin	= -EINVAL,
-	.rdy_pin	= AT91_PIN_PD5,
-	.enable_pin	= AT91_PIN_PD4,
-	.has_pmecc	= 1,
-	.ecc_mode	= NAND_ECC_HW,
-	.pmecc_sector_size = 512,
-	.pmecc_corr_cap = 2,
-#if defined(CONFIG_MTD_NAND_ATMEL_BUSWIDTH_16)
-	.bus_width_16	= 1,
-#endif
-	.on_flash_bbt	= 1,
-};
-
 static struct sam9_smc_config cm_nand_smc_config = {
 	.ncs_read_setup		= 0,
 	.nrd_setup		= 1,
@@ -79,15 +63,27 @@ static struct sam9_smc_config cm_nand_smc_config = {
 	.tdf_cycles		= 1,
 };
 
-static void ek_add_device_nand(void)
+static int ek_add_device_smc(void)
 {
+	unsigned long csa;
+	csa = at91_sys_read(AT91_MATRIX_EBICSA);
+
+	/* Enable CS3 */
+	csa |= AT91_MATRIX_EBI_CS3A_SMC_NANDFLASH;
+	/* NAND flash on D16 */
+	csa |= AT91_MATRIX_NFD0_ON_D16;
+
+	/* Configure IO drive */
+	csa &= ~AT91_MATRIX_EBI_EBI_IOSR_NORMAL;
+	at91_sys_write(AT91_MATRIX_EBICSA, csa);
+
 	add_generic_device("at91sam9-smc",
 			   DEVICE_ID_SINGLE, NULL,
 			   AT91SAM9X5_BASE_SMC, 0x200,
 			   IORESOURCE_MEM, NULL);
 
 	/* setup bus-width (8 or 16) */
-	if (nand_pdata.bus_width_16)
+	if (IS_ENABLED(CONFIG_MTD_NAND_ATMEL_BUSWIDTH_16))
 		cm_nand_smc_config.mode |= AT91_SMC_DBW_16;
 	else
 		cm_nand_smc_config.mode |= AT91_SMC_DBW_8;
@@ -96,15 +92,14 @@ static void ek_add_device_nand(void)
 	sam9_smc_configure(0, 3, &cm_nand_smc_config);
 
 	if (at91sam9x5ek_cm_is_vendor(VENDOR_COGENT)) {
-		unsigned long csa;
-
 		csa = at91_sys_read(AT91_MATRIX_EBICSA);
 		csa |= AT91_MATRIX_EBI_VDDIOMSEL_1_8V;
 		at91_sys_write(AT91_MATRIX_EBICSA, csa);
 	}
 
-	at91_add_device_nand(&nand_pdata);
+	return 0;
 }
+fs_initcall(ek_add_device_smc);
 
 static int ek_register_mac_address(void)
 {
@@ -163,20 +158,10 @@ static void ek_add_device_lcdc(void) {}
 
 static int at91sam9x5ek_devices_init(void)
 {
-	ek_add_device_nand();
 	ek_add_device_lcdc();
 
 	armlinux_set_architecture(CONFIG_MACH_AT91SAM9X5EK);
 
-	devfs_add_partition("nand0", 0x00000, SZ_256K, DEVFS_PARTITION_FIXED, "at91bootstrap_raw");
-	dev_add_bb_dev("at91bootstrap_raw", "at91bootstrap");
-	devfs_add_partition("nand0", SZ_256K, SZ_256K + SZ_128K, DEVFS_PARTITION_FIXED, "self_raw");
-	dev_add_bb_dev("self_raw", "self0");
-	devfs_add_partition("nand0", SZ_512K + SZ_128K, SZ_128K, DEVFS_PARTITION_FIXED, "env_raw");
-	dev_add_bb_dev("env_raw", "env0");
-	devfs_add_partition("nand0", SZ_512K + SZ_256K, SZ_128K, DEVFS_PARTITION_FIXED, "env_raw1");
-	dev_add_bb_dev("env_raw1", "env1");
-
 	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC))
 		defaultenv_append_directory(defaultenv_at91sam9x5ek);
 
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
