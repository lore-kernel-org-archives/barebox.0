Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Whwqk-0008Jz-Se
 for barebox@lists.infradead.org; Wed, 07 May 2014 08:05:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  7 May 2014 10:04:32 +0200
Message-Id: <1399449884-19089-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1399449884-19089-1-git-send-email-s.hauer@pengutronix.de>
References: <1399449884-19089-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/14] ARM: i.MX: bbu: remove dcd arguments from bbu
 registration
To: barebox@lists.infradead.org

The i.MX barebox update handlers take an optional dcd table as argument.
This can be used to add the correct dcd data to the image before flashing
it.
This mechanism is quite complicated and largely unused, so remove it. With
this it is only possible to flash the exact image passed to barebox_update,
which is what is mostly done anyway.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/boundarydevices-nitrogen6x/board.c |   2 +-
 arch/arm/boards/datamodul-edm-qmx6/board.c         |   5 +-
 arch/arm/boards/dfi-fs700-m60/board.c              |   4 +-
 arch/arm/boards/efika-mx-smartbook/board.c         |   8 +-
 arch/arm/boards/embest-riotboard/board.c           |   2 +-
 arch/arm/boards/freescale-mx51-babbage/board.c     |   6 +-
 arch/arm/boards/freescale-mx53-qsb/board.c         |   6 +-
 arch/arm/boards/freescale-mx53-vmx53/board.c       |   7 +-
 arch/arm/boards/freescale-mx6-sabrelite/board.c    |   2 +-
 arch/arm/boards/guf-santaro/board.c                |   6 +-
 arch/arm/boards/guf-vincell/board.c                |   5 +-
 arch/arm/boards/karo-tx53/board.c                  |  14 +-
 arch/arm/boards/karo-tx53/dcd-data-1011.h          |  94 --------
 arch/arm/boards/karo-tx53/dcd-data-xx30.h          | 144 -----------
 arch/arm/boards/tqma6x/board.c                     |  24 +-
 arch/arm/mach-imx/imx-bbu-internal.c               | 263 ++++-----------------
 arch/arm/mach-imx/include/mach/bbu.h               |  43 +---
 17 files changed, 71 insertions(+), 564 deletions(-)
 delete mode 100644 arch/arm/boards/karo-tx53/dcd-data-1011.h
 delete mode 100644 arch/arm/boards/karo-tx53/dcd-data-xx30.h

diff --git a/arch/arm/boards/boundarydevices-nitrogen6x/board.c b/arch/arm/boards/boundarydevices-nitrogen6x/board.c
index 1c4b495..95c8567 100644
--- a/arch/arm/boards/boundarydevices-nitrogen6x/board.c
+++ b/arch/arm/boards/boundarydevices-nitrogen6x/board.c
@@ -27,7 +27,7 @@ static int nitrogen6x_devices_init(void)
 		return 0;
 
 	imx6_bbu_internal_spi_i2c_register_handler("spiflash", "/dev/m25p0.barebox",
-			BBU_HANDLER_FLAG_DEFAULT, NULL, 0, 0);
+			BBU_HANDLER_FLAG_DEFAULT);
 
 	return 0;
 }
diff --git a/arch/arm/boards/datamodul-edm-qmx6/board.c b/arch/arm/boards/datamodul-edm-qmx6/board.c
index fd02d7a..26757eb 100644
--- a/arch/arm/boards/datamodul-edm-qmx6/board.c
+++ b/arch/arm/boards/datamodul-edm-qmx6/board.c
@@ -104,9 +104,8 @@ static int realq7_env_init(void)
 		return 0;
 
 	imx6_bbu_internal_spi_i2c_register_handler("spiflash", "/dev/m25p0.barebox",
-		BBU_HANDLER_FLAG_DEFAULT, NULL, 0, 0x00907000);
-	imx6_bbu_internal_mmc_register_handler("mmc", "/dev/mmc3.barebox",
-		0, NULL, 0, 0x00907000);
+		BBU_HANDLER_FLAG_DEFAULT);
+	imx6_bbu_internal_mmc_register_handler("mmc", "/dev/mmc3.barebox", 0);
 	return 0;
 }
 late_initcall(realq7_env_init);
diff --git a/arch/arm/boards/dfi-fs700-m60/board.c b/arch/arm/boards/dfi-fs700-m60/board.c
index cefb6ce..e0dc5b2 100644
--- a/arch/arm/boards/dfi-fs700-m60/board.c
+++ b/arch/arm/boards/dfi-fs700-m60/board.c
@@ -111,9 +111,9 @@ static int dfi_fs700_m60_init(void)
 		flag_mmc |= BBU_HANDLER_FLAG_DEFAULT;
 
 	imx6_bbu_internal_mmc_register_handler("mmc", "/dev/mmc3.boot0",
-		flag_mmc, NULL, 0, 0);
+		flag_mmc);
 	imx6_bbu_internal_spi_i2c_register_handler("spiflash", "/dev/m25p0",
-		flag_spi, NULL, 0, 0);
+		flag_spi);
 
 	armlinux_set_architecture(MACH_TYPE_MX6Q_SABRESD);
 
diff --git a/arch/arm/boards/efika-mx-smartbook/board.c b/arch/arm/boards/efika-mx-smartbook/board.c
index 1b19acd..59410c1 100644
--- a/arch/arm/boards/efika-mx-smartbook/board.c
+++ b/arch/arm/boards/efika-mx-smartbook/board.c
@@ -238,9 +238,6 @@ static struct gpio_led leds[] = {
 	},
 };
 
-extern char flash_header_imx51_genesi_efikasb_start[];
-extern char flash_header_imx51_genesi_efikasb_end[];
-
 static int efikamx_late_init(void)
 {
 	int i;
@@ -258,10 +255,7 @@ static int efikamx_late_init(void)
 	writew(0x0, MX51_WDOG_BASE_ADDR + 0x8);
 
 	imx51_bbu_internal_mmc_register_handler("mmc", "/dev/mmc1",
-			BBU_HANDLER_FLAG_DEFAULT,
-			(void *)flash_header_imx51_genesi_efikasb_start,
-			flash_header_imx51_genesi_efikasb_end -
-			flash_header_imx51_genesi_efikasb_start, 0);
+			BBU_HANDLER_FLAG_DEFAULT);
 
 	armlinux_set_architecture(2370);
 	armlinux_set_revision(0x5100 | imx_silicon_revision());
diff --git a/arch/arm/boards/embest-riotboard/board.c b/arch/arm/boards/embest-riotboard/board.c
index 638d0f6..3c28aa1 100644
--- a/arch/arm/boards/embest-riotboard/board.c
+++ b/arch/arm/boards/embest-riotboard/board.c
@@ -70,7 +70,7 @@ static int riotboard_device_init(void)
 	phy_register_fixup_for_uid(0x004dd072, 0xffffffef, ar8035_phy_fixup);
 
 	imx6_bbu_internal_mmc_register_handler("emmc", "/dev/mmc3.barebox",
-			BBU_HANDLER_FLAG_DEFAULT, NULL, 0, 0);
+			BBU_HANDLER_FLAG_DEFAULT);
 
 	return 0;
 }
