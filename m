Delivery-date: Sun, 21 Aug 2022 12:02:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oPhms-006AEF-ON
	for lore@lore.pengutronix.de; Sun, 21 Aug 2022 12:02:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oPhmk-0003W1-0P
	for lore@pengutronix.de; Sun, 21 Aug 2022 12:02:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=E6ksMkc205HnIIdYOjaJTWxz40nD+tR50YDLFoareSs=; b=udqjdoRRe4yBiieagc3k3TZbKs
	wSwt1HkmP5mIjz3Lb8IxZZFd7twdC1SnmbSIMJJEGt5oRUCCrKy48/t7rUC7bpEvOJiVV4fgrYYpG
	44gHMv4kfIGo+1lE+bAMp607uYuq+Ht+ufLCfUUCrsQueaDqaLOvC/RYmDieFVv8FodPcknMrJ9Wi
	+aMWRTEP6TayQnkHje93QuDKSf1odVKxGY/6YQh0kHLYP9KDIHzysuqC6LavXW/LWlFWk5b6QvKkY
	aM1GvKadGvS7f2wF6CVzuQsg9lUlQsJdpO+FkWMePAUUySUvKskHL9YOh7oU4zdskA+rmGKZzp9mp
	jHaoeTtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oPhjj-008xIo-4S; Sun, 21 Aug 2022 09:59:20 +0000
Received: from mxout2.routing.net ([2a03:2900:1:a::b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oPhjZ-008xC3-Mj
	for barebox@lists.infradead.org; Sun, 21 Aug 2022 09:59:15 +0000
Received: from mxbox2.masterlogin.de (unknown [192.168.10.89])
	by mxout2.routing.net (Postfix) with ESMTP id 57B0C5FC22;
	Sun, 21 Aug 2022 09:58:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
	s=20200217; t=1661075936;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=E6ksMkc205HnIIdYOjaJTWxz40nD+tR50YDLFoareSs=;
	b=gLHse7xyvTzHj85y6jx2F8n2bvlIGHYvvw/Jm7nxmpFA+M8xvCNo2PAZDk3GQS8A+tX16v
	xveDmTK9/ONsASXoEbcQH535bdNLUuatfT1UcLkG5SZ9y9vpRmRlv/sYQD/eVFULDLxaZ2
	F0dDrFUCpPp+JqdCS+ykaVJ4HkMfMtg=
Received: from frank-G5.. (fttx-pool-80.245.78.134.bambit.de [80.245.78.134])
	by mxbox2.masterlogin.de (Postfix) with ESMTPSA id C6FB1100091;
	Sun, 21 Aug 2022 09:58:55 +0000 (UTC)
From: Frank Wunderlich <linux@fw-web.de>
To: barebox@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>
Date: Sun, 21 Aug 2022 11:58:49 +0200
Message-Id: <20220821095849.74152-1-linux@fw-web.de>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mail-ID: 43927988-a0fc-4a3d-b25d-6c7b739a9991
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=4.0 tests=AWL,BAYES_50,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,LOTS_OF_MONEY,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2] arm: rockchip: switch to mainline dts for bpi-r2-pro
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Frank Wunderlich <frank-w@public-files.de>

Use mainline DTS for Bananapi R2 Pro like the other rk356x devices.

Xhci0 has to be set to host again, as board has no id-pin to switch between
otg and hostmode.

Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
---
v2:
- fixed patch to apply on master
---
 .../arm/boards/pine64-quartz64/sdram-init.bin | Bin 0 -> 59392 bytes
 .../boards/rockchip-rk3568-bpi-r2pro/board.c  |   5 +-
 .../rockchip-rk3568-bpi-r2pro/sdram-init.bin  | Bin 0 -> 59392 bytes
 .../boards/rockchip-rk3568-evb/sdram-init.bin | Bin 0 -> 59392 bytes
 arch/arm/configs/rk3568_defconfig             | 144 +++++
 arch/arm/dts/rk3568-bpi-r2-pro.dts            | 522 +-----------------
 build.sh                                      |  60 ++
 7 files changed, 208 insertions(+), 523 deletions(-)
 create mode 100644 arch/arm/boards/pine64-quartz64/sdram-init.bin
 create mode 100644 arch/arm/boards/rockchip-rk3568-bpi-r2pro/sdram-init.bin
 create mode 100644 arch/arm/boards/rockchip-rk3568-evb/sdram-init.bin
 create mode 100644 arch/arm/configs/rk3568_defconfig
 create mode 100755 build.sh

diff --git a/arch/arm/boards/pine64-quartz64/sdram-init.bin b/arch/arm/boards/pine64-quartz64/sdram-init.bin
new file mode 100644
index 0000000000000000000000000000000000000000..271bf5b720b6d0f1a31bc6630cf0fa6188ecf42d
GIT binary patch
literal 59392
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
DOW31j

literal 0
HcmV?d00001

diff --git a/arch/arm/boards/rockchip-rk3568-bpi-r2pro/board.c b/arch/arm/boards/rockchip-rk3568-bpi-r2pro/board.c
index 1a5faa8afb12..b5d406576f89 100644
--- a/arch/arm/boards/rockchip-rk3568-bpi-r2pro/board.c
+++ b/arch/arm/boards/rockchip-rk3568-bpi-r2pro/board.c
@@ -28,8 +28,9 @@ static int rk3568_bpi_r2pro_probe(struct device_d *dev)
 	else
 		of_device_enable_path("/chosen/environment-emmc");
 
-	rk3568_bbu_mmc_register("emmc", BBU_HANDLER_FLAG_DEFAULT, "/dev/emmc");
-	rk3568_bbu_mmc_register("sd", 0, "/dev/sd");
+	rk3568_bbu_mmc_register("sd", 0, "/dev/mmc0");
+	rk3568_bbu_mmc_register("emmc", BBU_HANDLER_FLAG_DEFAULT,
+				"/dev/mmc1");
 
 	return 0;
 }
