Delivery-date: Mon, 06 Jan 2025 10:19:56 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tUjH9-00HQiS-2o
	for lore@lore.pengutronix.de;
	Mon, 06 Jan 2025 10:19:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tUjH8-00049N-LM
	for lore@pengutronix.de; Mon, 06 Jan 2025 10:19:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=thsfYSyNuFSAr7WLio1rzssm7e9XHRUkPOWYkJceD90=; b=2wHwVETzSf2vp8E8UrDsazB2SG
	nOq4QUhXyURS5zJCT2bIhfXJEbrjDNZOAb2JfZL4OZU1iTBEMBPITsYHIqGZzx83c4HxF54oIA08C
	sXnEa9dSO5APIABfnCuyS/sUizh5RMvL/9Q0749Svu3lV8K3M0s4Ct8i5iSxAk8NUtvCMEBqfEYBM
	NnDngWAKB0UuKDbGw0aPFfdUq+lNlXVoWXfYaakLIOGcb1l4M2Wj3wISxdOZD6O15zzc+8dcQj/a0
	3y147HPGKRw5p9lSrZ4LiimH1tJy7RywUnJT7MI1y2piQNVhTRCM82EYCzgeuVg8aAXdvc2fvUys/
	HPdvZHIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tUjGb-00000000eNt-0vsh;
	Mon, 06 Jan 2025 09:19:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tUjGX-00000000eLN-3wV2
	for barebox@lists.infradead.org;
	Mon, 06 Jan 2025 09:19:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tUjGW-0003Yy-A4; Mon, 06 Jan 2025 10:19:16 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tUjGV-0078r4-0B;
	Mon, 06 Jan 2025 10:19:15 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tUjGV-00EPhK-2O;
	Mon, 06 Jan 2025 10:19:15 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  6 Jan 2025 10:19:15 +0100
Message-Id: <20250106091915.3435362-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250106_011918_357846_A4EB4181 
X-CRM114-Status: GOOD (  18.65  )
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
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] driver: replace single info callbacks with stack
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

A number of driver register an info callback that prints
driver-specific information for devices that already have a device
callback. This is currently handled in every individual driver by
storing the old info callback in device-specific driver data.

Move this functionality into the driver core by means of new
a devinfo_add() function.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/sandbox/board/hostfile.c        |  2 +-
 commands/devinfo.c                   |  3 +-
 drivers/aiodev/imx7d_adc.c           |  9 ++---
 drivers/aiodev/vf610_adc.c           |  8 ++---
 drivers/ata/ahci.c                   |  2 +-
 drivers/ata/disk_ata_drive.c         |  2 +-
 drivers/ata/sata-imx.c               |  2 +-
 drivers/base/driver.c                | 50 ++++++++++++++++++++++++++++
 drivers/block/efi-block-io.c         | 12 ++-----
 drivers/bus/acpi.c                   |  2 +-
 drivers/efi/efi-device.c             |  4 +--
 drivers/hw_random/optee-rng.c        |  8 ++---
 drivers/i2c/i2c.c                    |  2 +-
 drivers/mci/atmel_mci.c              |  2 +-
 drivers/mci/mci-core.c               |  2 +-
 drivers/mci/mxs.c                    |  2 +-
 drivers/misc/jtag.c                  |  3 +-
 drivers/misc/ubootvar.c              |  2 +-
 drivers/mtd/nor/cfi_flash.c          |  2 +-
 drivers/net/cs8900.c                 |  2 +-
 drivers/soc/sifive/sifive_l2_cache.c |  2 +-
 drivers/tee/tee_core.c               |  3 +-
 drivers/video/fb.c                   |  2 +-
 fs/pstore/ram.c                      |  2 +-
 include/device.h                     | 14 +++++++-
 25 files changed, 95 insertions(+), 49 deletions(-)

diff --git a/arch/sandbox/board/hostfile.c b/arch/sandbox/board/hostfile.c
index 9122ff9da2f1..f96586bc57d3 100644
--- a/arch/sandbox/board/hostfile.c
+++ b/arch/sandbox/board/hostfile.c
@@ -147,7 +147,7 @@ static int hf_probe(struct device *dev)
 	if (priv->fd < 0)
 		return is_featctrl ? 0 : priv->fd;
 
