Delivery-date: Thu, 05 May 2022 10:05:15 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmWU7-002Uc0-AZ
	for lore@lore.pengutronix.de; Thu, 05 May 2022 10:05:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmWU4-0000DF-ND
	for lore@pengutronix.de; Thu, 05 May 2022 10:05:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LO6aNq/GWWgW7+08dfCr5In4artomSIE//So2U3SPo0=; b=cgoQ9t5QWBkdZx
	7Xys1l/U03Vcp3HJcx5eo33hiSSLXCQ0s8Py35YX7hl0Jv7BK6WD2WuiAlHF/DCrl6tagSg2zbYNp
	RvJc2t2JD8OqxkPSdLQNZ8ZynP88xnw8fI+KefQNIfiLJqYB0K72DmDohj4ibBqhWaFUTSd7YP4wM
	BKOOiwD0wiIpjX7sC/yay5/3Kh1dylOScQbN4CAv//jURg+JjLJkTkAUYqGM6QU1QKHG5LiZaHb+X
	CFAFDzBLuOFxZnsHF9rCCE7CJ5ODIxS799qcIzf0zmNYBls+s0Y6FJY6CRML/2yfR5V/MOVYHTOjB
	MjoNPyFuWs/bCwlwMTZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmWSZ-00EXa9-7c; Thu, 05 May 2022 08:03:39 +0000
Received: from metis.ext.pengutronix.de ([85.220.165.71])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmWR9-00EWhc-6x
 for barebox@lists.infradead.org; Thu, 05 May 2022 08:02:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nmWQz-0006vq-IQ; Thu, 05 May 2022 10:02:01 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nmWR0-000TOx-2K; Thu, 05 May 2022 10:02:00 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nmWQv-004hb8-FM; Thu, 05 May 2022 10:01:57 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: ukl@pengutronix.de, =?UTF-8?q?Daniel=20Br=C3=A1t?= <danek.brat@gmail.com>,
 ore@pengutronix.de, Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  5 May 2022 10:01:48 +0200
Message-Id: <20220505080152.1068424-12-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220505080152.1068424-1-a.fatoum@pengutronix.de>
References: <20220505080152.1068424-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220505_010211_468917_5296A7DF 
X-CRM114-Status: GOOD (  17.04  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 11/15] ARM: rpi: add Raspberry Pi 4 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

With basic driver support added in previous commits, add the boilerplate
to have barebox-dt-2nd.img usable as bootloader for the Raspberry Pi 4
in 64-Bit mode. Tested peripherals:

  - SD-Card
  - pinctrl
  - clocksource
  - mini-UART

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/raspberry-pi/rpi-common.c |  29 ++++++
 arch/arm/configs/rpi_v8a_defconfig        | 111 ++++++++++++++++++++++
 arch/arm/dts/Makefile                     |   1 +
 arch/arm/dts/bcm2711-rpi-4-b.dts          |   1 +
 arch/arm/mach-bcm283x/Kconfig             |   5 +
 arch/arm/mach-bcm283x/include/mach/mbox.h |   3 +
 6 files changed, 150 insertions(+)
 create mode 100644 arch/arm/configs/rpi_v8a_defconfig
 create mode 100644 arch/arm/dts/bcm2711-rpi-4-b.dts

diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c b/arch/arm/boards/raspberry-pi/rpi-common.c
index 41ef7d16773e..0db03098e564 100644
--- a/arch/arm/boards/raspberry-pi/rpi-common.c
+++ b/arch/arm/boards/raspberry-pi/rpi-common.c
@@ -604,6 +604,30 @@ static const struct rpi_machine_data rpi_model_zero_2_w[] = {
 	},
 };
 
