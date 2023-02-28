Delivery-date: Tue, 28 Feb 2023 15:32:04 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pX11P-004kwd-Ol
	for lore@lore.pengutronix.de; Tue, 28 Feb 2023 15:32:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pX11P-0004fx-7S
	for lore@pengutronix.de; Tue, 28 Feb 2023 15:32:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LRuhDKqRoeEchPCh0yuyql/0Wupz0z3VMdqFFYGHytA=; b=JVNGotKcS6uABrtmLuDgRzQNoe
	xWY4Nxut/IuKbveIIdnCW3+IgRKvB4KXcFZV1owDvUEidcAA41q11apZlbbrm1ctB3MfjLwULBx78
	CY6wNW17VXg5hiDD1InBPVJ10Bljs/192EhQoqmgJkeFAOiUA5sRx+AkIM4YQ2wLAwhEQI6M14D6J
	Snuog4eh/IzJqb8enYY/kQDBBXGxRAufOzZAPKGh1AckBsR4RafBV3rSlpiAOHNv3EkADQTlxJp6p
	IRo1ibUixAoY1z7Zo80HW/WzoiE3F0dPrMawAP/l2Ttv1XyWCBW2vL7CzR7LofFE/wwQC88Ne7/Rz
	YUL1++TQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pX10G-00DSmF-FE; Tue, 28 Feb 2023 14:30:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pX100-00DSgO-Lo
	for barebox@lists.infradead.org; Tue, 28 Feb 2023 14:30:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pX0zz-00047T-4l; Tue, 28 Feb 2023 15:30:35 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pX0zy-000t90-Fl; Tue, 28 Feb 2023 15:30:34 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pX0zx-007LXG-0O; Tue, 28 Feb 2023 15:30:33 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 28 Feb 2023 15:30:30 +0100
Message-Id: <20230228143031.1718565-9-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230228143031.1718565-1-s.hauer@pengutronix.de>
References: <20230228143031.1718565-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230228_063036_903093_8F11CA05 
X-CRM114-Status: GOOD (  18.67  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 8/9] at91: consolidate usb-a963 128m images
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We have some at91 which differ from other configs only in the memory
size. Let's exploit the multiimage mechanism to build both memory
sizes from the same config using different images.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 .../arm/boards/usb-a926x/usb_a9263_lowlevel.c | 19 +++--
 .../usb_a9263_128mib_bootstrap_defconfig      | 24 ------
 arch/arm/configs/usb_a9263_128mib_defconfig   | 77 -------------------
 arch/arm/mach-at91/Kconfig                    |  6 --
 images/Makefile.at91                          |  4 +
 5 files changed, 18 insertions(+), 112 deletions(-)
 delete mode 100644 arch/arm/configs/usb_a9263_128mib_bootstrap_defconfig
 delete mode 100644 arch/arm/configs/usb_a9263_128mib_defconfig

diff --git a/arch/arm/boards/usb-a926x/usb_a9263_lowlevel.c b/arch/arm/boards/usb-a926x/usb_a9263_lowlevel.c
index e54c8442c4..0597321084 100644
--- a/arch/arm/boards/usb-a926x/usb_a9263_lowlevel.c
+++ b/arch/arm/boards/usb-a926x/usb_a9263_lowlevel.c
@@ -20,7 +20,7 @@
 #endif
 #define MASTER_PLL_DIV		6
 
