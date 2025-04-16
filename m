Delivery-date: Wed, 16 Apr 2025 12:38:38 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u50AA-001QSV-2X
	for lore@lore.pengutronix.de;
	Wed, 16 Apr 2025 12:38:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u50A7-0004c3-5y
	for lore@pengutronix.de; Wed, 16 Apr 2025 12:38:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RAGIrO6elTQ6UcujF9XbsB6auupUp4PoAcYmp5NvSYM=; b=oal/PvMuteIX6Jx51NiekR8+en
	9R5xk/0CA4slBXSkbzYtGYEEil2MNAMZ9cxcJWLUU8whx9jYzACEatqyMWm+JaM4GE10d7EP+b9Dh
	p7pOzQkStmllOY3oyO/tDuy6y6vaQwCzY4OAMBGKItJQuW+SF9aAwdN3TV/BuAF3VVerQMKX0YddJ
	7kNvaPtFd52gwTpXwoaV9Ix2FJOduD6q82Z6tmhlMGTx1145dQtQwLFY1iAKLUUiSdB1e+/sPe7em
	P2eiGPZJCEF/p3tVHABfnvkg+qAvRLjPDOenzo+5AtJnkIWlge4JyiPGaLuDnRgYV1EqnAj4fbV+v
	IHiOJPvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u509V-00000009EV4-1sFO;
	Wed, 16 Apr 2025 10:37:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u509P-00000009ES4-0BUX
	for barebox@lists.infradead.org;
	Wed, 16 Apr 2025 10:37:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u509N-00046y-78; Wed, 16 Apr 2025 12:37:49 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u509M-000ZVF-3A;
	Wed, 16 Apr 2025 12:37:48 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u509M-00174h-2p;
	Wed, 16 Apr 2025 12:37:48 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 16 Apr 2025 12:37:48 +0200
Message-Id: <20250416103748.265415-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250416103748.265415-1-a.fatoum@pengutronix.de>
References: <20250416103748.265415-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250416_033751_579761_E9B60FAE 
X-CRM114-Status: GOOD (  18.01  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 5/5] treewide: replace strerror with %pe format specifier
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

As could be seen in the previous commit, use of strerror is error prone,
so replace it with the %pe format specifier in printfs in all barebox code
that's not shared with host tools.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .../boards/freescale-mx6-sabrelite/board.c    |  2 +-
 arch/arm/boards/karo-tx25/board.c             |  2 +-
 arch/arm/boards/karo-tx6x/board.c             |  2 +-
 arch/arm/boards/novena/board.c                |  6 ++---
 arch/arm/boards/protonic-imx6/board.c         |  2 +-
 arch/arm/boards/skov-imx6/board.c             |  4 ++--
 arch/arm/boards/tqma6ulx/board.c              |  2 +-
 arch/arm/boards/wago-pfc-am35xx/board.c       |  2 +-
 arch/arm/boards/webasto-ccbv2/board.c         |  2 +-
 arch/arm/boards/zii-imx6q-rdu2/board.c        |  4 ++--
 arch/arm/cpu/psci-client.c                    | 10 ++++----
 arch/arm/lib32/bootm.c                        |  2 +-
 arch/arm/mach-imx/iim.c                       |  2 +-
 arch/arm/mach-imx/imx-bbu-internal.c          | 12 +++++-----
 arch/arm/mach-omap/am33xx_bbu_nand.c          |  4 ++--
 arch/arm/mach-rockchip/bbu.c                  |  8 +++----
 arch/arm/mach-tegra/tegra-bbu.c               |  4 ++--
 commands/automount.c                          |  3 +--
 commands/bootm.c                              |  2 +-
 commands/filetype.c                           |  2 +-
 commands/ip-route-get.c                       |  4 ++--
 commands/keystore.c                           |  6 ++---
 commands/led.c                                |  2 +-
 commands/loadenv.c                            |  8 +++----
 commands/ls.c                                 |  4 ++--
 commands/miitool.c                            |  4 ++--
 commands/nand-bitflip.c                       |  6 ++---
 commands/nv.c                                 |  4 ++--
 commands/of_overlay.c                         |  2 +-
 commands/oftree.c                             |  2 +-
 commands/partition.c                          |  2 +-
 commands/spd_decode.c                         |  2 +-
 commands/trigger.c                            |  2 +-
 commands/ubi.c                                | 18 +++++++-------
 commands/wd.c                                 |  2 +-
 common/bbu.c                                  |  8 +++----
 common/boot.c                                 |  6 ++---
 common/bootchooser.c                          |  6 ++---
 common/bootm.c                                | 24 +++++++++----------
 common/console.c                              |  2 +-
 common/fastboot.c                             | 20 ++++++++--------
 common/globalvar.c                            | 14 +++++------
 common/hush.c                                 |  2 +-
 common/image-fit.c                            |  2 +-
 common/imx-bbu-nand-fcb.c                     | 20 ++++++++--------
 common/memory.c                               |  2 +-
 common/oftree.c                               |  4 ++--
 common/ratp/ratp.c                            |  2 +-
 common/startup.c                              |  4 ++--
 common/state/backend_format_raw.c             |  4 ++--
 crypto/rsa.c                                  |  4 ++--
 defaultenv/defaultenv.c                       |  4 ++--
 drivers/ata/pata-imx.c                        |  4 ++--
 drivers/firmware/altera_serial.c              |  2 +-
 drivers/firmware/socfpga.c                    | 16 ++++++-------
 drivers/gpio/gpio-latch.c                     |  8 +++----
 drivers/hab/hab.c                             |  2 +-
 drivers/hw_random/dev-random.c                |  2 +-
 drivers/hw_random/mxc-rngc.c                  |  2 +-
 drivers/mci/mci-core.c                        |  4 ++--
 drivers/mci/rockchip-dwcmshc-sdhci.c          |  8 +++----
 drivers/mfd/superio.c                         |  4 ++--
 drivers/mfd/twl-core.c                        |  8 +++----
 drivers/misc/storage-by-alias.c               |  2 +-
 drivers/mtd/nand/raw/mxc_nand.c               |  4 ++--
 drivers/mtd/nand/raw/nand_omap_gpmc.c         |  4 ++--
 drivers/mtd/peb.c                             |  2 +-
 drivers/mtd/ubi/barebox.c                     |  2 +-
 drivers/net/cpsw.c                            |  2 +-
 drivers/net/designware_eqos.c                 |  2 +-
 drivers/net/designware_imx.c                  |  4 ++--
 drivers/net/designware_rockchip.c             |  4 ++--
 drivers/net/designware_stm32.c                |  8 +++----
 drivers/net/designware_tegra186.c             |  6 ++---
 drivers/net/phy/mdio_bus.c                    |  2 +-
 drivers/nvme/host/pci.c                       |  4 ++--
 drivers/nvmem/bsec.c                          |  2 +-
 drivers/of/overlay.c                          |  2 +-
 drivers/power/reset/syscon-reboot-mode.c      |  4 ++--
 drivers/serial/serial_ns16550_pci.c           |  4 ++--
 drivers/usb/gadget/function/f_fastboot.c      |  4 ++--
 drivers/usb/imx/chipidea-imx.c                |  8 +++----
 drivers/video/fb.c                            |  4 ++--
 drivers/video/fbconsole.c                     |  2 +-
 drivers/video/imx-ipu-v3/imx-ldb.c            |  4 ++--
 drivers/video/imx-ipu-v3/ipu-common.c         |  2 +-
 drivers/video/imx-ipu-v3/ipufb.c              |  6 ++---
 drivers/video/rockchip/rockchip_drm_vop2.c    |  2 +-
 drivers/video/stm32_ltdc.c                    |  2 +-
 fs/ext4/ext_barebox.c                         |  4 ++--
 fs/fs.c                                       |  4 ++--
 fs/nfs.c                                      |  2 +-
 fs/squashfs/squashfs.c                        |  3 +--
 fs/tftp.c                                     |  2 +-
 lib/gui/image_renderer.c                      |  2 +-
 net/dhcp.c                                    |  2 +-
 net/eth.c                                     |  4 ++--
 net/fastboot.c                                |  2 +-
 net/netconsole.c                              |  2 +-
 net/ping.c                                    |  4 ++--
 net/sntp.c                                    |  2 +-
 101 files changed, 227 insertions(+), 231 deletions(-)

diff --git a/arch/arm/boards/freescale-mx6-sabrelite/board.c b/arch/arm/boards/freescale-mx6-sabrelite/board.c
index 5982d75e2b17..d3e7fc038ac1 100644
--- a/arch/arm/boards/freescale-mx6-sabrelite/board.c
+++ b/arch/arm/boards/freescale-mx6-sabrelite/board.c
@@ -103,7 +103,7 @@ static int sabrelite_ksz9021rn_setup(void)
 
 	ret = gpio_request_array(fec_gpios, ARRAY_SIZE(fec_gpios));
 	if (ret) {
-		pr_err("Failed to request fec gpios: %s\n", strerror(-ret));
+		pr_err("Failed to request fec gpios: %pe\n", ERR_PTR(ret));
 		return ret;
 	}
 
diff --git a/arch/arm/boards/karo-tx25/board.c b/arch/arm/boards/karo-tx25/board.c
index 7e8691ef9370..00c2a3aa833e 100644
--- a/arch/arm/boards/karo-tx25/board.c
+++ b/arch/arm/boards/karo-tx25/board.c
@@ -46,7 +46,7 @@ static void noinline gpio_fec_active(void)
 	/* power down phy, put into reset */
 	ret = gpio_request_array(fec_gpios, ARRAY_SIZE(fec_gpios));
 	if (ret) {
-		pr_err("Failed to request fec gpios: %s\n", strerror(-ret));
+		pr_err("Failed to request fec gpios: %pe\n", ERR_PTR(ret));
 		return;
 	}
 
diff --git a/arch/arm/boards/karo-tx6x/board.c b/arch/arm/boards/karo-tx6x/board.c
index 1e14a7527212..f3ff59afb9d4 100644
--- a/arch/arm/boards/karo-tx6x/board.c
+++ b/arch/arm/boards/karo-tx6x/board.c
@@ -78,7 +78,7 @@ static int setup_pmic_voltages(void)
 	pr_err("No PMIC found\n");
 out:
 	if (ret)
-		pr_err("PMIC setup failed with %s\n", strerror(-ret));
+		pr_err("PMIC setup failed with %pe\n", ERR_PTR(ret));
 
 	return ret;
 }
diff --git a/arch/arm/boards/novena/board.c b/arch/arm/boards/novena/board.c
index b6c59aff445f..77d9db0c7874 100644
--- a/arch/arm/boards/novena/board.c
+++ b/arch/arm/boards/novena/board.c
@@ -22,7 +22,7 @@ static void power_on_audio_codec(void)
 	int rc = of_devices_ensure_probed_by_name("regulator-audio-codec");
 
 	if (rc < 0)
-		pr_err("Unable to power on audio codec: %s\n", strerror(-rc));
+		pr_err("Unable to power on audio codec: %pe\n", ERR_PTR(rc));
 }
 
 static struct novena_eeprom *novena_read_eeprom(void)
@@ -40,14 +40,14 @@ static struct novena_eeprom *novena_read_eeprom(void)
 
 	rc = of_device_ensure_probed_by_alias("eeprom0");
 	if (rc < 0) {
-		pr_err("Unable to probe eeprom0: %s\n", strerror(-rc));
+		pr_err("Unable to probe eeprom0: %pe\n", ERR_PTR(rc));
 		return NULL;
 	}
 
 	rc = read_file_2("/dev/eeprom0", &read, &eeprom, max);
 
 	if (rc < 0 && rc != -EFBIG) {
-		pr_err("Unable to read Novena EEPROM: %s\n", strerror(-rc));
+		pr_err("Unable to read Novena EEPROM: %pe\n", ERR_PTR(rc));
 		return NULL;
 	} else if (read != max) {
 		pr_err("Short read from Novena EEPROM?\n");
diff --git a/arch/arm/boards/protonic-imx6/board.c b/arch/arm/boards/protonic-imx6/board.c
index 4a9e7fd2939d..80558ce15817 100644
--- a/arch/arm/boards/protonic-imx6/board.c
+++ b/arch/arm/boards/protonic-imx6/board.c
@@ -413,7 +413,7 @@ static int prt_imx6_usb_boot(struct bootentry *entry, int verbose, int dryrun)
 	return 0;
 
 exit_usb_boot:
-	dev_err(dev, "Failed to run usb boot: %s\n", strerror(-ret));
+	dev_err(dev, "Failed to run usb boot: %pe\n", ERR_PTR(ret));
 
 	return ret;
 }
