Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UgtB7-0001Dx-R6
 for barebox@lists.infradead.org; Mon, 27 May 2013 08:53:32 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 27 May 2013 10:52:49 +0200
Message-Id: <1369644775-29887-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1369644775-29887-1-git-send-email-s.hauer@pengutronix.de>
References: <1369644775-29887-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/7] driver: Attach info callback to device, not to driver
To: barebox@lists.infradead.org

Since the info is device specific and not driver specific, attach
the callback to the device. This makes it possible to have a info
callback for a device which does not have a driver attached.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/sandbox/board/hostfile.c |  5 +++--
 drivers/ata/ahci.c            |  2 +-
 drivers/ata/sata-imx.c        |  2 +-
 drivers/base/driver.c         | 18 ++----------------
 drivers/mci/atmel_mci.c       |  8 +++-----
 drivers/mci/mci-core.c        |  8 +++-----
 drivers/mci/mxs.c             | 14 +++++---------
 drivers/mci/s3c.c             |  8 +++-----
 drivers/misc/jtag.c           | 40 ++++++++++++++++++++--------------------
 drivers/mtd/nor/cfi_flash.c   |  3 ++-
 drivers/net/cs8900.c          |  3 ++-
 drivers/video/fb.c            |  3 ++-
 drivers/video/s3c24xx.c       |  8 +++-----
 drivers/video/stm.c           |  3 ++-
 include/driver.h              |  5 ++---
 15 files changed, 54 insertions(+), 76 deletions(-)

diff --git a/arch/sandbox/board/hostfile.c b/arch/sandbox/board/hostfile.c
index 48c6ea3..ac29cfa 100644
--- a/arch/sandbox/board/hostfile.c
+++ b/arch/sandbox/board/hostfile.c
@@ -77,6 +77,9 @@ static int hf_probe(struct device_d *dev)
 	priv->cdev.size = hf->size;
 	priv->cdev.ops = &hf_fops;
 	priv->cdev.priv = hf;
+
+	dev->info = hf_info;
+
 #ifdef CONFIG_FS_DEVFS
 	devfs_create(&priv->cdev);
 #endif
@@ -87,7 +90,6 @@ static int hf_probe(struct device_d *dev)
 static struct driver_d hf_drv = {
 	.name  = "hostfile",
 	.probe = hf_probe,
-	.info  = hf_info,
 };
 device_platform_driver(hf_drv);
 
@@ -111,4 +113,3 @@ int barebox_register_filedev(struct hf_platform_data *hf)
 
 	return sandbox_add_device(dev);
 }
-
diff --git a/drivers/ata/ahci.c b/drivers/ata/ahci.c
index 37419f2..7def9a0 100644
--- a/drivers/ata/ahci.c
+++ b/drivers/ata/ahci.c
@@ -635,6 +635,7 @@ static int ahci_probe(struct device_d *dev)
 	ahci->dev = dev;
 	ahci->mmio_base = regs;
 	dev->priv = ahci;
+	dev->info = ahci_info;
 
 	ret = ahci_add_host(ahci);
 	if (ret)