diff --git a/arch/arm/boards/freescale-mx51-babbage/board.c b/arch/arm/boards/freescale-mx51-babbage/board.c
index bfe5338..adb4e65 100644
--- a/arch/arm/boards/freescale-mx51-babbage/board.c
+++ b/arch/arm/boards/freescale-mx51-babbage/board.c
@@ -151,9 +151,6 @@ static void babbage_power_init(void)
 	udelay(200);
 }
 
-extern char flash_header_imx51_babbage_start[];
-extern char flash_header_imx51_babbage_end[];
-
 static int imx51_babbage_late_init(void)
 {
 	if (!of_machine_is_compatible("fsl,imx51-babbage"))
@@ -168,8 +165,7 @@ static int imx51_babbage_late_init(void)
 	armlinux_set_architecture(MACH_TYPE_MX51_BABBAGE);
 
 	imx51_bbu_internal_mmc_register_handler("mmc", "/dev/mmc0",
-		BBU_HANDLER_FLAG_DEFAULT, (void *)flash_header_imx51_babbage_start,
-		flash_header_imx51_babbage_end - flash_header_imx51_babbage_start, 0);
+		BBU_HANDLER_FLAG_DEFAULT);
 
 	return 0;
 }
diff --git a/arch/arm/boards/freescale-mx53-qsb/board.c b/arch/arm/boards/freescale-mx53-qsb/board.c
index 38d1ee6..9a9bffa 100644
--- a/arch/arm/boards/freescale-mx53-qsb/board.c
+++ b/arch/arm/boards/freescale-mx53-qsb/board.c
@@ -76,9 +76,6 @@ static void loco_fec_reset(void)
 
 #define MX53_LOCO_USB_PWREN		IMX_GPIO_NR(7, 8)
 
-extern char flash_header_imx53_loco_start[];
-extern char flash_header_imx53_loco_end[];
-
 static int loco_late_init(void)
 {
 	struct mc13xxx *mc34708;
@@ -162,8 +159,7 @@ static int loco_late_init(void)
 	armlinux_set_architecture(MACH_TYPE_MX53_LOCO);
 
 	imx53_bbu_internal_mmc_register_handler("mmc", "/dev/mmc0",
-		BBU_HANDLER_FLAG_DEFAULT, (void *)flash_header_imx53_loco_start,
-		flash_header_imx53_loco_end - flash_header_imx53_loco_start, 0);
+		BBU_HANDLER_FLAG_DEFAULT);
 
 	return 0;
 }
diff --git a/arch/arm/boards/freescale-mx53-vmx53/board.c b/arch/arm/boards/freescale-mx53-vmx53/board.c
index d0cc495..b91bfdf 100644
--- a/arch/arm/boards/freescale-mx53-vmx53/board.c
+++ b/arch/arm/boards/freescale-mx53-vmx53/board.c
@@ -25,9 +25,6 @@
 #include <asm/armlinux.h>
 #include <mach/bbu.h>
 
-extern char flash_header_imx53_vmx53_start[];
-extern char flash_header_imx53_vmx53_end[];
-
 static int vmx53_late_init(void)
 {
 	if (!of_machine_is_compatible("voipac,imx53-dmm-668"))
@@ -39,9 +36,7 @@ static int vmx53_late_init(void)
 	barebox_set_hostname("vmx53");
 
 	imx53_bbu_internal_nand_register_handler("nand",
-		BBU_HANDLER_FLAG_DEFAULT, (void *)flash_header_imx53_vmx53_start,
-		flash_header_imx53_vmx53_end - flash_header_imx53_vmx53_start,
-		SZ_512K, 0);
+		BBU_HANDLER_FLAG_DEFAULT, SZ_512K);
 
 	return 0;
 }
diff --git a/arch/arm/boards/freescale-mx6-sabrelite/board.c b/arch/arm/boards/freescale-mx6-sabrelite/board.c
index f42489f..178fed6 100644
--- a/arch/arm/boards/freescale-mx6-sabrelite/board.c
+++ b/arch/arm/boards/freescale-mx6-sabrelite/board.c
@@ -165,7 +165,7 @@ static int sabrelite_devices_init(void)
 	armlinux_set_architecture(3769);
 
 	imx6_bbu_internal_spi_i2c_register_handler("spiflash", "/dev/m25p0.barebox",
-			BBU_HANDLER_FLAG_DEFAULT, NULL, 0, 0);
+			BBU_HANDLER_FLAG_DEFAULT);
 
 	return 0;
 }
diff --git a/arch/arm/boards/guf-santaro/board.c b/arch/arm/boards/guf-santaro/board.c
index 198c90a..9b5d09d 100644
--- a/arch/arm/boards/guf-santaro/board.c
+++ b/arch/arm/boards/guf-santaro/board.c
@@ -60,10 +60,8 @@ static int santaro_device_init(void)
 		}
 	}
 
-	imx6_bbu_internal_mmc_register_handler("sd", "/dev/mmc1",
-			flag_sd, NULL, 0, 0);
-	imx6_bbu_internal_mmc_register_handler("emmc", "/dev/mmc3.boot0",
-			flag_emmc, NULL, 0, 0);
+	imx6_bbu_internal_mmc_register_handler("sd", "/dev/mmc1", flag_sd);
+	imx6_bbu_internal_mmc_register_handler("emmc", "/dev/mmc3.boot0", flag_emmc);
 
 	return 0;
 }
diff --git a/arch/arm/boards/guf-vincell/board.c b/arch/arm/boards/guf-vincell/board.c
index cb09303..45389cd 100644
--- a/arch/arm/boards/guf-vincell/board.c
+++ b/arch/arm/boards/guf-vincell/board.c
@@ -259,9 +259,6 @@ static struct imx_nand_platform_data nand_info = {
 	.flash_bbt	= 1,
 };
 
-static struct imx_dcd_v2_entry __dcd_entry_section dcd_entry[] = {
-};
-
 static struct i2c_board_info i2c_devices[] = {
 	{
 		I2C_BOARD_INFO("da9053", 0x48),
@@ -293,7 +290,7 @@ static int vincell_devices_init(void)
 	dev_add_bb_dev("env_raw", "env0");
 
 	imx53_bbu_internal_nand_register_handler("nand",
-		BBU_HANDLER_FLAG_DEFAULT, dcd_entry, sizeof(dcd_entry), 3 * SZ_128K, 0xf8020000);
+		BBU_HANDLER_FLAG_DEFAULT);
 
 	return 0;
 }
diff --git a/arch/arm/boards/karo-tx53/board.c b/arch/arm/boards/karo-tx53/board.c
index b7e7f1c..e5c27aa 100644
--- a/arch/arm/boards/karo-tx53/board.c
+++ b/arch/arm/boards/karo-tx53/board.c
@@ -198,14 +198,6 @@ static inline void tx53_fec_init(void)
 			ARRAY_SIZE(tx53_fec_pads));
 }
 
-#define DCD_NAME_1011 static struct imx_dcd_v2_entry dcd_entry_1011
-
-#include "dcd-data-1011.h"
-
-#define DCD_NAME_XX30 static u32 dcd_entry_xx30
-
-#include "dcd-data-xx30.h"
-
 static int tx53_devices_init(void)
 {
 	imx53_iim_register_fec_ethaddr();
@@ -218,12 +210,10 @@ static int tx53_devices_init(void)
 
 	/* rev xx30 can boot from nand or USB */
 	imx53_bbu_internal_nand_register_handler("nand-xx30",
-		BBU_HANDLER_FLAG_DEFAULT, (void *)dcd_entry_xx30,
-		sizeof(dcd_entry_xx30), SZ_512K, 0);
+		BBU_HANDLER_FLAG_DEFAULT, SZ_512K);
 
 	/* rev 1011 can boot from MMC/SD, other bootsource currently unknown */