diff --git a/arch/arm/boards/skov-imx6/board.c b/arch/arm/boards/skov-imx6/board.c
index 8ebb4a6e5840..164833568ab9 100644
--- a/arch/arm/boards/skov-imx6/board.c
+++ b/arch/arm/boards/skov-imx6/board.c
@@ -43,8 +43,8 @@ static int eth_of_fixup_node(struct device_node *root, const char *node_path,
 
 	ret = of_set_property(node, "mac-address", ethaddr, ETH_ALEN, 1);
 	if (ret)
-		dev_err(skov_priv->dev, "Setting mac-address property of %pOF failed with: %s.\n",
-		        node, strerror(-ret));
+		dev_err(skov_priv->dev, "Setting mac-address property of %pOF failed with: %pe.\n",
+		        node, ERR_PTR(ret));
 
 	return ret;
 }
diff --git a/arch/arm/boards/tqma6ulx/board.c b/arch/arm/boards/tqma6ulx/board.c
index c55956888084..0c1af3c18f8d 100644
--- a/arch/arm/boards/tqma6ulx/board.c
+++ b/arch/arm/boards/tqma6ulx/board.c
@@ -47,7 +47,7 @@ static int mba6ulx_optee_fixup(void)
 	/* register the overlay for fixing up the kernel device tree */
 	ret = of_register_overlay(overlay);
 	if (ret) {
-		printf("cannot apply oftree overlay: %s\n", strerror(-ret));
+		printf("cannot apply oftree overlay: %pe\n", ERR_PTR(ret));
 		goto err;
 	}
 
diff --git a/arch/arm/boards/wago-pfc-am35xx/board.c b/arch/arm/boards/wago-pfc-am35xx/board.c
index 57f51972a91a..b6d20bd181e0 100644
--- a/arch/arm/boards/wago-pfc-am35xx/board.c
+++ b/arch/arm/boards/wago-pfc-am35xx/board.c
@@ -43,7 +43,7 @@ static int pfc200_phy_fixup(struct mii_bus *mii, int phyadr)
 
 	ret = phy_write(phydev, MII_BMCR, BMCR_ANENABLE | BMCR_HP_MDIX);
 	if (ret)
-		pr_err("Failed to write to phy: %s\n", strerror(-ret));
+		pr_err("Failed to write to phy: %pe\n", ERR_PTR(ret));
 
 	return ret;
 }
diff --git a/arch/arm/boards/webasto-ccbv2/board.c b/arch/arm/boards/webasto-ccbv2/board.c
index 6b2c8b8cb01c..12a776f0fd2b 100644
--- a/arch/arm/boards/webasto-ccbv2/board.c
+++ b/arch/arm/boards/webasto-ccbv2/board.c
@@ -38,7 +38,7 @@ static int ccbv2_probe(struct device *dev)
 
 	ret = of_register_overlay(overlay);
 	if (ret) {
-		printf("cannot apply oftree overlay: %s\n", strerror(-ret));
+		printf("cannot apply oftree overlay: %pe\n", ERR_PTR(ret));
 		goto err;
 	}
 
diff --git a/arch/arm/boards/zii-imx6q-rdu2/board.c b/arch/arm/boards/zii-imx6q-rdu2/board.c
index 88912a5108e0..8573c6a637f4 100644
--- a/arch/arm/boards/zii-imx6q-rdu2/board.c
+++ b/arch/arm/boards/zii-imx6q-rdu2/board.c
@@ -89,8 +89,8 @@ static int rdu2_reset_audio_touchscreen_nfc(void)
 	ret = gpio_request_array(rdu2_reset_gpios,
 				 ARRAY_SIZE(rdu2_reset_gpios));
 	if (ret) {
-		pr_err("Failed to request RDU2 reset gpios: %s\n",
-		       strerror(-ret));
+		pr_err("Failed to request RDU2 reset gpios: %pe\n",
+		       ERR_PTR(ret));
 		return ret;
 	}
 
diff --git a/arch/arm/cpu/psci-client.c b/arch/arm/cpu/psci-client.c
index c865e754fd27..a8f31572327a 100644
--- a/arch/arm/cpu/psci-client.c
+++ b/arch/arm/cpu/psci-client.c
@@ -21,7 +21,7 @@ static void __noreturn psci_invoke_noreturn(ulong function)
 
 	ret = psci_invoke(function, 0, 0, 0, NULL);
 
-	pr_err("psci command failed: %s\n", strerror(-ret));
+	pr_err("psci command failed: %pe\n", ERR_PTR(ret));
 	hang();
 }
 
@@ -160,8 +160,8 @@ static int __init psci_probe(struct device *dev)
 
 	ret = poweroff_handler_register_fn(psci_poweroff);
 	if (ret)
-		dev_warn(dev, "error registering poweroff handler: %s\n",
-			 strerror(-ret));
+		dev_warn(dev, "error registering poweroff handler: %pe\n",
+			 ERR_PTR(ret));
 
 	restart.name = "psci";
 	restart.restart = psci_restart;
@@ -169,8 +169,8 @@ static int __init psci_probe(struct device *dev)
 
 	ret = restart_handler_register(&restart);
 	if (ret)
-		dev_warn(dev, "error registering restart handler: %s\n",
-			 strerror(-ret));
+		dev_warn(dev, "error registering restart handler: %pe\n",
+			 ERR_PTR(ret));
 
 	return ret;
 }
diff --git a/arch/arm/lib32/bootm.c b/arch/arm/lib32/bootm.c
index 3d3e01aa4138..eb901bdc7031 100644
--- a/arch/arm/lib32/bootm.c
+++ b/arch/arm/lib32/bootm.c
@@ -184,7 +184,7 @@ static int bootm_load_tee_from_fit(struct image_data *data)
 		ret = fit_open_image(data->os_fit, data->fit_config, "tee",
 				     &tee, &tee_size);
 		if (ret) {
-			pr_err("Error opening tee fit image: %s\n", strerror(-ret));
+			pr_err("Error opening tee fit image: %pe\n", ERR_PTR(ret));
 			return ret;
 		}
 		memcpy(&hdr, tee, sizeof(hdr));
diff --git a/arch/arm/mach-imx/iim.c b/arch/arm/mach-imx/iim.c
index f4581396b1a5..7020e6eafa4f 100644
--- a/arch/arm/mach-imx/iim.c
+++ b/arch/arm/mach-imx/iim.c
@@ -431,7 +431,7 @@ static void imx_iim_init_dt(struct device *dev, struct iim_priv *iim)
 
 		ret = regmap_bulk_read(iim->bank[bank]->map, offset, mac, MAC_BYTES);
 		if (ret)
-			dev_err(dev, "cannot read: %s\n", strerror(-ret));
+			dev_err(dev, "cannot read: %pe\n", ERR_PTR(ret));
 		else
 			of_eth_register_ethaddr(rnode, mac);
 
diff --git a/arch/arm/mach-imx/imx-bbu-internal.c b/arch/arm/mach-imx/imx-bbu-internal.c
index 4190d60d18dd..66a8ae10e507 100644
--- a/arch/arm/mach-imx/imx-bbu-internal.c
+++ b/arch/arm/mach-imx/imx-bbu-internal.c
@@ -60,8 +60,8 @@ static int imx_bbu_protect(int fd, struct imx_internal_bbu_handler *imx_handler,
 		if (ret == -ENOSYS)
 			return 0;
 
-		pr_err("%sprotecting %s failed with %s\n", prefix, devicefile,
-		       strerror(-ret));
+		pr_err("%sprotecting %s failed with %pe\n", prefix, devicefile,
+		       ERR_PTR(ret));
 	}
 
 	return ret;
@@ -110,16 +110,16 @@ static int imx_bbu_write_device(struct imx_internal_bbu_handler *imx_handler,
 				devicefile, offset, image_len);
 		ret = erase(fd, image_len, offset, ERASE_TO_WRITE);
 		if (ret) {
-			pr_err("erasing %s failed with %s\n", devicefile,
-					strerror(-ret));
+			pr_err("erasing %s failed with %pe\n", devicefile,
+					ERR_PTR(ret));
 			goto err_close;
 		}
 	}
 
 	ret = pwrite_full(fd, buf, image_len, offset);
 	if (ret < 0) {
-		pr_err("writing to %s failed with %s\n", devicefile,
-		       strerror(-ret));
+		pr_err("writing to %s failed with %pe\n", devicefile,
+		       ERR_PTR(ret));
 		goto err_close;
 	}
 