diff --git a/arch/arm/boards/rockchip-rk3568-bpi-r2pro/sdram-init.bin b/arch/arm/boards/rockchip-rk3568-bpi-r2pro/sdram-init.bin
new file mode 100644
index 0000000000000000000000000000000000000000..271bf5b720b6d0f1a31bc6630cf0fa6188ecf42d
GIT binary patch
literal 59392
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
DOW31j

literal 0
HcmV?d00001

diff --git a/arch/arm/boards/rockchip-rk3568-evb/sdram-init.bin b/arch/arm/boards/rockchip-rk3568-evb/sdram-init.bin
new file mode 100644
index 0000000000000000000000000000000000000000..271bf5b720b6d0f1a31bc6630cf0fa6188ecf42d
GIT binary patch
literal 59392
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
DOW31j

literal 0
HcmV?d00001

diff --git a/arch/arm/configs/rk3568_defconfig b/arch/arm/configs/rk3568_defconfig
new file mode 100644
index 000000000000..60a9def6d6bb
--- /dev/null
+++ b/arch/arm/configs/rk3568_defconfig
@@ -0,0 +1,144 @@
+CONFIG_ARCH_ROCKCHIP=y
+CONFIG_MACH_RK3568_EVB=y
+CONFIG_MACH_RK3568_BPI_R2PRO=y
+CONFIG_MACH_PINE64_QUARTZ64=y
+CONFIG_BOARD_ARM_GENERIC_DT=y
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_ARM_PSCI_CLIENT=y
+CONFIG_MMU=y
+CONFIG_MALLOC_SIZE=0x0
+CONFIG_MALLOC_TLSF=y
+CONFIG_KALLSYMS=y
+CONFIG_RELOCATABLE=y
+CONFIG_PROMPT="barebox> "
+CONFIG_BAUDRATE=1500000
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
+CONFIG_BOOTM_AIMAGE=y
+CONFIG_BLSPEC=y
+CONFIG_SYSTEM_PARTITIONS=y
+CONFIG_CONSOLE_ACTIVATE_NONE=y
+CONFIG_CONSOLE_ALLOW_COLOR=y
+CONFIG_PBL_CONSOLE=y
+CONFIG_PARTITION_DISK_EFI=y
+CONFIG_DEFAULT_COMPRESSION_LZO=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
+CONFIG_STATE=y
+CONFIG_BOOTCHOOSER=y
+CONFIG_RESET_SOURCE=y
+CONFIG_DEBUG_LL=y
+CONFIG_CMD_DMESG=y
+CONFIG_LONGHELP=y
+CONFIG_CMD_IOMEM=y
+CONFIG_CMD_IMD=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_UIMAGE=y
+CONFIG_CMD_BOOTCHOOSER=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_DEFAULTENV=y
+CONFIG_CMD_LOADENV=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_MAGICVAR=y
+CONFIG_CMD_MAGICVAR_HELP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_FILETYPE=y
+CONFIG_CMD_LN=y
+CONFIG_CMD_MD5SUM=y
+CONFIG_CMD_SHA1SUM=y
+CONFIG_CMD_SHA224SUM=y
+CONFIG_CMD_SHA256SUM=y
+CONFIG_CMD_UNCOMPRESS=y
+CONFIG_CMD_LET=y
+CONFIG_CMD_MSLEEP=y
+CONFIG_CMD_READF=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_MIITOOL=y
+CONFIG_CMD_PING=y
+CONFIG_CMD_TFTP=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_MM=y
+CONFIG_CMD_CLK=y
+CONFIG_CMD_DETECT=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_I2C=y
+CONFIG_CMD_SMC=y
+CONFIG_CMD_BAREBOX_UPDATE=y
+CONFIG_CMD_OF_DIFF=y
+CONFIG_CMD_OF_NODE=y
+CONFIG_CMD_OF_PROPERTY=y
+CONFIG_CMD_OF_DISPLAY_TIMINGS=y
+CONFIG_CMD_OFTREE=y
+CONFIG_CMD_TIME=y
+CONFIG_NET=y
+CONFIG_NET_NFS=y
+CONFIG_NET_NETCONSOLE=y
+CONFIG_OFDEVICE=y
+CONFIG_OF_BAREBOX_DRIVERS=y
+CONFIG_DRIVER_SERIAL_NS16550=y
+CONFIG_DRIVER_NET_DESIGNWARE_EQOS=y
+CONFIG_DRIVER_NET_DESIGNWARE_ROCKCHIP=y
+CONFIG_SMSC_PHY=y
+CONFIG_I2C=y
+CONFIG_I2C_GPIO=y
+CONFIG_MCI=y
+CONFIG_MCI_STARTUP=y
+CONFIG_MCI_MMC_BOOT_PARTITIONS=y
+CONFIG_MCI_DW=y
+CONFIG_MCI_DW_PIO=y
+CONFIG_MCI_ROCKCHIP_DWCMSHC=y
+CONFIG_MCI_ARASAN=y
+CONFIG_MFD_ACT8846=y
+CONFIG_LED=y
+CONFIG_LED_GPIO=y
+CONFIG_LED_GPIO_OF=y
+CONFIG_WATCHDOG=y
+CONFIG_WATCHDOG_POLLER=y
+CONFIG_WATCHDOG_DW=y
+CONFIG_GENERIC_PHY=y
+# CONFIG_VIRTIO_MENU is not set
+CONFIG_FS_CRAMFS=y
+CONFIG_FS_EXT4=y
+CONFIG_FS_TFTP=y
+CONFIG_FS_NFS=y
+CONFIG_FS_FAT=y
+CONFIG_FS_FAT_WRITE=y
+CONFIG_FS_FAT_LFN=y
+CONFIG_FS_BPKFS=y
+CONFIG_FS_UIMAGEFS=y
+CONFIG_LZO_DECOMPRESS=y
+
+
+CONFIG_MENU=y
+CONFIG_CMD_MENU=y
+CONFIG_CMD_MENUTREE=y
+CONFIG_AIODEV=y
+CONFIG_ROCKCHIP_SARADC=y
+
+CONFIG_USB_HOST=y
+CONFIG_USB_STORAGE=y
+CONFIG_PHY_ROCKCHIP_INNO_USB2=y
+CONFIG_PHY_ROCKCHIP_NANENG_COMBO_PHY=y
+CONFIG_USB_DWC2=y
+CONFIG_USB_DWC2_HOST=y
+CONFIG_USB_DWC3=y
+CONFIG_USB_OHCI=y
+CONFIG_USB_EHCI=y
+CONFIG_REALTEK_PHY=y
+CONFIG_I2C_RK3X=y
+CONFIG_REGULATOR=y
+CONFIG_REGULATOR_FIXED=y
+CONFIG_MFD_RK808=y
+CONFIG_REGULATOR_RK808=y
diff --git a/arch/arm/dts/rk3568-bpi-r2-pro.dts b/arch/arm/dts/rk3568-bpi-r2-pro.dts
index 8c13ddd5c103..58a2bc442fdf 100644
--- a/arch/arm/dts/rk3568-bpi-r2-pro.dts
+++ b/arch/arm/dts/rk3568-bpi-r2-pro.dts
@@ -5,24 +5,9 @@
  */
 
 /dts-v1/;