-	dev->info = hf_info;
+	devinfo_add(dev, hf_info);
 
 	is_blockdev = of_property_read_bool(np, "barebox,blockdev");
 
diff --git a/commands/devinfo.c b/commands/devinfo.c
index 6001b00cfac8..b1918787a3b6 100644
--- a/commands/devinfo.c
+++ b/commands/devinfo.c
@@ -82,8 +82,7 @@ static int do_devinfo(int argc, char *argv[])
 		if (dev->bus)
 			printf("Bus: %s\n", dev->bus->name);
 
-		if (dev->info)
-			dev->info(dev);
+		devinfo(dev);
 
 		if (dev->parent && (!dev->bus || dev->bus->dev != dev->parent))
 			printf("Parent: %s\n", dev_name(dev->parent));
diff --git a/drivers/aiodev/imx7d_adc.c b/drivers/aiodev/imx7d_adc.c
index 4d1f90203197..e9a98c5d2794 100644
--- a/drivers/aiodev/imx7d_adc.c
+++ b/drivers/aiodev/imx7d_adc.c
@@ -84,7 +84,6 @@ struct imx7d_adc {
 	void __iomem *regs;
 	struct clk *clk;
 	struct aiodevice aiodev;
-	void (*aiodev_info)(struct device *);
 
 	u32 vref_uv;
 	u32 pre_div_num;
@@ -350,9 +349,6 @@ static void imx7d_adc_devinfo(struct device *dev)
 {
 	struct imx7d_adc *info = dev->parent->priv;
 
-	if (info->aiodev_info)
-		info->aiodev_info(dev);
-
 	printf("Sample Rate: %u\n", imx7d_adc_get_sample_rate(info));
 }
 
@@ -403,8 +399,7 @@ static int imx7d_adc_probe(struct device *dev)
 	if (ret < 0)
 		return dev_err_probe(dev, ret, "Failed to register aiodev\n");
 
-	info->aiodev_info = aiodev->dev.info;
-	aiodev->dev.info = imx7d_adc_devinfo;
+	devinfo_add(&aiodev->dev, imx7d_adc_devinfo);
 
 	return 0;
 }
@@ -413,6 +408,8 @@ static void imx7d_adc_disable(struct device *dev)
 {
 	struct imx7d_adc *info = dev->priv;
 
+	devinfo_del(dev, imx7d_adc_devinfo);
+
 	imx7d_adc_power_down(info);
 
 	clk_disable(info->clk);
diff --git a/drivers/aiodev/vf610_adc.c b/drivers/aiodev/vf610_adc.c
index cb062e08460e..52c3decbcf8e 100644
--- a/drivers/aiodev/vf610_adc.c
+++ b/drivers/aiodev/vf610_adc.c
@@ -128,7 +128,6 @@ struct vf610_adc {
 	void __iomem *regs;
 	struct clk *clk;
 	struct aiodevice aiodev;
-	void (*aiodev_info)(struct device *);
 
 	u32 vref_uv;
 	u32 value;
@@ -515,9 +514,6 @@ static void vf610_adc_devinfo(struct device *dev)
 {
 	struct vf610_adc *info = dev->parent->priv;
 
-	if (info->aiodev_info)
-		info->aiodev_info(dev);
-
 	pr_info("Sample Rate: %u\n", info->sample_freq_avail[info->adc_feature.sample_rate]);
 }
 
@@ -585,8 +581,7 @@ static int vf610_adc_probe(struct device *dev)
 		goto error_adc_buffer_init;
 	}
 
-	info->aiodev_info = aiodev->dev.info;
-	aiodev->dev.info = vf610_adc_devinfo;
+	devinfo_add(&aiodev->dev, vf610_adc_devinfo);
 
 	return 0;
 
@@ -602,6 +597,7 @@ static void vf610_adc_remove(struct device *dev)
 {
 	struct vf610_adc *info = dev->priv;
 
+	devinfo_del(dev, vf610_adc_devinfo);
 	regulator_disable(info->vref);
 	clk_disable(info->clk);
 }
diff --git a/drivers/ata/ahci.c b/drivers/ata/ahci.c
index 92a2b3c30d30..819dc37b3e41 100644
--- a/drivers/ata/ahci.c
+++ b/drivers/ata/ahci.c
@@ -656,7 +656,7 @@ static int ahci_probe(struct device *dev)
 	ahci->dev = dev;
 	ahci->mmio_base = regs;
 	dev->priv = ahci;
-	dev->info = ahci_info;
+	devinfo_add(dev, ahci_info);
 
 	ret = ahci_add_host(ahci);
 	if (ret)
diff --git a/drivers/ata/disk_ata_drive.c b/drivers/ata/disk_ata_drive.c
index a49acc1641da..db119db29e76 100644
--- a/drivers/ata/disk_ata_drive.c
+++ b/drivers/ata/disk_ata_drive.c
@@ -323,7 +323,7 @@ int ata_port_register(struct ata_port *port)
 	}
 
 	port->class_dev.parent = port->dev;
