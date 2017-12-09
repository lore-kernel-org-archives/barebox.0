Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eNbvt-0001kS-6L
 for barebox@lists.infradead.org; Sat, 09 Dec 2017 10:00:36 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Sat,  9 Dec 2017 10:59:38 +0100
Message-Id: <20171209095938.30160-4-linux@rempel-privat.de>
In-Reply-To: <20171209095938.30160-1-linux@rempel-privat.de>
References: <20171209095938.30160-1-linux@rempel-privat.de>
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
Subject: [PATCH v1 4/4] MIPS: add support for DPTechnics DPT-Module v1
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

This product can be found here:
https://dptechnics.com/en/products/dpt-module-v1.html

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 arch/mips/Makefile                                 |  1 +
 arch/mips/boards/dptechnics-dpt-module/Makefile    |  1 +
 arch/mips/boards/dptechnics-dpt-module/board.c     |  8 ++
 .../include/board/board_pbl_start.h                | 20 +++++
 arch/mips/configs/dptechnics-dpt-module_defconfig  | 89 ++++++++++++++++++++++
 arch/mips/dts/ar9331-dptechnics-dpt-module.dts     | 31 ++++++++
 arch/mips/mach-ath79/Kconfig                       |  7 ++
 7 files changed, 157 insertions(+)
 create mode 100644 arch/mips/boards/dptechnics-dpt-module/Makefile
 create mode 100644 arch/mips/boards/dptechnics-dpt-module/board.c
 create mode 100644 arch/mips/boards/dptechnics-dpt-module/include/board/board_pbl_start.h
 create mode 100644 arch/mips/configs/dptechnics-dpt-module_defconfig
 create mode 100644 arch/mips/dts/ar9331-dptechnics-dpt-module.dts

diff --git a/arch/mips/Makefile b/arch/mips/Makefile
index dd5ceea20..b965a9c17 100644
--- a/arch/mips/Makefile
+++ b/arch/mips/Makefile
@@ -79,6 +79,7 @@ machine-$(CONFIG_MACH_MIPS_AR231X)	:= ar231x
 board-$(CONFIG_BOARD_NETGEAR_WG102)	:= netgear-wg102
 
 machine-$(CONFIG_MACH_MIPS_ATH79)	:= ath79
+board-$(CONFIG_BOARC_DPTECHNICS_DPT_MODULE)	:= dptechnics-dpt-module
 board-$(CONFIG_BOARD_TPLINK_MR3020)	:= tplink-mr3020
 board-$(CONFIG_BOARD_TPLINK_WDR4300)	:= tplink-wdr4300
 board-$(CONFIG_BOARD_BLACK_SWIFT)	:= black-swift