+static const struct rpi_machine_data rpi_4_model_b[] = {
+	{
+		.hw_id = BCM2711_BOARD_REV_4_B,
+	}, {
+		.hw_id = U8_MAX
+	},
+};
+
+static const struct rpi_machine_data rpi_400[] = {
+	{
+		.hw_id = BCM2711_BOARD_REV_400,
+	}, {
+		.hw_id = U8_MAX
+	},
+};
+
+static const struct rpi_machine_data rpi_compute_module_4[] = {
+	{
+		.hw_id = BCM2711_BOARD_REV_CM4,
+	}, {
+		.hw_id = U8_MAX
+	},
+};
+
 static const struct of_device_id rpi_of_match[] = {
 	/* BCM2835 based Boards */
 	{ .compatible = "raspberrypi,model-a", .data = rpi_model_a },
@@ -628,6 +652,11 @@ static const struct of_device_id rpi_of_match[] = {
 	{ .compatible = "raspberrypi,3-compute-module", .data = rpi_compute_module_3 },
 	{ .compatible = "raspberrypi,3-compute-module-lite", .data = rpi_compute_module_3 },
 
+	/* BCM2711 based Boards */
+	{ .compatible = "raspberrypi,4-model-b", .data = rpi_4_model_b },
+	{ .compatible = "raspberrypi,4-compute-module", .data = rpi_compute_module_4 },
+	{ .compatible = "raspberrypi,400", .data = rpi_400 },
+
 	{ /* sentinel */ },
 };
 BAREBOX_DEEP_PROBE_ENABLE(rpi_of_match);
diff --git a/arch/arm/configs/rpi_v8a_defconfig b/arch/arm/configs/rpi_v8a_defconfig
new file mode 100644
index 000000000000..68cd2438b3fc
--- /dev/null
+++ b/arch/arm/configs/rpi_v8a_defconfig
@@ -0,0 +1,111 @@
+CONFIG_ARCH_BCM283X=y
+CONFIG_MACH_RPI3=y
+CONFIG_MACH_RPI_CM3=y
+CONFIG_MACH_RPI4=y
+CONFIG_64BIT=y
+CONFIG_IMAGE_COMPRESSION_NONE=y
+CONFIG_MMU=y
+# CONFIG_MMU_EARLY is not set
+CONFIG_MALLOC_SIZE=0x0
+CONFIG_MALLOC_TLSF=y
+CONFIG_KALLSYMS=y
+CONFIG_PROMPT="R-Pi> "
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_MENU=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BLSPEC=y
+CONFIG_CONSOLE_ACTIVATE_ALL=y
+CONFIG_CONSOLE_ALLOW_COLOR=y
+CONFIG_PBL_CONSOLE=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
+CONFIG_CMD_DMESG=y
+CONFIG_LONGHELP=y
+CONFIG_CMD_IOMEM=y
+CONFIG_CMD_IMD=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_REGULATOR=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_LOADY=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_UIMAGE=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_DEFAULTENV=y
+CONFIG_CMD_LOADENV=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_MAGICVAR=y
+CONFIG_CMD_MAGICVAR_HELP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_CMP=y
+CONFIG_CMD_FILETYPE=y
+CONFIG_CMD_LN=y
+CONFIG_CMD_MD5SUM=y
+CONFIG_CMD_SHA1SUM=y
+CONFIG_CMD_SHA256SUM=y
+CONFIG_CMD_UNCOMPRESS=y
+CONFIG_CMD_LET=y
+CONFIG_CMD_MSLEEP=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_MIITOOL=y
+CONFIG_CMD_PING=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_LOGIN=y
+CONFIG_CMD_MENU=y
+CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_PASSWD=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_CRC=y
+CONFIG_CMD_CRC_CMP=y
+CONFIG_CMD_MM=y
+CONFIG_CMD_CLK=y
+CONFIG_CMD_DETECT=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_LED=y
+CONFIG_CMD_LED_TRIGGER=y
+CONFIG_CMD_WD=y
+CONFIG_CMD_OF_NODE=y
+CONFIG_CMD_OF_PROPERTY=y
+CONFIG_CMD_OFTREE=y
+CONFIG_CMD_TIME=y
+CONFIG_NET=y
+CONFIG_SERIAL_AMBA_PL011=y
+CONFIG_DRIVER_SERIAL_NS16550=y
+CONFIG_NET_USB=y
+CONFIG_NET_USB_SMSC95XX=y
+CONFIG_USB_HOST=y
+CONFIG_USB_DWC2_HOST=y
+CONFIG_USB_DWC2_GADGET=y
+CONFIG_USB_GADGET=y
+# CONFIG_USB_GADGET_AUTOSTART is not set
+CONFIG_MCI=y
+CONFIG_MCI_BCM283X=y
+CONFIG_MCI_BCM283X_SDHOST=y
+CONFIG_LED=y
+CONFIG_LED_GPIO=y
+CONFIG_LED_GPIO_OF=y
+CONFIG_LED_TRIGGERS=y
+CONFIG_WATCHDOG=y
+CONFIG_WATCHDOG_BCM2835=y
+CONFIG_GPIO_RASPBERRYPI_EXP=y
+CONFIG_PINCTRL_BCM283X=y
+CONFIG_REGULATOR=y
+CONFIG_REGULATOR_FIXED=y
+CONFIG_GENERIC_PHY=y
+CONFIG_USB_NOP_XCEIV=y
+CONFIG_FS_EXT4=y
+CONFIG_FS_TFTP=y
+CONFIG_FS_NFS=y
+CONFIG_FS_FAT=y
+CONFIG_FS_FAT_WRITE=y
+CONFIG_FS_FAT_LFN=y
+CONFIG_ZLIB=y
+CONFIG_LZO_DECOMPRESS=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index e0177d84e4e2..a2fa45d3441b 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -111,6 +111,7 @@ lwl-$(CONFIG_MACH_RPI) += bcm2835-rpi.dtb.o
 lwl-$(CONFIG_MACH_RPI2) += bcm2836-rpi-2.dtb.o
 lwl-$(CONFIG_MACH_RPI3) += bcm2837-rpi-3.dtb.o
 lwl-$(CONFIG_MACH_RPI_CM3) += bcm2837-rpi-cm3.dtb.o
+lwl-$(CONFIG_MACH_RPI4) += bcm2711-rpi-4-b.dtb.o
 lwl-$(CONFIG_MACH_SABRELITE) += imx6q-sabrelite.dtb.o imx6dl-sabrelite.dtb.o
 lwl-$(CONFIG_MACH_SABRESD) += imx6q-sabresd.dtb.o imx6qp-sabresd.dtb.o
 lwl-$(CONFIG_MACH_FREESCALE_IMX6SX_SABRESDB) += imx6sx-sdb.dtb.o
diff --git a/arch/arm/dts/bcm2711-rpi-4-b.dts b/arch/arm/dts/bcm2711-rpi-4-b.dts
new file mode 100644
index 000000000000..73b3330313db
--- /dev/null
+++ b/arch/arm/dts/bcm2711-rpi-4-b.dts
@@ -0,0 +1 @@
+#include <arm64/broadcom/bcm2711-rpi-4-b.dts>
diff --git a/arch/arm/mach-bcm283x/Kconfig b/arch/arm/mach-bcm283x/Kconfig
index 535af3300fe2..e297f1ff9c2b 100644
--- a/arch/arm/mach-bcm283x/Kconfig
+++ b/arch/arm/mach-bcm283x/Kconfig
@@ -48,6 +48,11 @@ config MACH_RPI_CM3
 	select MACH_RPI_COMMON
 	depends on 32BIT || (64BIT && !MMU_EARLY)
 
+config MACH_RPI4
+	bool "RaspberryPi 4 (BCM2711/CORTEX-A72)"
+	select MACH_RPI_AARCH_32_64
+	select MACH_RPI_COMMON
+
 endmenu
 
 endif
diff --git a/arch/arm/mach-bcm283x/include/mach/mbox.h b/arch/arm/mach-bcm283x/include/mach/mbox.h
index 46f9dfc9ea65..92cadba62ca1 100644
--- a/arch/arm/mach-bcm283x/include/mach/mbox.h
+++ b/arch/arm/mach-bcm283x/include/mach/mbox.h
@@ -171,7 +171,10 @@ struct bcm2835_mbox_tag_hdr {
 #define BCM2837B0_BOARD_REV_3B_PLUS   	0x0d
 #define BCM2837B0_BOARD_REV_3A_PLUS   	0x0e
 #define BCM2837B0_BOARD_REV_CM3_PLUS	0x10
+#define BCM2711_BOARD_REV_4_B		0x11
 #define BCM2837B0_BOARD_REV_ZERO_2	0x12
+#define BCM2711_BOARD_REV_400		0x13
+#define BCM2711_BOARD_REV_CM4		0x14
 
 struct bcm2835_mbox_tag_get_board_rev {
 	struct bcm2835_mbox_tag_hdr tag_hdr;
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