-	port->class_dev.info   = ata_info;
+	devinfo_add(&port->class_dev, ata_info);
 	port->class_dev.detect = ata_detect;
 
 	ret = register_device(&port->class_dev);
diff --git a/drivers/ata/sata-imx.c b/drivers/ata/sata-imx.c
index 5bcbfca5b539..3f49f70dcc3a 100644
--- a/drivers/ata/sata-imx.c
+++ b/drivers/ata/sata-imx.c
@@ -113,7 +113,7 @@ static int imx_sata_probe(struct device *dev)
 
 	imx_ahci->ahci.dev = dev;
 	dev->priv = &imx_ahci->ahci;
-	dev->info = ahci_info;
+	devinfo_add(dev, ahci_info);
 
 	ret = ahci_add_host(&imx_ahci->ahci);
 	if (ret)
diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index fbc5cbebe0ab..603fc9d9cb0a 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -824,3 +824,53 @@ struct device *device_find_child(struct device *parent, void *data,
 	return NULL;
 }
 EXPORT_SYMBOL_GPL(device_find_child);
+
+#ifdef CONFIG_CMD_DEVINFO
+struct device_info_cb {
+	void  (*info) (struct device *);
+	struct list_head list;
+};
+
+static void devinfo_init(struct device *dev)
+{
+	/* We initialize on demand, because devinfo_add should be
+	 * callable even before device registration
+	 */
+	if (!dev->info_list.prev && !dev->info_list.next)
+		INIT_LIST_HEAD(&dev->info_list);
+}
+
+void devinfo_add(struct device *dev, void (*info)(struct device *))
+{
+	struct device_info_cb *cb = xmalloc(sizeof(*cb));
+
+	devinfo_init(dev);
+
+	cb->info = info;
+	list_add_tail(&cb->list, &dev->info_list);
+}
+
+void devinfo_del(struct device *dev, void (*info)(struct device *))
+{
+	struct device_info_cb *cb, *tmp;
+
+	devinfo_init(dev);
+
+	list_for_each_entry_safe(cb, tmp, &dev->info_list, list) {
+		if (cb->info == info) {
+			list_del(&cb->list);
+			free(cb);
+		}
+	}
+}
+
+void devinfo(struct device *dev)
+{
+	struct device_info_cb *cb;
+
+	devinfo_init(dev);
+
+	list_for_each_entry(cb, &dev->info_list, list)
+		cb->info(dev);
+}
+#endif
diff --git a/drivers/block/efi-block-io.c b/drivers/block/efi-block-io.c
index 876b46c2d7a7..2f439d89419e 100644
--- a/drivers/block/efi-block-io.c
+++ b/drivers/block/efi-block-io.c
@@ -24,7 +24,6 @@ struct efi_bio_priv {
 	struct device *dev;
 	struct block_device blk;
 	u32 media_id;
-	void (*efi_info)(struct device *);
 };
 
 static int efi_bio_read(struct block_device *blk, void *buffer, sector_t block,
@@ -93,7 +92,7 @@ static void efi_bio_print_info(struct device *dev)
 	printf("  last_block: 0x%016llx\n", media->last_block);
 
 	if (revision < EFI_BLOCK_IO_PROTOCOL_REVISION2)
-		goto out;
+		return;
 
 	printf("  lowest_aligned_lba: 0x%08llx\n",
 			media->lowest_aligned_lba);
@@ -101,14 +100,10 @@ static void efi_bio_print_info(struct device *dev)
 			media->logical_blocks_per_physical_block);
 
 	if (revision < EFI_BLOCK_IO_PROTOCOL_REVISION3)
-		goto out;
+		return;
 
 	printf("  optimal_transfer_length_granularity: 0x%08x\n",
 			media->optimal_transfer_length_granularity);