diff --git a/arch/arm/mach-omap/am33xx_bbu_nand.c b/arch/arm/mach-omap/am33xx_bbu_nand.c
index 40e382780a9c..9eee77c4d590 100644
--- a/arch/arm/mach-omap/am33xx_bbu_nand.c
+++ b/arch/arm/mach-omap/am33xx_bbu_nand.c
@@ -226,8 +226,8 @@ static int nand_update_handler_complete(struct bbu_handler *handler,
 
 			ret = mtd_peb_write(mtd, buf, i, 0, mtd->erasesize);
 			if (ret) {
-				pr_err("Failed to write MLO to PEB%d: %s\n", i,
-				       strerror(-ret));
+				pr_err("Failed to write MLO to PEB%d: %pe\n", i,
+				       ERR_PTR(ret));
 				continue;
 			}
 			written++;
diff --git a/arch/arm/mach-rockchip/bbu.c b/arch/arm/mach-rockchip/bbu.c
index 7715540863ff..b4d2a5280fab 100644
--- a/arch/arm/mach-rockchip/bbu.c
+++ b/arch/arm/mach-rockchip/bbu.c
@@ -97,16 +97,16 @@ static int rockchip_bbu_mmc_handler(struct bbu_handler *handler,
 
 	ret = pwrite_full(fd, data->image, data->len, wr0);
 	if (ret < 0) {
-		pr_err("writing to %s failed with %s\n", data->devicefile,
-			strerror(-ret));
+		pr_err("writing to %s failed with %pe\n", data->devicefile,
+			ERR_PTR(ret));
 		goto err_close;
 	}
 
 	if (wr1) {
 		ret = pwrite_full(fd, data->image, data->len, wr1);
 		if (ret < 0) {
-			pr_err("writing to %s failed with %s\n", data->devicefile,
-				strerror(-ret));
+			pr_err("writing to %s failed with %pe\n", data->devicefile,
+				ERR_PTR(ret));
 			goto err_close;
 		}
 	}
diff --git a/arch/arm/mach-tegra/tegra-bbu.c b/arch/arm/mach-tegra/tegra-bbu.c
index 0a59da04db05..76b3f6d230bf 100644
--- a/arch/arm/mach-tegra/tegra-bbu.c
+++ b/arch/arm/mach-tegra/tegra-bbu.c
@@ -41,8 +41,8 @@ static int tegra_bbu_emmc_handler(struct bbu_handler *handler,
 
 	ret = write(fd, data->image, data->len);
 	if (ret < 0) {
-		pr_err("writing update to %s failed with %s\n",
-			data->devicefile, strerror(-ret));
+		pr_err("writing update to %s failed with %pe\n",
+			data->devicefile, ERR_PTR(ret));
 		goto err_close;
 	}
 
diff --git a/commands/automount.c b/commands/automount.c
index d2b3a2d56e09..2886bc3cc4e0 100644
--- a/commands/automount.c
+++ b/commands/automount.c
@@ -39,8 +39,7 @@ static int do_automount(int argc, char *argv[])
 
 	ret = automount_add(argv[optind], argv[optind + 1]);
 	if (ret)
-		printf("adding automountpoint failed: %s\n",
-				strerror(-ret));
+		printf("adding automountpoint failed: %pe\n", ERR_PTR(ret));
 
 	return ret ? 1 : 0;
 }
diff --git a/commands/bootm.c b/commands/bootm.c
index 95d267135cdb..3936623b5199 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -97,7 +97,7 @@ static int do_bootm(int argc, char *argv[])
 
 	ret = bootm_boot(&data);
 	if (ret) {
-		printf("handler failed with: %s\n", strerror(-ret));
+		printf("handler failed with: %pe\n", ERR_PTR(ret));
 		goto err_out;
 	}
 
diff --git a/commands/filetype.c b/commands/filetype.c
index 7a556a980d59..de6e61dee6a7 100644
--- a/commands/filetype.c
+++ b/commands/filetype.c
@@ -68,7 +68,7 @@ static int do_filetype(int argc, char *argv[])
 
 	ret = file_name_detect_type(filename, &type);
 	if (ret) {
-		printf("failed to detect type of %s: %s\n", filename, strerror(-ret));
+		printf("failed to detect type of %s: %pe\n", filename, ERR_PTR(ret));
 		return COMMAND_ERROR;
 	}
 
diff --git a/commands/ip-route-get.c b/commands/ip-route-get.c
index 566e12192a7f..76cc33a5cb0f 100644
--- a/commands/ip-route-get.c
+++ b/commands/ip-route-get.c
@@ -33,8 +33,8 @@ static int do_ip_route_get(int argc, char *argv[])
 
 	ret = resolv(argv[optind], &ip);
 	if (ret) {
-		printf("Cannot convert \"%s\" into a IP address: %s\n",
-		       argv[optind], strerror(-ret));
+		printf("Cannot convert \"%s\" into a IP address: %pe\n",
+		       argv[optind], ERR_PTR(ret));
 		return 1;
 	}
 
diff --git a/commands/keystore.c b/commands/keystore.c
index 40bcb7105d75..8679a840e8d9 100644
--- a/commands/keystore.c
+++ b/commands/keystore.c
@@ -55,7 +55,7 @@ static int do_keystore(int argc, char *argv[])
 	if (file) {
 		ret = read_file_2(file, &s_len, (void *)&secret_str, FILESIZE_MAX);
 		if (ret) {
-			printf("Cannot open %s: %s\n", file, strerror(-ret));
+			printf("Cannot open %s: %pe\n", file, ERR_PTR(ret));
 			return 1;
 		}
 	} else if (secret_str) {
@@ -70,13 +70,13 @@ static int do_keystore(int argc, char *argv[])
 	secret = xzalloc(s_len / 2);
 	ret = hex2bin(secret, secret_str, s_len / 2);
 	if (ret) {
-		printf("Cannot convert %s to binary: %s\n", secret_str, strerror(-ret));
+		printf("Cannot convert %s to binary: %pe\n", secret_str, ERR_PTR(ret));
 		return 1;
 	}
 
 	ret = keystore_set_secret(name, secret, s_len / 2);
 	if (ret)
-		printf("cannot set secret for key %s: %s\n", name, strerror(-ret));
+		printf("cannot set secret for key %s: %pe\n", name, ERR_PTR(ret));
 	else
 		printf("Added secret for key %s\n", name);
 
diff --git a/commands/led.c b/commands/led.c
index 7cf2ceefb86a..fe3dce3e44f6 100644
--- a/commands/led.c
+++ b/commands/led.c
@@ -86,7 +86,7 @@ static int do_led(int argc, char *argv[])
 
 	ret = led_set(led, value);
 	if (ret < 0) {
-		printf("led: %s\n", strerror(-ret));
+		printf("led: %pe\n", ERR_PTR(ret));
 		return COMMAND_ERROR;
 	}
 
diff --git a/commands/loadenv.c b/commands/loadenv.c
index ddbf66b7644d..dfd04dde31df 100644
--- a/commands/loadenv.c
+++ b/commands/loadenv.c
@@ -70,15 +70,15 @@ static int do_loadenv(int argc, char *argv[])
 
 		ret = unlink_recursive(dirname, NULL);
 		if (ret && ret != -ENOENT) {
-			eprintf("cannot remove %s: %s\n", dirname,
-					strerror(-ret));
+			eprintf("cannot remove %s: %pe\n", dirname,
+					ERR_PTR(ret));
 			return 1;
 		}
 
 		ret = mkdir(dirname, 0);
 		if (ret) {
-			eprintf("cannot create %s: %s\n", dirname,
-					strerror(-ret));
+			eprintf("cannot create %s: %pe\n", dirname,
+					ERR_PTR(ret));
 			return ret;
 		}
 	}
diff --git a/commands/ls.c b/commands/ls.c
index 09a20e0a2342..1ccd44f7bbc0 100644
--- a/commands/ls.c
+++ b/commands/ls.c
@@ -92,7 +92,7 @@ int ls(const char *path, ulong flags)
 			sprintf(tmp, "%s/%s", path, entry->str);
 			ret = lstat(tmp, &s);
 			if (ret) {
-				printf("%s: %s\n", tmp, strerror(-ret));
+				printf("%s: %pe\n", tmp, ERR_PTR(ret));
 				continue;
 			}
 
@@ -108,7 +108,7 @@ int ls(const char *path, ulong flags)
 
 		ret = lstat(tmp, &s);
 		if (ret) {
-			printf("%s: %s\n", tmp, strerror(-ret));
+			printf("%s: %pe\n", tmp, ERR_PTR(ret));
 			continue;
 		}
 
diff --git a/commands/miitool.c b/commands/miitool.c
index 24e383736acb..0121fdc542ac 100644
--- a/commands/miitool.c
+++ b/commands/miitool.c
@@ -313,8 +313,8 @@ static int do_miitool(int argc, char *argv[])
 		phydev = phy_device_create(mii, addr, -1);
 		ret = phy_register_device(phydev);
 		if (ret) {
-			printf("failed to register phy %s: %s\n",
-				dev_name(&phydev->dev), strerror(-ret));
+			printf("failed to register phy %s: %pe\n",
+				dev_name(&phydev->dev), ERR_PTR(ret));
 			goto free_phydevname;
 		} else {
 			printf("registered phy %s\n", dev_name(&phydev->dev));
diff --git a/commands/nand-bitflip.c b/commands/nand-bitflip.c
index 1395021ec089..a86fb903a722 100644
--- a/commands/nand-bitflip.c
+++ b/commands/nand-bitflip.c
@@ -88,7 +88,7 @@ static int do_nand_bitflip(int argc, char *argv[])
 		ret = mtd_peb_create_bitflips(meminfo.mtd, block, offset, meminfo.writesize,
 					      num_bitflips, random, 1);
 		if (ret) {
-			printf("Creating bitflips failed with: %s\n", strerror(-ret));
+			printf("Creating bitflips failed with: %pe\n", ERR_PTR(ret));
 			return ret;
 		}
 	}
@@ -104,8 +104,8 @@ static int do_nand_bitflip(int argc, char *argv[])
 	} else if (!ret) {
 		printf("No bitflips found on block %d, offset 0x%08llx\n", block, offset);
 	} else {
-		printf("Reading block %d, offset 0x%08llx failed with: %s\n", block, offset,
-		       strerror(-ret));
+		printf("Reading block %d, offset 0x%08llx failed with: %pe\n", block, offset,
+		       ERR_PTR(ret));
 	}
 
 	free(buf);
diff --git a/commands/nv.c b/commands/nv.c
index c60bb4167740..72bdf59caa45 100644
--- a/commands/nv.c
+++ b/commands/nv.c
@@ -61,13 +61,13 @@ static int do_nv(int argc, char *argv[])
 		if (do_remove) {
 			ret = nvvar_remove(argv[i]);
 			if (ret) {
-				printf("Failed removing %s: %s\n", argv[i], strerror(-ret));
+				printf("Failed removing %s: %pe\n", argv[i], ERR_PTR(ret));
 				failed = 1;
 			}
 		} else {
 			ret = nvvar_add(argv[i], value);
 			if (ret) {
-				printf("Failed adding %s: %s\n", argv[i], strerror(-ret));
+				printf("Failed adding %s: %pe\n", argv[i], ERR_PTR(ret));
 				failed = 1;
 			}
 		}
diff --git a/commands/of_overlay.c b/commands/of_overlay.c
index 2013c4b27867..82b394130e9a 100644
--- a/commands/of_overlay.c
+++ b/commands/of_overlay.c
@@ -51,7 +51,7 @@ static int do_of_overlay(int argc, char *argv[])
 	}
 
 	if (ret) {
-		printf("cannot apply oftree overlay: %s\n", strerror(-ret));
+		printf("cannot apply oftree overlay: %pe\n", ERR_PTR(ret));
 		goto err;
 	}
 
diff --git a/commands/oftree.c b/commands/oftree.c
index 76227a10b033..3adc660a77e0 100644
--- a/commands/oftree.c
+++ b/commands/oftree.c
@@ -81,7 +81,7 @@ static int do_oftree(int argc, char *argv[])
 
 		ret = of_set_root_node(root);
 		if (ret) {
-			printf("setting root node failed: %s\n", strerror(-ret));
+			printf("setting root node failed: %pe\n", ERR_PTR(ret));
 			of_delete_node(root);
 			goto out;
 		}
diff --git a/commands/partition.c b/commands/partition.c
index 3176398497dc..7dd2fa629b6f 100644
--- a/commands/partition.c
+++ b/commands/partition.c
@@ -90,7 +90,7 @@ static int do_delpart(int argc, char *argv[])
 	for (i = 1; i < argc; i++) {
 		err = devfs_del_partition(kbasename(argv[i]));
 		if (err) {
-			printf("cannot delete %s: %s\n", argv[i], strerror(-err));
+			printf("cannot delete %s: %pe\n", argv[i], ERR_PTR(err));
 			break;
 		}
 	}
diff --git a/commands/spd_decode.c b/commands/spd_decode.c
index fa8fe86cf8ae..3960c1438215 100644
--- a/commands/spd_decode.c
+++ b/commands/spd_decode.c
@@ -23,7 +23,7 @@ static int do_spd_decode(int argc, char *argv[])
 
 	ret = read_file_2(argv[1], NULL, &data, 256);
 	if (ret && ret != -EFBIG) {
-		printf("unable to read %s: %s\n", argv[1], strerror(-ret));
+		printf("unable to read %s: %pe\n", argv[1], ERR_PTR(ret));
 		return COMMAND_ERROR;
 	}
 
diff --git a/commands/trigger.c b/commands/trigger.c
index d2802080b96f..829ce2fac907 100644
--- a/commands/trigger.c
+++ b/commands/trigger.c
@@ -71,7 +71,7 @@ static int do_trigger(int argc, char *argv[])
 	}
 
 	if (ret)
-		printf("trigger failed: %s\n", strerror(-ret));
+		printf("trigger failed: %pe\n", ERR_PTR(ret));
 	return ret ? 1 : 0;
 }
 
diff --git a/commands/ubi.c b/commands/ubi.c
index 6abd054af393..d84995cf4852 100644
--- a/commands/ubi.c
+++ b/commands/ubi.c
@@ -53,7 +53,7 @@ static int do_ubiupdatevol(int argc, char *argv[])
 
 	ret = ioctl(fd_vol, UBI_IOCVOLUP, &size);
 	if (ret) {
-		printf("failed to start update: %s\n", strerror(-ret));
+		printf("failed to start update: %pe\n", ERR_PTR(ret));
 		goto error;
 	}
 
@@ -149,7 +149,7 @@ static int do_ubimkvol(int argc, char *argv[])
 
 	ret = ioctl(fd, UBI_IOCGETUBINUM, &ubinum);
 	if (ret) {
-		printf("failed to get ubinum: %s\n", strerror(-ret));
+		printf("failed to get ubinum: %pe\n", ERR_PTR(ret));
 		goto err;
 	}
 
@@ -209,13 +209,13 @@ static int do_ubiattach(int argc, char *argv[])
 
 	ret = ioctl(fd, MEMGETINFO, &user);
 	if (ret) {
-		printf("MEMGETINFO failed: %s\n", strerror(-ret));
+		printf("MEMGETINFO failed: %pe\n", ERR_PTR(ret));
 		goto err;
 	}
 
 	ret = ubi_attach_mtd_dev(user.mtd, devnum, vid_hdr_offset, 20);
 	if (ret < 0)
-		printf("failed to attach: %s\n", strerror(-ret));
+		printf("failed to attach: %pe\n", ERR_PTR(ret));
 	else
 		ret = 0;
 err:
@@ -271,7 +271,7 @@ static int do_ubidetach(int argc, char *argv[])
 
 out:
 	if (ret)
-		printf("failed to detach: %s\n", strerror(-ret));
+		printf("failed to detach: %pe\n", ERR_PTR(ret));
 
 	return ret;
 }
@@ -300,7 +300,7 @@ static int do_ubirmvol(int argc, char *argv[])
 
 	ret = ioctl(fd, UBI_IOCGETUBINUM, &ubinum);
 	if (ret) {
-		printf("failed to get ubinum: %s\n", strerror(-ret));
+		printf("failed to get ubinum: %pe\n", ERR_PTR(ret));
 		goto err;
 	}
 
@@ -313,7 +313,7 @@ static int do_ubirmvol(int argc, char *argv[])
 
 	ret = ubi_api_remove_volume(desc, 0);
 	if (ret)
-		printf("failed to remove volume %s: %s\n", argv[2], strerror(-ret));
+		printf("failed to remove volume %s: %pe\n", argv[2], ERR_PTR(ret));
 
 	ubi_close_volume(desc);
 err:
@@ -375,7 +375,7 @@ static int do_ubirename(int argc, char *argv[])
 	close(fd);
 
 	if (ret) {
-		printf("failed to get ubi num for %s: %s\n", argv[1], strerror(-ret));
+		printf("failed to get ubi num for %s: %pe\n", argv[1], ERR_PTR(ret));
 		return 1;
 	}
 
@@ -394,7 +394,7 @@ static int do_ubirename(int argc, char *argv[])
 
 	ret = ubi_api_rename_volumes(ubi_num, &req);
 	if (ret)
-		printf("failed to rename: %s", strerror(-ret));
+		printf("failed to rename: %pe", ERR_PTR(ret));
 err:
 	return ret ? 1 : 0;
 };