-	imx53_bbu_internal_mmc_register_handler("mmc-1011", "/dev/disk0",
-		0, (void *)dcd_entry_1011, sizeof(dcd_entry_1011), 0);
+	imx53_bbu_internal_mmc_register_handler("mmc-1011", "/dev/disk0", 0);
 
 	return 0;
 }
diff --git a/arch/arm/boards/karo-tx53/dcd-data-1011.h b/arch/arm/boards/karo-tx53/dcd-data-1011.h
deleted file mode 100644
index 7034ff8..0000000
--- a/arch/arm/boards/karo-tx53/dcd-data-1011.h
+++ /dev/null
@@ -1,94 +0,0 @@
-DCD_NAME_1011[] = {
-	{ .addr = cpu_to_be32(0x53fd406c), .val = cpu_to_be32(0xffffffff), },
-	{ .addr = cpu_to_be32(0x53fd4070), .val = cpu_to_be32(0xffffffff), },
-	{ .addr = cpu_to_be32(0x53fd4074), .val = cpu_to_be32(0xffffffff), },
-	{ .addr = cpu_to_be32(0x53fd4078), .val = cpu_to_be32(0xffffffff), },
-	{ .addr = cpu_to_be32(0x53fd407c), .val = cpu_to_be32(0xffffffff), },
-	{ .addr = cpu_to_be32(0x53fd4080), .val = cpu_to_be32(0xffffffff), },
-	{ .addr = cpu_to_be32(0x53fd4088), .val = cpu_to_be32(0xffffffff), },
-	{ .addr = cpu_to_be32(0x53fa8174), .val = cpu_to_be32(0x00000011), },
-	{ .addr = cpu_to_be32(0x63fd800c), .val = cpu_to_be32(0x00000000), },
-	{ .addr = cpu_to_be32(0x53fa8554), .val = cpu_to_be32(0x00200000), },
-	{ .addr = cpu_to_be32(0x53fa8560), .val = cpu_to_be32(0x00200000), },
-	{ .addr = cpu_to_be32(0x53fa8594), .val = cpu_to_be32(0x00200000), },
-	{ .addr = cpu_to_be32(0x53fa8584), .val = cpu_to_be32(0x00200000), },
-	{ .addr = cpu_to_be32(0x53fa8558), .val = cpu_to_be32(0x00200040), },
-	{ .addr = cpu_to_be32(0x53fa8568), .val = cpu_to_be32(0x00200040), },
-	{ .addr = cpu_to_be32(0x53fa8590), .val = cpu_to_be32(0x00200040), },
-	{ .addr = cpu_to_be32(0x53fa857c), .val = cpu_to_be32(0x00200040), },
-	{ .addr = cpu_to_be32(0x53fa8564), .val = cpu_to_be32(0x00200040), },
-	{ .addr = cpu_to_be32(0x53fa8580), .val = cpu_to_be32(0x00200040), },
-	{ .addr = cpu_to_be32(0x53fa8570), .val = cpu_to_be32(0x00200000), },
-	{ .addr = cpu_to_be32(0x53fa8578), .val = cpu_to_be32(0x00200000), },
-	{ .addr = cpu_to_be32(0x53fa872c), .val = cpu_to_be32(0x00200000), },
-	{ .addr = cpu_to_be32(0x53fa8728), .val = cpu_to_be32(0x00200000), },
-	{ .addr = cpu_to_be32(0x53fa871c), .val = cpu_to_be32(0x00200000), },
-	{ .addr = cpu_to_be32(0x53fa8718), .val = cpu_to_be32(0x00200000), },
-	{ .addr = cpu_to_be32(0x53fa8574), .val = cpu_to_be32(0x00280000), },
-	{ .addr = cpu_to_be32(0x53fa8588), .val = cpu_to_be32(0x00280000), },
-	{ .addr = cpu_to_be32(0x53fa86f0), .val = cpu_to_be32(0x00280000), },
-	{ .addr = cpu_to_be32(0x53fa8720), .val = cpu_to_be32(0x00280000), },
-	{ .addr = cpu_to_be32(0x53fa86fc), .val = cpu_to_be32(0x00000000), },
-	{ .addr = cpu_to_be32(0x53fa86f4), .val = cpu_to_be32(0x00000200), },
-	{ .addr = cpu_to_be32(0x53fa8714), .val = cpu_to_be32(0x00000000), },
-	{ .addr = cpu_to_be32(0x53fa8724), .val = cpu_to_be32(0x06000000), },
-	{ .addr = cpu_to_be32(0x63fd9088), .val = cpu_to_be32(0x36353b38), },
-	{ .addr = cpu_to_be32(0x63fd9090), .val = cpu_to_be32(0x49434942), },
-	{ .addr = cpu_to_be32(0x63fd90f8), .val = cpu_to_be32(0x00000800), },
-	{ .addr = cpu_to_be32(0x63fd907c), .val = cpu_to_be32(0x01350138), },
-	{ .addr = cpu_to_be32(0x63fd9080), .val = cpu_to_be32(0x01380139), },
-	{ .addr = cpu_to_be32(0x63fd9018), .val = cpu_to_be32(0x00001710), },
-	{ .addr = cpu_to_be32(0x63fd9000), .val = cpu_to_be32(0x84110000), },
-	{ .addr = cpu_to_be32(0x63fd900c), .val = cpu_to_be32(0x4d5122d2), },
-	{ .addr = cpu_to_be32(0x63fd9010), .val = cpu_to_be32(0xb6f18a22), },
-	{ .addr = cpu_to_be32(0x63fd9014), .val = cpu_to_be32(0x00c700db), },
-	{ .addr = cpu_to_be32(0x63fd902c), .val = cpu_to_be32(0x000026d2), },
-	{ .addr = cpu_to_be32(0x63fd9030), .val = cpu_to_be32(0x009f000e), },
-	{ .addr = cpu_to_be32(0x63fd9008), .val = cpu_to_be32(0x12272000), },
-	{ .addr = cpu_to_be32(0x63fd9004), .val = cpu_to_be32(0x00030012), },
-	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x04008010), },
-	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x00008020), },
-	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x00008020), },
-	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x0a528030), },
-	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x03868031), },
-	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x00068031), },
-	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x00008032), },
-	{ .addr = cpu_to_be32(0x63fd9020), .val = cpu_to_be32(0x00005800), },
-	{ .addr = cpu_to_be32(0x63fd9058), .val = cpu_to_be32(0x00033332), },
-	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x00000000), },
-	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x00448031), },
-	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x04008018), },
-	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x00000000), },
-	{ .addr = cpu_to_be32(0x63fd9040), .val = cpu_to_be32(0x04b80003), },
-	{ .addr = cpu_to_be32(0x53fa8004), .val = cpu_to_be32(0x00194005), },
-	{ .addr = cpu_to_be32(0x53fa819c), .val = cpu_to_be32(0x00000000), },
-	{ .addr = cpu_to_be32(0x53fa81a0), .val = cpu_to_be32(0x00000000), },
-	{ .addr = cpu_to_be32(0x53fa81a4), .val = cpu_to_be32(0x00000000), },
-	{ .addr = cpu_to_be32(0x53fa81a8), .val = cpu_to_be32(0x00000000), },
-	{ .addr = cpu_to_be32(0x53fa81ac), .val = cpu_to_be32(0x00000000), },
-	{ .addr = cpu_to_be32(0x53fa81b0), .val = cpu_to_be32(0x00000000), },
-	{ .addr = cpu_to_be32(0x53fa81b4), .val = cpu_to_be32(0x00000000), },
-	{ .addr = cpu_to_be32(0x53fa81b8), .val = cpu_to_be32(0x00000000), },
-	{ .addr = cpu_to_be32(0x53fa81dc), .val = cpu_to_be32(0x00000000), },
-	{ .addr = cpu_to_be32(0x53fa81e0), .val = cpu_to_be32(0x00000000), },
-	{ .addr = cpu_to_be32(0x53fa8228), .val = cpu_to_be32(0x00000000), },
-	{ .addr = cpu_to_be32(0x53fa822c), .val = cpu_to_be32(0x00000000), },
-	{ .addr = cpu_to_be32(0x53fa8230), .val = cpu_to_be32(0x00000000), },
-	{ .addr = cpu_to_be32(0x53fa8234), .val = cpu_to_be32(0x00000000), },
-	{ .addr = cpu_to_be32(0x53fa8238), .val = cpu_to_be32(0x00000000), },
-	{ .addr = cpu_to_be32(0x53fa84ec), .val = cpu_to_be32(0x000000e4), },
-	{ .addr = cpu_to_be32(0x53fa84f0), .val = cpu_to_be32(0x000000e4), },
-	{ .addr = cpu_to_be32(0x53fa84f4), .val = cpu_to_be32(0x000000e4), },
-	{ .addr = cpu_to_be32(0x53fa84f8), .val = cpu_to_be32(0x000000e4), },
-	{ .addr = cpu_to_be32(0x53fa84fc), .val = cpu_to_be32(0x000000e4), },
-	{ .addr = cpu_to_be32(0x53fa8500), .val = cpu_to_be32(0x000000e4), },
-	{ .addr = cpu_to_be32(0x53fa8504), .val = cpu_to_be32(0x000000e4), },
-	{ .addr = cpu_to_be32(0x53fa8508), .val = cpu_to_be32(0x000000e4), },
-	{ .addr = cpu_to_be32(0x53fa852c), .val = cpu_to_be32(0x00000004), },
-	{ .addr = cpu_to_be32(0x53fa8530), .val = cpu_to_be32(0x00000004), },
-	{ .addr = cpu_to_be32(0x53fa85a0), .val = cpu_to_be32(0x00000004), },
-	{ .addr = cpu_to_be32(0x53fa85a4), .val = cpu_to_be32(0x00000004), },
-	{ .addr = cpu_to_be32(0x53fa85a8), .val = cpu_to_be32(0x000000e4), },
-	{ .addr = cpu_to_be32(0x53fa85ac), .val = cpu_to_be32(0x000000e4), },
-	{ .addr = cpu_to_be32(0x53fa85b0), .val = cpu_to_be32(0x00000004), },
-};
diff --git a/arch/arm/boards/karo-tx53/dcd-data-xx30.h b/arch/arm/boards/karo-tx53/dcd-data-xx30.h
deleted file mode 100644
index cb982dc..0000000
--- a/arch/arm/boards/karo-tx53/dcd-data-xx30.h
+++ /dev/null
@@ -1,144 +0,0 @@
-
-#define DCD_ITEM(adr, val)	cpu_to_be32(adr), cpu_to_be32(val)
-#define DCD_WR_CMD(len)		cpu_to_be32(0xcc << 24 | (len) << 8 | 0x04)
-#define DCD_CHECK_CMD(a, b, c)	cpu_to_be32(a), cpu_to_be32(b), cpu_to_be32(c)
-
-/*
- * This board uses advanced features of the DCD which do not corporate
- * well with our flash header defines. The DCD consists of commands which
- * have the length econded into them. Normally the DCDs only have a single
- * command (DCD_COMMAND_WRITE_TAG) which is already part of struct
- * imx_flash_header_v2. Now this board uses multiple commands, so we cannot
- * calculate the command length using sizeof(dcd_entry).
- */
-
-DCD_NAME_XX30[] = {
-	DCD_ITEM(0x53fd4068, 0xffcc0fff),
-	DCD_ITEM(0x53fd406c, 0x000fffc3),
-	DCD_ITEM(0x53fd4070, 0x033c0000),
-	DCD_ITEM(0x53fd4074, 0x00000000),
-	DCD_ITEM(0x53fd4078, 0x00000000),
-	DCD_ITEM(0x53fd407c, 0x00fff033),
-	DCD_ITEM(0x53fd4080, 0x0f00030f),
-	DCD_ITEM(0x53fd4084, 0xfff00000),
-	DCD_ITEM(0x53fd4088, 0x00000000),
-	DCD_ITEM(0x53fa8174, 0x00000011),
-	DCD_ITEM(0x53fa8318, 0x00000011),
-	DCD_ITEM(0x63fd800c, 0x00000000),
-	DCD_ITEM(0x53fd4014, 0x00888944),
-	DCD_ITEM(0x53fd4018, 0x00016154),
-	DCD_ITEM(0x53fa8724, 0x04000000),
-	DCD_ITEM(0x53fa86f4, 0x00000000),
-	DCD_ITEM(0x53fa8714, 0x00000000),
-	DCD_ITEM(0x53fa86fc, 0x00000080),
-	DCD_ITEM(0x53fa8710, 0x00000000),
-	DCD_ITEM(0x53fa8708, 0x00000040),
-	DCD_ITEM(0x53fa8584, 0x00280000),
-	DCD_ITEM(0x53fa8594, 0x00280000),
-	DCD_ITEM(0x53fa8560, 0x00280000),
-	DCD_ITEM(0x53fa8554, 0x00280000),
-	DCD_ITEM(0x53fa857c, 0x00a80040),
-	DCD_ITEM(0x53fa8590, 0x00a80040),
-	DCD_ITEM(0x53fa8568, 0x00a80040),
-	DCD_ITEM(0x53fa8558, 0x00a80040),
-	DCD_ITEM(0x53fa8580, 0x00280040),
-	DCD_ITEM(0x53fa8578, 0x00280000),
-	DCD_ITEM(0x53fa8564, 0x00280040),
-	DCD_ITEM(0x53fa8570, 0x00280000),
-	DCD_ITEM(0x53fa858c, 0x000000c0),
-	DCD_ITEM(0x53fa855c, 0x000000c0),
-	DCD_ITEM(0x53fa8574, 0x00280000),
-	DCD_ITEM(0x53fa8588, 0x00280000),
-	DCD_ITEM(0x53fa86f0, 0x00280000),
-	DCD_ITEM(0x53fa8720, 0x00280000),
-	DCD_ITEM(0x53fa8718, 0x00280000),
-	DCD_ITEM(0x53fa871c, 0x00280000),
-	DCD_ITEM(0x53fa8728, 0x00280000),
-	DCD_ITEM(0x53fa872c, 0x00280000),
-	DCD_ITEM(0x63fd904c, 0x001f001f),
-	DCD_ITEM(0x63fd9050, 0x001f001f),
-	DCD_ITEM(0x63fd907c, 0x011e011e),
-	DCD_ITEM(0x63fd9080, 0x011f0120),
-	DCD_ITEM(0x63fd9088, 0x3a393d3b),
-	DCD_ITEM(0x63fd9090, 0x3f3f3f3f),
-	DCD_ITEM(0x63fd9018, 0x00011740),
-	DCD_ITEM(0x63fd9000, 0x83190000),
-	DCD_ITEM(0x63fd900c, 0x3f435316),
-	DCD_ITEM(0x63fd9010, 0xb66e0a63),
-	DCD_ITEM(0x63fd9014, 0x01ff00db),
-	DCD_ITEM(0x63fd902c, 0x000026d2),
-	DCD_ITEM(0x63fd9030, 0x00430f24),
-	DCD_ITEM(0x63fd9008, 0x1b221010),
-	DCD_ITEM(0x63fd9004, 0x00030012),
-	DCD_ITEM(0x63fd901c, 0x00008032),
-	DCD_ITEM(0x63fd901c, 0x00008033),
-	DCD_ITEM(0x63fd901c, 0x00408031),
-	DCD_ITEM(0x63fd901c, 0x055080b0),
-	DCD_ITEM(0x63fd9020, 0x00005800),
-	DCD_ITEM(0x63fd9058, 0x00011112),
-	DCD_ITEM(0x63fd90d0, 0x00000003),
-	DCD_ITEM(0x63fd901c, 0x04008010),
-	DCD_ITEM(0x63fd901c, 0x00008040),
-	DCD_ITEM(0x63fd9040, 0x0539002b),
-	DCD_CHECK_CMD(0xcf000c04, 0x63fd9040, 0x00010000),
-	DCD_WR_CMD(0x24),
-	DCD_ITEM(0x63fd901c, 0x00048033),
-	DCD_ITEM(0x63fd901c, 0x00848231),
-	DCD_ITEM(0x63fd901c, 0x00000000),
-	DCD_ITEM(0x63fd9048, 0x00000001),
-	DCD_CHECK_CMD(0xcf000c04, 0x63fd9048, 0x00000001),
-	DCD_WR_CMD(0x2c),
-	DCD_ITEM(0x63fd901c, 0x00048031),
-	DCD_ITEM(0x63fd901c, 0x00008033),
-	DCD_ITEM(0x63fd901c, 0x04008010),
-	DCD_ITEM(0x63fd901c, 0x00048033),
-	DCD_ITEM(0x63fd907c, 0x90000000),
-	DCD_CHECK_CMD(0xcf000c04, 0x63fd907c, 0x90000000),
-	DCD_WR_CMD(0x2c),
-	DCD_ITEM(0x63fd901c, 0x00008033),
-	DCD_ITEM(0x63fd901c, 0x00000000),
-	DCD_ITEM(0x63fd901c, 0x04008010),
-	DCD_ITEM(0x63fd901c, 0x00048033),
-	DCD_ITEM(0x63fd90a4, 0x00000010),
-	DCD_CHECK_CMD(0xcf000c04, 0x63fd90a4, 0x00000010),
-	DCD_WR_CMD(0x24),
-	DCD_ITEM(0x63fd901c, 0x00008033),
-	DCD_ITEM(0x63fd901c, 0x04008010),
-	DCD_ITEM(0x63fd901c, 0x00048033),
-	DCD_ITEM(0x63fd90a0, 0x00000010),
-	DCD_CHECK_CMD(0xcf000c04, 0x63fd90a0, 0x00000010),
-	DCD_WR_CMD(0x010c),
-	DCD_ITEM(0x63fd901c, 0x00008033),
-	DCD_ITEM(0x63fd901c, 0x00000000),
-	DCD_ITEM(0x53fa8004, 0x00194005),
-	DCD_ITEM(0x53fa819c, 0x00000000),
-	DCD_ITEM(0x53fa81a0, 0x00000000),
-	DCD_ITEM(0x53fa81a4, 0x00000000),
-	DCD_ITEM(0x53fa81a8, 0x00000000),
-	DCD_ITEM(0x53fa81ac, 0x00000000),
-	DCD_ITEM(0x53fa81b0, 0x00000000),
-	DCD_ITEM(0x53fa81b4, 0x00000000),
-	DCD_ITEM(0x53fa81b8, 0x00000000),
-	DCD_ITEM(0x53fa81dc, 0x00000000),
-	DCD_ITEM(0x53fa81e0, 0x00000000),
-	DCD_ITEM(0x53fa8228, 0x00000000),
-	DCD_ITEM(0x53fa822c, 0x00000000),
-	DCD_ITEM(0x53fa8230, 0x00000000),
-	DCD_ITEM(0x53fa8234, 0x00000000),
-	DCD_ITEM(0x53fa8238, 0x00000000),
-	DCD_ITEM(0x53fa84ec, 0x000000e4),
-	DCD_ITEM(0x53fa84f0, 0x000000e4),
-	DCD_ITEM(0x53fa84f4, 0x000000e4),
-	DCD_ITEM(0x53fa84f8, 0x000000e4),
-	DCD_ITEM(0x53fa84fc, 0x000000e4),
-	DCD_ITEM(0x53fa8500, 0x000000e4),
-	DCD_ITEM(0x53fa8504, 0x000000e4),
-	DCD_ITEM(0x53fa8508, 0x000000e4),
-	DCD_ITEM(0x53fa852c, 0x00000004),
-	DCD_ITEM(0x53fa8530, 0x00000004),
-	DCD_ITEM(0x53fa85a0, 0x00000004),
-	DCD_ITEM(0x53fa85a4, 0x00000004),
-	DCD_ITEM(0x53fa85a8, 0x000000e4),
-	DCD_ITEM(0x53fa85ac, 0x000000e4),
-	DCD_ITEM(0x53fa85b0, 0x00000004),
-};
diff --git a/arch/arm/boards/tqma6x/board.c b/arch/arm/boards/tqma6x/board.c
index 30ebf34..6c574ea 100644
--- a/arch/arm/boards/tqma6x/board.c
+++ b/arch/arm/boards/tqma6x/board.c
@@ -98,34 +98,16 @@ static int tqma6x_enet_init(void)
 }
 fs_initcall(tqma6x_enet_init);
 