diff --git a/arch/mips/boards/dptechnics-dpt-module/Makefile b/arch/mips/boards/dptechnics-dpt-module/Makefile
new file mode 100644
index 000000000..dcfc2937d
--- /dev/null
+++ b/arch/mips/boards/dptechnics-dpt-module/Makefile
@@ -0,0 +1 @@
+obj-y += board.o
diff --git a/arch/mips/boards/dptechnics-dpt-module/board.c b/arch/mips/boards/dptechnics-dpt-module/board.c
new file mode 100644
index 000000000..7ec7ef8a5
--- /dev/null
+++ b/arch/mips/boards/dptechnics-dpt-module/board.c
@@ -0,0 +1,8 @@
+#include <common.h>
+#include <init.h>
+
+static int dummy_init(void)
+{
+	return 0;
+}
+postcore_initcall(dummy_init);
diff --git a/arch/mips/boards/dptechnics-dpt-module/include/board/board_pbl_start.h b/arch/mips/boards/dptechnics-dpt-module/include/board/board_pbl_start.h
new file mode 100644
index 000000000..9d6b1b86b
--- /dev/null
+++ b/arch/mips/boards/dptechnics-dpt-module/include/board/board_pbl_start.h
@@ -0,0 +1,20 @@
+/*
+ * Copyright (C) 2017 Oleksij Rempel <linux@rempel-privat.de>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ */
+
+#include <asm/pbl_macros.h>
+#include <mach/pbl_macros.h>
+#include <asm/pbl_nmon.h>
+
+	.macro	board_pbl_start
+	.set	push
+	.set	noreorder
+
+	ar9331_pbl_generic_start
+
+	.set	pop
+	.endm
diff --git a/arch/mips/configs/dptechnics-dpt-module_defconfig b/arch/mips/configs/dptechnics-dpt-module_defconfig
new file mode 100644
index 000000000..dbad08fe6
--- /dev/null
+++ b/arch/mips/configs/dptechnics-dpt-module_defconfig
@@ -0,0 +1,89 @@
+CONFIG_BUILTIN_DTB=y
+CONFIG_BUILTIN_DTB_NAME="ar9331-dptechnics-dpt-module"
+CONFIG_MACH_MIPS_ATH79=y
+CONFIG_BOARC_QCA_AR9331_GENERIC=y
+CONFIG_PBL_IMAGE=y
+CONFIG_IMAGE_COMPRESSION_XZKERN=y
+CONFIG_MMU=y
+CONFIG_TEXT_BASE=0x82000000
+CONFIG_MALLOC_TLSF=y
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_CONSOLE_RATP=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
+CONFIG_RESET_SOURCE=y
+CONFIG_CMD_DMESG=y
+CONFIG_LONGHELP=y
+CONFIG_CMD_IOMEM=y
+CONFIG_CMD_IMD=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_LOADY=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_DEFAULTENV=y
+CONFIG_CMD_LOADENV=y
+CONFIG_CMD_MAGICVAR=y
+CONFIG_CMD_MAGICVAR_HELP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_SHA1SUM=y
+CONFIG_CMD_UNCOMPRESS=y
+CONFIG_CMD_LET=y
+CONFIG_CMD_MSLEEP=y
+CONFIG_CMD_READF=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_HOST=y
+CONFIG_CMD_MIITOOL=y
+CONFIG_CMD_PING=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_CRC=y
+CONFIG_CMD_MEMTEST=y
+CONFIG_CMD_MM=y
+CONFIG_CMD_CLK=y
+CONFIG_CMD_DETECT=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_LED=y
+CONFIG_CMD_POWEROFF=y
+CONFIG_CMD_SPI=y
+CONFIG_CMD_LED_TRIGGER=y
+CONFIG_CMD_WD=y
+CONFIG_CMD_BAREBOX_UPDATE=y
+CONFIG_CMD_OF_NODE=y
+CONFIG_CMD_OF_PROPERTY=y
+CONFIG_CMD_OFTREE=y
+CONFIG_CMD_TIME=y
+CONFIG_NET=y
+CONFIG_NET_NFS=y
+CONFIG_NET_NETCONSOLE=y
+CONFIG_NET_SNTP=y
+CONFIG_OFDEVICE=y
+CONFIG_OF_BAREBOX_DRIVERS=y
+CONFIG_OF_BAREBOX_ENV_IN_FS=y
+CONFIG_DRIVER_SERIAL_AR933X=y
+CONFIG_DRIVER_NET_AG71XX=y
+CONFIG_AR8327N_PHY=y
+CONFIG_AT803X_PHY=y
+CONFIG_MDIO_BITBANG=y
+CONFIG_MDIO_GPIO=y
+CONFIG_DRIVER_SPI_ATH79=y
+CONFIG_MTD=y
+# CONFIG_MTD_OOB_DEVICE is not set
+CONFIG_MTD_M25P80=y
+CONFIG_LED=y
+CONFIG_LED_GPIO=y
+CONFIG_LED_GPIO_OF=y
+CONFIG_LED_TRIGGERS=y
+CONFIG_WATCHDOG=y
+CONFIG_WATCHDOG_AR9344=y
+CONFIG_FS_TFTP=y
+CONFIG_FS_NFS=y
+CONFIG_FS_RATP=y
+CONFIG_DIGEST_SHA224_GENERIC=y
+CONFIG_DIGEST_SHA256_GENERIC=y
diff --git a/arch/mips/dts/ar9331-dptechnics-dpt-module.dts b/arch/mips/dts/ar9331-dptechnics-dpt-module.dts
new file mode 100644
index 000000000..39eb36600
--- /dev/null
+++ b/arch/mips/dts/ar9331-dptechnics-dpt-module.dts
@@ -0,0 +1,31 @@
+#include <mips/qca/ar9331_dpt_module.dts>
+#include "ar9331.dtsi"
+
+/ {
+	aliases {
+		spiflash = &spiflash;
+	};
+
+	chosen {
+		environment@0 {
+			compatible = "barebox,environment";
+			device-path = &spiflash, "partname:barebox-environment";
+		};
+	};
+};
+
+&spiflash {
+	partition@0 {
+		label = "barebox";
+		reg = <0 0x80000>;
+	};
+
+	partition@80000 {
+		label = "barebox-environment";
+		reg = <0x80000 0x10000>;
+	};
+};
+
+&mac0 {
+	status = "okay";
+};
diff --git a/arch/mips/mach-ath79/Kconfig b/arch/mips/mach-ath79/Kconfig
index 9fec00c98..4655ce890 100644
--- a/arch/mips/mach-ath79/Kconfig
+++ b/arch/mips/mach-ath79/Kconfig
@@ -13,6 +13,13 @@ config SOC_QCA_AR9344
 choice
 	prompt "Board type"
 
+config BOARC_DPTECHNICS_DPT_MODULE
+	bool "DPTechnics DPT-Module"
+	select SOC_QCA_AR9331
+	select HAVE_PBL_IMAGE
+	select HAVE_IMAGE_COMPRESSION
+	select HAS_NMON
+
 config BOARD_TPLINK_MR3020
 	bool "TP-LINK MR3020"
 	select SOC_QCA_AR9331
-- 
2.14.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