-
-out:
-	if (priv->efi_info)
-		priv->efi_info(dev);
 }
 
 static bool is_bio_usbdev(struct efi_device *efidev)
@@ -132,8 +127,7 @@ static int efi_bio_probe(struct efi_device *efidev)
 		return -ENODEV;
 
 	dev->priv = priv;
-	priv->efi_info = dev->info;
-	dev->info = efi_bio_print_info;
+	devinfo_add(dev, efi_bio_print_info);
 
 	media = priv->protocol->media;
 	if (__is_defined(DEBUG))
diff --git a/drivers/bus/acpi.c b/drivers/bus/acpi.c
index 61178db0c8db..81e37cace710 100644
--- a/drivers/bus/acpi.c
+++ b/drivers/bus/acpi.c
@@ -140,7 +140,7 @@ static struct device *acpi_add_device(struct bus_type *bus,
 	dev->bus = bus;
 	dev->parent = bus->dev;
 	dev->id = DEVICE_ID_DYNAMIC;
-	dev->info = acpi_devinfo;
+	devinfo_add(dev, acpi_devinfo);
 
 	dev_set_name(dev, "acpi-%.4s", signature);
 
diff --git a/drivers/efi/efi-device.c b/drivers/efi/efi-device.c
index 33c82c81dd1d..a113dfb45f3b 100644
--- a/drivers/efi/efi-device.c
+++ b/drivers/efi/efi-device.c
@@ -148,7 +148,7 @@ static struct efi_device *efi_add_device(efi_handle_t handle, efi_guid_t **guids
 	efidev->handle = handle;
 	efidev->dev.bus = &efi_bus;
 	efidev->dev.id = DEVICE_ID_SINGLE;
-	efidev->dev.info = efi_devinfo;
+	devinfo_add(&efidev->dev, efi_devinfo);
 	efidev->devpath = devpath;
 
 	dev_set_name(&efidev->dev, "handle-%p", handle);
@@ -429,7 +429,7 @@ static int efi_init_devices(void)
 	dev_add_param_bool_fixed(efi_bus.dev, "secure_mode",
 				 secure_boot & setup_mode);
 
-	efi_bus.dev->info = efi_businfo;
+	devinfo_add(efi_bus.dev, efi_businfo);
 
 	efi_register_devices();
 
diff --git a/drivers/hw_random/optee-rng.c b/drivers/hw_random/optee-rng.c
index d1d2904821cf..cd98a6907e9c 100644
--- a/drivers/hw_random/optee-rng.c
+++ b/drivers/hw_random/optee-rng.c
@@ -64,7 +64,6 @@ struct optee_rng_private {
 	struct tee_shm *entropy_shm_pool;
 	struct hwrng optee_rng;
 	u16 quality;
-	void (*bus_devinfo)(struct device *);
 };
 
 #define to_optee_rng_private(r) \
@@ -198,9 +197,6 @@ static void optee_rng_devinfo(struct device *dev)
 {
 	printf("Data rate: %u\n", pvt_data.data_rate);
 	printf("Quality: %u\n", pvt_data.quality);
-
-	if (pvt_data.bus_devinfo)
-		pvt_data.bus_devinfo(dev);
 }
 
 static int optee_ctx_match(struct tee_ioctl_version_data *ver, const void *data)
@@ -250,8 +246,7 @@ static int optee_rng_probe(struct device *dev)
 	}
 
 	pvt_data.dev = dev;
-	pvt_data.bus_devinfo = dev->info;
-	dev->info = optee_rng_devinfo;
+	devinfo_add(dev, optee_rng_devinfo);
 
 	return 0;
 
@@ -265,6 +260,7 @@ static int optee_rng_probe(struct device *dev)
 
 static void optee_rng_remove(struct device *dev)
 {
+	devinfo_del(dev, optee_rng_devinfo);
 	hwrng_unregister(&pvt_data.optee_rng);
 
 	tee_shm_free(pvt_data.entropy_shm_pool);
diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
index 0d11a61593d8..7df645ba1c3f 100644
--- a/drivers/i2c/i2c.c
+++ b/drivers/i2c/i2c.c
@@ -410,7 +410,7 @@ static struct i2c_client *i2c_new_device(struct i2c_adapter *adapter,
 		free(client);
 		return NULL;
 	}
-	client->dev.info = i2c_info;
+	devinfo_add(&client->dev, i2c_info);
 
 	if (chip->of_node)
 		chip->of_node->dev = &client->dev;
diff --git a/drivers/mci/atmel_mci.c b/drivers/mci/atmel_mci.c
index 2fa241168e79..18d623f20823 100644
--- a/drivers/mci/atmel_mci.c
+++ b/drivers/mci/atmel_mci.c
@@ -176,7 +176,7 @@ static int atmci_probe(struct device *hw_dev)
 		host->sdc_reg = ATMCI_SDCSEL_SLOT_A;
 
 	if (IS_ENABLED(CONFIG_MCI_INFO))
-		hw_dev->info = atmci_info;
+		devinfo_add(hw_dev, atmci_info);
 
 	mci_register(&host->mci);
 
diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index cc3c6fba3653..7ec2643b8d7f 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -2944,7 +2944,7 @@ int mci_register(struct mci_host *host)
 			   &mci->probe, mci);
 
 	if (IS_ENABLED(CONFIG_MCI_INFO))
-		mci->dev.info = mci_info;
+		devinfo_add(&mci->dev, mci_info);
 
 	/* if enabled, probe the attached card immediately */
 	if (IS_ENABLED(CONFIG_MCI_STARTUP))
diff --git a/drivers/mci/mxs.c b/drivers/mci/mxs.c
index 36224c682a19..63a4813ff45d 100644
--- a/drivers/mci/mxs.c
+++ b/drivers/mci/mxs.c
@@ -586,7 +586,7 @@ static int mxs_mci_probe(struct device *hw_dev)
 	if (IS_ENABLED(CONFIG_MCI_INFO)) {
 		mxs_mci->f_min = host->f_min;
 		mxs_mci->f_max = host->f_max;
-		hw_dev->info = mxs_mci_info;
+		devinfo_add(hw_dev, mxs_mci_info);
 	}
 
 	return mci_register(host);
diff --git a/drivers/misc/jtag.c b/drivers/misc/jtag.c
index d7cd2dabf7bc..cca0aba2d6b5 100644
--- a/drivers/misc/jtag.c
+++ b/drivers/misc/jtag.c
@@ -329,7 +329,7 @@ static int jtag_probe(struct device *pdev)
 	info->devices = i;
 	info->pdata = pdata;
 	pdev->priv = info;
-	pdev->info = jtag_info;
+	devinfo_add(pdev, jtag_info);
 
 	info->cdev.name = JTAG_NAME;
 	info->cdev.dev = pdev;
@@ -352,6 +352,7 @@ static void jtag_remove(struct device *pdev)
 {
 	struct jtag_info *info = (struct jtag_info *) pdev->priv;
 
+	devinfo_del(pdev, jtag_info);
 	devfs_remove(&info->cdev);
 	pdev->priv = NULL;
 	free(info);
diff --git a/drivers/misc/ubootvar.c b/drivers/misc/ubootvar.c
index 127fdac77971..8c387843bab1 100644
--- a/drivers/misc/ubootvar.c
+++ b/drivers/misc/ubootvar.c
@@ -329,7 +329,7 @@ static int ubootenv_probe(struct device *dev)
 		free(blob[!current]);
 	}
 
-	dev->info = ubootenv_info;
+	devinfo_add(dev, ubootenv_info);
 
 	return 0;
 out:
diff --git a/drivers/mtd/nor/cfi_flash.c b/drivers/mtd/nor/cfi_flash.c
index ea2373a01827..b68c36841031 100644
--- a/drivers/mtd/nor/cfi_flash.c
+++ b/drivers/mtd/nor/cfi_flash.c
@@ -1019,7 +1019,7 @@ static int cfi_probe(struct device *dev)
 		priv->mtds[i] = &priv->infos[i].mtd;
 	}
 