-extern char flash_header_tqma6dl_start[];
-extern char flash_header_tqma6dl_end[];
-
-extern char flash_header_tqma6q_start[];
-extern char flash_header_tqma6q_end[];
-
 static int tqma6x_env_init(void)
 {
-	void *flash_header_start;
-	void *flash_header_end;
-
-	if (of_machine_is_compatible("tq,tqma6s")) {
-		flash_header_start = (void *)flash_header_tqma6dl_start;
-		flash_header_end = (void *)flash_header_tqma6dl_end;
-	} else if (of_machine_is_compatible("tq,tqma6q")) {
-		flash_header_start = (void *)flash_header_tqma6q_start;
-		flash_header_end = (void *)flash_header_tqma6q_end;
-	} else {
+	if (!of_machine_is_compatible("tq,mba6x"))
 		return 0;
-	}
 
 	devfs_add_partition("m25p0", 0, SZ_512K, DEVFS_PARTITION_FIXED, "m25p0.barebox");
 
 	imx6_bbu_internal_spi_i2c_register_handler("spiflash", "/dev/m25p0.barebox",
-		BBU_HANDLER_FLAG_DEFAULT, (void *)flash_header_start,
-		flash_header_end - flash_header_start, 0);
-	imx6_bbu_internal_mmc_register_handler("emmc", "/dev/mmc2.boot0",
-		0, (void *)flash_header_start, flash_header_end - flash_header_start, 0);
+		BBU_HANDLER_FLAG_DEFAULT);
+	imx6_bbu_internal_mmc_register_handler("emmc", "/dev/mmc2.boot0", 0);
 
 	device_detect_by_name("mmc2");
 