-#include <dt-bindings/gpio/gpio.h>
-#include <dt-bindings/leds/common.h>
-#include <dt-bindings/pinctrl/rockchip.h>
-#include "rk3568.dtsi"
-#include "rk356x.dtsi"
-
+#include "arm64/rockchip/rk3568-bpi-r2-pro.dts"
 / {
-	model = "Bananapi-R2 Pro (RK3568) DDR4 Board";
-	compatible = "rockchip,rk3568-bpi-r2pro", "rockchip,rk3568";
-
-	aliases {
-		emmc = &sdhci;
-		sd = &sdmmc0;
-	};
-
 	chosen {
-		stdout-path = "serial2:1500000n8";
-
 		environment-sd {
 			compatible = "barebox,environment";
 			device-path = &environment_sd;
@@ -40,422 +25,10 @@
 		device_type = "memory";
 		reg = <0x0 0x00a00000 0x0 0x7f600000>;
 	};
-
-	leds {
-		compatible = "gpio-leds";
-		pinctrl-names = "default";
-		pinctrl-0 = <&blue_led_pin &green_led_pin>;
-
-		blue_led: led-0 {
-			color = <LED_COLOR_ID_BLUE>;
-			default-state = "off";
-			function = LED_FUNCTION_STATUS;
-			gpios = <&gpio0 RK_PD6 GPIO_ACTIVE_HIGH>;
-		};
-
-		green_led: led-1 {
-			color = <LED_COLOR_ID_GREEN>;
-			default-state = "on";
-			function = LED_FUNCTION_POWER;
-			gpios = <&gpio0 RK_PD5 GPIO_ACTIVE_HIGH>;
-		};
-	};
-
-	dc_12v: dc-12v {
-		compatible = "regulator-fixed";
-		regulator-name = "dc_12v";
-		regulator-always-on;
-		regulator-boot-on;
-		regulator-min-microvolt = <12000000>;
-		regulator-max-microvolt = <12000000>;
-	};
-
-	vcc3v3_sys: vcc3v3-sys {
-		compatible = "regulator-fixed";
-		regulator-name = "vcc3v3_sys";
-		regulator-always-on;
-		regulator-boot-on;
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-		vin-supply = <&dc_12v>;
-	};
-
-	vcc5v0_sys: vcc5v0-sys {
-		compatible = "regulator-fixed";
-		regulator-name = "vcc5v0_sys";
-		regulator-always-on;
-		regulator-boot-on;
-		regulator-min-microvolt = <5000000>;
-		regulator-max-microvolt = <5000000>;
-		vin-supply = <&dc_12v>;
-	};
-
-	vcc3v3_lcd0_n: vcc3v3-lcd0-n {
-		compatible = "regulator-fixed";
-		regulator-name = "vcc3v3_lcd0_n";
-		regulator-boot-on;
-
-		regulator-state-mem {
-			regulator-off-in-suspend;
-		};
-	};
-
-	vcc3v3_lcd1_n: vcc3v3-lcd1-n {
-		compatible = "regulator-fixed";
-		regulator-name = "vcc3v3_lcd1_n";
-		regulator-boot-on;
-
-		regulator-state-mem {
-			regulator-off-in-suspend;
-		};
-	};
-
-	vcc5v0_host: vcc5v0-host-regulator {
-		compatible = "regulator-fixed";
-		regulator-name = "vcc5v0_host";
-		enable-active-high;
-		gpio = <&gpio0 RK_PA5 GPIO_ACTIVE_HIGH>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&vcc5v0_host_en>;
-		regulator-always-on;
-	};
-};
-
-&gmac1 {
-	assigned-clocks = <&cru SCLK_GMAC1_RX_TX>, <&cru SCLK_GMAC1>;
-	assigned-clock-parents = <&cru SCLK_GMAC1_RGMII_SPEED>, <&cru CLK_MAC1_2TOP>;
-	clock_in_out = "output";
-	phy-handle = <&rgmii_phy1>;
-	phy-mode = "rgmii";
-	pinctrl-names = "default";
-	pinctrl-0 = <&gmac1m1_miim
-		     &gmac1m1_tx_bus2
-		     &gmac1m1_rx_bus2
-		     &gmac1m1_rgmii_clk
-		     &gmac1m1_rgmii_bus>;
-
-	snps,reset-gpio = <&gpio3 RK_PB0 GPIO_ACTIVE_LOW>;
-	snps,reset-active-low;
-	/* Reset time is 20ms, 100ms for rtl8211f */
-	snps,reset-delays-us = <0 20000 100000>;
-	tx_delay = <0x3c>;
-	rx_delay = <0x2f>;
-	status = "okay";
-};
-
-&i2c0 {
-	status = "okay";
-
-	rk809: pmic@20 {
-		compatible = "rockchip,rk809";
-		reg = <0x20>;
-		interrupt-parent = <&gpio0>;
-		interrupts = <RK_PA3 IRQ_TYPE_LEVEL_LOW>;
-		#clock-cells = <1>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&pmic_int>;
-
-		clock-output-names = "rk808-clkout1", "rk808-clkout2";
-		/* 1: rst regs (default in codes), 0: rst the pmic */
-		pmic-reset-func = <0>;
-
-		rockchip,system-power-controller;
-		vcc1-supply = <&vcc3v3_sys>;
-		vcc2-supply = <&vcc3v3_sys>;
-		vcc3-supply = <&vcc3v3_sys>;
-		vcc4-supply = <&vcc3v3_sys>;
-		vcc5-supply = <&vcc3v3_sys>;
-		vcc6-supply = <&vcc3v3_sys>;
-		vcc7-supply = <&vcc3v3_sys>;
-		vcc8-supply = <&vcc3v3_sys>;
-		vcc9-supply = <&vcc3v3_sys>;
-		wakeup-source;
-
-		regulators {
-			vdd_logic: DCDC_REG1 {
-				regulator-name = "vdd_logic";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-init-microvolt = <900000>;
-				regulator-initial-mode = <0x2>;
-				regulator-min-microvolt = <500000>;
-				regulator-max-microvolt = <1350000>;
-				regulator-ramp-delay = <6001>;
-
-				regulator-state-mem {
-					regulator-off-in-suspend;
-				};
-			};
-
-			vdd_gpu: DCDC_REG2 {
-				regulator-name = "vdd_gpu";
-				regulator-init-microvolt = <900000>;
-				regulator-initial-mode = <0x2>;
-				regulator-min-microvolt = <500000>;
-				regulator-max-microvolt = <1350000>;
-				regulator-ramp-delay = <6001>;
-
-				regulator-state-mem {
-					regulator-off-in-suspend;
-				};
-			};
-
-			vcc_ddr: DCDC_REG3 {
-				regulator-name = "vcc_ddr";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-initial-mode = <0x2>;
-
-				regulator-state-mem {
-					regulator-on-in-suspend;
-				};
-			};
-
-			vdd_npu: DCDC_REG4 {
-				regulator-name = "vdd_npu";
-				regulator-init-microvolt = <900000>;
-				regulator-initial-mode = <0x2>;
-				regulator-min-microvolt = <500000>;
-				regulator-max-microvolt = <1350000>;
-				regulator-ramp-delay = <6001>;
-
-				regulator-state-mem {
-					regulator-off-in-suspend;
-				};
-			};
-
-			vcc_1v8: DCDC_REG5 {
-				regulator-name = "vcc_1v8";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <1800000>;
-				regulator-max-microvolt = <1800000>;
-
-				regulator-state-mem {
-					regulator-off-in-suspend;
-				};
-			};
-
-			vdda0v9_image: LDO_REG1 {
-				regulator-name = "vdda0v9_image";
-				regulator-min-microvolt = <900000>;
-				regulator-max-microvolt = <900000>;
-
-				regulator-state-mem {
-					regulator-off-in-suspend;
-				};
-			};
-
-			vdda_0v9: LDO_REG2 {
-				regulator-name = "vdda_0v9";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <900000>;
-				regulator-max-microvolt = <900000>;
-
-				regulator-state-mem {
-					regulator-off-in-suspend;
-				};
-			};
-
-			vdda0v9_pmu: LDO_REG3 {
-				regulator-name = "vdda0v9_pmu";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <900000>;
-				regulator-max-microvolt = <900000>;
-
-				regulator-state-mem {
-					regulator-on-in-suspend;
-					regulator-suspend-microvolt = <900000>;
-				};
-			};
-
-			vccio_acodec: LDO_REG4 {
-				regulator-name = "vccio_acodec";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <3300000>;
-				regulator-max-microvolt = <3300000>;
-
-				regulator-state-mem {
-					regulator-off-in-suspend;
-				};
-			};
-
-			vccio_sd: LDO_REG5 {
-				regulator-name = "vccio_sd";
-				regulator-min-microvolt = <1800000>;
-				regulator-max-microvolt = <3300000>;
-
-				regulator-state-mem {
-					regulator-off-in-suspend;
-				};
-			};
-
-			vcc3v3_pmu: LDO_REG6 {
-				regulator-name = "vcc3v3_pmu";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <3300000>;
-				regulator-max-microvolt = <3300000>;
-
-				regulator-state-mem {
-					regulator-on-in-suspend;
-					regulator-suspend-microvolt = <3300000>;
-				};
-			};
-
-			vcca_1v8: LDO_REG7 {
-				regulator-name = "vcca_1v8";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <1800000>;
-				regulator-max-microvolt = <1800000>;
-
-				regulator-state-mem {
-					regulator-off-in-suspend;
-				};
-			};
-
-			vcca1v8_pmu: LDO_REG8 {
-				regulator-name = "vcca1v8_pmu";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <1800000>;
-				regulator-max-microvolt = <1800000>;
-
-				regulator-state-mem {
-					regulator-on-in-suspend;
-					regulator-suspend-microvolt = <1800000>;
-				};
-			};
-
-			vcca1v8_image: LDO_REG9 {
-				regulator-name = "vcca1v8_image";
-				regulator-min-microvolt = <1800000>;
-				regulator-max-microvolt = <1800000>;
-
-				regulator-state-mem {
-					regulator-off-in-suspend;
-				};
-			};
-
-			vcc_3v3: SWITCH_REG1 {
-				regulator-name = "vcc_3v3";
-				regulator-always-on;
-				regulator-boot-on;
-
-				regulator-state-mem {
-					regulator-off-in-suspend;
-				};
-			};
-
-			vcc3v3_sd: SWITCH_REG2 {
-				regulator-name = "vcc3v3_sd";
-				regulator-always-on;
-
-				regulator-state-mem {
-					regulator-off-in-suspend;
-				};
-			};
-		};
-	};
-};
-
-&i2c5 {
-	/* pin 3 (SDA) + 4 (SCL) of header con2 */
-	status = "disabled";
-};
-
-&mdio1 {
-	rgmii_phy1: ethernet-phy@0 {
-		compatible = "ethernet-phy-ieee802.3-c22";
-		reg = <0x0>;
-	};
-};
-
-&pinctrl {
-	leds {
-		blue_led_pin: blue-led-pin {
-			rockchip,pins = <0 RK_PD6 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-		green_led_pin: green-led-pin {
-			rockchip,pins = <0 RK_PD5 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-	};
-
-	pmic {
-		pmic_int: pmic_int {
-			rockchip,pins =
-				<0 RK_PA3 RK_FUNC_GPIO &pcfg_pull_up>;
-		};
-
-	};
-
-	usb {
-		vcc5v0_host_en: vcc5v0-host-en {
-			rockchip,pins = <0 RK_PA5 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-	};
-};
-
-&pwm8 {
-	/* fan 5v - gnd - pwm */
-	status = "okay";
-};
-
-&pwm10 {
-	/* pin 7 of header con2 */
-	status = "disabled";
-};
-
-&pwm11 {
-	/* pin 15 of header con2 */
-	status = "disabled";
-};
-
-&pwm12 {
-	/* pin 21 of header con2 */
-	/* shared with uart9 + spi3 */
-	pinctrl-0 = <&pwm12m1_pins>;
-	status = "disabled";
-};
-
-&pwm13 {
-	/* pin 24 of header con2 */
-	/* shared with uart9 */
-	pinctrl-0 = <&pwm13m1_pins>;
-	status = "disabled";
-};
-
-&pwm14 {
-	/* pin 23 of header con2 */
-	/* shared with spi3 */
-	pinctrl-0 = <&pwm14m1_pins>;
-	status = "disabled";
-};
-
-&pwm15 {
-	/* pin 19 of header con2 */
-	/* shared with spi3 */
-	pinctrl-0 = <&pwm15m1_pins>;
-	status = "disabled";
-};
-
-&saradc {
-	vref-supply = <&vcca_1v8>;
-	status = "okay";
 };
 
 &sdhci {
-	bus-width = <8>;
-	max-frequency = <200000000>;
-	non-removable;
 	no-sd;
-	pinctrl-names = "default";
-	pinctrl-0 = <&emmc_bus8 &emmc_clk &emmc_cmd &emmc_datastrobe>;
-	status = "okay";
 
 	partitions {
 		compatible = "fixed-partitions";
@@ -470,18 +43,6 @@
 };
 
 &sdmmc0 {
-	bus-width = <4>;
-	cap-sd-highspeed;
-	cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
-	disable-wp;
-	max-frequency = <150000000>;
-	pinctrl-names = "default";
-	pinctrl-0 = <&sdmmc0_bus4 &sdmmc0_clk &sdmmc0_cmd &sdmmc0_det>;
-	sd-uhs-sdr104;
-	vmmc-supply = <&vcc3v3_sd>;
-	vqmmc-supply = <&vccio_sd>;
-	status = "okay";
-
 	partitions {
 		compatible = "fixed-partitions";
 		#address-cells = <2>;
@@ -494,87 +55,6 @@
 	};
 };
 
-&uart0 {
-	/* pin 8 (TX) + 10 (RX) (RTS:16, CTS:18) of header con2 */
-	status = "disabled";
-};
-
-&uart2 {
-	/* debug-uart */
-	status = "okay";
-};
-
-&uart7 {
-	/* pin 11 (TX) + 13 (RX) of header con2 */
-	pinctrl-0 = <&uart7m1_xfer>;
-	status = "disabled";
-};
-
-&uart9 {
-	/* pin 21 (TX) + 24 (RX) of header con2 */
-	/* shared with pwm13 and pwm12/spi3 */
-	pinctrl-0 = <&uart9m1_xfer>;
-	status = "disabled";
-};
-
-&u2phy0_host {
-	phy-supply = <&vcc5v0_host>;
-	status = "okay";
-};
-
-&u2phy0_otg {
-	phy-supply = <&vcc5v0_host>;
-	status = "okay";
-};
-
-&u2phy1_host {
-	phy-supply = <&vcc5v0_host>;
-	status = "okay";
-};
-
-&u2phy1_otg {
-	phy-supply = <&vcc5v0_host>;
-	status = "okay";
-};
-
-&usb2phy0 {
-	status = "okay";
-};
-
-&usb2phy1 {
-	status = "okay";
-};
-
-&usb_host0_ehci {
-	status = "okay";
-};
-
-&usb_host0_ohci {
-	status = "okay";
-};
-
-&usb_host1_ehci {
-	status = "okay";
-};
-
-&usb_host1_ohci {
-	status = "okay";
-};
-
 &usb_host0_xhci {
 	dr_mode = "host";
-	extcon = <&usb2phy0>;
-	status = "okay";
-};
-
-&usb_host1_xhci {
-	status = "okay";
-};
-
-&combphy0_us {
-	status = "okay";
-};
-
-&combphy1_usq {
-	status = "okay";
 };
diff --git a/build.sh b/build.sh
new file mode 100755
index 000000000000..67ac7166909d
--- /dev/null
+++ b/build.sh
@@ -0,0 +1,60 @@
+#!/bin/bash
+
+export ARCH=arm64
+export CROSS_COMPILE=aarch64-linux-gnu-
+
+case $1 in
+"importconfig")
+	make rk3568_defconfig
+	;;
+"defconfig")
+	nano arch/arm/configs/rk3568_defconfig
+	;;
+"config")
+	make menuconfig
+	;;
+"build")
+	make
+	;;
+"board")
+	nano arch/arm/boards/rockchip-rk3568-bpi-r2pro/board.c
+	;;
+"dts")
+	nano arch/arm/dts/rk3568-bpi-r2-pro.dts
+	;;
+"install")
+	dev=/dev/sdb
+	choice=y
+	read -e -i "$dev" -p "Please enter target device: " dev
+	if [[ $? -eq 0 ]];then
+		sudo dd if=images/barebox-rk3568-bpi-r2pro.img of=$dev bs=1024 seek=32
+	fi
+	;;
+"mount")
+	mount | grep "BPI-BOOT" > /dev/null
+	if [[ $? -ne 0 ]];then
+		udisksctl mount -b /dev/disk/by-label/BPI-BOOT
+	fi
+	mount | grep "BPI-ROOT" > /dev/null
+	if [[ $? -ne 0 ]];then
+		udisksctl mount -b /dev/disk/by-label/BPI-ROOT
+	fi
+	;;
+
+"umount")
+	echo "umount SD Media"
+	dev=$(mount | grep BPI-ROOT | sed -e 's/[0-9] .*$/?/')
+	if [[ ! -z "$dev" ]];then
+		umount $dev
+	fi
+	;;
+"upload")
+	scp images/barebox-rk3568-bpi-r2pro.img 192.168.0.10:/var/lib/tftp/
+	;;
+"")
+	$0 build
+	;;
+*)
+	echo "unknown command $1"
+	;;
+esac
-- 
2.34.1



