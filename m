Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x242.google.com ([2607:f8b0:400e:c01::242])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f7PKv-0000qt-R1
 for barebox@lists.infradead.org; Sat, 14 Apr 2018 17:51:43 +0000
Received: by mail-pl0-x242.google.com with SMTP id c7-v6so7791946plr.5
 for <barebox@lists.infradead.org>; Sat, 14 Apr 2018 10:51:31 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sat, 14 Apr 2018 10:51:03 -0700
Message-Id: <20180414175103.10125-18-andrew.smirnov@gmail.com>
In-Reply-To: <20180414175103.10125-1-andrew.smirnov@gmail.com>
References: <20180414175103.10125-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 17/17] ARM: i.MX6: boot: Return BOOTSOURCE_SPI_NOR,
 not BOOTSOURCE_SPI
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

We use BOOTSOURCE_SPI to denote, among other things, QSPI on i.MX7 and
VFxxx, whereas on i.MX6 it is used to mean SPI-NOR. To make functions
like imx_xload() work consistently across various i.MX platforms use
already existent BOOTSOURCE_SPI_NOR constant to mean booting from
SPI-NOR on i.MX6 as well.

Replace all in-tree code that relying on the old value as well.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/datamodul-edm-qmx6/board.c | 2 +-
 arch/arm/boards/dfi-fs700-m60/board.c      | 2 +-
 arch/arm/boards/phytec-som-imx6/board.c    | 2 +-
 arch/arm/boards/zii-imx6q-rdu2/lowlevel.c  | 2 +-
 arch/arm/mach-imx/boot.c                   | 2 +-
 arch/arm/mach-imx/xload.c                  | 2 +-
 6 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boards/datamodul-edm-qmx6/board.c b/arch/arm/boards/datamodul-edm-qmx6/board.c
index 043a93461..d93c940e3 100644
--- a/arch/arm/boards/datamodul-edm-qmx6/board.c
+++ b/arch/arm/boards/datamodul-edm-qmx6/board.c
@@ -132,7 +132,7 @@ static int realq7_device_init(void)
 		}
 		break;
 	default:
-	case BOOTSOURCE_SPI:
+	case BOOTSOURCE_SPI_NOR:
 		of_device_enable_path("/chosen/environment-spi");
 		break;
 	}
diff --git a/arch/arm/boards/dfi-fs700-m60/board.c b/arch/arm/boards/dfi-fs700-m60/board.c
index bef4612d9..2cb8e3106 100644
--- a/arch/arm/boards/dfi-fs700-m60/board.c
+++ b/arch/arm/boards/dfi-fs700-m60/board.c
@@ -105,7 +105,7 @@ static int dfi_fs700_m60_init(void)
 
 	phy_register_fixup_for_uid(PHY_ID_AR8031, AR_PHY_ID_MASK, ar8031_phy_fixup);
 
-	if (bootsource_get() == BOOTSOURCE_SPI)
+	if (bootsource_get() == BOOTSOURCE_SPI_NOR)
 		flag_spi |= BBU_HANDLER_FLAG_DEFAULT;
 	else
 		flag_mmc |= BBU_HANDLER_FLAG_DEFAULT;
diff --git a/arch/arm/boards/phytec-som-imx6/board.c b/arch/arm/boards/phytec-som-imx6/board.c
index 717a22963..ecb22f956 100644
--- a/arch/arm/boards/phytec-som-imx6/board.c
+++ b/arch/arm/boards/phytec-som-imx6/board.c
@@ -152,7 +152,7 @@ static int physom_imx6_devices_init(void)
 		environment_path = basprintf("/chosen/environment-nand");
 		envdev = "NAND flash";
 		break;
-	case BOOTSOURCE_SPI:
+	case BOOTSOURCE_SPI_NOR:
 		environment_path = basprintf("/chosen/environment-spinor");
 		envdev = "SPI NOR flash";
 		break;
diff --git a/arch/arm/boards/zii-imx6q-rdu2/lowlevel.c b/arch/arm/boards/zii-imx6q-rdu2/lowlevel.c
index 22ffdf85e..3b4dbd212 100644
--- a/arch/arm/boards/zii-imx6q-rdu2/lowlevel.c
+++ b/arch/arm/boards/zii-imx6q-rdu2/lowlevel.c
@@ -290,7 +290,7 @@ static noinline void rdu2_sram_setup(void)
 		write_regs(imx6q_dcd, ARRAY_SIZE(imx6q_dcd));
 
 	imx6_get_boot_source(&bootsrc, &instance);
-	if (bootsrc == BOOTSOURCE_SPI)
+	if (bootsrc == BOOTSOURCE_SPI_NOR)
 		imx6_spi_start_image(0);
 	else
 		imx6_esdhc_start_image(instance);
diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
index 24e2501e9..bd2af2ef4 100644
--- a/arch/arm/mach-imx/boot.c
+++ b/arch/arm/mach-imx/boot.c
@@ -300,7 +300,7 @@ static enum bootsource imx6_bootsource_serial_rom(uint32_t sbmr)
 	const int source = __imx6_bootsource_serial_rom(sbmr);
 
 	return source < IMX6_BOOTSOURCE_SERIAL_ROM_I2C1 ?
-		BOOTSOURCE_SPI : BOOTSOURCE_I2C;
+		BOOTSOURCE_SPI_NOR : BOOTSOURCE_I2C;
 }
 
 static int imx6_boot_instance_serial_rom(uint32_t sbmr)
diff --git a/arch/arm/mach-imx/xload.c b/arch/arm/mach-imx/xload.c
index 16d56ab28..921e9ade2 100644
--- a/arch/arm/mach-imx/xload.c
+++ b/arch/arm/mach-imx/xload.c
@@ -24,7 +24,7 @@ static __noreturn int imx_xload(void)
 		pr_info("booting from MMC\n");
 		buf = bootstrap_read_disk("disk0.0", "fat");
 		break;
-	case BOOTSOURCE_SPI:
+	case BOOTSOURCE_SPI_NOR:
 		pr_info("booting from SPI\n");
 		buf = bootstrap_read_devfs("dataflash0", false,
 					   SZ_256K, SZ_1M, SZ_1M);
-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
