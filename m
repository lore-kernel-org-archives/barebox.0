Delivery-date: Fri, 14 Mar 2025 21:54:30 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ttC34-00E9if-2a
	for lore@lore.pengutronix.de;
	Fri, 14 Mar 2025 21:54:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ttC33-0005JD-58
	for lore@pengutronix.de; Fri, 14 Mar 2025 21:54:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=vCPpEfU7mf1LDzB0t7bWx7dIgPQjXbqPK1S+e7jiQY4=; b=GLimS/2Qzdnf+LN/PupUJSzRe1
	DtYu/qRP/TZoomCyn9gESysIpDm4INqV7SsDpVxRe6NpR8jDgviCptyw3BqmB2t7rfNwWsP0Is8xF
	l9UQzMBoF9md8C9xiFIYYp1fYm39bq5BnJ6rYdL4xZJBO/bWguFOwzANwDnS5iozxc7qkOJaliQHK
	RdzT7TpCUSoXTqxHh2tR1lFsdASnwVzvnK3khr8Wq34TipgrvE1xGFe4zw/dfxAuc5oSnYhxjGQnc
	ETI7qORPocjX+fQRky930J/Rroj8t0JWaDoAaUfwB24Iit72AtcXdgrT0A/tCXK2Jyk5V80aZIt4y
	h1yYCbNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1ttC2F-0000000FGea-3BMN;
	Fri, 14 Mar 2025 20:53:39 +0000