@@ -654,7 +655,6 @@ static __maybe_unused struct of_device_id ahci_dt_ids[] = {
 static struct driver_d ahci_driver = {
 	.name   = "ahci",
 	.probe  = ahci_probe,
-	.info	= ahci_info,
 	.of_compatible = DRV_OF_COMPAT(ahci_dt_ids),
 };
 device_platform_driver(ahci_driver);
diff --git a/drivers/ata/sata-imx.c b/drivers/ata/sata-imx.c
index bd48fae..13bf116 100644
--- a/drivers/ata/sata-imx.c
+++ b/drivers/ata/sata-imx.c
@@ -107,6 +107,7 @@ static int imx_sata_probe(struct device_d *dev)
 
 	imx_ahci->ahci.dev = dev;
 	dev->priv = &imx_ahci->ahci;
+	dev->info = ahci_info,
 
 	ret = ahci_add_host(&imx_ahci->ahci);
 	if (ret)
@@ -143,7 +144,6 @@ static struct platform_device_id imx_sata_ids[] = {
 static struct driver_d imx_sata_driver = {
 	.name   = "imx-sata",
 	.probe  = imx_sata_probe,
-	.info	= ahci_info,
 	.id_table = imx_sata_ids,
 };
 device_platform_driver(imx_sata_driver);
diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 30a4bc5..c885630 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -201,15 +201,6 @@ struct driver_d *get_driver_by_name(const char *name)
 	return NULL;
 }
 
-static void noinfo(struct device_d *dev)
-{
-	printf("no info available for %s\n", dev_name(dev));
-}
-
-static void noshortinfo(struct device_d *dev)
-{
-}
-
 int register_driver(struct driver_d *drv)
 {
 	struct device_d *dev = NULL;
@@ -221,11 +212,6 @@ int register_driver(struct driver_d *drv)
 	list_add_tail(&drv->list, &driver_list);
 	list_add_tail(&drv->bus_list, &drv->bus->driver_list);
 
-	if (!drv->info)
-		drv->info = noinfo;
-	if (!drv->shortinfo)
-		drv->shortinfo = noshortinfo;
-
 	bus_for_each_device(drv->bus, dev)
 		match(drv, dev);
 
@@ -489,8 +475,8 @@ static int do_devinfo(int argc, char *argv[])
 		printf("bus: %s\n\n", dev->bus ?
 				dev->bus->name : "none");
 
-		if (dev->driver)
-			dev->driver->info(dev);
+		if (dev->info)
+			dev->info(dev);
 
 		printf("%s\n", list_empty(&dev->parameters) ?
 				"no parameters available" : "Parameters:");
diff --git a/drivers/mci/atmel_mci.c b/drivers/mci/atmel_mci.c
index c5fd306..b5873f9 100644
--- a/drivers/mci/atmel_mci.c
+++ b/drivers/mci/atmel_mci.c
@@ -470,7 +470,6 @@ static int atmci_request(struct mci_host *mci, struct mci_cmd *cmd, struct mci_d
 	return atmci_cmd_done(host, stat);
 }
 
-#ifdef CONFIG_MCI_INFO
 static void atmci_info(struct device_d *mci_dev)
 {
 	struct atmel_mci *host = mci_dev->priv;
@@ -493,7 +492,6 @@ static void atmci_info(struct device_d *mci_dev)
 		gpio_is_valid(pd->detect_pin) ? "yes" : "no");
 
 }
-#endif /* CONFIG_MCI_INFO */
 /*
  * HSMCI (High Speed MCI) module is not fully compatible with MCI module.
  * HSMCI provides DMA support and a new config register but no more supports
@@ -603,6 +601,9 @@ static int atmci_probe(struct device_d *hw_dev)
 	else
 		host->sdc_reg = ATMCI_SDCSEL_SLOT_A;
 
+	if (IS_ENABLED(CONFIG_MCI_INFO))
+		hw_dev->info = atmci_info;
+
 	mci_register(&host->mci);
 
 	return 0;
@@ -617,8 +618,5 @@ err_gpio_cd_request:
 static struct driver_d atmci_driver = {
 	.name	= "atmel_mci",
 	.probe	= atmci_probe,
-#ifdef CONFIG_MCI_INFO
-	.info	= atmci_info,
-#endif
 };
 device_platform_driver(atmci_driver);
diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 5367b4f..5c00018 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1281,7 +1281,6 @@ static int mci_sd_read(struct block_device *blk, void *buffer, int block,
 
 /* ------------------ attach to the device API --------------------------- */
 
-#ifdef CONFIG_MCI_INFO
 /**
  * Extract the Manufacturer ID from the CID
  * @param mci Instance data
@@ -1407,7 +1406,6 @@ static void mci_info(struct device_d *mci_dev)
 	printf("  Manufacturing date: %u.%u\n", extract_mtd_month(mci),
 		extract_mtd_year(mci));
 }
-#endif
 
 /**
  * Check if the MCI card is already probed
@@ -1616,6 +1614,9 @@ static int mci_probe(struct device_d *mci_dev)
 		goto on_error;
 	}
 
+	if (IS_ENABLED(CONFIG_MCI_INFO))
+		mci->dev.info = mci_info;
+
 #ifdef CONFIG_MCI_STARTUP
 	/* if enabled, probe the attached card immediately */
 	mci_card_probe(mci);
@@ -1631,9 +1632,6 @@ on_error:
 static struct driver_d mci_driver = {
 	.name	= "mci",
 	.probe	= mci_probe,
-#ifdef CONFIG_MCI_INFO
-	.info	= mci_info,
-#endif
 };
 
 static int mci_init(void)
diff --git a/drivers/mci/mxs.c b/drivers/mci/mxs.c
index 9dee863..e6f40eb 100644
--- a/drivers/mci/mxs.c
+++ b/drivers/mci/mxs.c
@@ -536,7 +536,6 @@ static void mxs_mci_set_ios(struct mci_host *host, struct mci_ios *ios)
 
 /* ----------------------------------------------------------------------- */
 
-#ifdef CONFIG_MCI_INFO
 const unsigned char bus_width[3] = { 1, 4, 8 };
 
 static void mxs_mci_info(struct device_d *hw_dev)
@@ -550,7 +549,6 @@ static void mxs_mci_info(struct device_d *hw_dev)
 	printf("  Bus width: %u bit\n", bus_width[mxs_mci->bus_width]);
 	printf("\n");
 }
