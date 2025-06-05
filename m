Delivery-date: Thu, 05 Jun 2025 13:37:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN8uK-003zlD-1O
	for lore@lore.pengutronix.de;
	Thu, 05 Jun 2025 13:37:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN8uG-0000bp-Kp
	for lore@pengutronix.de; Thu, 05 Jun 2025 13:37:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=q15sCAnMZDY/23Y0Rqn9vzH2m/1HFU20xiv3VVWHT5Y=; b=hrbrsPdZ5gEZWWPvNREIuSpZXt
	AVKe48cawU9CFR1+0xAzJuG5nUoaTc0sEvVKp10xaGotS8im/FnJ8dvYWMi7tWdDSJyeNHe0atD44
	dOQFZ1iwFGKV9dQuj3jCScnv3WGRCDqvNqgV8VstFmMjDiX4aKnltBlVOSe2prS6Lhq73gAwDK8OP
	UjbfXYueQ+oF/Z3ZHtNMBF3n+7J1zV+G446Nmu5RW2LkjjA9/jqcUO7n1zSYze5M6DzR2ye33DuTL
	WpqT0JT86zkp79cTFjhXD34yACKRQ8GfUWM0rkykHgavj1HhinpdqrtIB3fXTykaUdpqISSfwbNc5
	Oeny/kVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN8tV-0000000FNFd-0RwB;
	Thu, 05 Jun 2025 11:36:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN8j2-0000000FMDj-0OL0
	for barebox@lists.infradead.org;
	Thu, 05 Jun 2025 11:25:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uN8j0-0001FM-S1; Thu, 05 Jun 2025 13:25:34 +0200
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uN8j0-001wtv-27;
	Thu, 05 Jun 2025 13:25:34 +0200
Received: from localhost ([::1] helo=dude06.red.stw.pengutronix.de)
	by dude06.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uN8j1-008F6s-0i;
	Thu, 05 Jun 2025 13:25:34 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  5 Jun 2025 13:25:32 +0200
Message-Id: <20250605112533.1960069-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250605112533.1960069-1-a.fatoum@pengutronix.de>
References: <20250605112533.1960069-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_042536_456440_EB24202B 
X-CRM114-Status: GOOD (  14.74  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] treewide: use only string literals as format string
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

With the addition of the __printf attribute to dev_set_name, we get a
few warnings now about use of variables instead of string literals.

This can be problematic if said variables were to contain format
specifiers, which would lead to memory safety issues.

This all these trivial cases by adding a "%s" as format string.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/console.c                      | 2 +-
 common/fastboot.c                     | 2 +-
 common/state/state.c                  | 2 +-
 drivers/aiodev/core.c                 | 2 +-
 drivers/amba/bus.c                    | 2 +-
 drivers/ata/disk_ata_drive.c          | 2 +-
 drivers/base/bus.c                    | 2 +-
 drivers/base/class.c                  | 2 +-
 drivers/base/resource.c               | 2 +-
 drivers/firmware/qemu_fw_cfg.c        | 2 +-
 drivers/i2c/i2c.c                     | 2 +-
 drivers/mci/mci-core.c                | 2 +-
 drivers/mtd/core.c                    | 2 +-
 drivers/mtd/spi-nor/cadence-quadspi.c | 2 +-
 drivers/mtd/spi-nor/dw-ospi-nor.c     | 2 +-
 drivers/nvmem/core.c                  | 2 +-
 drivers/pmdomain/imx/gpcv2.c          | 2 +-
 drivers/power/reset/reboot-mode.c     | 2 +-
 drivers/pwm/core.c                    | 2 +-
 drivers/remoteproc/remoteproc_core.c  | 2 +-
 drivers/spi/spi.c                     | 2 +-
 drivers/usb/typec/class.c             | 2 +-
 drivers/video/fb.c                    | 2 +-
 fs/fs.c                               | 2 +-
 24 files changed, 24 insertions(+), 24 deletions(-)

diff --git a/common/console.c b/common/console.c
index 20c58f35b1ea..f94dbe3243ce 100644
--- a/common/console.c
+++ b/common/console.c
@@ -338,7 +338,7 @@ int console_register(struct console_device *newcdev)
 
 	if (newcdev->devname) {
 		dev->id = newcdev->devid;
-		dev_set_name(dev, newcdev->devname);
+		dev_set_name(dev, "%s", newcdev->devname);
 	} else {
 		dev->id = DEVICE_ID_DYNAMIC;
 		dev_set_name(dev, "cs");
diff --git a/common/fastboot.c b/common/fastboot.c
index 7227149dfb50..886f22f61128 100644
--- a/common/fastboot.c
+++ b/common/fastboot.c
@@ -893,7 +893,7 @@ static void cb_oem_getenv(struct fastboot *fb, const char *cmd)
 
 	value = getenv(cmd);
 
-	fastboot_tx_print(fb, FASTBOOT_MSG_INFO, value ? value : "");
+	fastboot_tx_print(fb, FASTBOOT_MSG_INFO, "%s", value ?: "");
 	fastboot_tx_print(fb, FASTBOOT_MSG_OKAY, "");
 }
 