Received: from zdiv.net ([2001:4b98:dc0:43:f816:3eff:fee4:1d8c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1ttC2C-0000000FGcb-1CeO
	for barebox@lists.infradead.org;
	Fri, 14 Mar 2025 20:53:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zdiv.net; s=24;
	t=1741985611;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=vCPpEfU7mf1LDzB0t7bWx7dIgPQjXbqPK1S+e7jiQY4=;
	b=vdIhIAIOol28AS1cT535BG0G7g/V1UARHleJbB6hi2AvGwGztb6eDLCQKi3sasCT4AugWG
	RBF4xxNLqaR7mRG7TTTU3cd/VWWoFBdmbrhwEMCjOKk1vLYPVBu1J05EhjidjDCzhQCmL5
	InBNdVvqNM/8QrJGek0IwpeudDnAXdBs67qg3KOixyPWYGjQzJ46hMxJmFhJ8PambGiEGj
	iWD8e5Ks4qTE1Uo4n+VO/YHshM2ZQOuaUghnrl6Jb5RrGIyBeTNEzQAXPfErqm1vrCIpAB
	AgJZAjLxJhF60AFYzWBB2WVzQOiY4oYnHWbqOpVqniv0TqjN0/HEhBinohG+zQ==
Received: from mini.my.domain (<unknown> [2a01:e0a:12:d860:4866:44ad:6a94:b4e])
	by zdiv.net (OpenSMTPD) with ESMTPSA id 7189352b (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Fri, 14 Mar 2025 21:53:31 +0100 (CET)
From: Jules Maselbas <jmaselbas@zdiv.net>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@zdiv.net>
Date: Fri, 14 Mar 2025 21:53:21 +0100
Message-ID: <20250314205321.16898-1-jmaselbas@zdiv.net>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250314_135336_791579_038AD100 
X-CRM114-Status: GOOD (  12.89  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] treewide: use fallthrough pseudo keyword in switches
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>
---
 arch/arm/lib32/bootm.c           |  2 +-
 arch/arm/lib32/bootz.c           |  2 +-
 arch/arm/mach-mxs/imx.c          |  4 ++--
 commands/bthread.c               |  2 +-
 commands/edit.c                  | 14 +++++++-------
 commands/pwm.c                   |  2 +-
 common/console.c                 |  3 +--
 drivers/aiodev/lm75.c            |  2 +-
 drivers/mci/mci-core.c           |  4 +++-
 drivers/net/am65-cpsw-nuss.c     |  2 +-
 drivers/net/phy/mv88e6xxx/port.c |  1 +
 drivers/of/address.c             |  2 +-
 drivers/pci/pci-efi.c            |  2 +-
 drivers/reset/reset-imx7.c       | 14 +++++++-------
 drivers/usb/gadget/udc/fsl_udc.c |  2 +-
 drivers/usb/host/xhci-ring.c     |  2 +-
 drivers/video/atmel_lcdfb_core.c |  2 +-
 lib/vsprintf.c                   |  3 ++-
 18 files changed, 34 insertions(+), 31 deletions(-)

diff --git a/arch/arm/lib32/bootm.c b/arch/arm/lib32/bootm.c
index d3a4d99a58..5be98b920b 100644
--- a/arch/arm/lib32/bootm.c
+++ b/arch/arm/lib32/bootm.c
@@ -479,7 +479,7 @@ static int do_bootz_linux(struct image_data *data)
 	switch (header->magic) {
 	case swab32(ZIMAGE_MAGIC):
 		swap = 1;
-		/* fall through */
+		fallthrough;
 	case ZIMAGE_MAGIC:
 		break;
 	default:
diff --git a/arch/arm/lib32/bootz.c b/arch/arm/lib32/bootz.c
index 7b3b32d418..8e8b0d225e 100644
--- a/arch/arm/lib32/bootz.c
+++ b/arch/arm/lib32/bootz.c
@@ -67,7 +67,7 @@ static int do_bootz(int argc, char *argv[])
 #ifdef CONFIG_BOOT_ENDIANNESS_SWITCH
 	case swab32(ZIMAGE_MAGIC):
 		swap = 1;
-		/* fall through */
+		fallthrough;
 #endif
 	case ZIMAGE_MAGIC:
 		break;
diff --git a/arch/arm/mach-mxs/imx.c b/arch/arm/mach-mxs/imx.c
index 2b4e682281..8abfa8e809 100644
--- a/arch/arm/mach-mxs/imx.c
+++ b/arch/arm/mach-mxs/imx.c
@@ -150,11 +150,11 @@ static void mxs_boot_save_loc(void)
 	switch (mode & 0xf) {
 	case 0x0: src = BOOTSOURCE_USB; break;		/* "USB" */
 	case 0x1: src = BOOTSOURCE_I2C_EEPROM; break;	/* "I2C, master" */
-	case 0x3: instance = 1;	/* fallthrough */	/* "SSP SPI #2, master, NOR" */
+	case 0x3: instance = 1;	fallthrough;		/* "SSP SPI #2, master, NOR" */
 	case 0x2: src = BOOTSOURCE_SPI_NOR; break;	/* "SSP SPI #1, master, NOR" */
 	case 0x4: src = BOOTSOURCE_NAND; break;		/* "NAND" */
 	case 0x8: src = BOOTSOURCE_SPI_EEPROM; break;	/* "SSP SPI #3, master, EEPROM" */
-	case 0xa: instance = 1;	/* fallthrough */	/* "SSP SD/MMC #1" */
+	case 0xa: instance = 1;	fallthrough;		/* "SSP SD/MMC #1" */
 	case 0x9: src = BOOTSOURCE_MMC; break;		/* "SSP SD/MMC #0" */
 	}
 
diff --git a/commands/bthread.c b/commands/bthread.c
index 00ff1837cc..7a16c6713d 100644
--- a/commands/bthread.c
+++ b/commands/bthread.c
@@ -191,7 +191,7 @@ static int do_bthread(int argc, char *argv[])
 			 */
 			list_add(&spawner->list, &spawners);
 
-			/* fallthrough */
+			fallthrough;
 		case 't':
 			time = true;
 		}
diff --git a/commands/edit.c b/commands/edit.c
index 893fa0271d..eda277d218 100644
--- a/commands/edit.c
+++ b/commands/edit.c
@@ -389,17 +389,17 @@ static int read_modal_key(bool is_modal)
 	case 'a':
 		statusbar("-- INSERT --");
 		mode = MODE_INSERT;
-		/* fall through */
+		fallthrough;
 	case 'l':
 		return BB_KEY_RIGHT;
 	case 'O':
 		backlog[0] = '\n';
 		backlog[1] = BB_KEY_UP;
-		/* fall through */
+		fallthrough;
 	case 'I':
 		statusbar("-- INSERT --");
 		mode = MODE_INSERT;
-		/* fall through */
+		fallthrough;
 	case '^':
 	case '0':
 		return BB_KEY_HOME;
@@ -409,22 +409,22 @@ static int read_modal_key(bool is_modal)
 			break;
 		backlog[0] = CTL_CH('u');
 		backlog[1] = CTL_CH('u');
-		/* fall through */
+		fallthrough;
 	case CTL_CH('u'):
 		return BB_KEY_PAGEUP;
 	case 'G':
 		backlog[0] = CTL_CH('d');
 		backlog[1] = CTL_CH('d');
-		/* fall through */
+		fallthrough;
 	case CTL_CH('d'):
 		return BB_KEY_PAGEDOWN;
 	case 'o':
 		backlog[0] = '\n';
-		/* fall through */
+		fallthrough;
 	case 'A':
 		statusbar("-- INSERT --");
 		mode = MODE_INSERT;
-		/* fall through */
+		fallthrough;
 	case '$':
 		return BB_KEY_END;
 	case CTL_CH('c'):
diff --git a/commands/pwm.c b/commands/pwm.c
index b86f865d55..fec6abe825 100644
--- a/commands/pwm.c
+++ b/commands/pwm.c
@@ -52,7 +52,7 @@ static int do_pwm_cmd(int argc, char *argv[])
 			/* convenience option for changing frequency without
 			 * having to specify duty width */
 			use_default_width = true;
-			/* fallthrough */
+			fallthrough;
 		case 'f':
 			freq = simple_strtol(optarg, NULL, 0);
 			break;
diff --git a/common/console.c b/common/console.c
index 136ed3b598..d5e4a96661 100644
--- a/common/console.c
+++ b/common/console.c
@@ -576,8 +576,7 @@ void console_putc(unsigned int ch, char c)
 	switch (init) {
 	case CONSOLE_UNINITIALIZED:
 		console_init_early();
-		/* fall through */
-
+		fallthrough;
 	case CONSOLE_INITIALIZED_BUFFER:
 		kfifo_putc(console_output_fifo, c);
 		if (c == '\n')
diff --git a/drivers/aiodev/lm75.c b/drivers/aiodev/lm75.c
index 86eac091d8..4685b41903 100644
--- a/drivers/aiodev/lm75.c
+++ b/drivers/aiodev/lm75.c
@@ -158,7 +158,7 @@ static int lm75_probe(struct device *dev)
 		data->resolution = 9;
 		break;
 	case mcp980x:
-		/* fall through */
+		fallthrough;
 	case tmp100:
 	case tmp101:
 		set_mask |= 3 << 5;		/* 12-bit mode */
diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 8113b523cb..2049645ef6 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -3045,8 +3045,10 @@ void mci_of_parse_node(struct mci_host *host,
 		switch (bus_width) {
 		case 8:
 			host->host_caps |= MMC_CAP_8_BIT_DATA;
-		case 4: /* note fall through from above */
+			fallthrough;
+		case 4:
 			host->host_caps |= MMC_CAP_4_BIT_DATA;
+			fallthrough;
 		case 1:
 			break;
 		default:
diff --git a/drivers/net/am65-cpsw-nuss.c b/drivers/net/am65-cpsw-nuss.c
index f6dc811bd9..6add502902 100644
--- a/drivers/net/am65-cpsw-nuss.c
+++ b/drivers/net/am65-cpsw-nuss.c
@@ -245,7 +245,7 @@ static int am65_cpsw_gmii_sel_k3(struct am65_cpsw_port *port,
 		dev_warn(dev,
 			 "Unsupported PHY mode: %u. Defaulting to MII.\n",
 			 phy_mode);
-		/* fallthrough */
+		fallthrough;
 	case PHY_INTERFACE_MODE_MII:
 		mode = AM65_GMII_SEL_MODE_MII;
 		break;
diff --git a/drivers/net/phy/mv88e6xxx/port.c b/drivers/net/phy/mv88e6xxx/port.c
index 29ea4ec882..2b3d86ddda 100644
--- a/drivers/net/phy/mv88e6xxx/port.c
+++ b/drivers/net/phy/mv88e6xxx/port.c
@@ -219,6 +219,7 @@ static int mv88e6xxx_port_set_speed(struct mv88e6xxx_chip *chip, int port,
 		break;
 	case 10000:
 		/* all bits set, fall through... */
+		fallthrough;
 	case SPEED_UNFORCED:
 		ctrl = MV88E6XXX_PORT_MAC_CTL_SPEED_UNFORCED;
 		break;
diff --git a/drivers/of/address.c b/drivers/of/address.c
index 03868406e2..c9b801e3fe 100644
--- a/drivers/of/address.c
+++ b/drivers/of/address.c
@@ -127,7 +127,7 @@ static unsigned int of_bus_pci_get_flags(const __be32 *addr)
 		break;
 	case 0x03: /* 64 bits */
 		flags |= IORESOURCE_MEM_64;
-		/* fallthrough */
+		fallthrough;
 	case 0x02: /* 32 bits */
 		flags |= IORESOURCE_MEM;
 		break;
diff --git a/drivers/pci/pci-efi.c b/drivers/pci/pci-efi.c
index b8cd663161..339a7ef673 100644
--- a/drivers/pci/pci-efi.c
+++ b/drivers/pci/pci-efi.c
@@ -176,7 +176,7 @@ static u8 *acpi_parse_resource(u8 *next, struct resource *out)
 		case ACPI_RESOURCE_TYPFLAG_MEM_PREF:
 			name = "P-MEM";
 			flags |= IORESOURCE_PREFETCH;
-			/* fallthrough */
+			fallthrough;
 		case ACPI_RESOURCE_TYPFLAG_MEM_WC:
 		case ACPI_RESOURCE_TYPFLAG_MEM_CACHEABLE:
 			flags |= IORESOURCE_CACHEABLE;
diff --git a/drivers/reset/reset-imx7.c b/drivers/reset/reset-imx7.c
index c6c38f48a8..4fea048199 100644
--- a/drivers/reset/reset-imx7.c
+++ b/drivers/reset/reset-imx7.c
@@ -209,7 +209,7 @@ static int imx8mq_reset_set(struct reset_controller_dev *rcdev,
 
 	switch (id) {
 	case IMX8MQ_RESET_PCIEPHY:
-	case IMX8MQ_RESET_PCIEPHY2: /* fallthrough */
+	case IMX8MQ_RESET_PCIEPHY2:
 		/*
 		 * wait for more than 10us to release phy g_rst and
 		 * btnrst
@@ -219,12 +219,12 @@ static int imx8mq_reset_set(struct reset_controller_dev *rcdev,
 		break;
 
 	case IMX8MQ_RESET_PCIE_CTRL_APPS_EN:
-	case IMX8MQ_RESET_PCIE2_CTRL_APPS_EN:	/* fallthrough */
-	case IMX8MQ_RESET_MIPI_DSI_PCLK_RESET_N:	/* fallthrough */
-	case IMX8MQ_RESET_MIPI_DSI_ESC_RESET_N:	/* fallthrough */
-	case IMX8MQ_RESET_MIPI_DSI_DPI_RESET_N:	/* fallthrough */
-	case IMX8MQ_RESET_MIPI_DSI_RESET_N:	/* fallthrough */
-	case IMX8MQ_RESET_MIPI_DSI_RESET_BYTE_N:	/* fallthrough */
+	case IMX8MQ_RESET_PCIE2_CTRL_APPS_EN:
+	case IMX8MQ_RESET_MIPI_DSI_PCLK_RESET_N:
+	case IMX8MQ_RESET_MIPI_DSI_ESC_RESET_N:
+	case IMX8MQ_RESET_MIPI_DSI_DPI_RESET_N:
+	case IMX8MQ_RESET_MIPI_DSI_RESET_N:
+	case IMX8MQ_RESET_MIPI_DSI_RESET_BYTE_N:
 		value = assert ? 0 : bit;
 		break;
 	}
diff --git a/drivers/usb/gadget/udc/fsl_udc.c b/drivers/usb/gadget/udc/fsl_udc.c
index 61861883ef..54fc0df655 100644
--- a/drivers/usb/gadget/udc/fsl_udc.c
+++ b/drivers/usb/gadget/udc/fsl_udc.c
@@ -250,7 +250,7 @@ static int dr_controller_setup(struct fsl_udc *udc)
 		break;
 	case FSL_USB2_PHY_UTMI_WIDE:
 		portctrl |= PORTSCX_PTW_16BIT;
-		/* fall through */
+		fallthrough;
 	case FSL_USB2_PHY_UTMI:
 		portctrl |= PORTSCX_PTS_UTMI;
 		break;
diff --git a/drivers/usb/host/xhci-ring.c b/drivers/usb/host/xhci-ring.c
index 691d9c7463..00344e8074 100644
--- a/drivers/usb/host/xhci-ring.c
+++ b/drivers/usb/host/xhci-ring.c
@@ -609,7 +609,7 @@ static void record_transfer_result(struct usb_device *udev,
 	switch (GET_COMP_CODE(le32_to_cpu(event->trans_event.transfer_len))) {
 	case COMP_SUCCESS:
 		BUG_ON(udev->act_len != length);
-		/* fallthrough */
+		fallthrough;
 	case COMP_SHORT_TX:
 		udev->status = 0;
 		break;
diff --git a/drivers/video/atmel_lcdfb_core.c b/drivers/video/atmel_lcdfb_core.c
index 964b69867f..f2d7387b10 100644
--- a/drivers/video/atmel_lcdfb_core.c
+++ b/drivers/video/atmel_lcdfb_core.c
@@ -139,7 +139,7 @@ static int atmel_lcdfb_check_var(struct fb_info *info)
 	case 32:
 		info->transp.offset = 24;
 		info->transp.length = 8;
-		/* fall through */
+		fallthrough;
 	case 24:
 		if (sinfo->lcd_wiring_mode == ATMEL_LCDC_WIRING_RGB) {
 			/* RGB:888 mode */
diff --git a/lib/vsprintf.c b/lib/vsprintf.c
index cb42caebca..5f7c097dcd 100644
--- a/lib/vsprintf.c
+++ b/lib/vsprintf.c
@@ -336,7 +336,8 @@ char *uuid_string(char *buf, const char *end, const u8 *addr, int field_width,
 
 	switch (*(++fmt)) {
 	case 'L':
-		uc = true;		/* fall-through */
+		uc = true;
+		fallthrough;
 	case 'l':
 		index = le;
 		break;
-- 
2.48.1