diff --git a/commands/wd.c b/commands/wd.c
index 18e8e033789d..d9e4c4bf9be7 100644
--- a/commands/wd.c
+++ b/commands/wd.c
@@ -66,7 +66,7 @@ static int do_wd(int argc, char *argv[])
 			printf("Watchdog device doesn't exist.\n");
 			break;
 		default:
-			printf("Watchdog fails: '%s'\n", strerror(-rc));
+			printf("Watchdog fails: '%pe'\n", ERR_PTR(rc));
 			break;
 		}
 
diff --git a/common/bbu.c b/common/bbu.c
index ba550f925608..0dc32e45ea2f 100644
--- a/common/bbu.c
+++ b/common/bbu.c
@@ -452,15 +452,15 @@ int bbu_std_file_handler(struct bbu_handler *handler,
 
 	ret = protect(fd, data->len, 0, 0);
 	if (ret && (ret != -ENOSYS) && (ret != -ENOTSUPP)) {
-		printf("unprotecting %s failed with %s\n", data->devicefile,
-				strerror(-ret));
+		printf("unprotecting %s failed with %pe\n", data->devicefile,
+				ERR_PTR(ret));
 		goto err_close;
 	}
 
 	ret = erase(fd, data->len, 0, ERASE_TO_WRITE);
 	if (ret && ret != -ENOSYS) {
-		printf("erasing %s failed with %s\n", data->devicefile,
-				strerror(-ret));
+		printf("erasing %s failed with %pe\n", data->devicefile,
+				ERR_PTR(ret));
 		goto err_close;
 	}
 
diff --git a/common/boot.c b/common/boot.c
index 6aa2b1394961..737879d8ed39 100644
--- a/common/boot.c
+++ b/common/boot.c
@@ -91,7 +91,7 @@ static int bootscript_boot(struct bootentry *entry, int verbose, int dryrun)
 
 	ret = run_command(bs->scriptpath);
 	if (ret) {
-		pr_err("Running script '%s' failed: %s\n", bs->scriptpath, strerror(-ret));
+		pr_err("Running script '%s' failed: %pe\n", bs->scriptpath, ERR_PTR(ret));
 		goto out;
 	}
 
@@ -165,7 +165,7 @@ int boot_entry(struct bootentry *be, int verbose, int dryrun)
 
 		ret = watchdog_set_timeout(boot_enabled_watchdog, boot_watchdog_timeout);
 		if (ret) {
-			pr_warn("Failed to enable watchdog: %s\n", strerror(-ret));
+			pr_warn("Failed to enable watchdog: %pe\n", ERR_PTR(ret));
 			boot_enabled_watchdog = NULL;
 		}
 	}
@@ -348,7 +348,7 @@ static char *parse_nfs_url(const char *url)
 
 	ret = resolv(host, &ip);
 	if (ret) {
-		pr_err("Cannot resolve \"%s\": %s\n", host, strerror(-ret));
+		pr_err("Cannot resolve \"%s\": %pe\n", host, ERR_PTR(ret));
 		goto out;
 	}
 
diff --git a/common/bootchooser.c b/common/bootchooser.c
index bc7c47ec87ae..58032a2b5762 100644
--- a/common/bootchooser.c
+++ b/common/bootchooser.c
@@ -531,13 +531,13 @@ int bootchooser_save(struct bootchooser *bc)
 	if (IS_ENABLED(CONFIG_STATE) && bc->state) {
 		ret = state_save(bc->state);
 		if (ret) {
-			pr_err("Cannot save state: %s\n", strerror(-ret));
+			pr_err("Cannot save state: %pe\n", ERR_PTR(ret));
 			return ret;
 		}
 	} else {
 		ret = nvvar_save();
 		if (ret) {
-			pr_err("Cannot save nv variables: %s\n", strerror(-ret));
+			pr_err("Cannot save nv variables: %pe\n", ERR_PTR(ret));
 			return ret;
 		}
 	}
@@ -568,7 +568,7 @@ int bootchooser_put(struct bootchooser *bc)
 
 	ret = bootchooser_save(bc);
 	if (ret)
-		pr_err("Failed to save bootchooser state: %s\n", strerror(-ret));
+		pr_err("Failed to save bootchooser state: %pe\n", ERR_PTR(ret));
 
 	list_for_each_entry_safe(target, tmp, &bc->targets, list) {
 		free(target->boot);
diff --git a/common/bootm.c b/common/bootm.c
index 5370e1485bc6..4c5913ffb95c 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -245,8 +245,8 @@ static int bootm_open_initrd_uimage(struct image_data *data)
 		if (bootm_get_verify_mode() > BOOTM_VERIFY_NONE) {
 			ret = uimage_verify(data->initrd);
 			if (ret) {
-				pr_err("Checking data crc failed with %s\n",
-					strerror(-ret));
+				pr_err("Checking data crc failed with %pe\n",
+					ERR_PTR(ret));
 				return ret;
 			}
 		}
@@ -293,8 +293,8 @@ bootm_load_initrd(struct image_data *data, unsigned long load_address)
 		ret = fit_open_image(data->os_fit, data->fit_config, "ramdisk",
 				     &initrd, &initrd_size);
 		if (ret) {
-			pr_err("Cannot open ramdisk image in FIT image: %s\n",
-					strerror(-ret));
+			pr_err("Cannot open ramdisk image in FIT image: %pe\n",
+					ERR_PTR(ret));
 			return ERR_PTR(ret);
 		}
 		data->initrd_res = request_sdram_region("initrd",
@@ -318,7 +318,7 @@ bootm_load_initrd(struct image_data *data, unsigned long load_address)
 
 	ret = file_name_detect_type(data->initrd_file, &type);
 	if (ret) {
-		pr_err("could not open initrd \"%s\": %s\n", data->initrd_file, strerror(-ret));
+		pr_err("could not open initrd \"%s\": %pe\n", data->initrd_file, ERR_PTR(ret));
 		return ERR_PTR(ret);
 	}
 
@@ -326,8 +326,7 @@ bootm_load_initrd(struct image_data *data, unsigned long load_address)
 		int num;
 		ret = bootm_open_initrd_uimage(data);
 		if (ret) {
-			pr_err("loading initrd failed with %s\n",
-			       strerror(-ret));
+			pr_err("loading initrd failed with %pe\n", ERR_PTR(ret));
 			return ERR_PTR(ret);
 		}
 
@@ -450,8 +449,8 @@ void *bootm_get_devicetree(struct image_data *data)
 
 		ret = file_name_detect_type(data->oftree_file, &type);
 		if (ret) {
-			pr_err("could not open device tree \"%s\": %s\n", data->oftree_file,
-			       strerror(-ret));
+			pr_err("could not open device tree \"%s\": %pe\n", data->oftree_file,
+			       ERR_PTR(ret));
 			return ERR_PTR(ret);
 		}
 
@@ -589,8 +588,8 @@ static int bootm_open_os_uimage(struct image_data *data)
 	if (bootm_get_verify_mode() > BOOTM_VERIFY_NONE) {
 		ret = uimage_verify(data->os);
 		if (ret) {
-			pr_err("Checking data crc failed with %s\n",
-					strerror(-ret));
+			pr_err("Checking data crc failed with %pe\n",
+					ERR_PTR(ret));
 			return ret;
 		}
 	}
@@ -739,8 +738,7 @@ int bootm_boot(struct bootm_data *bootm_data)
 
 	ret = read_file_2(data->os_file, &size, &data->os_header, PAGE_SIZE);
 	if (ret < 0 && ret != -EFBIG) {
-		pr_err("could not open %s: %s\n", data->os_file,
-				strerror(-ret));
+		pr_err("could not open %s: %pe\n", data->os_file, ERR_PTR(ret));
 		goto err_out;
 	}
 	if (size < PAGE_SIZE)
diff --git a/common/console.c b/common/console.c
index d5e4a96661b8..20c58f35b1ea 100644
--- a/common/console.c
+++ b/common/console.c
@@ -421,7 +421,7 @@ int console_register(struct console_device *newcdev)
 	ret = devfs_create(&newcdev->devfs);
 
 	if (ret) {
-		pr_err("devfs entry creation failed: %s\n", strerror(-ret));
+		pr_err("devfs entry creation failed: %pe\n", ERR_PTR(ret));
 		return ret;
 	}
 
diff --git a/common/fastboot.c b/common/fastboot.c
index 60bef0ec776b..8ec20b83d948 100644
--- a/common/fastboot.c
+++ b/common/fastboot.c
@@ -424,8 +424,8 @@ static void __maybe_unused cb_boot(struct fastboot *fb, const char *opt)
 	ret = bootm_boot(&data);
 
 	if (ret)
-		fastboot_tx_print(fb, FASTBOOT_MSG_FAIL, "Booting failed: %s",
-				   strerror(-ret));
+		fastboot_tx_print(fb, FASTBOOT_MSG_FAIL, "Booting failed: %pe",
+				   ERR_PTR(ret));
 	else
 		fastboot_tx_print(fb, FASTBOOT_MSG_OKAY, "");
 }
@@ -676,8 +676,8 @@ static void cb_flash(struct fastboot *fb, const char *cmd)
 		ret = fastboot_handle_sparse(fb, fentry);
 		if (ret)
 			fastboot_tx_print(fb, FASTBOOT_MSG_FAIL,
-					  "writing sparse image: %s",
-					  strerror(-ret));
+					  "writing sparse image: %pe",
+					  ERR_PTR(ret));
 
 		goto out;
 	}
@@ -694,8 +694,8 @@ static void cb_flash(struct fastboot *fb, const char *cmd)
 		ret = do_ubiformat(fb, mtd, fb->tempname, fb->download_size);
 		if (ret) {
 			fastboot_tx_print(fb, FASTBOOT_MSG_FAIL,
-					  "write partition: %s",
-					  strerror(-ret));
+					  "write partition: %pe",
+					  ERR_PTR(ret));
 			goto out;
 		}
 
@@ -733,7 +733,7 @@ static void cb_flash(struct fastboot *fb, const char *cmd)
 
 		if (ret)
 			fastboot_tx_print(fb, FASTBOOT_MSG_FAIL,
-				  "update barebox: %s", strerror(-ret));
+				  "update barebox: %pe", ERR_PTR(ret));
 
 		free(buf);
 
@@ -744,7 +744,7 @@ static void cb_flash(struct fastboot *fb, const char *cmd)
 	ret = copy_file(fb->tempname, filename, 1);
 	if (ret)
 		fastboot_tx_print(fb, FASTBOOT_MSG_FAIL,
-				  "write partition: %s", strerror(-ret));
+				  "write partition: %pe", ERR_PTR(ret));
 
 out:
 	if (!ret)
@@ -785,8 +785,8 @@ static void cb_erase(struct fastboot *fb, const char *cmd)
 
 	if (ret)
 		fastboot_tx_print(fb, FASTBOOT_MSG_FAIL,
-				  "cannot erase partition %s: %s",
-				  filename, strerror(-ret));
+				  "cannot erase partition %s: %pe",
+				  filename, ERR_PTR(ret));
 	else
 		fastboot_tx_print(fb, FASTBOOT_MSG_OKAY, "");
 }
diff --git a/common/globalvar.c b/common/globalvar.c
index 26202f2b493d..31b24d594c6d 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -120,8 +120,8 @@ void dev_param_init_from_nv(struct device *dev, const char *name)
 	if (val) {
 		ret = dev_set_param(dev, name, val);
 		if (ret)
-			pr_err("Cannot init param from nv: %s.%s=%s: %s\n",
-				dev_name(dev), name, val, strerror(-ret));
+			pr_err("Cannot init param from nv: %s.%s=%s: %pe\n",
+				dev_name(dev), name, val, ERR_PTR(ret));
 	}
 
 	free(nvname);
@@ -368,8 +368,8 @@ int nvvar_load(void)
 		n = globalvar_new_name(d->d_name);
 		ret = __nvvar_add(n, val);
 		if (ret)
-			pr_err("failed to create nv variable %s: %s\n",
-					n, strerror(-ret));
+			pr_err("failed to create nv variable %s: %pe\n",
+					n, ERR_PTR(ret));
 		free(val);
 	}
 
@@ -469,8 +469,8 @@ static int globalvar_simple_set(struct device *dev, struct param_d *p,
 	if (ret && rdev) {
 		ret = dev_set_param(rdev, pname, val);
 		if (ret)
-			pr_err("Cannot init param from global: %s.%s=%s: %s\n",
-				dev_name(rdev), pname, val, strerror(-ret));
+			pr_err("Cannot init param from global: %s.%s=%s: %pe\n",
+				dev_name(rdev), pname, val, ERR_PTR(ret));
 	}
 
 	/* Pass to the generic function we have overwritten */
@@ -727,7 +727,7 @@ int nvvar_save(void)
 		ret = __nv_save(TMPDIR "/nv", param->name,
 				dev_get_param(&nv_device, param->name));
 		if (ret) {
-			pr_err("Cannot save NV var: %s\n", strerror(-ret));
+			pr_err("Cannot save NV var: %pe\n", ERR_PTR(ret));
 			goto out;
 		}
 	}