diff --git a/common/state/state.c b/common/state/state.c
index 219309d715a1..ac6cd6e57276 100644
--- a/common/state/state.c
+++ b/common/state/state.c
@@ -180,7 +180,7 @@ static struct state *state_new(const char *name)
 	int ret;
 
 	state = xzalloc(sizeof(*state));
-	dev_set_name(&state->dev, name);
+	dev_set_name(&state->dev, "%s", name);
 	state->name = state->dev.name;
 	state->dev.id = DEVICE_ID_SINGLE;
 	INIT_LIST_HEAD(&state->variables);
diff --git a/drivers/aiodev/core.c b/drivers/aiodev/core.c
index 5bdc4d83d4bf..a846a9c18733 100644
--- a/drivers/aiodev/core.c
+++ b/drivers/aiodev/core.c
@@ -114,7 +114,7 @@ int aiodevice_register(struct aiodevice *aiodev)
 		aiodev->dev.id = DEVICE_ID_DYNAMIC;
 	}
 
-	dev_set_name(&aiodev->dev, aiodev->name);
+	dev_set_name(&aiodev->dev, "%s", aiodev->name);
 
 	aiodev->dev.parent = aiodev->hwdev;
 
diff --git a/drivers/amba/bus.c b/drivers/amba/bus.c
index 8d6525cca967..e4e4659de6ee 100644
--- a/drivers/amba/bus.c
+++ b/drivers/amba/bus.c
@@ -187,7 +187,7 @@ struct amba_device *amba_device_alloc(const char *name, int id, resource_size_t
 
 	dev = xzalloc(sizeof(*dev));
 
-	dev_set_name(&dev->dev, name);
+	dev_set_name(&dev->dev, "%s", name);
 	dev->dev.id = id;
 	dev->res.start = base;
 	dev->res.end = base + size - 1;
diff --git a/drivers/ata/disk_ata_drive.c b/drivers/ata/disk_ata_drive.c
index db119db29e76..c5bf17d863be 100644
--- a/drivers/ata/disk_ata_drive.c
+++ b/drivers/ata/disk_ata_drive.c
@@ -315,7 +315,7 @@ int ata_port_register(struct ata_port *port)
 	int ret;
 
 	if (port->devname) {
-		dev_set_name(&port->class_dev, port->devname);
+		dev_set_name(&port->class_dev, "%s", port->devname);
 		port->class_dev.id = DEVICE_ID_SINGLE;
 	} else {
 		dev_set_name(&port->class_dev, "ata");
diff --git a/drivers/base/bus.c b/drivers/base/bus.c
index 58fcd2e032da..518455e53202 100644
--- a/drivers/base/bus.c
+++ b/drivers/base/bus.c
@@ -31,7 +31,7 @@ int bus_register(struct bus_type *bus)
 		return -EEXIST;
 
 	bus->dev = xzalloc(sizeof(*bus->dev));
-	dev_set_name(bus->dev, bus->name);
+	dev_set_name(bus->dev, "%s", bus->name);
 	bus->dev->id = DEVICE_ID_SINGLE;
 
 	ret = register_device(bus->dev);
diff --git a/drivers/base/class.c b/drivers/base/class.c
index b7cc58ce0750..693260fe22dc 100644
--- a/drivers/base/class.c
+++ b/drivers/base/class.c
@@ -20,7 +20,7 @@ int class_add_device(struct class *class, struct device *dev)
 static int __class_register_device(struct device *class_dev, const char *name, int id)
 {
 	class_dev->id = id;
-	dev_set_name(class_dev, name);
+	dev_set_name(class_dev, "%s", name);
 
 	return register_device(class_dev);
 }
diff --git a/drivers/base/resource.c b/drivers/base/resource.c
index 0d6f200a9d51..cf163844b86e 100644
--- a/drivers/base/resource.c
+++ b/drivers/base/resource.c
@@ -14,7 +14,7 @@ struct device *device_alloc(const char *devname, int id)
 	struct device *dev;
 
 	dev = xzalloc(sizeof(*dev));
-	dev_set_name(dev, devname);
+	dev_set_name(dev, "%s", devname);
 	dev->id = id;
 
 	return dev;
diff --git a/drivers/firmware/qemu_fw_cfg.c b/drivers/firmware/qemu_fw_cfg.c
index 8928cc5bf2aa..0fdd4761643e 100644
--- a/drivers/firmware/qemu_fw_cfg.c
+++ b/drivers/firmware/qemu_fw_cfg.c
@@ -270,7 +270,7 @@ static int fw_cfg_probe(struct device *dev)
 	fw_cfg->cdev.dev = dev;
 	fw_cfg->cdev.filetype = filetype_qemu_fw_cfg;
 
-	dev_set_name(dev, fw_cfg->cdev.name);
+	dev_set_name(dev, "%s", fw_cfg->cdev.name);
 
 	ret = devfs_create(&fw_cfg->cdev);
 	if (ret) {
diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
index 49b87bb47c00..bd1b2ca302e0 100644
--- a/drivers/i2c/i2c.c
+++ b/drivers/i2c/i2c.c
@@ -394,7 +394,7 @@ static struct i2c_client *i2c_new_device(struct i2c_adapter *adapter,
 	int status;
 
 	client = xzalloc(sizeof *client);
-	dev_set_name(&client->dev, chip->type);
+	dev_set_name(&client->dev, "%s", chip->type);
 	client->dev.type_data = client;
 	client->dev.platform_data = chip->platform_data;
 	client->dev.id = DEVICE_ID_DYNAMIC;
diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 23cde58c0c5b..5cfa1ab4506d 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -3056,7 +3056,7 @@ int mci_register(struct mci_host *host)
 	mci->host = host;
 
 	if (host->devname) {
-		dev_set_name(&mci->dev, host->devname);
+		dev_set_name(&mci->dev, "%s", host->devname);
 		mci->dev.id = DEVICE_ID_SINGLE;
 	} else {
 		dev_set_name(&mci->dev, "mci");
diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index c75c52dcb3a5..2ca16c614dee 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -671,7 +671,7 @@ int add_mtd_device(struct mtd_info *mtd, const char *devname, int device_id)
 
 	if (!devname)
 		devname = "mtd";
-	dev_set_name(&mtd->dev, devname);
+	dev_set_name(&mtd->dev, "%s", devname);
 	mtd->dev.id = device_id;
 
 	if (IS_ENABLED(CONFIG_MTD_UBI))
diff --git a/drivers/mtd/spi-nor/cadence-quadspi.c b/drivers/mtd/spi-nor/cadence-quadspi.c
index 763858567b9c..56af62dd1733 100644
--- a/drivers/mtd/spi-nor/cadence-quadspi.c
+++ b/drivers/mtd/spi-nor/cadence-quadspi.c
@@ -1097,7 +1097,7 @@ static int cqspi_setup_flash(struct device *dev,
 	if (np) {
 		nor->dev = xzalloc(sizeof(*nor->dev));
 
-		dev_set_name(nor->dev, np->name);
+		dev_set_name(nor->dev, "%s", np->name);
 
 		nor->dev->of_node = np;
 		nor->dev->id = DEVICE_ID_SINGLE;
diff --git a/drivers/mtd/spi-nor/dw-ospi-nor.c b/drivers/mtd/spi-nor/dw-ospi-nor.c
index 897f4f49a9f9..243e94dbe822 100644
--- a/drivers/mtd/spi-nor/dw-ospi-nor.c
+++ b/drivers/mtd/spi-nor/dw-ospi-nor.c
@@ -764,7 +764,7 @@ static int dw_spi_setup_flash(struct device *dev,
 	if (!nor->dev)
 		return -ENOMEM;
 
-	dev_set_name(nor->dev, np->name);
+	dev_set_name(nor->dev, "%s", np->name);
 
 	nor->dev->of_node = np;
 	nor->dev->id = DEVICE_ID_SINGLE;
diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
index fd3c39fd8e43..7acd26474b50 100644
--- a/drivers/nvmem/core.c
+++ b/drivers/nvmem/core.c
@@ -215,7 +215,7 @@ struct nvmem_device *nvmem_register(const struct nvmem_config *config)
 	if (config->read_only || !config->reg_write || of_property_read_bool(np, "read-only"))
 		nvmem->read_only = true;
 
-	dev_set_name(&nvmem->dev, config->name);
+	dev_set_name(&nvmem->dev, "%s", config->name);
 	nvmem->dev.id = DEVICE_ID_DYNAMIC;
 
 	dev_dbg(nvmem->dev.parent, "Registering nvmem device %s\n", config->name);
diff --git a/drivers/pmdomain/imx/gpcv2.c b/drivers/pmdomain/imx/gpcv2.c
index fc2fbdaf140b..662162d5fd0a 100644
--- a/drivers/pmdomain/imx/gpcv2.c
+++ b/drivers/pmdomain/imx/gpcv2.c
@@ -1298,7 +1298,7 @@ static int imx_gpcv2_probe(struct device *dev)
 		pd_dev->id = domain_index;
 		pd_dev->parent = dev;
 		pd_dev->priv = domain;
-		dev_set_name(pd_dev, imx_pgc_domain_id[0].name);
+		dev_set_name(pd_dev, "%s", imx_pgc_domain_id[0].name);
 
 		ret = platform_device_register(pd_dev);
 		if (ret)
diff --git a/drivers/power/reset/reboot-mode.c b/drivers/power/reset/reboot-mode.c
index b52e7ec0dc27..83b1567f3631 100644
--- a/drivers/power/reset/reboot-mode.c
+++ b/drivers/power/reset/reboot-mode.c
@@ -206,7 +206,7 @@ int reboot_mode_register(struct reboot_mode_driver *reboot,
 
 	alias = of_alias_get(np);
 	if (alias)
-		dev_set_name(reboot->dev, alias);
+		dev_set_name(reboot->dev, "%s", alias);
 
 	return 0;
 
diff --git a/drivers/pwm/core.c b/drivers/pwm/core.c
index 313f3eef6504..538b58c86c1c 100644
--- a/drivers/pwm/core.c
+++ b/drivers/pwm/core.c
@@ -106,7 +106,7 @@ int pwmchip_add(struct pwm_chip *chip)
 	pwm->chip = chip;
 	pwm->hwdev = chip->dev;
 
-	dev_set_name(&pwm->dev, chip->devname);
+	dev_set_name(&pwm->dev, "%s", chip->devname);
 	pwm->dev.id = DEVICE_ID_SINGLE;
 	pwm->dev.parent = chip->dev;
 
diff --git a/drivers/remoteproc/remoteproc_core.c b/drivers/remoteproc/remoteproc_core.c
index 17159316ee31..9d14a367de84 100644
--- a/drivers/remoteproc/remoteproc_core.c
+++ b/drivers/remoteproc/remoteproc_core.c
@@ -111,7 +111,7 @@ static int rproc_register_dev(struct rproc *rproc, const char *alias)
 {
 	if (alias) {
 		rproc->dev.id = DEVICE_ID_SINGLE;
-		dev_set_name(&rproc->dev, alias);
+		dev_set_name(&rproc->dev, "%s", alias);
 	} else {
 		rproc->dev.id = DEVICE_ID_DYNAMIC;
 		dev_set_name(&rproc->dev, "remoteproc");
diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index c70b22fc0c1b..f8a01dd08355 100644
--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -92,7 +92,7 @@ struct spi_device *spi_new_device(struct spi_controller *ctrl,
 	proxy->bits_per_word = chip->bits_per_word ? chip->bits_per_word : 8;
 	proxy->dev.platform_data = chip->platform_data;
 	proxy->dev.bus = &spi_bus;
-	dev_set_name(&proxy->dev, chip->name);
+	dev_set_name(&proxy->dev, "%s", chip->name);
 	/* allocate a free id for this chip */
 	proxy->dev.id = DEVICE_ID_DYNAMIC;
 	proxy->dev.type_data = proxy;
diff --git a/drivers/usb/typec/class.c b/drivers/usb/typec/class.c
index 9fa007f25e0a..e03eaccbb98f 100644
--- a/drivers/usb/typec/class.c
+++ b/drivers/usb/typec/class.c
@@ -96,7 +96,7 @@ EXPORT_SYMBOL_GPL(typec_get_drvdata);
 static int typec_register_port_dev(struct typec_port *port, const char *name, int id)
 {
 	port->dev.id = id;
-	dev_set_name(&port->dev, name);
+	dev_set_name(&port->dev, "%s", name);
 
 	return register_device(&port->dev);
 }
diff --git a/drivers/video/fb.c b/drivers/video/fb.c
index 64ca68e14513..2ff5bbcfe290 100644
--- a/drivers/video/fb.c
+++ b/drivers/video/fb.c
@@ -323,7 +323,7 @@ int register_framebuffer(struct fb_info *info)
 
 		info->cdev.name = basprintf("%s_%d", dev_name(&info->base_plane->dev), ovl_id);
 		dev->id = DEVICE_ID_SINGLE;
-		dev_set_name(dev, info->cdev.name);
+		dev_set_name(dev, "%s", info->cdev.name);
 	} else {
 		id = get_free_deviceid("fb");
 		dev->id = id;
diff --git a/fs/fs.c b/fs/fs.c
index d401268c1e34..0f821451103f 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -3111,7 +3111,7 @@ int mount(const char *device, const char *fsname, const char *pathname,
 
 	fsdev = xzalloc(sizeof(struct fs_device));
 	fsdev->backingstore = xstrdup(device);
-	dev_set_name(&fsdev->dev, fsname);
+	dev_set_name(&fsdev->dev, "%s", fsname);
 	fsdev->dev.id = get_free_deviceid(fsdev->dev.name);
 	fsdev->dev.bus = &fs_bus;
 	fsdev->options = xstrdup(fsoptions);
-- 
2.39.5