-	dev->info = cfi_info;
+	devinfo_add(dev, cfi_info);
 
 	if (priv->num_devs > 1 && IS_ENABLED(CONFIG_MTD_CONCAT)) {
 		mtd = mtd_concat_create(priv->mtds, priv->num_devs, "nor");
diff --git a/drivers/net/cs8900.c b/drivers/net/cs8900.c
index 89eb0a3ee5fb..7eff8395dbd7 100644
--- a/drivers/net/cs8900.c
+++ b/drivers/net/cs8900.c
@@ -456,7 +456,7 @@ static int cs8900_probe(struct device *dev)
 	edev->set_ethaddr = cs8900_set_ethaddr;
 	edev->parent = dev;
 
-	dev->info = cs8900_info;
+	devinfo_add(dev, cs8900_info);
 
 	eth_register(edev);
 	return 0;
diff --git a/drivers/soc/sifive/sifive_l2_cache.c b/drivers/soc/sifive/sifive_l2_cache.c
index 239e65292ae2..319daa2830ca 100644
--- a/drivers/soc/sifive/sifive_l2_cache.c
+++ b/drivers/soc/sifive/sifive_l2_cache.c
@@ -119,7 +119,7 @@ static int sifive_l2_probe(struct device *dev)
 
 	sifive_l2_enable_ways();
 
-	dev->info = sifive_l2_config_read;
+	devinfo_add(dev, sifive_l2_config_read);
 
 	return 0;
 }