-#endif
 
 static int mxs_mci_probe(struct device_d *hw_dev)
 {
@@ -617,10 +615,11 @@ static int mxs_mci_probe(struct device_d *hw_dev)
 			host->f_max, mxs_mci_get_unit_clock(mxs_mci) / 2 / 1);
 	}
 
-#ifdef CONFIG_MCI_INFO
-	mxs_mci->f_min = host->f_min;
-	mxs_mci->f_max = host->f_max;
-#endif
+	if (IS_ENABLED(CONFIG_MCI_INFO)) {
+		mxs_mci->f_min = host->f_min;
+		mxs_mci->f_max = host->f_max;
+		hw_dev->info = mxs_mci_info;
+	}
 
 	return mci_register(host);
 }
@@ -628,8 +627,5 @@ static int mxs_mci_probe(struct device_d *hw_dev)
 static struct driver_d mxs_mci_driver = {
         .name  = "mxs_mci",
         .probe = mxs_mci_probe,
-#ifdef CONFIG_MCI_INFO
-	.info = mxs_mci_info,
-#endif
 };
 device_platform_driver(mxs_mci_driver);
diff --git a/drivers/mci/s3c.c b/drivers/mci/s3c.c
index 4e7345c..773c84a 100644
--- a/drivers/mci/s3c.c
+++ b/drivers/mci/s3c.c
@@ -700,7 +700,6 @@ static void mci_set_ios(struct mci_host *host, struct mci_ios *ios)
 
 /* ----------------------------------------------------------------------- */
 
-#ifdef CONFIG_MCI_INFO
 static void s3c_info(struct device_d *hw_dev)
 {
 	struct s3c_mci_host *host = hw_dev->priv;
@@ -720,7 +719,6 @@ static void s3c_info(struct device_d *hw_dev)
 	printf("\n  Card detection support: %s\n",
 		pd->gpio_detect != 0 ? "yes" : "no");
 }