diff --git a/common/hush.c b/common/hush.c
index 3a213fc54591..086cbc68b891 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -844,7 +844,7 @@ static int run_pipe_real(struct p_context *ctx, struct pipe *pi)
 	} else {
 		ret = execute_binfmt(globbuf.gl_pathc, globbuf.gl_pathv);
 		if (ret < 0) {
-			printf("%s: %s\n", globbuf.gl_pathv[0], strerror(-ret));
+			printf("%s: %pe\n", globbuf.gl_pathv[0], ERR_PTR(ret));
 			ret = 127;
 		}
 	}
diff --git a/common/image-fit.c b/common/image-fit.c
index 4f33d47e5a19..0cc0425284c5 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -955,7 +955,7 @@ struct fit_handle *fit_open(const char *filename, bool verbose,
 	ret = read_file_2(filename, &handle->size, &handle->fit_alloc,
 			  max_size);
 	if (ret && ret != -EFBIG) {
-		pr_err("unable to read %s: %s\n", filename, strerror(-ret));
+		pr_err("unable to read %s: %pe\n", filename, ERR_PTR(ret));
 		return ERR_PTR(ret);
 	}
 
diff --git a/common/imx-bbu-nand-fcb.c b/common/imx-bbu-nand-fcb.c
index 57a8b643a9b5..7593cd27fec9 100644
--- a/common/imx-bbu-nand-fcb.c
+++ b/common/imx-bbu-nand-fcb.c
@@ -671,7 +671,7 @@ static int imx_bbu_write_firmware(struct mtd_info *mtd, unsigned num, void *buf,
 		}
 
 		if (ret) {
-			pr_err("Writing block %d failed with: %s\n", block, strerror(-ret));
+			pr_err("Writing block %d failed with: %pe\n", block, ERR_PTR(ret));
 			return ret;
 		}
 
@@ -766,16 +766,16 @@ static int imx_bbu_write_fcb(struct imx_nand_fcb_bbu_handler *imx_handler,
 
 	ret = imx_handler->fcb_write(mtd, block, fcb);
 	if (ret) {
-		pr_err("Writing FCB on block %d failed with %s\n",
-		       block, strerror(-ret));
+		pr_err("Writing FCB on block %d failed with %pe\n",
+		       block, ERR_PTR(ret));
 		goto out;
 	}
 
 	ret = mtd_peb_write(mtd, (void *)dbbt, block, mtd->writesize,
 			    mtd->writesize);
 	if (ret < 0) {
-		pr_err("Writing DBBT header on block %d failed with %s\n",
-		       block, strerror(-ret));
+		pr_err("Writing DBBT header on block %d failed with %pe\n",
+		       block, ERR_PTR(ret));
 		goto out;
 	}
 
@@ -783,8 +783,8 @@ static int imx_bbu_write_fcb(struct imx_nand_fcb_bbu_handler *imx_handler,
 		ret = mtd_peb_write(mtd, dbbt_data_page, block, mtd->writesize * 5,
 				    mtd->writesize);
 		if (ret < 0) {
-			pr_err("Writing DBBT on block %d failed with %s\n",
-			       block, strerror(-ret));
+			pr_err("Writing DBBT on block %d failed with %pe\n",
+			       block, ERR_PTR(ret));
 			goto out;
 		}
 	}
@@ -864,7 +864,7 @@ static int dbbt_check(struct mtd_info *mtd, int page)
 		pr_warn("page %d needs cleaning\n", page);
 		needs_cleanup = 1;
 	} else if (ret < 0) {
-		pr_err("Cannot read page %d: %s\n", page, strerror(-ret));
+		pr_err("Cannot read page %d: %pe\n", page, ERR_PTR(ret));
 		goto out;
 	}
 
@@ -885,7 +885,7 @@ static int dbbt_check(struct mtd_info *mtd, int page)
 			pr_warn("page %d needs cleaning\n", page);
 			needs_cleanup = 1;
 		} else if (ret < 0) {
-			pr_err("Cannot read page %d: %s\n", page, strerror(-ret));
+			pr_err("Cannot read page %d: %pe\n", page, ERR_PTR(ret));
 			goto out;
 		}
 	} else {
@@ -1001,7 +1001,7 @@ static int imx_bbu_write_fcbs_dbbts(struct imx_nand_fcb_bbu_handler *imx_handler
 
 		ret = imx_bbu_write_fcb(imx_handler, mtd, i, fcb, dbbt);
 		if (ret)
-			pr_err("Writing FCB/DBBT %d failed with: %s\n", i, strerror(-ret));
+			pr_err("Writing FCB/DBBT %d failed with: %pe\n", i, ERR_PTR(ret));
 		else
 			valid++;
 	}
diff --git a/common/memory.c b/common/memory.c
index f25fe143984a..a5b081be2c70 100644
--- a/common/memory.c
+++ b/common/memory.c
@@ -382,7 +382,7 @@ static int of_memory_fixup(struct device_node *root, void *unused)
 
 		err = of_set_property(memnode, "reg", tmp, len, 1);
 		if (err) {
-			pr_err("could not set reg %s.\n", strerror(-err));
+			pr_err("could not set reg %pe.\n", ERR_PTR(err));
 			goto err_free;
 		}
 
diff --git a/common/oftree.c b/common/oftree.c
index 001f5a19c298..b9a854c786f6 100644
--- a/common/oftree.c
+++ b/common/oftree.c
@@ -407,8 +407,8 @@ void of_fix_tree(struct device_node *node)
 
 		ret = of_fixup->fixup(node, of_fixup->context);
 		if (ret)
-			pr_warn("Failed to fixup node in %pS: %s\n",
-					of_fixup->fixup, strerror(-ret));
+			pr_warn("Failed to fixup node in %pS: %pe\n",
+					of_fixup->fixup, ERR_PTR(ret));
 	}
 }
 
diff --git a/common/ratp/ratp.c b/common/ratp/ratp.c
index a59dd5626579..2906f5a09098 100644
--- a/common/ratp/ratp.c
+++ b/common/ratp/ratp.c
@@ -483,7 +483,7 @@ int barebox_ratp(struct console_device *cdev)
 
 	ret = console_register(&ctx->ratp_console);
 	if (ret) {
-		pr_err("registering console failed with %s\n", strerror(-ret));
+		pr_err("registering console failed with %pe\n", ERR_PTR(ret));
 		return ret;
 	}
 
diff --git a/common/startup.c b/common/startup.c
index 725158d857f7..bbe905141efc 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -390,8 +390,8 @@ void __noreturn start_barebox(void)
 		pr_debug("initcall-> %pS\n", *initcall);
 		result = (*initcall)();
 		if (result)
-			pr_err("initcall %pS failed: %s\n", *initcall,
-					strerror(-result));
+			pr_err("initcall %pS failed: %pe\n", *initcall,
+					ERR_PTR(result));
 	}
 
 	pr_debug("initcalls done\n");
diff --git a/common/state/backend_format_raw.c b/common/state/backend_format_raw.c
index 105f7dd444a4..5fb38cd711da 100644
--- a/common/state/backend_format_raw.c
+++ b/common/state/backend_format_raw.c
@@ -84,8 +84,8 @@ static int backend_raw_digest_init(struct state_backend_format_raw *raw)
 
 	ret = digest_init(raw->digest);
 	if (ret) {
-		dev_err(raw->dev, "Failed to initialize digest: %s\n",
-			strerror(-ret));
+		dev_err(raw->dev, "Failed to initialize digest: %pe\n",
+			ERR_PTR(ret));
 		return ret;
 	}
 
diff --git a/crypto/rsa.c b/crypto/rsa.c
index d3a48b6809de..13b6553c950b 100644
--- a/crypto/rsa.c
+++ b/crypto/rsa.c
@@ -483,8 +483,8 @@ static void rsa_init_keys_of(void)
 
 		ret = public_key_add(key);
 		if (ret)
-			pr_err("Cannot add rsa key %s: %s\n",
-				key->key_name_hint, strerror(-ret));
+			pr_err("Cannot add rsa key %s: %pe\n",
+				key->key_name_hint, ERR_PTR(ret));
 	}
 }
 
diff --git a/defaultenv/defaultenv.c b/defaultenv/defaultenv.c
index 055475eb4756..be04ae37c17c 100644
--- a/defaultenv/defaultenv.c
+++ b/defaultenv/defaultenv.c
@@ -116,7 +116,7 @@ static int defaultenv_load_one(struct defaultenv *df, const char *dir,
 				freep, NULL, uncompress_err_stdout);
 		if (ret) {
 			free(freep);
-			pr_err("Failed to uncompress: %s\n", strerror(-ret));
+			pr_err("Failed to uncompress: %pe\n", ERR_PTR(ret));
 			return ret;
 		}
 
@@ -131,7 +131,7 @@ static int defaultenv_load_one(struct defaultenv *df, const char *dir,
 	free(freep);
 
 	if (ret)
-		pr_err("Failed to load defaultenv: %s\n", strerror(-ret));
+		pr_err("Failed to load defaultenv: %pe\n", ERR_PTR(ret));
 
 	return ret;
 }
diff --git a/drivers/ata/pata-imx.c b/drivers/ata/pata-imx.c
index e10babd1bb3c..6259814cf6f3 100644
--- a/drivers/ata/pata-imx.c
+++ b/drivers/ata/pata-imx.c
@@ -178,8 +178,8 @@ static int imx_pata_probe(struct device *dev)
 
 	ret = ide_port_register(ide);
 	if (ret) {
-		dev_err(dev, "Cannot register IDE interface: %s\n",
-				strerror(-ret));
+		dev_err(dev, "Cannot register IDE interface: %pe\n",
+			ERR_PTR(ret));
 		goto out_free_clk;
 	}
 
diff --git a/drivers/firmware/altera_serial.c b/drivers/firmware/altera_serial.c
index 4fe4ec462f2f..8ff46753e44b 100644
--- a/drivers/firmware/altera_serial.c
+++ b/drivers/firmware/altera_serial.c
@@ -313,7 +313,7 @@ static int altera_spi_of(struct device *dev, struct fpga_spi *this)
 	return 0;
 
 out:
-	dev_err(dev, "Cannot request \"%s\" gpio: %s\n", name, strerror(-ret));
+	dev_err(dev, "Cannot request \"%s\" gpio: %pe\n", name, ERR_PTR(ret));
 
 	return ret;
 }
diff --git a/drivers/firmware/socfpga.c b/drivers/firmware/socfpga.c
index 419bd279458f..0f7d11abb588 100644
--- a/drivers/firmware/socfpga.c
+++ b/drivers/firmware/socfpga.c
@@ -279,8 +279,8 @@ static int socfpga_fpgamgr_program_start(struct firmware_handler *fh)
 	/* initialize the FPGA Manager */
 	status = socfpga_fpgamgr_program_init(mgr);
 	if (status) {
-		dev_err(&mgr->dev, "program init failed with: %s\n",
-				strerror(-status));
+		dev_err(&mgr->dev, "program init failed with: %pe\n",
+				ERR_PTR(status));
 		return status;
 	}
 
@@ -328,8 +328,8 @@ static int socfpga_fpgamgr_program_finish(struct firmware_handler *fh)
 	/* Ensure the FPGA entering config done */
 	status = socfpga_fpgamgr_program_poll_cd(mgr);
 	if (status) {
-		dev_err(&mgr->dev, "poll for config done failed with: %s\n",
-				strerror(-status));
+		dev_err(&mgr->dev, "poll for config done failed with: %pe\n",
+				ERR_PTR(status));
 		return status;
 	}
 
@@ -338,8 +338,8 @@ static int socfpga_fpgamgr_program_finish(struct firmware_handler *fh)
 	/* Ensure the FPGA entering init phase */
 	status = socfpga_fpgamgr_program_poll_initphase(mgr);
 	if (status) {
-		dev_err(&mgr->dev, "poll for init phase failed with: %s\n",
-				strerror(-status));
+		dev_err(&mgr->dev, "poll for init phase failed with: %pe\n",
+				ERR_PTR(status));
 		return status;
 	}
 
@@ -348,8 +348,8 @@ static int socfpga_fpgamgr_program_finish(struct firmware_handler *fh)
 	/* Ensure the FPGA entering user mode */
 	status = socfpga_fpgamgr_program_poll_usermode(mgr);
 	if (status) {
-		dev_err(&mgr->dev, "poll for user mode with: %s\n",
-				strerror(-status));
+		dev_err(&mgr->dev, "poll for user mode with: %pe\n",
+				ERR_PTR(status));
 		return status;
 	}
 