diff --git a/drivers/tee/tee_core.c b/drivers/tee/tee_core.c
index e9b99c990dae..57a1d95d90d0 100644
--- a/drivers/tee/tee_core.c
+++ b/drivers/tee/tee_core.c
@@ -526,7 +526,7 @@ struct tee_device *tee_device_alloc(const struct tee_desc *teedesc,
 	teedev->dev.parent = dev;
 	teedev->dev.type_data = driver_data;
 	teedev->dev.priv = teedev;
-	teedev->dev.info = tee_devinfo;
+	devinfo_add(&teedev->dev, tee_devinfo);
 
 	rc = dev_set_name(&teedev->dev, "tee%s",
 			  teedesc->flags & TEE_DESC_PRIVILEGED ? "priv" : "");
@@ -557,6 +557,7 @@ EXPORT_SYMBOL_GPL(tee_device_alloc);
 
 void tee_device_release(struct tee_device *teedev)
 {
+	devinfo_del(&teedev->dev, tee_devinfo);
 	kfree(teedev);
 }
 
diff --git a/drivers/video/fb.c b/drivers/video/fb.c
index 65afaa57d948..f2f68a00af11 100644
--- a/drivers/video/fb.c
+++ b/drivers/video/fb.c
@@ -335,7 +335,7 @@ int register_framebuffer(struct fb_info *info)
 	dev->num_resources = 1;
 
 	dev->priv = info;
-	dev->info = fb_info;
+	devinfo_add(dev, fb_info);
 
 	ret = register_device(&info->dev);
 	if (ret)
diff --git a/fs/pstore/ram.c b/fs/pstore/ram.c
index a2b11a02eeff..e48317e09d5b 100644
--- a/fs/pstore/ram.c
+++ b/fs/pstore/ram.c
@@ -643,7 +643,7 @@ static int ramoops_probe(struct device *dev)
 
 	device_add_resource(dev, "mem", pdata->mem_address, pdata->mem_size,
 			    IORESOURCE_MEM);
-	dev->info = ramoops_devinfo;
+	devinfo_add(dev, ramoops_devinfo);
 
 	return 0;
 
diff --git a/include/device.h b/include/device.h
index 5d3923786167..d3936d3b3ad6 100644
--- a/include/device.h
+++ b/include/device.h
@@ -92,7 +92,9 @@ struct device {
 
 	unsigned long dma_offset;
 
-	void    (*info) (struct device *);
+#ifdef CONFIG_CMD_DEVINFO
+	struct list_head info_list;
+#endif
 	/*
 	 * For devices which take longer to probe this is called
 	 * when the driver should actually detect client devices
@@ -163,4 +165,14 @@ static inline bool dev_is_dma_coherent(struct device *dev)
 	return IS_ENABLED(CONFIG_ARCH_DMA_DEFAULT_COHERENT);
 }
 
+#ifdef CONFIG_CMD_DEVINFO
+void devinfo_add(struct device *dev, void (*info)(struct device *));
+void devinfo_del(struct device *dev, void (*info)(struct device *));
+void devinfo(struct device *dev);
+#else
+static inline void devinfo_add(struct device *dev, void (*info)(struct device *)) {}
+static inline void devinfo_del(struct device *dev, void (*info)(struct device *)) {}
+static inline void devinfo(struct device *dev) {}
+#endif
+
 #endif
-- 
2.39.5