-static void __bare_init usb_a9263_board_config(struct at91sam926x_board_cfg *cfg)
+static void __bare_init usb_a9263_board_config(struct at91sam926x_board_cfg *cfg, bool has_mem_128m)
 {
 	/* Disable Watchdog */
 	cfg->wdt_mr =
@@ -88,7 +88,7 @@ static void __bare_init usb_a9263_board_config(struct at91sam926x_board_cfg *cfg
 		(5 << 24) |		/* Active to Precharge Delay */
 		(8 << 28);		/* Exit Self Refresh to Active Delay */
 
-	if (IS_ENABLED(CONFIG_AT91_HAVE_SRAM_128M))
+	if (has_mem_128m)
 		cfg->sdrc_cr |= AT91_SDRAMC_NC_10;
 	else
 		cfg->sdrc_cr |= AT91_SDRAMC_NC_9;
@@ -106,7 +106,7 @@ static void __bare_init usb_a9263_board_config(struct at91sam926x_board_cfg *cfg
 		AT91_RSTC_RSTTYP_WATCHDOG;
 }
 
-static void __bare_init usb_a9263_init(void)
+static void __bare_init usb_a9263_init(bool has_mem_128m)
 {
 	struct at91sam926x_board_cfg cfg;
 
@@ -115,7 +115,7 @@ static void __bare_init usb_a9263_init(void)
 	cfg.ebi_pio_is_peripha = true;
 	cfg.matrix_csa = IOMEM(AT91SAM9263_BASE_MATRIX + AT91SAM9263_MATRIX_EBI0CSA);
 
-	usb_a9263_board_config(&cfg);
+	usb_a9263_board_config(&cfg, has_mem_128m);
 	at91sam9263_board_init(&cfg);
 
 	barebox_arm_entry(AT91_CHIPSELECT_1, at91_get_sdram_size(cfg.sdramc),
@@ -128,5 +128,14 @@ ENTRY_FUNCTION(start_usb_a9263, r0, r1, r2)
 
 	arm_setup_stack(AT91SAM9263_SRAM0_BASE + AT91SAM9263_SRAM0_SIZE);
 
-	usb_a9263_init();
+	usb_a9263_init(false);
+}
+
+ENTRY_FUNCTION(start_usb_a9263_128m, r0, r1, r2)
+{
+	arm_cpu_lowlevel_init();
+
+	arm_setup_stack(AT91SAM9263_SRAM0_BASE + AT91SAM9263_SRAM0_SIZE);
+
+	usb_a9263_init(true);
 }
diff --git a/arch/arm/configs/usb_a9263_128mib_bootstrap_defconfig b/arch/arm/configs/usb_a9263_128mib_bootstrap_defconfig
deleted file mode 100644
index 30794eeec4..0000000000
--- a/arch/arm/configs/usb_a9263_128mib_bootstrap_defconfig
+++ /dev/null
@@ -1,24 +0,0 @@
-CONFIG_ARCH_AT91SAM9263=y
-CONFIG_MACH_USB_A9263=y
-CONFIG_AT91_HAVE_SRAM_128M=y
-CONFIG_AT91_BOOTSTRAP=y
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x12000
-CONFIG_AEABI=y
-CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_ENVIRONMENT_VARIABLES=y
-CONFIG_PBL_IMAGE=y
-CONFIG_MMU=y
-CONFIG_MALLOC_DUMMY=y
-CONFIG_PROMPT="USB-9263:"
-CONFIG_SHELL_NONE=y
-# CONFIG_SPI is not set
-CONFIG_MTD=y
-# CONFIG_MTD_WRITE is not set
-# CONFIG_MTD_OOB_DEVICE is not set
-CONFIG_NAND=y
-# CONFIG_NAND_ECC_HW is not set
-# CONFIG_NAND_ECC_HW_SYNDROME is not set
-# CONFIG_NAND_ECC_HW_NONE is not set
-CONFIG_NAND_ATMEL=y
-# CONFIG_FS_RAMFS is not set
-CONFIG_BOOTSTRAP_DEVFS=y
diff --git a/arch/arm/configs/usb_a9263_128mib_defconfig b/arch/arm/configs/usb_a9263_128mib_defconfig
deleted file mode 100644
index 0795cacbb7..0000000000
--- a/arch/arm/configs/usb_a9263_128mib_defconfig
+++ /dev/null
@@ -1,77 +0,0 @@
-CONFIG_ARCH_AT91SAM9263=y
-CONFIG_MACH_USB_A9263=y
-CONFIG_AT91_HAVE_SRAM_128M=y
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
-CONFIG_AEABI=y
-CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_PBL_IMAGE=y
-CONFIG_MMU=y
-CONFIG_EXPERIMENTAL=y
-CONFIG_MALLOC_TLSF=y
-CONFIG_PROMPT="USB-9263:"
-CONFIG_GLOB=y
-CONFIG_PROMPT_HUSH_PS2="y"
-CONFIG_HUSH_FANCY_PROMPT=y
-CONFIG_CMDLINE_EDITING=y
-CONFIG_AUTO_COMPLETE=y
-CONFIG_MENU=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_BOOTM_VERBOSE=y
-CONFIG_BOOTM_INITRD=y
-CONFIG_BOOTM_OFTREE=y
-CONFIG_BOOTM_OFTREE_UIMAGE=y
-CONFIG_CONSOLE_ACTIVATE_ALL=y
-CONFIG_PARTITION=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-# CONFIG_CMD_ARM_CPUINFO is not set
-CONFIG_LONGHELP=y
-CONFIG_CMD_MEMINFO=y
-# CONFIG_CMD_BOOTU is not set
-CONFIG_CMD_GO=y
-CONFIG_CMD_LOADB=y
-CONFIG_CMD_RESET=y
-CONFIG_CMD_UIMAGE=y
-CONFIG_CMD_PARTITION=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_MD5SUM=y
-CONFIG_CMD_SHA1SUM=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_DHCP=y
-CONFIG_CMD_PING=y
-CONFIG_CMD_TFTP=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_LOGIN=y
-CONFIG_CMD_MENU=y
-CONFIG_CMD_MENU_MANAGEMENT=y
-CONFIG_CMD_PASSWD=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_FLASH=y
-CONFIG_CMD_GPIO=y
-CONFIG_CMD_LED=y
-CONFIG_CMD_LED_TRIGGER=y
-CONFIG_CMD_OFTREE=y
-CONFIG_NET=y
-CONFIG_NET_NFS=y
-CONFIG_NET_NETCONSOLE=y
-CONFIG_NET_RESOLV=y
-CONFIG_DRIVER_NET_MACB=y
-CONFIG_DRIVER_SPI_ATMEL=y
-CONFIG_MTD=y
-# CONFIG_MTD_OOB_DEVICE is not set
-CONFIG_MTD_DATAFLASH=y
-CONFIG_NAND=y
-# CONFIG_NAND_ECC_HW is not set
-# CONFIG_NAND_ECC_HW_SYNDROME is not set
-# CONFIG_NAND_ECC_HW_NONE is not set
-CONFIG_NAND_ATMEL=y
-CONFIG_USB_GADGET=y
-CONFIG_USB_GADGET_DFU=y
-CONFIG_USB_GADGET_SERIAL=y
-CONFIG_LED=y
-CONFIG_LED_GPIO=y
-CONFIG_LED_TRIGGERS=y
-CONFIG_FS_TFTP=y
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 67d428e210..caf296dfcd 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -672,12 +672,6 @@ config AT91_HAVE_2MMC
 	  with 2 SD/MMC Slots. This is the case for AT91SAM9G20-EK rev. C and
 	  onwards.
 
-config AT91_HAVE_SRAM_128M
-	bool "Have 128 of ram"
-	depends on MACH_USB_A9G20 || MACH_USB_A9263 || MACH_QIL_A9260 || MACH_QIL_A9G20
-	help
-	  Select this if you board have 128 MiB of Ram (as USB_A9G20 C11)
-
 choice
 	prompt "LCD type"
 	depends on MACH_AT91SAM9M10G45EK
diff --git a/images/Makefile.at91 b/images/Makefile.at91
index bbb291bcbe..19a81e2e9a 100644
--- a/images/Makefile.at91
+++ b/images/Makefile.at91
@@ -144,6 +144,10 @@ pblb-$(CONFIG_MACH_USB_A9263) += start_usb_a9263
 FILE_barebox-usb-a9263.img = start_usb_a9263.pblb
 image-$(CONFIG_MACH_USB_A9263) += barebox-usb-a9263.img
 
+pblb-$(CONFIG_MACH_USB_A9263) += start_usb_a9263_128m
+FILE_barebox-usb-a9263-128m.img = start_usb_a9263_128m.pblb
+image-$(CONFIG_MACH_USB_A9263) += barebox-usb-a9263-128m.img
+
 pblb-$(CONFIG_MACH_USB_A9G20) += start_usb_a9g20
 FILE_barebox-usb-a9g20.img = start_usb_a9g20.pblb
 image-$(CONFIG_MACH_USB_A9G20) += barebox-usb-a9g20.img
-- 
2.30.2