-#endif
 
 static int s3c_mci_probe(struct device_d *hw_dev)
 {
@@ -751,6 +749,9 @@ static int s3c_mci_probe(struct device_d *hw_dev)
 	s3c_host->host.f_min = pd->f_min == 0 ? s3c_get_pclk() / 256 : pd->f_min;
 	s3c_host->host.f_max = pd->f_max == 0 ? s3c_get_pclk() / 2 : pd->f_max;
 
+	if (IS_ENABLED(iCONFIG_MCI_INFO))
+		hw_dev->info = s3c_info;
+
 	/*
 	 * Start the clock to let the engine and the card finishes its startup
 	 */
@@ -763,8 +764,5 @@ static int s3c_mci_probe(struct device_d *hw_dev)
 static struct driver_d s3c_mci_driver = {
         .name  = "s3c_mci",
         .probe = s3c_mci_probe,
-#ifdef CONFIG_MCI_INFO
-	.info = s3c_info,
-#endif
 };
 device_platform_driver(s3c_mci_driver);
diff --git a/drivers/misc/jtag.c b/drivers/misc/jtag.c
index d302237..310da81 100644
--- a/drivers/misc/jtag.c
+++ b/drivers/misc/jtag.c
@@ -269,6 +269,25 @@ static struct file_operations jtag_operations = {
 	.ioctl = jtag_ioctl,
 };
 
+static void jtag_info(struct device_d *pdev)
+{
+	int dn, ret;
+	struct jtag_rd_id jid;
+	struct jtag_info *info = pdev->priv;
+
+	printf(" JTAG:\n");
+	printf("  Devices found: %d\n", info->devices);
+	for (dn = 0; dn < info->devices; dn++) {
+		jid.device = dn;
+		ret = jtag_ioctl(&info->cdev, JTAG_GET_ID, &jid);
+		printf("  Device number: %d\n", dn);
+		if (ret == -1)
+			printf("   JTAG_GET_ID failed: %s\n", strerror(errno));
+		else
+			printf("   ID: 0x%lX\n", jid.id);
+	}
+}
+
 static int jtag_probe(struct device_d *pdev)
 {
 	int i, ret;
@@ -323,6 +342,7 @@ static int jtag_probe(struct device_d *pdev)
 	info->devices = i;
 	info->pdata = pdata;
 	pdev->priv = info;
+	pdev->info = jtag_info;
 
 	info->cdev.name = JTAG_NAME;
 	info->cdev.dev = pdev;
@@ -341,25 +361,6 @@ fail_devfs_create:
 	return ret;
 }
 
-static void jtag_info(struct device_d *pdev)
-{
-	int dn, ret;
-	struct jtag_rd_id jid;
-	struct jtag_info *info = pdev->priv;
-
-	printf(" JTAG:\n");
-	printf("  Devices found: %d\n", info->devices);
-	for (dn = 0; dn < info->devices; dn++) {
-		jid.device = dn;
-		ret = jtag_ioctl(&info->cdev, JTAG_GET_ID, &jid);
-		printf("  Device number: %d\n", dn);
-		if (ret == -1)
-			printf("   JTAG_GET_ID failed: %s\n", strerror(errno));
-		else
-			printf("   ID: 0x%lX\n", jid.id);
-	}
-}
-
 static void jtag_remove(struct device_d *pdev)
 {
 	struct jtag_info *info = (struct jtag_info *) pdev->priv;
@@ -374,7 +375,6 @@ static struct driver_d jtag_driver = {
 	.name = JTAG_NAME,
 	.probe = jtag_probe,
 	.remove = jtag_remove,
-	.info = jtag_info,
 };
 device_platform_driver(jtag_driver);
 
diff --git a/drivers/mtd/nor/cfi_flash.c b/drivers/mtd/nor/cfi_flash.c
index 4b4e29d..bcc125c 100644
--- a/drivers/mtd/nor/cfi_flash.c
+++ b/drivers/mtd/nor/cfi_flash.c
@@ -987,6 +987,8 @@ static int cfi_probe (struct device_d *dev)
 	dev_info(dev, "found cfi flash at %p, size %ld\n",
 			info->base, info->size);
 
+	dev->info = cfi_info;
+
 	cfi_init_mtd(info);
 
 	return 0;
@@ -1003,7 +1005,6 @@ static __maybe_unused struct of_device_id cfi_dt_ids[] = {
 static struct driver_d cfi_driver = {
 	.name    = "cfi_flash",
 	.probe   = cfi_probe,
-	.info    = cfi_info,
 	.of_compatible = DRV_OF_COMPAT(cfi_dt_ids),
 };
 device_platform_driver(cfi_driver);
diff --git a/drivers/net/cs8900.c b/drivers/net/cs8900.c
index b0d045a..aa9d9a0 100644
--- a/drivers/net/cs8900.c
+++ b/drivers/net/cs8900.c
@@ -459,6 +459,8 @@ static int cs8900_probe(struct device_d *dev)
 	edev->set_ethaddr = cs8900_set_ethaddr;
 	edev->parent = dev;
 
+	dev->info = cs8900_info;
+
 	eth_register(edev);
 	return 0;
 }
@@ -466,6 +468,5 @@ static int cs8900_probe(struct device_d *dev)
 static struct driver_d cs8900_driver = {
 	.name = "cs8900",
 	.probe = cs8900_probe,
-	.info = cs8900_info,
 };
 device_platform_driver(cs8900_driver);
diff --git a/drivers/video/fb.c b/drivers/video/fb.c
index 0e00cb7..a4a8b00 100644
--- a/drivers/video/fb.c
+++ b/drivers/video/fb.c
@@ -144,7 +144,6 @@ static void fb_info(struct device_d *dev)
 
 static struct driver_d fb_driver = {
 	.name  = "fb",
-	.info = fb_info,
 };
 
 static int fb_match(struct device_d *dev, struct driver_d *drv)
@@ -165,6 +164,8 @@ static int fb_probe(struct device_d *dev)
 		dev_set_param(dev, "mode_name", info->mode_list[0].name);
 	}
 
+	dev->info = fb_info;
+
 	return devfs_create(&info->cdev);
 }
 