diff --git a/drivers/gpio/gpio-latch.c b/drivers/gpio/gpio-latch.c
index 9a1a87250e75..9dbf4bda14fe 100644
--- a/drivers/gpio/gpio-latch.c
+++ b/drivers/gpio/gpio-latch.c
@@ -127,8 +127,8 @@ static int gpio_latch_probe(struct device *dev)
 				       flags & OF_GPIO_ACTIVE_LOW ? GPIOF_ACTIVE_LOW : 0,
 				       dev_name(dev));
 		if (ret) {
-			dev_err(dev, "Cannot request gpio %d: %s\n", priv->clk_gpios[i],
-				strerror(-ret));
+			dev_err(dev, "Cannot request gpio %d: %pe\n", priv->clk_gpios[i],
+				ERR_PTR(ret));
 			goto err_gpio;
 		}
 
@@ -142,8 +142,8 @@ static int gpio_latch_probe(struct device *dev)
 				       flags & OF_GPIO_ACTIVE_LOW ? GPIOF_ACTIVE_LOW : 0,
 				       dev_name(dev));
 		if (ret) {
-			dev_err(dev, "Cannot request gpio %d: %s\n", priv->latched_gpios[i],
-				strerror(-ret));
+			dev_err(dev, "Cannot request gpio %d: %pe\n", priv->latched_gpios[i],
+				ERR_PTR(ret));
 			goto err_gpio;
 		}
 	}
diff --git a/drivers/hab/hab.c b/drivers/hab/hab.c
index 6826b6c537f3..4e9f96c98b61 100644
--- a/drivers/hab/hab.c
+++ b/drivers/hab/hab.c
@@ -465,7 +465,7 @@ int imx_hab_write_srk_hash(const void *buf, unsigned flags)
 
 	ret = ops->read_srk_hash(cursrk);
 	if (ret) {
-		pr_err("Cannot read current SRK hash: %s\n", strerror(-ret));
+		pr_err("Cannot read current SRK hash: %pe\n", ERR_PTR(ret));
 		return ret;
 	}
 
diff --git a/drivers/hw_random/dev-random.c b/drivers/hw_random/dev-random.c
index 52f4847e4a97..1485935142c7 100644
--- a/drivers/hw_random/dev-random.c
+++ b/drivers/hw_random/dev-random.c
@@ -46,7 +46,7 @@ static int devrandom_rnd_probe(struct device *dev)
 
 	ret = hwrng_register(dev, &rnd->hwrng);
 	if (ret) {
-		dev_err(dev, "failed to register: %s\n", strerror(-ret));
+		dev_err(dev, "failed to register: %pe\n", ERR_PTR(ret));
 
 		return ret;
 	}
diff --git a/drivers/hw_random/mxc-rngc.c b/drivers/hw_random/mxc-rngc.c
index 39608b97aff6..4c60ee619e23 100644
--- a/drivers/hw_random/mxc-rngc.c
+++ b/drivers/hw_random/mxc-rngc.c
@@ -267,7 +267,7 @@ static int mxc_rngc_probe(struct device *dev)
 
 	ret = hwrng_register(dev, &rngc->rng);
 	if (ret) {
-		dev_err(dev, "failed to register: %s\n", strerror(-ret));
+		dev_err(dev, "failed to register: %pe\n", ERR_PTR(ret));
 		clk_disable(rngc->clk);
 
 		return ret;
diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 5ab07d09c546..5800c98e4280 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -2754,8 +2754,8 @@ static int mci_card_probe(struct mci *mci)
 
 	ret = regulator_enable(host->supply);
 	if (ret) {
-		dev_err(&mci->dev, "failed to enable regulator: %s\n",
-			strerror(-ret));
+		dev_err(&mci->dev, "failed to enable regulator: %pe\n",
+			ERR_PTR(ret));
 		return ret;
 	}
 
diff --git a/drivers/mci/rockchip-dwcmshc-sdhci.c b/drivers/mci/rockchip-dwcmshc-sdhci.c
index 41cdaa60dd59..ff4ba3125873 100644
--- a/drivers/mci/rockchip-dwcmshc-sdhci.c
+++ b/drivers/mci/rockchip-dwcmshc-sdhci.c
@@ -323,15 +323,15 @@ static int rk_sdhci_probe(struct device *dev)
 
 	ret = clk_bulk_get(host->mci.hw_dev, CLK_MAX, host->clks);
 	if (ret) {
-		dev_err(host->mci.hw_dev, "failed to get clocks: %s\n",
-			strerror(-ret));
+		dev_err(host->mci.hw_dev, "failed to get clocks: %pe\n",
+			ERR_PTR(ret));
 		return ret;
 	}
 
 	ret = clk_bulk_enable(CLK_MAX, host->clks);
 	if (ret) {
-		dev_err(host->mci.hw_dev, "failed to enable clocks: %s\n",
-			strerror(-ret));
+		dev_err(host->mci.hw_dev, "failed to enable clocks: %pe\n",
+			ERR_PTR(ret));
 		return ret;
 	}
 
diff --git a/drivers/mfd/superio.c b/drivers/mfd/superio.c
index 16d0bba4506e..891c8ace52e2 100644
--- a/drivers/mfd/superio.c
+++ b/drivers/mfd/superio.c
@@ -91,7 +91,7 @@ void superio_chip_add(struct superio_chip *siochip)
 
 	ret = regmap_register_cdev(regmap, chipname);
 	if (ret)
-		pr_warn("registering %s regmap cdev failed: %s\n",
-			chipname, strerror(-ret));
+		pr_warn("registering %s regmap cdev failed: %pe\n",
+			chipname, ERR_PTR(ret));
 }
 EXPORT_SYMBOL(superio_chip_add);
diff --git a/drivers/mfd/twl-core.c b/drivers/mfd/twl-core.c
index 8d809259e03d..800767c62c8e 100644
--- a/drivers/mfd/twl-core.c
+++ b/drivers/mfd/twl-core.c
@@ -51,8 +51,8 @@ int twlcore_reg_read(struct twlcore *twlcore, u16 reg, u8 *val)
 
 	/* i2c_transfer returns number of messages transferred */
 	if (ret < 0) {
-		pr_err("%s: failed to transfer all messages: %s\n",
-				__func__, strerror(-ret));
+		pr_err("%s: failed to transfer all messages: %pe\n",
+				__func__, ERR_PTR(ret));
 		return ret;
 	}
 	return 0;
@@ -86,8 +86,8 @@ int twlcore_reg_write(struct twlcore *twlcore, u16 reg, u8 val)
 
 	/* i2c_transfer returns number of messages transferred */
 	if (ret < 0) {
-		pr_err("%s: failed to transfer all messages: %s\n",
-				__func__, strerror(-ret));
+		pr_err("%s: failed to transfer all messages: %pe\n",
+				__func__, ERR_PTR(ret));
 		return ret;
 	}
 	return 0;
diff --git a/drivers/misc/storage-by-alias.c b/drivers/misc/storage-by-alias.c
index 4a0513236743..2c498e0d0483 100644
--- a/drivers/misc/storage-by-alias.c
+++ b/drivers/misc/storage-by-alias.c
@@ -145,7 +145,7 @@ static int sba_add_partitions(struct cdev *rcdev, void *data)
 
 	ret = devfs_create(&sba->cdev);
 	if (ret) {
-		dev_err(sba->dev, "Failed to create cdev: %s\n", strerror(-ret));
+		dev_err(sba->dev, "Failed to create cdev: %pe\n", ERR_PTR(ret));
 		return 0;
 	}
 
diff --git a/drivers/mtd/nand/raw/mxc_nand.c b/drivers/mtd/nand/raw/mxc_nand.c
index c2a03ed0d16f..1aba9afdd1fa 100644
--- a/drivers/mtd/nand/raw/mxc_nand.c
+++ b/drivers/mtd/nand/raw/mxc_nand.c
@@ -1868,8 +1868,8 @@ static int mxcnd_probe(struct device *dev)
 		dev_info(dev, "no BBT found. creating one\n");
 		err = imxnd_create_bbt(this);
 		if (err)
-			dev_warn(dev, "Failed to create bbt: %s\n",
-				 strerror(-err));
+			dev_warn(dev, "Failed to create bbt: %pe\n",
+				 ERR_PTR(err));
 		err = 0;
 	}
 
diff --git a/drivers/mtd/nand/raw/nand_omap_gpmc.c b/drivers/mtd/nand/raw/nand_omap_gpmc.c
index 2b1fb07f93f7..20eb0bcd1443 100644
--- a/drivers/mtd/nand/raw/nand_omap_gpmc.c
+++ b/drivers/mtd/nand/raw/nand_omap_gpmc.c
@@ -1128,8 +1128,8 @@ static int omap_gpmc_eccmode(struct gpmc_nand_info *oinfo,
 				 minfo->writesize / nand->ecc.size,
 				 nand->ecc.size, nand->ecc.bytes);
 		if (err < 0) {
-			dev_err(oinfo->pdev, "ELM config failed: %s\n",
-				strerror(-err));
+			dev_err(oinfo->pdev, "ELM config failed: %pe\n",
+				ERR_PTR(err));
 			return err;
 		}
 