diff --git a/arch/arm/mach-imx/imx-bbu-internal.c b/arch/arm/mach-imx/imx-bbu-internal.c
index 308a0bd..c7cd5b8 100644
--- a/arch/arm/mach-imx/imx-bbu-internal.c
+++ b/arch/arm/mach-imx/imx-bbu-internal.c
@@ -40,9 +40,6 @@
 
 struct imx_internal_bbu_handler {
 	struct bbu_handler handler;
-	const void *dcd;
-	int dcdsize;
-	unsigned long app_dest;
 	unsigned long flash_header_offset;
 	size_t device_size;
 	unsigned long flags;
@@ -130,13 +127,7 @@ static int imx_bbu_internal_v1_update(struct bbu_handler *handler, struct bbu_da
 {
 	struct imx_internal_bbu_handler *imx_handler =
 		container_of(handler, struct imx_internal_bbu_handler, handler);
-	struct imx_flash_header *flash_header;
-	unsigned long flash_header_offset = imx_handler->flash_header_offset;
-	u32 *dcd_image_size;
-	void *imx_pre_image;
-	int imx_pre_image_size = 0x2000;
-	int ret, image_len;
-	void *buf;
+	int ret;
 
 	ret = imx_bbu_check_prereq(data);
 	if (ret)
@@ -144,38 +135,7 @@ static int imx_bbu_internal_v1_update(struct bbu_handler *handler, struct bbu_da
 
 	printf("updating to %s\n", data->devicefile);
 
-	imx_pre_image = xzalloc(imx_pre_image_size);
-	flash_header = imx_pre_image + flash_header_offset;
-
-	flash_header->app_code_jump_vector = imx_handler->app_dest + 0x1000;
-	flash_header->app_code_barker = APP_CODE_BARKER;
-	flash_header->app_code_csf = 0;
-	flash_header->dcd_ptr_ptr = imx_handler->app_dest + flash_header_offset +
-		offsetof(struct imx_flash_header, dcd);
-	flash_header->super_root_key = 0;
-	flash_header->dcd = imx_handler->app_dest + flash_header_offset +
-		offsetof(struct imx_flash_header, dcd_barker);
-	flash_header->app_dest = imx_handler->app_dest;
-	flash_header->dcd_barker = DCD_BARKER;
-	flash_header->dcd_block_len = imx_handler->dcdsize;
-
-	memcpy((void *)flash_header + sizeof(*flash_header), imx_handler->dcd, imx_handler->dcdsize);
-
-	dcd_image_size = (imx_pre_image + flash_header_offset + sizeof(*flash_header) + imx_handler->dcdsize);
-
-	*dcd_image_size = ALIGN(imx_pre_image_size + data->len, 4096);
-
-	/* Create a buffer containing header and image data */
-	image_len = data->len + imx_pre_image_size;
-	buf = xzalloc(image_len);
-	memcpy(buf, imx_pre_image, imx_pre_image_size);
-	memcpy(buf + imx_pre_image_size, data->image, data->len);
-
-	ret = imx_bbu_write_device(imx_handler, data, buf, image_len);
-
-	free(buf);
-
-	free(imx_pre_image);
+	ret = imx_bbu_write_device(imx_handler, data, data->image, data->len);
 
 	return ret;
 }
@@ -337,43 +297,6 @@ out:
 	return ret;
 }
 
-static void imx_bbu_internal_v2_init_flash_header(struct bbu_handler *handler, struct bbu_data *data,
-		void *imx_pre_image, int imx_pre_image_size)
-{
-	struct imx_internal_bbu_handler *imx_handler =
-		container_of(handler, struct imx_internal_bbu_handler, handler);
-	struct imx_flash_header_v2 *flash_header;
-	unsigned long flash_header_offset = imx_handler->flash_header_offset;
-
-	flash_header = imx_pre_image + flash_header_offset;
-
-	flash_header->header.tag = IVT_HEADER_TAG;
-	flash_header->header.length = cpu_to_be16(32);
-	flash_header->header.version = IVT_VERSION;
-
-	flash_header->entry = imx_handler->app_dest + imx_pre_image_size;
-	if (imx_handler->dcdsize)
-		flash_header->dcd_ptr = imx_handler->app_dest + flash_header_offset +
-			offsetof(struct imx_flash_header_v2, dcd);
-	flash_header->boot_data_ptr = imx_handler->app_dest +
-		flash_header_offset + offsetof(struct imx_flash_header_v2, boot_data);
-	flash_header->self = imx_handler->app_dest + flash_header_offset;
-
-	flash_header->boot_data.start = imx_handler->app_dest;
-	flash_header->boot_data.size = ALIGN(imx_pre_image_size +
-			data->len, 4096);
-
-	if (imx_handler->dcdsize) {
-		flash_header->dcd.header.tag = DCD_HEADER_TAG;
-		flash_header->dcd.header.length = cpu_to_be16(sizeof(struct imx_dcd) +
-				imx_handler->dcdsize);
-		flash_header->dcd.header.version = DCD_VERSION;
-	}
-
-	/* Add dcd data */
-	memcpy((void *)flash_header + sizeof(*flash_header), imx_handler->dcd, imx_handler->dcdsize);
-}
-
 #define IVT_BARKER		0x402000d1
 
 /*
@@ -391,84 +314,43 @@ static int imx_bbu_internal_v2_update(struct bbu_handler *handler, struct bbu_da
 	int imx_pre_image_size;
 	int ret, image_len;
 	void *buf;
+	uint32_t *barker;
 
 	ret = imx_bbu_check_prereq(data);
 	if (ret)
 		return ret;
 
-	if (imx_handler->dcd) {
-		imx_pre_image_size = 0x2000;
-	} else {
-		uint32_t *barker = data->image + imx_handler->flash_header_offset;
-
-		if (*barker != IVT_BARKER) {
-			printf("Board does not provide DCD data and this image is no imximage\n");
-			return -EINVAL;
-		}
+	barker = data->image + imx_handler->flash_header_offset;
 
-		imx_pre_image_size = 0;
+	if (*barker != IVT_BARKER) {
+		printf("Board does not provide DCD data and this image is no imximage\n");
+		return -EINVAL;
 	}
 
-	if (imx_handler->flags & IMX_INTERNAL_FLAG_NAND)
+	imx_pre_image_size = 0;
+
+	if (imx_handler->flags & IMX_INTERNAL_FLAG_NAND) {
 		/* NAND needs additional space for the DBBT */
 		imx_pre_image_size += 0x6000;
-
-	if (imx_pre_image_size)
 		imx_pre_image = xzalloc(imx_pre_image_size);
 
-	if (imx_handler->dcd)
-		imx_bbu_internal_v2_init_flash_header(handler, data, imx_pre_image, imx_pre_image_size);
-
-	/* Create a buffer containing header and image data */
-	image_len = data->len + imx_pre_image_size;
-	buf = xzalloc(image_len);
-	if (imx_pre_image_size)
+		/* Create a buffer containing header and image data */
+		image_len = data->len + imx_pre_image_size;
+		buf = xzalloc(image_len);
 		memcpy(buf, imx_pre_image, imx_pre_image_size);
-	memcpy(buf + imx_pre_image_size, data->image, data->len);
+		memcpy(buf + imx_pre_image_size, data->image, data->len);
 
-	if (imx_handler->flags & IMX_INTERNAL_FLAG_NAND) {
 		ret = imx_bbu_internal_v2_write_nand_dbbt(imx_handler, data, buf,
 				image_len);
-		goto out_free_buf;
+		free(buf);
+		free(imx_pre_image);
+	} else {
+		ret = imx_bbu_write_device(imx_handler, data, data->image, data->len);
 	}
 
-	ret = imx_bbu_write_device(imx_handler, data, buf, image_len);
-
-out_free_buf:
-	free(buf);
-
-	free(imx_pre_image);
 	return ret;
 }
 
-/*
- * On the i.MX53 the dcd data can contain several commands. Each of them must
- * have its length encoded into it. We can't express that during compile time,
- * so use this function if you are using multiple dcd commands and wish to
- * concatenate them together to a single dcd table with the correct sizes for
- * each command.
- */
-void *imx53_bbu_internal_concat_dcd_table(struct dcd_table *table, int num_entries)
-{
-	int i;
-	unsigned int dcdsize = 0, pos = 0;
-	void *dcdptr;
-
-	for (i = 0; i < num_entries; i++)
-		dcdsize += table[i].size;
-
-	dcdptr = xmalloc(dcdsize);
-
-	for (i = 0; i < num_entries; i++) {
-		u32 *current = dcdptr + pos;
-		memcpy(current, table[i].data, table[i].size);
-		*current |= cpu_to_be32(table[i].size << 8);
-		pos += table[i].size;
-	}
-
-	return dcdptr;
-}
-
 static struct imx_internal_bbu_handler *__init_handler(const char *name, char *devicefile,
 		unsigned long flags)
 {
@@ -499,87 +381,30 @@ static int __register_handler(struct imx_internal_bbu_handler *imx_handler)
  * Register a i.MX51 internal boot update handler for MMC/SD
  */
 int imx51_bbu_internal_mmc_register_handler(const char *name, char *devicefile,
-		unsigned long flags, struct imx_dcd_entry *dcd, int dcdsize,
-		unsigned long app_dest)
+		unsigned long flags)
 {
 	struct imx_internal_bbu_handler *imx_handler;
 
 	imx_handler = __init_handler(name, devicefile, flags);
-	imx_handler->dcd = dcd;
-	imx_handler->dcdsize = dcdsize;
 	imx_handler->flash_header_offset = FLASH_HEADER_OFFSET_MMC;
 
-	if (app_dest)
-		imx_handler->app_dest = app_dest;
-	else
-		imx_handler->app_dest = 0x90000000;
-
 	imx_handler->flags = IMX_INTERNAL_FLAG_KEEP_DOSPART;
 	imx_handler->handler.handler = imx_bbu_internal_v1_update;
 
 	return __register_handler(imx_handler);
 }
 
-#define DCD_WR_CMD(len)		cpu_to_be32(0xcc << 24 | (((len) & 0xffff) << 8) | 0x04)
-
-static int imx53_bbu_internal_init_dcd(struct imx_internal_bbu_handler *imx_handler,
-		void *dcd, int dcdsize)
-{
-	uint32_t *dcd32 = dcd;
-
-	/*
-	 * For boards which do not have a dcd (i.e. they do their SDRAM
-	 * setup in C code)
-	 */
-	if (!dcd || !dcdsize)
-		return 0;
-
-	/*
-	 * The DCD data we have compiled in does not have a DCD_WR_CMD at
-	 * the beginning. Instead it is contained in struct imx_flash_header_v2.
-	 * This is necessary to generate the DCD size at compile time. If
-	 * we are passed such a DCD data here, prepend a DCD_WR_CMD.
-	 */
-	if ((*dcd32 & 0xff0000ff) != DCD_WR_CMD(0)) {
-		__be32 *buf;
-
-		debug("%s: dcd does not have a DCD_WR_CMD. Prepending one\n", __func__);
-
-		buf = xmalloc(dcdsize + sizeof(__be32));
-
-		*buf = DCD_WR_CMD(dcdsize + sizeof(__be32));
-		memcpy(&buf[1], dcd, dcdsize);
-
-		imx_handler->dcd = buf;
-		imx_handler->dcdsize = dcdsize + sizeof(__be32);
-	} else {
-		debug("%s: dcd already has a DCD_WR_CMD. Using original dcd data\n", __func__);
-
-		imx_handler->dcd = dcd;
-		imx_handler->dcdsize = dcdsize;
-	}
-
-	return 0;
-}
-
 /*
  * Register a i.MX53 internal boot update handler for MMC/SD
  */
 int imx53_bbu_internal_mmc_register_handler(const char *name, char *devicefile,
-		unsigned long flags, struct imx_dcd_v2_entry *dcd, int dcdsize,
-		unsigned long app_dest)
+		unsigned long flags)
 {
 	struct imx_internal_bbu_handler *imx_handler;
 
 	imx_handler = __init_handler(name, devicefile, flags);
-	imx53_bbu_internal_init_dcd(imx_handler, dcd, dcdsize);
 	imx_handler->flash_header_offset = FLASH_HEADER_OFFSET_MMC;
 
-	if (app_dest)
-		imx_handler->app_dest = app_dest;
-	else
-		imx_handler->app_dest = 0x70000000;
-
 	imx_handler->flags = IMX_INTERNAL_FLAG_KEEP_DOSPART;
 	imx_handler->handler.handler = imx_bbu_internal_v2_update;
 
@@ -592,20 +417,13 @@ int imx53_bbu_internal_mmc_register_handler(const char *name, char *devicefile,
  * keep a partition table. We have to erase the device beforehand though.
  */
 int imx53_bbu_internal_spi_i2c_register_handler(const char *name, char *devicefile,
-		unsigned long flags, struct imx_dcd_v2_entry *dcd, int dcdsize,
-		unsigned long app_dest)
+		unsigned long flags)
 {
 	struct imx_internal_bbu_handler *imx_handler;
 
 	imx_handler = __init_handler(name, devicefile, flags);
-	imx53_bbu_internal_init_dcd(imx_handler, dcd, dcdsize);
 	imx_handler->flash_header_offset = FLASH_HEADER_OFFSET_MMC;
 
-	if (app_dest)
-		imx_handler->app_dest = app_dest;
-	else
-		imx_handler->app_dest = 0x70000000;
-
 	imx_handler->flags = IMX_INTERNAL_FLAG_ERASE;
 	imx_handler->handler.handler = imx_bbu_internal_v2_update;
 
@@ -616,20 +434,13 @@ int imx53_bbu_internal_spi_i2c_register_handler(const char *name, char *devicefi
  * Register a i.MX53 internal boot update handler for NAND
  */
 int imx53_bbu_internal_nand_register_handler(const char *name,
-		unsigned long flags, struct imx_dcd_v2_entry *dcd, int dcdsize,
-		int partition_size, unsigned long app_dest)
+		unsigned long flags, int partition_size)
 {
 	struct imx_internal_bbu_handler *imx_handler;
 
 	imx_handler = __init_handler(name, NULL, flags);
-	imx53_bbu_internal_init_dcd(imx_handler, dcd, dcdsize);
 	imx_handler->flash_header_offset = 0x400;
 
-	if (app_dest)
-		imx_handler->app_dest = app_dest;
-	else
-		imx_handler->app_dest = 0x70000000;
-
 	imx_handler->handler.handler = imx_bbu_internal_v2_update;
 	imx_handler->flags = IMX_INTERNAL_FLAG_NAND;
 	imx_handler->handler.devicefile = "/dev/nand0";
@@ -642,14 +453,17 @@ int imx53_bbu_internal_nand_register_handler(const char *name,
  * Register a i.MX6 internal boot update handler for MMC/SD
  */
 int imx6_bbu_internal_mmc_register_handler(const char *name, char *devicefile,
-		unsigned long flags, struct imx_dcd_v2_entry *dcd, int dcdsize,
-		unsigned long app_dest)
+		unsigned long flags)
 {
-	if (!app_dest)
-		app_dest = 0x10000000;
+	struct imx_internal_bbu_handler *imx_handler;
+
+	imx_handler = __init_handler(name, devicefile, flags);
+	imx_handler->flash_header_offset = FLASH_HEADER_OFFSET_MMC;
+
+	imx_handler->flags = IMX_INTERNAL_FLAG_KEEP_DOSPART;
+	imx_handler->handler.handler = imx_bbu_internal_v2_update;
 
-	return imx53_bbu_internal_mmc_register_handler(name, devicefile,
-		flags, dcd, dcdsize, app_dest);
+	return __register_handler(imx_handler);
 }
 
 /*
@@ -658,12 +472,15 @@ int imx6_bbu_internal_mmc_register_handler(const char *name, char *devicefile,
  * keep a partition table. We have to erase the device beforehand though.
  */
 int imx6_bbu_internal_spi_i2c_register_handler(const char *name, char *devicefile,
-		unsigned long flags, struct imx_dcd_v2_entry *dcd, int dcdsize,
-		unsigned long app_dest)
+		unsigned long flags)
 {
-	if (!app_dest)
-		app_dest = 0x10000000;
+	struct imx_internal_bbu_handler *imx_handler;
+
+	imx_handler = __init_handler(name, devicefile, flags);
+	imx_handler->flash_header_offset = FLASH_HEADER_OFFSET_MMC;
 
-	return imx53_bbu_internal_spi_i2c_register_handler(name, devicefile,
-		flags, dcd, dcdsize, app_dest);
+	imx_handler->flags = IMX_INTERNAL_FLAG_ERASE;
+	imx_handler->handler.handler = imx_bbu_internal_v2_update;
+
+	return __register_handler(imx_handler);
 }
diff --git a/arch/arm/mach-imx/include/mach/bbu.h b/arch/arm/mach-imx/include/mach/bbu.h
index 1644d85..bf6c7dc 100644
--- a/arch/arm/mach-imx/include/mach/bbu.h
+++ b/arch/arm/mach-imx/include/mach/bbu.h
@@ -10,71 +10,59 @@ struct imx_dcd_v2_entry;
 #ifdef CONFIG_BAREBOX_UPDATE
 
 int imx51_bbu_internal_mmc_register_handler(const char *name, char *devicefile,
-		unsigned long flags, struct imx_dcd_entry *, int dcdsize,
-		unsigned long app_dest);
+		unsigned long flags);
 
 int imx53_bbu_internal_mmc_register_handler(const char *name, char *devicefile,
-		unsigned long flags, struct imx_dcd_v2_entry *, int dcdsize,
-		unsigned long app_dest);
+		unsigned long flags);
 
 int imx53_bbu_internal_spi_i2c_register_handler(const char *name, char *devicefile,
-		unsigned long flags, struct imx_dcd_v2_entry *dcd, int dcdsize,
-		unsigned long app_dest);
+		unsigned long flags);
 
 int imx53_bbu_internal_nand_register_handler(const char *name,
-		unsigned long flags, struct imx_dcd_v2_entry *, int dcdsize,
-		int partition_size, unsigned long app_dest);
+		unsigned long flags, int partition_size);
 
 int imx6_bbu_internal_mmc_register_handler(const char *name, char *devicefile,
-		unsigned long flags, struct imx_dcd_v2_entry *, int dcdsize,
-		unsigned long app_dest);
+		unsigned long flags);
 
 int imx6_bbu_internal_spi_i2c_register_handler(const char *name, char *devicefile,
-		unsigned long flags, struct imx_dcd_v2_entry *dcd, int dcdsize,
-		unsigned long app_dest);
+		unsigned long flags);
 
 int imx6_bbu_nand_register_handler(const char *name, unsigned long flags);
 
 #else
 
 static inline int imx51_bbu_internal_mmc_register_handler(const char *name, char *devicefile,
-		unsigned long flags, struct imx_dcd_entry *dcd, int dcdsize,
-		unsigned long app_dest)
+		unsigned long flags)
 {
 	return -ENOSYS;
 }
 
 static inline int imx53_bbu_internal_mmc_register_handler(const char *name, char *devicefile,
-		unsigned long flags, struct imx_dcd_v2_entry *dcd, int dcdsize,
-		unsigned long app_dest)
+		unsigned long flags)
 {
 	return -ENOSYS;
 }
 
 static inline int imx53_bbu_internal_spi_i2c_register_handler(const char *name, char *devicefile,
-		unsigned long flags, struct imx_dcd_v2_entry *dcd, int dcdsize,
-		unsigned long app_dest)
+		unsigned long flags)
 {
 	return -ENOSYS;
 }
 
 static inline int imx53_bbu_internal_nand_register_handler(const char *name,
-		unsigned long flags, struct imx_dcd_v2_entry *dcd, int dcdsize,
-		int partition_size, unsigned long app_dest)
+		unsigned long flags, int partition_size)
 {
 	return -ENOSYS;
 }
 
 static inline int imx6_bbu_internal_mmc_register_handler(const char *name, char *devicefile,
-		unsigned long flags, struct imx_dcd_v2_entry *dcd, int dcdsize,
-		unsigned long app_dest)
+		unsigned long flags)
 {
 	return -ENOSYS;
 }
 
 static inline int imx6_bbu_internal_spi_i2c_register_handler(const char *name, char *devicefile,
-		unsigned long flags, struct imx_dcd_v2_entry *dcd, int dcdsize,
-		unsigned long app_dest)
+		unsigned long flags)
 {
 	return -ENOSYS;
 }
@@ -96,11 +84,4 @@ static inline int imx_bbu_external_nand_register_handler(const char *name, char
 }
 #endif
 
-struct dcd_table {
-	void *data;
-	unsigned int size;
-};
-
-void *imx53_bbu_internal_concat_dcd_table(struct dcd_table *table, int num_entries);
-
 #endif
-- 
2.0.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