diff --git a/drivers/video/s3c24xx.c b/drivers/video/s3c24xx.c
index d641cfa..c3e05c6 100644
--- a/drivers/video/s3c24xx.c
+++ b/drivers/video/s3c24xx.c
@@ -321,7 +321,6 @@ static int s3cfb_activate_var(struct fb_info *fb_info)
  * Print some information about the current hardware state
  * @param hw_dev S3C video device
  */
-#ifdef CONFIG_DRIVER_VIDEO_S3C_VERBOSE
 static void s3cfb_info(struct device_d *hw_dev)
 {
 	uint32_t con1, addr1, addr2, addr3;
@@ -340,7 +339,6 @@ static void s3cfb_info(struct device_d *hw_dev)
 	printf("  Virtual screen offset size: %u half words\n", GET_OFFSIZE(addr3));
 	printf("  Virtual screen page width: %u half words\n", GET_PAGE_WIDTH(addr3));
 }
-#endif
 
 /*
  * There is only one video hardware instance available.
@@ -390,6 +388,9 @@ static int s3cfb_probe(struct device_d *hw_dev)
 	fbi.passive_display = pdata->passive_display;
 	fbi.enable = pdata->enable;
 
+	if (IS_ENABLED(CONFIG_DRIVER_VIDEO_S3C_VERBOSE))
+		hw_dev->info = s3cfb_info;
+
 	ret = register_framebuffer(&fbi.info);
 	if (ret != 0) {
 		dev_err(hw_dev, "Failed to register framebuffer\n");
@@ -402,9 +403,6 @@ static int s3cfb_probe(struct device_d *hw_dev)
 static struct driver_d s3cfb_driver = {
 	.name	= "s3c_fb",
 	.probe	= s3cfb_probe,
-#ifdef CONFIG_DRIVER_VIDEO_S3C_VERBOSE
-	.info	= s3cfb_info,
-#endif
 };
 device_platform_driver(s3cfb_driver);
 
diff --git a/drivers/video/stm.c b/drivers/video/stm.c
index cefdef2..606e39a 100644
--- a/drivers/video/stm.c
+++ b/drivers/video/stm.c
@@ -502,6 +502,8 @@ static int stmfb_probe(struct device_d *hw_dev)
 	else
 		fbi.info.bits_per_pixel = 16;
 
+	hw_dev->info = stmfb_info;
+
 	ret = register_framebuffer(&fbi.info);
 	if (ret != 0) {
 		dev_err(hw_dev, "Failed to register framebuffer\n");
@@ -514,7 +516,6 @@ static int stmfb_probe(struct device_d *hw_dev)
 static struct driver_d stmfb_driver = {
 	.name	= "stmfb",
 	.probe	= stmfb_probe,
-	.info	= stmfb_info,
 };
 device_platform_driver(stmfb_driver);
 
diff --git a/include/driver.h b/include/driver.h
index 7d5f65e..3e6c36f 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -107,6 +107,8 @@ struct device_d {
 	struct device_node *device_node;
 
 	const struct of_device_id *of_id_entry;
+
+	void    (*info) (struct device_d *);
 };
 
 /** @brief Describes a driver present in the system */
@@ -124,9 +126,6 @@ struct driver_d {
 	/*! Called if an instance of a device is gone. */
 	void     (*remove)(struct device_d *);
 
-	void    (*info) (struct device_d *);
-	void    (*shortinfo) (struct device_d *);
-
 	struct bus_type *bus;
 
 	struct platform_device_id *id_table;
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