diff --git a/drivers/mtd/peb.c b/drivers/mtd/peb.c
index a17d42885ee3..840fc1799a38 100644
--- a/drivers/mtd/peb.c
+++ b/drivers/mtd/peb.c
@@ -793,7 +793,7 @@ int mtd_peb_create_bitflips(struct mtd_info *mtd, int pnum, int offset,
 	ret = 0;
 err:
 	if (ret)
-		dev_err(&mtd->dev, "Failed to create bitflips: %s\n", strerror(-ret));
+		dev_err(&mtd->dev, "Failed to create bitflips: %pe\n", ERR_PTR(ret));
 
 	free(buf);
 	free(oobbuf);
diff --git a/drivers/mtd/ubi/barebox.c b/drivers/mtd/ubi/barebox.c
index 6b006dfa1de6..b6daa4910d8a 100644
--- a/drivers/mtd/ubi/barebox.c
+++ b/drivers/mtd/ubi/barebox.c
@@ -39,7 +39,7 @@ static ssize_t ubi_volume_cdev_read(struct cdev *cdev, void *buf, size_t size,
 
 		err = ubi_eba_read_leb(ubi, vol, lnum, buf, off, len, 0);
 		if (err) {
-			ubi_err(ubi, "read error: %s", strerror(-err));
+			ubi_err(ubi, "read error: %pe", ERR_PTR(err));
 			break;
 		}
 		off += len;
diff --git a/drivers/net/cpsw.c b/drivers/net/cpsw.c
index b11930fdd018..259664a772e4 100644
--- a/drivers/net/cpsw.c
+++ b/drivers/net/cpsw.c
@@ -1235,7 +1235,7 @@ static int cpsw_probe(struct device *dev)
 	for (i = 0; i < priv->num_slaves; i++) {
 		ret = cpsw_slave_setup(&priv->slaves[i], i, priv);
 		if (ret) {
-			dev_err(dev, "Failed to setup slave %d: %s\n", i, strerror(-ret));
+			dev_err(dev, "Failed to setup slave %d: %pe\n", i, ERR_PTR(ret));
 			continue;
 		}
 	}
diff --git a/drivers/net/designware_eqos.c b/drivers/net/designware_eqos.c
index 395f8aeeddd8..a6e9d8677f53 100644
--- a/drivers/net/designware_eqos.c
+++ b/drivers/net/designware_eqos.c
@@ -851,7 +851,7 @@ static int eqos_init(struct device *dev, struct eqos *eqos)
 
 	ret = eqos_init_resources(eqos);
 	if (ret) {
-		dev_err(dev, "eqos_init_resources() failed: %s\n", strerror(-ret));
+		dev_err(dev, "eqos_init_resources() failed: %pe\n", ERR_PTR(ret));
 		return ret;
 	}
 
diff --git a/drivers/net/designware_imx.c b/drivers/net/designware_imx.c
index ab60d982982e..77e987e9ac80 100644
--- a/drivers/net/designware_imx.c
+++ b/drivers/net/designware_imx.c
@@ -234,13 +234,13 @@ static int eqos_probe_imx(struct device *dev)
 
 	ret = clk_bulk_get(dev, priv->num_clks, priv->clks);
 	if (ret) {
-		dev_err(dev, "Failed to get clks: %s\n", strerror(-ret));
+		dev_err(dev, "Failed to get clks: %pe\n", ERR_PTR(ret));
 		return ret;
 	}
 
 	ret = clk_bulk_enable(priv->num_clks, priv->clks);
 	if (ret) {
-		dev_err(dev, "Failed to enable clks: %s\n", strerror(-ret));
+		dev_err(dev, "Failed to enable clks: %pe\n", ERR_PTR(ret));
 		return ret;
 	}
 
diff --git a/drivers/net/designware_rockchip.c b/drivers/net/designware_rockchip.c
index 04e2b7f12dfd..b8fc6fd7819d 100644
--- a/drivers/net/designware_rockchip.c
+++ b/drivers/net/designware_rockchip.c
@@ -280,13 +280,13 @@ static int eqos_init_rk_gmac(struct device *dev, struct eqos *eqos)
 
 	ret = clk_bulk_get(dev, priv->num_clks, priv->clks);
 	if (ret) {
-		dev_err(dev, "Failed to get clks: %s\n", strerror(-ret));
+		dev_err(dev, "Failed to get clks: %pe\n", ERR_PTR(ret));
 		return ret;
 	}
 
 	ret = clk_bulk_enable(priv->num_clks, priv->clks);
 	if (ret) {
-		dev_err(dev, "Failed to enable clks: %s\n", strerror(-ret));
+		dev_err(dev, "Failed to enable clks: %pe\n", ERR_PTR(ret));
 		return ret;
 	}
 
diff --git a/drivers/net/designware_stm32.c b/drivers/net/designware_stm32.c
index b21cb5cb13ac..28327adcdec5 100644
--- a/drivers/net/designware_stm32.c
+++ b/drivers/net/designware_stm32.c
@@ -154,8 +154,8 @@ static int eqos_init_stm32(struct device *dev, struct eqos *eqos)
 	ret = of_property_read_u32_index(dev->of_node, "st,syscon",
 					 1, &priv->mode_reg);
 	if (ret) {
-		dev_err(dev, "Can't get sysconfig mode offset (%s)\n",
-			strerror(-ret));
+		dev_err(dev, "Can't get sysconfig mode offset (%pe)\n",
+			ERR_PTR(ret));
 		return -EINVAL;
 	}
 
@@ -173,7 +173,7 @@ static int eqos_init_stm32(struct device *dev, struct eqos *eqos)
 
 	ret = eqos_set_mode_stm32(priv, eqos->interface);
 	if (ret)
-		dev_warn(dev, "Configuring syscfg failed: %s\n", strerror(-ret));
+		dev_warn(dev, "Configuring syscfg failed: %pe\n", ERR_PTR(ret));
 
 	priv->num_clks = ARRAY_SIZE(stm32_clks) + 1;
 	priv->clks = xmalloc(priv->num_clks * sizeof(*priv->clks));
@@ -181,7 +181,7 @@ static int eqos_init_stm32(struct device *dev, struct eqos *eqos)
 
 	ret = clk_bulk_get(dev, ARRAY_SIZE(stm32_clks), priv->clks);
 	if (ret) {
-		dev_err(dev, "Failed to get clks: %s\n", strerror(-ret));
+		dev_err(dev, "Failed to get clks: %pe\n", ERR_PTR(ret));
 		return ret;
 	}
 
diff --git a/drivers/net/designware_tegra186.c b/drivers/net/designware_tegra186.c
index 86f97e853e5e..d8952f9ea194 100644
--- a/drivers/net/designware_tegra186.c
+++ b/drivers/net/designware_tegra186.c
@@ -231,19 +231,19 @@ static int eqos_init_tegra186(struct device *dev, struct eqos *eqos)
 
 	ret = clk_bulk_enable(priv->num_clks, priv->clks);
 	if (ret < 0) {
-		eqos_err(eqos, "clk_bulk_enable() failed: %s\n", strerror(-ret));
+		eqos_err(eqos, "clk_bulk_enable() failed: %pe\n", ERR_PTR(ret));
 		goto release_res;
 	}
 
 	ret = eqos_clks_set_rate_tegra186(priv);
 	if (ret < 0) {
-		eqos_err(eqos, "clks_set_rate() failed: %s\n", strerror(-ret));
+		eqos_err(eqos, "clks_set_rate() failed: %pe\n", ERR_PTR(ret));
 		goto err_stop_clks;
 	}
 
 	eqos_reset_tegra186(priv, false);
 	if (ret < 0) {
-		eqos_err(eqos, "reset(0) failed: %s\n", strerror(-ret));
+		eqos_err(eqos, "reset(0) failed: %pe\n", ERR_PTR(ret));
 		goto err_stop_clks;
 	}
 
diff --git a/drivers/net/phy/mdio_bus.c b/drivers/net/phy/mdio_bus.c
index 68652e92a830..7974ca773899 100644
--- a/drivers/net/phy/mdio_bus.c
+++ b/drivers/net/phy/mdio_bus.c
@@ -98,7 +98,7 @@ int mdiobus_detect(struct device *dev)
 			continue;
 		ret = phy_register_device(phydev);
 		if (ret)
-			dev_err(dev, "failed to register phy: %s\n", strerror(-ret));
+			dev_err(dev, "failed to register phy: %pe\n", ERR_PTR(ret));
 		dev_dbg(dev, "registered phy as /dev/%s\n", phydev->cdev.name);
 	}
 
diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index 543be9a235cf..672c4cc2331a 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -629,8 +629,8 @@ static void nvme_delete_queue(struct nvme_queue *nvmeq, u8 opcode)
 	int ret;
 	ret = adapter_delete_queue(nvmeq->dev, opcode, nvmeq->qid);
 	if (ret < 0)
-		dev_err(nvmeq->dev->dev, "%s: %s\n", __func__,
-			strerror(-ret));
+		dev_err(nvmeq->dev->dev, "%s: %pe\n", __func__,
+			ERR_PTR(ret));
 	else if (ret)
 		dev_err(nvmeq->dev->dev,
 			"%s: status code type: %xh, status code %02xh\n",
diff --git a/drivers/nvmem/bsec.c b/drivers/nvmem/bsec.c
index b92d925956ee..edaf577e9823 100644
--- a/drivers/nvmem/bsec.c
+++ b/drivers/nvmem/bsec.c
@@ -141,7 +141,7 @@ static void stm32_bsec_init_dt(struct bsec_priv *priv, struct device *dev,
 
 	ret = stm32_bsec_read_mac(priv, offset, mac);
 	if (ret) {
-		dev_warn(dev, "error setting MAC address: %s\n", strerror(-ret));
+		dev_warn(dev, "error setting MAC address: %pe\n", ERR_PTR(ret));
 		return;
 	}
 
diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
index 867a7a369739..7b3936bd1c4a 100644
--- a/drivers/of/overlay.c
+++ b/drivers/of/overlay.c
@@ -326,7 +326,7 @@ int of_overlay_apply_file(struct device_node *root, const char *filename,
 	if (ret == -ENODEV)
 		pr_debug("Not applied %s (not compatible)\n", filename);
 	else if (ret)
-		pr_err("Cannot apply %s: %s\n", filename, strerror(-ret));
+		pr_err("Cannot apply %s: %pe\n", filename, ERR_PTR(ret));
 	else
 		pr_info("Applied %s\n", filename);
 
diff --git a/drivers/power/reset/syscon-reboot-mode.c b/drivers/power/reset/syscon-reboot-mode.c
index 7d44d9c07e96..00b2f77146d2 100644
--- a/drivers/power/reset/syscon-reboot-mode.c
+++ b/drivers/power/reset/syscon-reboot-mode.c
@@ -85,8 +85,8 @@ static int syscon_reboot_mode_probe(struct device *dev)
 
 		ret = regmap_read(syscon_rbm->map, reg->offset, &magic[i]);
 		if (ret) {
-			dev_err(dev, "error reading reboot mode: %s\n",
-				strerror(-ret));
+			dev_err(dev, "error reading reboot mode: %pe\n",
+				ERR_PTR(ret));
 			goto free_magic;
 		}
 
diff --git a/drivers/serial/serial_ns16550_pci.c b/drivers/serial/serial_ns16550_pci.c
index 6f19dff74052..00d65cde6149 100644
--- a/drivers/serial/serial_ns16550_pci.c
+++ b/drivers/serial/serial_ns16550_pci.c
@@ -3686,9 +3686,9 @@ pciserial_init_ports(struct pci_dev *dev, const struct pciserial_board *board)
 
 		rc = platform_device_register(ns16550_dev);
 		if (rc < 0) {
-			dev_err(&dev->dev, "couldn't register PCI %s console @0x%pa: %s\n",
+			dev_err(&dev->dev, "couldn't register PCI %s console @0x%pa: %pe\n",
 				res->flags & IORESOURCE_MEM ? "MMIO" : "IO port",
-				&res->start, strerror(-rc));
+				&res->start, ERR_PTR(rc));
 
 			break;
 		}
diff --git a/drivers/usb/gadget/function/f_fastboot.c b/drivers/usb/gadget/function/f_fastboot.c
index 30d257b5002a..20a5f076aa12 100644
--- a/drivers/usb/gadget/function/f_fastboot.c
+++ b/drivers/usb/gadget/function/f_fastboot.c
@@ -351,7 +351,7 @@ static int fastboot_set_alt(struct usb_function *f,
 
 	ret = usb_ep_enable(f_fb->out_ep);
 	if (ret) {
-		pr_err("failed to enable out ep: %s\n", strerror(-ret));
+		pr_err("failed to enable out ep: %pe\n", ERR_PTR(ret));
 		return ret;
 	}
 
@@ -362,7 +362,7 @@ static int fastboot_set_alt(struct usb_function *f,
 
 	ret = usb_ep_enable(f_fb->in_ep);
 	if (ret) {
-		pr_err("failed to enable in ep: %s\n", strerror(-ret));
+		pr_err("failed to enable in ep: %pe\n", ERR_PTR(ret));
 		return ret;
 	}
 
diff --git a/drivers/usb/imx/chipidea-imx.c b/drivers/usb/imx/chipidea-imx.c
index 9597acef4240..94fbb9f0ed2c 100644
--- a/drivers/usb/imx/chipidea-imx.c
+++ b/drivers/usb/imx/chipidea-imx.c
@@ -57,8 +57,8 @@ static int imx_chipidea_port_init(void *drvdata)
 		if (IS_ENABLED(CONFIG_USB_ULPI)) {
 			ret = ulpi_setup(ci->base + 0x170, 1);
 			if (ret)
-				dev_err(ci->dev, "ULPI setup failed with %s\n",
-						strerror(-ret));
+				dev_err(ci->dev, "ULPI setup failed with %pe\n",
+						ERR_PTR(ret));
 			mdelay(20);
 		} else {
 			dev_err(ci->dev, "no ULPI support available\n");
@@ -72,7 +72,7 @@ static int imx_chipidea_port_init(void *drvdata)
 	if (ci->have_usb_misc) {
 		ret = imx_usbmisc_port_init(ci->usbmisc, ci->portno, ci->flags);
 		if (ret)
-			dev_err(ci->dev, "misc init failed: %s\n", strerror(-ret));
+			dev_err(ci->dev, "misc init failed: %pe\n", ERR_PTR(ret));
 	}
 
 	/* PFSC bit is reset by ehci_reset(), thus have to set it not in
@@ -94,7 +94,7 @@ static int imx_chipidea_port_post_init(void *drvdata)
 	if (ci->have_usb_misc) {
 		ret = imx_usbmisc_port_post_init(ci->usbmisc, ci->portno, ci->flags);
 		if (ret)
-			dev_err(ci->dev, "post misc init failed: %s\n", strerror(-ret));
+			dev_err(ci->dev, "post misc init failed: %pe\n", ERR_PTR(ret));
 	}
 
 	return ret;
diff --git a/drivers/video/fb.c b/drivers/video/fb.c
index f2f68a00af11..fade873d1efa 100644
--- a/drivers/video/fb.c
+++ b/drivers/video/fb.c
@@ -370,8 +370,8 @@ int register_framebuffer(struct fb_info *info)
 	if (IS_ENABLED(CONFIG_DRIVER_VIDEO_SIMPLEFB)) {
 		ret = fb_register_simplefb(info);
 		if (ret)
-			dev_err(&info->dev, "failed to register simplefb: %s\n",
-					strerror(-ret));
+			dev_err(&info->dev, "failed to register simplefb: %pe\n",
+					ERR_PTR(ret));
 	}
 
 	if (IS_ENABLED(CONFIG_FRAMEBUFFER_CONSOLE))
diff --git a/drivers/video/fbconsole.c b/drivers/video/fbconsole.c
index 7462e3477838..401b36c4de73 100644
--- a/drivers/video/fbconsole.c
+++ b/drivers/video/fbconsole.c
@@ -829,7 +829,7 @@ int register_fbconsole(struct fb_info *fb)
 
 	ret = console_register(cdev);
 	if (ret) {
-		pr_err("registering failed with %s\n", strerror(-ret));
+		pr_err("registering failed with %pe\n", ERR_PTR(ret));
 		kfree(priv);
 		return ret;
 	}
diff --git a/drivers/video/imx-ipu-v3/imx-ldb.c b/drivers/video/imx-ipu-v3/imx-ldb.c
index 3ed6d44f5be6..ae7d3548267a 100644
--- a/drivers/video/imx-ipu-v3/imx-ldb.c
+++ b/drivers/video/imx-ipu-v3/imx-ldb.c
@@ -162,7 +162,7 @@ static int imx6q_set_clock(struct imx_ldb *ldb, int ipuno, int dino, int chno, u
 
 	ret = clk_set_parent(diclk, ldbclk);
 	if (ret) {
-		dev_err(ldb->dev, "failed to set display clock parent: %s\n", strerror(-ret));
+		dev_err(ldb->dev, "failed to set display clock parent: %pe\n", ERR_PTR(ret));
 		return ret;
 	}
 
@@ -233,7 +233,7 @@ static int imx53_ldb_prepare(struct imx_ldb_channel *imx_ldb_ch, int di,
 
 	ret = clk_set_parent(diclk, ldbclk);
 	if (ret) {
-		dev_err(ldb->dev, "failed to set display clock parent: %s\n", strerror(-ret));
+		dev_err(ldb->dev, "failed to set display clock parent: %pe\n", ERR_PTR(ret));
 		return ret;
 	}
 
diff --git a/drivers/video/imx-ipu-v3/ipu-common.c b/drivers/video/imx-ipu-v3/ipu-common.c
index 4909119d87b7..f1613de42470 100644
--- a/drivers/video/imx-ipu-v3/ipu-common.c
+++ b/drivers/video/imx-ipu-v3/ipu-common.c
@@ -810,7 +810,7 @@ static int ipu_probe(struct device *dev)
 
 	ret = devtype->reset(ipu);
 	if (ret) {
-		dev_err(dev, "failed to reset: %s\n", strerror(-ret));
+		dev_err(dev, "failed to reset: %pe\n", ERR_PTR(ret));
 		goto out_failed_reset;
 	}
 
diff --git a/drivers/video/imx-ipu-v3/ipufb.c b/drivers/video/imx-ipu-v3/ipufb.c
index afc93805c1cf..4ea293779869 100644
--- a/drivers/video/imx-ipu-v3/ipufb.c
+++ b/drivers/video/imx-ipu-v3/ipufb.c
@@ -167,13 +167,13 @@ static int ipu_crtc_mode_set(struct ipufb_info *fbi,
 				  0, 0, mode->xres, mode->yres,
 				  x, y, mode->xres, mode->yres);
 	if (ret) {
-		dev_err(fbi->dev, "initialising plane failed with %s\n", strerror(-ret));
+		dev_err(fbi->dev, "initialising plane failed with %pe\n", ERR_PTR(ret));
 		return ret;
 	}
 
 	ret = ipu_di_enable(fbi->di);
 	if (ret) {
-		dev_err(fbi->dev, "enabling di failed with %s\n", strerror(-ret));
+		dev_err(fbi->dev, "enabling di failed with %pe\n", ERR_PTR(ret));
 		return ret;
 	}
 
@@ -330,7 +330,7 @@ static int ipufb_probe(struct device *dev)
 
 		ret = vpl_ioctl(&fbi->vpl, 2 + fbi->dino, VPL_GET_VIDEOMODES, &info->modes);
 		if (ret)
-			dev_dbg(fbi->dev, "failed to get modes: %s\n", strerror(-ret));
+			dev_dbg(fbi->dev, "failed to get modes: %pe\n", ERR_PTR(ret));
 
 		info->dev.parent = dev;
 		ret = register_framebuffer(info);
diff --git a/drivers/video/rockchip/rockchip_drm_vop2.c b/drivers/video/rockchip/rockchip_drm_vop2.c
index e45492360d6f..0d6d31a86804 100644
--- a/drivers/video/rockchip/rockchip_drm_vop2.c
+++ b/drivers/video/rockchip/rockchip_drm_vop2.c
@@ -1594,7 +1594,7 @@ static int vop2_register_plane(struct vop2_video_port *vp, struct vop2_win *win)
 	if (win->type == DRM_PLANE_TYPE_PRIMARY) {
 		ret = vpl_ioctl(&vp->vpl, vp->id, VPL_GET_VIDEOMODES, &info->modes);
 		if (ret) {
-			dev_err(vop2->dev, "failed to get modes: %s\n", strerror(-ret));
+			dev_err(vop2->dev, "failed to get modes: %pe\n", ERR_PTR(ret));
 			return ret;
 		}
 
diff --git a/drivers/video/stm32_ltdc.c b/drivers/video/stm32_ltdc.c
index 7ebd24d6d908..43d443788364 100644
--- a/drivers/video/stm32_ltdc.c
+++ b/drivers/video/stm32_ltdc.c
@@ -310,7 +310,7 @@ static int ltdc_probe(struct device *dev)
 
 		ret = vpl_ioctl(&priv->vpl, priv->id, VPL_GET_VIDEOMODES, &info->modes);
 		if (ret)
-			dev_dbg(dev, "failed to get modes: %s\n", strerror(-ret));
+			dev_dbg(dev, "failed to get modes: %pe\n", ERR_PTR(ret));
 
 		ret = register_framebuffer(info);
 		if (ret < 0) {
diff --git a/fs/ext4/ext_barebox.c b/fs/ext4/ext_barebox.c
index 5a5c3ef8e7a1..e75478684ff3 100644
--- a/fs/ext4/ext_barebox.c
+++ b/fs/ext4/ext_barebox.c
@@ -35,8 +35,8 @@ ssize_t ext4fs_devread(struct ext_filesystem *fs, sector_t __sector, int byte_of
 
 	size = cdev_read(fs->cdev, buf, byte_len, sector * SECTOR_SIZE + byte_offset, 0);
 	if (size < 0) {
-		dev_err(fs->dev, "read error at sector %llu: %s\n", __sector,
-				strerror(-size));
+		dev_err(fs->dev, "read error at sector %llu: %pe\n", __sector,
+			ERR_PTR(size));
 		return size;
 	}
 
diff --git a/fs/fs.c b/fs/fs.c
index b29148b430d1..400e85de102b 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -3379,8 +3379,8 @@ static int do_lookup_dentry(int argc, char *argv[])
 
 	ret = filename_lookup(AT_FDCWD, getname(argv[1]), 0, &path);
 	if (ret) {
-		printf("Cannot lookup path \"%s\": %s\n",
-		       argv[1], strerror(-ret));
+		printf("Cannot lookup path \"%s\": %pe\n",
+		       argv[1], ERR_PTR(ret));
 		return 1;
 	}
 
diff --git a/fs/nfs.c b/fs/nfs.c
index 4311971c479d..17e1e7cfa1f1 100644
--- a/fs/nfs.c
+++ b/fs/nfs.c
@@ -1460,7 +1460,7 @@ static int nfs_probe(struct device *dev)
 
 	ret = resolv(tmp, &npriv->server);
 	if (ret) {
-		printf("cannot resolve \"%s\": %s\n", tmp, strerror(-ret));
+		printf("cannot resolve \"%s\": %pe\n", tmp, ERR_PTR(ret));
 		goto err1;
 	}
 
diff --git a/fs/squashfs/squashfs.c b/fs/squashfs/squashfs.c
index 7ae8c1296b87..471bcae4eb03 100644
--- a/fs/squashfs/squashfs.c
+++ b/fs/squashfs/squashfs.c
@@ -33,8 +33,7 @@ char *squashfs_devread(struct squashfs_sb_info *fs, int byte_offset,
 
 	size = cdev_read(fs->cdev, buf, byte_len, byte_offset, 0);
 	if (size < 0) {
-		dev_err(fs->dev, "read error: %s\n",
-				strerror(-size));
+		dev_err(fs->dev, "read error: %pe\n", ERR_PTR(size));
 		return NULL;
 	}
 
diff --git a/fs/tftp.c b/fs/tftp.c
index b2d5df4aa384..cf91f66ed88b 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -1086,7 +1086,7 @@ static int tftp_probe(struct device *dev)
 
 	ret = resolv(fsdev->backingstore, &priv->server);
 	if (ret) {
-		pr_err("Cannot resolve \"%s\": %s\n", fsdev->backingstore, strerror(-ret));
+		pr_err("Cannot resolve \"%s\": %pe\n", fsdev->backingstore, ERR_PTR(ret));
 		goto err;
 	}
 
diff --git a/lib/gui/image_renderer.c b/lib/gui/image_renderer.c
index 9bef99a7b03b..b626cef5c27b 100644
--- a/lib/gui/image_renderer.c
+++ b/lib/gui/image_renderer.c
@@ -39,7 +39,7 @@ struct image *image_renderer_open(const char* file)
 
 	ret = read_file_2(file, &size, &data, FILESIZE_MAX);
 	if (ret) {
-		printf("unable to read %s: %s\n", file, strerror(-ret));
+		printf("unable to read %s: %pe\n", file, ERR_PTR(ret));
 		return ERR_PTR(ret);
 	}
 
diff --git a/net/dhcp.c b/net/dhcp.c
index 045ccc01837e..e25b64842d32 100644
--- a/net/dhcp.c
+++ b/net/dhcp.c
@@ -559,7 +559,7 @@ int dhcp_request(struct eth_device *edev, const struct dhcp_req_param *param,
 	net_unregister(dhcp_con);
 out:
 	if (ret) {
-		debug("dhcp failed: %s\n", strerror(-ret));
+		debug("dhcp failed: %pe\n", ERR_PTR(ret));
 		free(dhcp_result);
 	} else {
 		*res = dhcp_result;
diff --git a/net/eth.c b/net/eth.c
index bc2527de3670..cdacc5ab6b80 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -351,8 +351,8 @@ static void eth_of_fixup_node(struct device_node *root,
 
 	ret = of_set_property(fixup_node, "mac-address", ethaddr, ETH_ALEN, 1);
 	if (ret)
-		pr_err("Setting mac-address property of %s failed with: %s\n",
-		       fixup_node->full_name, strerror(-ret));
+		pr_err("Setting mac-address property of %s failed with: %pe\n",
+		       fixup_node->full_name, ERR_PTR(ret));
 }
 
 static int eth_of_fixup(struct device_node *root, void *unused)
diff --git a/net/fastboot.c b/net/fastboot.c
index 932eb05c4341..263d8abaa212 100644
--- a/net/fastboot.c
+++ b/net/fastboot.c
@@ -410,7 +410,7 @@ static void fastboot_handler(void *ctx, char *packet, unsigned int raw_len)
 		/* poller just unregistered in fastboot_net_abort() */
 		ret = poller_register(&fbn->poller, "fastboot");
 		if (ret) {
-			pr_err("Cannot register poller: %s\n", strerror(-ret));
+			pr_err("Cannot register poller: %pe\n", ERR_PTR(ret));
 			return;
 		}
 		fastboot_send(fbn, header, NULL);
diff --git a/net/netconsole.c b/net/netconsole.c
index 43f78997b81c..c93a6cc5c7be 100644
--- a/net/netconsole.c
+++ b/net/netconsole.c
@@ -156,7 +156,7 @@ static int netconsole_init(void)
 
 	ret = console_register(cdev);
 	if (ret) {
-		pr_err("registering failed with %s\n", strerror(-ret));
+		pr_err("registering failed with %pe\n", ERR_PTR(ret));
 		kfree(priv);
 		return ret;
 	}
diff --git a/net/ping.c b/net/ping.c
index 7b319e532e79..c5e52bc686d8 100644
--- a/net/ping.c
+++ b/net/ping.c
@@ -65,7 +65,7 @@ static int do_ping(int argc, char *argv[])
 
 	ret = resolv(argv[1], &net_ping_ip);
 	if (ret) {
-		printf("Cannot resolve \"%s\": %s\n", argv[1], strerror(-ret));
+		printf("Cannot resolve \"%s\": %pe\n", argv[1], ERR_PTR(ret));
 		return 1;
 	}
 
@@ -115,7 +115,7 @@ static int do_ping(int argc, char *argv[])
 	net_unregister(ping_con);
 out:
 	if (ret)
-		printf("ping failed: %s\n", strerror(-ret));
+		printf("ping failed: %pe\n", ERR_PTR(ret));
 	return ping_state == PING_STATE_SUCCESS ? 0 : 1;
 }
 
diff --git a/net/sntp.c b/net/sntp.c
index 08da012f36a3..be361f625d79 100644
--- a/net/sntp.c
+++ b/net/sntp.c
@@ -113,7 +113,7 @@ s64 sntp(const char *server)
 
 	ret = resolv(server, &net_sntp_ip);
 	if (ret) {
-		printf("Cannot resolve \"%s\": %s\n", server, strerror(-ret));;
+		printf("Cannot resolve \"%s\": %pe\n", server, ERR_PTR(ret));
 		return 1;
 	}
 
-- 
2.39.5



