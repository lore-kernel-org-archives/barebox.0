Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gCUpV-0004bh-VP
 for barebox@lists.infradead.org; Tue, 16 Oct 2018 19:17:32 +0000
Received: by mail-pg1-x541.google.com with SMTP id 32-v6so125031pgu.2
 for <barebox@lists.infradead.org>; Tue, 16 Oct 2018 12:16:23 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 16 Oct 2018 12:15:40 -0700
Message-Id: <20181016191552.16690-11-andrew.smirnov@gmail.com>
In-Reply-To: <20181016191552.16690-1-andrew.smirnov@gmail.com>
References: <20181016191552.16690-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v4 10/22] drivers: Introduce dev_set_name()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Introduce dev_set_name() in order to hide implementation details of
setting device's name so it'd be easier to change it.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/iim.c                       |  2 +-
 .../arm/mach-imx/include/mach/devices-imx51.h |  2 +-
 .../arm/mach-imx/include/mach/devices-imx53.h |  2 +-
 arch/arm/mach-mxs/include/mach/devices.h      |  2 +-
 arch/arm/mach-mxs/ocotp.c                     |  2 +-
 arch/sandbox/board/console.c                  |  2 +-
 common/console.c                              |  4 ++--
 common/state/state.c                          |  2 +-
 drivers/aiodev/core.c                         |  2 +-
 drivers/amba/bus.c                            |  2 +-
 drivers/ata/disk_ata_drive.c                  |  4 ++--
 drivers/base/bus.c                            |  2 +-
 drivers/base/driver.c                         | 21 +++++++++++++++++++
 drivers/base/resource.c                       |  2 +-
 drivers/efi/efi-device.c                      |  2 +-
 drivers/firmware/socfpga.c                    |  2 +-
 drivers/i2c/i2c.c                             |  4 ++--
 drivers/mci/mci-core.c                        |  4 ++--
 drivers/mtd/core.c                            |  2 +-
 drivers/mtd/spi-nor/cadence-quadspi.c         |  2 +-
 drivers/mtd/ubi/build.c                       |  2 +-
 drivers/mtd/ubi/vmt.c                         |  4 ++--
 drivers/net/cpsw.c                            |  2 +-
 drivers/net/e1000/eeprom.c                    |  2 +-
 drivers/net/orion-gbe.c                       |  2 +-
 drivers/net/phy/mdio_bus.c                    |  2 +-
 drivers/net/phy/phy.c                         |  8 +++----
 drivers/nvmem/core.c                          |  2 +-
 drivers/nvmem/ocotp.c                         |  2 +-
 drivers/of/platform.c                         | 12 +++++------
 drivers/pci/bus.c                             |  3 +--
 drivers/phy/phy-core.c                        |  2 +-
 drivers/pwm/core.c                            |  2 +-
 drivers/rtc/class.c                           |  2 +-
 drivers/spi/spi.c                             |  2 +-
 drivers/usb/core/usb.c                        |  5 +++--
 drivers/usb/gadget/udc-core.c                 |  4 ++--
 drivers/usb/musb/musb_dsps.c                  |  2 +-
 drivers/video/backlight.c                     |  2 +-
 drivers/video/fb.c                            |  2 +-
 drivers/w1/w1.c                               |  4 ++--
 drivers/watchdog/wd_core.c                    |  2 +-
 fs/fs.c                                       |  2 +-
 include/driver.h                              | 11 +++++++---
 net/eth.c                                     |  2 +-
 45 files changed, 89 insertions(+), 63 deletions(-)

diff --git a/arch/arm/mach-imx/iim.c b/arch/arm/mach-imx/iim.c
index d4794cbac..207e1879c 100644
--- a/arch/arm/mach-imx/iim.c
+++ b/arch/arm/mach-imx/iim.c
@@ -474,7 +474,7 @@ static int imx_iim_probe(struct device_d *dev)
 
 	imx_iim = iim;
 
-	strcpy(iim->dev.name, "iim");
+	dev_set_name(&iim->dev, "iim");
 	iim->dev.parent = dev;
 	iim->dev.id = DEVICE_ID_SINGLE;
 	ret = register_device(&iim->dev);
diff --git a/arch/arm/mach-imx/include/mach/devices-imx51.h b/arch/arm/mach-imx/include/mach/devices-imx51.h
index cccd8f461..66fe643f8 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx51.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx51.h
@@ -81,7 +81,7 @@ static inline struct device_d *imx51_add_nand(struct imx_nand_platform_data *pda
 	dev->resource = xzalloc(sizeof(struct resource) * ARRAY_SIZE(res));
 	memcpy(dev->resource, res, sizeof(struct resource) * ARRAY_SIZE(res));
 	dev->num_resources = ARRAY_SIZE(res);
-	strcpy(dev->name, "imx_nand");
+	dev_set_name(dev, "imx_nand");
 	dev->id = DEVICE_ID_DYNAMIC;
 	dev->platform_data = pdata;
 
diff --git a/arch/arm/mach-imx/include/mach/devices-imx53.h b/arch/arm/mach-imx/include/mach/devices-imx53.h
index 10caae8c9..27200a26d 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx53.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx53.h
@@ -95,7 +95,7 @@ static inline struct device_d *imx53_add_nand(struct imx_nand_platform_data *pda
 	dev->resource = xzalloc(sizeof(struct resource) * ARRAY_SIZE(res));
 	memcpy(dev->resource, res, sizeof(struct resource) * ARRAY_SIZE(res));
 	dev->num_resources = ARRAY_SIZE(res);
-	strcpy(dev->name, "imx_nand");
+	dev_set_name(dev, "imx_nand");
 	dev->id = DEVICE_ID_DYNAMIC;
 	dev->platform_data = pdata;
 
diff --git a/arch/arm/mach-mxs/include/mach/devices.h b/arch/arm/mach-mxs/include/mach/devices.h
index 5680d61c9..b212aa783 100644
--- a/arch/arm/mach-mxs/include/mach/devices.h
+++ b/arch/arm/mach-mxs/include/mach/devices.h
@@ -26,7 +26,7 @@ static inline struct device_d *mxs_add_nand(unsigned long gpmi_base, unsigned lo
 	dev->resource = xzalloc(sizeof(struct resource) * ARRAY_SIZE(res));
 	memcpy(dev->resource, res, sizeof(struct resource) * ARRAY_SIZE(res));
 	dev->num_resources = ARRAY_SIZE(res);
-	strcpy(dev->name, "mxs_nand");
+	dev_set_name(dev, "mxs_nand");
 	dev->id = DEVICE_ID_DYNAMIC;
 
 	platform_device_register(dev);
diff --git a/arch/arm/mach-mxs/ocotp.c b/arch/arm/mach-mxs/ocotp.c
index b41fde991..01db73116 100644
--- a/arch/arm/mach-mxs/ocotp.c
+++ b/arch/arm/mach-mxs/ocotp.c
@@ -197,7 +197,7 @@ static int mxs_ocotp_probe(struct device_d *dev)
 	priv->cdev.size = cpu_is_mx23() ? 128 : 160;
 	priv->cdev.name = DRIVERNAME;
 
-	strcpy(priv->dev.name, "ocotp");
+	dev_set_name(&priv->dev, "ocotp");
 	priv->dev.parent = dev;
 	err = register_device(&priv->dev);
 	if (err)
diff --git a/arch/sandbox/board/console.c b/arch/sandbox/board/console.c
index cf1781d15..006bbd1a6 100644
--- a/arch/sandbox/board/console.c
+++ b/arch/sandbox/board/console.c
@@ -32,7 +32,7 @@ int barebox_register_console(int stdinfd, int stdoutfd)
 	data = (struct linux_console_data *)(dev + 1);
 
 	dev->platform_data = data;
-	strcpy(dev->name, "console");
+	dev_set_name(dev, "console");
 	dev->id = DEVICE_ID_DYNAMIC;
 
 	data->stdoutfd = stdoutfd;
diff --git a/common/console.c b/common/console.c
index 40c26b66d..47ccf2e54 100644
--- a/common/console.c
+++ b/common/console.c
@@ -314,10 +314,10 @@ int console_register(struct console_device *newcdev)
 
 	if (newcdev->devname) {
 		dev->id = newcdev->devid;
-		strcpy(dev->name, newcdev->devname);
+		dev_set_name(dev, newcdev->devname);
 	} else {
 		dev->id = DEVICE_ID_DYNAMIC;
-		strcpy(dev->name, "cs");
+		dev_set_name(dev, "cs");
 	}
 
 	if (newcdev->dev)
diff --git a/common/state/state.c b/common/state/state.c
index 25d950211..55804a521 100644
--- a/common/state/state.c
+++ b/common/state/state.c
@@ -179,7 +179,7 @@ static struct state *state_new(const char *name)
 	int ret;
 
 	state = xzalloc(sizeof(*state));
-	safe_strncpy(state->dev.name, name, MAX_DRIVER_NAME);
+	dev_set_name(&state->dev, name);
 	state->name = state->dev.name;
 	state->dev.id = DEVICE_ID_SINGLE;
 	INIT_LIST_HEAD(&state->variables);
diff --git a/drivers/aiodev/core.c b/drivers/aiodev/core.c
index 90df8a6e7..b5d06da93 100644
--- a/drivers/aiodev/core.c
+++ b/drivers/aiodev/core.c
@@ -113,7 +113,7 @@ int aiodevice_register(struct aiodevice *aiodev)
 		aiodev->dev.id = DEVICE_ID_DYNAMIC;
 	}
 
-	strcpy(aiodev->dev.name, aiodev->name);
+	dev_set_name(&aiodev->dev, aiodev->name);
 
 	aiodev->dev.parent = aiodev->hwdev;
 
diff --git a/drivers/amba/bus.c b/drivers/amba/bus.c
index ae5df13c9..a8cd16835 100644
--- a/drivers/amba/bus.c
+++ b/drivers/amba/bus.c
@@ -200,7 +200,7 @@ struct amba_device *amba_device_alloc(const char *name, int id, resource_size_t
 
 	dev = xzalloc(sizeof(*dev));
 
-	strcpy(dev->dev.name, name);
+	dev_set_name(&dev->dev, name);
 	dev->dev.id = id;
 	dev->res.start = base;
 	dev->res.end = base + size - 1;
diff --git a/drivers/ata/disk_ata_drive.c b/drivers/ata/disk_ata_drive.c
index 5ebddbdec..11f7151e5 100644
--- a/drivers/ata/disk_ata_drive.c
+++ b/drivers/ata/disk_ata_drive.c
@@ -325,10 +325,10 @@ int ata_port_register(struct ata_port *port)
 	int ret;
 
 	if (port->devname) {
-		strcpy(port->class_dev.name, port->devname);
+		dev_set_name(&port->class_dev, port->devname);
 		port->class_dev.id = DEVICE_ID_SINGLE;
 	} else {
-		strcpy(port->class_dev.name, "ata");
+		dev_set_name(&port->class_dev, "ata");
 		port->class_dev.id = DEVICE_ID_DYNAMIC;
 	}
 
diff --git a/drivers/base/bus.c b/drivers/base/bus.c
index b889a4866..1038d20a1 100644
--- a/drivers/base/bus.c
+++ b/drivers/base/bus.c
@@ -32,7 +32,7 @@ int bus_register(struct bus_type *bus)
 		return -EEXIST;
 
 	bus->dev = xzalloc(sizeof(*bus->dev));
-	strcpy(bus->dev->name, bus->name);
+	dev_set_name(bus->dev, bus->name);
 	bus->dev->id = DEVICE_ID_SINGLE;
 
 	ret = register_device(bus->dev);
diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index c43a4bde2..c9e6e6ddd 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -478,6 +478,27 @@ const char *dev_id(const struct device_d *dev)
 	return buf;
 }
 
+/**
+ * dev_set_name - set a device name
+ * @dev: device
+ * @fmt: format string for the device's name
+ *
+ */
+int dev_set_name(struct device_d *dev, const char *fmt, ...)
+{
+	va_list vargs;
+	int err;
+
+	va_start(vargs, fmt);
+	err = vsnprintf(dev->name, sizeof(dev->name), fmt, vargs);
+	va_end(vargs);
+
+	WARN_ON(err < 0);
+
+	return err;
+}
+EXPORT_SYMBOL_GPL(dev_set_name);
+
 static void devices_shutdown(void)
 {
 	struct device_d *dev;
diff --git a/drivers/base/resource.c b/drivers/base/resource.c
index 6c2d7fed4..cb7105bf8 100644
--- a/drivers/base/resource.c
+++ b/drivers/base/resource.c
@@ -27,7 +27,7 @@ struct device_d *device_alloc(const char *devname, int id)
 	struct device_d *dev;
 
 	dev = xzalloc(sizeof(*dev));
-	strcpy(dev->name, devname);
+	dev_set_name(dev, devname);
 	dev->id = id;
 
 	return dev;
diff --git a/drivers/efi/efi-device.c b/drivers/efi/efi-device.c
index 3a27323a0..b7dea7c82 100644
--- a/drivers/efi/efi-device.c
+++ b/drivers/efi/efi-device.c
@@ -185,7 +185,7 @@ static struct efi_device *efi_add_device(efi_handle_t *handle, efi_guid_t **guid
 	efidev->dev.info = efi_devinfo;
 	efidev->devpath = devpath;
 
-	sprintf(efidev->dev.name, "handle-%p", handle);
+	dev_set_name(&efidev->dev, "handle-%p", handle);
 
 	efidev->parent_handle = efi_find_parent(efidev->handle);
 
diff --git a/drivers/firmware/socfpga.c b/drivers/firmware/socfpga.c
index c1eae98ac..6d11da32a 100644
--- a/drivers/firmware/socfpga.c
+++ b/drivers/firmware/socfpga.c
@@ -438,7 +438,7 @@ static int fpgamgr_probe(struct device_d *dev)
 	dev_dbg(dev, "Registering FPGA firmware programmer\n");
 
 	mgr->dev.id = DEVICE_ID_SINGLE;
-	strcpy(mgr->dev.name, "fpga");
+	dev_set_name(&mgr->dev, "fpga");
 	mgr->dev.parent = dev;
 	ret = register_device(&mgr->dev);
 	if (ret)
diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
index 608f8289b..25e0fe7ad 100644
--- a/drivers/i2c/i2c.c
+++ b/drivers/i2c/i2c.c
@@ -389,7 +389,7 @@ static struct i2c_client *i2c_new_device(struct i2c_adapter *adapter,
 	int status;
 
 	client = xzalloc(sizeof *client);
-	strcpy(client->dev.name, chip->type);
+	dev_set_name(&client->dev, chip->type);
 	client->dev.type_data = client;
 	client->dev.platform_data = chip->platform_data;
 	client->dev.id = DEVICE_ID_DYNAMIC;
@@ -588,7 +588,7 @@ int i2c_add_numbered_adapter(struct i2c_adapter *adapter)
 	}
 
 	adapter->dev.id = adapter->nr;
-	strcpy(adapter->dev.name, "i2c");
+	dev_set_name(&adapter->dev, "i2c");
 
 	ret = register_device(&adapter->dev);
 	if (ret)
diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index c6b4e02cb..c8d1d5e16 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1802,10 +1802,10 @@ int mci_register(struct mci_host *host)
 	mci->host = host;
 
 	if (host->devname) {
-		strcpy(mci->dev.name, host->devname);
+		dev_set_name(&mci->dev, host->devname);
 		mci->dev.id = DEVICE_ID_SINGLE;
 	} else {
-		strcpy(mci->dev.name, "mci");
+		dev_set_name(&mci->dev, "mci");
 		mci->dev.id = DEVICE_ID_DYNAMIC;
 	}
 
diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index 15fe9ce79..56e85b3d8 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -607,7 +607,7 @@ int add_mtd_device(struct mtd_info *mtd, const char *devname, int device_id)
 
 	if (!devname)
 		devname = "mtd";
-	strcpy(mtd->class_dev.name, devname);
+	dev_set_name(&mtd->class_dev, devname);
 	mtd->class_dev.id = device_id;
 	if (mtd->parent)
 		mtd->class_dev.parent = mtd->parent;
diff --git a/drivers/mtd/spi-nor/cadence-quadspi.c b/drivers/mtd/spi-nor/cadence-quadspi.c
index 626966818..ed5377bd4 100644
--- a/drivers/mtd/spi-nor/cadence-quadspi.c
+++ b/drivers/mtd/spi-nor/cadence-quadspi.c
@@ -1051,7 +1051,7 @@ static int cqspi_setup_flash(struct device_d *dev,
 	if (np) {
 		nor->dev = xzalloc(sizeof(*nor->dev));
 
-		strcpy(nor->dev->name, np->name);
+		dev_set_name(nor->dev, np->name);
 
 		nor->dev->device_node = np;
 		nor->dev->id = DEVICE_ID_SINGLE;
diff --git a/drivers/mtd/ubi/build.c b/drivers/mtd/ubi/build.c
index 536077ebf..493c778c3 100644
--- a/drivers/mtd/ubi/build.c
+++ b/drivers/mtd/ubi/build.c
@@ -157,7 +157,7 @@ static int uif_init(struct ubi_device *ubi, int *ref)
 	*ref = 0;
 	sprintf(ubi->ubi_name, UBI_NAME_STR "%d", ubi->ubi_num);
 
-	sprintf(ubi->dev.name, "%s.ubi", ubi->mtd->cdev.name);
+	dev_set_name(&ubi->dev, "%s.ubi", ubi->mtd->cdev.name);
 	ubi->dev.id = DEVICE_ID_SINGLE;
 	ubi->dev.parent = &ubi->mtd->class_dev;
 
diff --git a/drivers/mtd/ubi/vmt.c b/drivers/mtd/ubi/vmt.c
index 617704821..99da79171 100644
--- a/drivers/mtd/ubi/vmt.c
+++ b/drivers/mtd/ubi/vmt.c
@@ -145,7 +145,7 @@ int ubi_create_volume(struct ubi_device *ubi, struct ubi_mkvol_req *req)
 			vol->last_eb_bytes = vol->usable_leb_size;
 	}
 
-	sprintf(vol->dev.name, "%s.%s", dev_name(&ubi->dev), vol->name);
+	dev_set_name(&vol->dev, "%s.%s", dev_name(&ubi->dev), vol->name);
 	vol->dev.id = DEVICE_ID_SINGLE;
 	vol->dev.parent = &ubi->dev;
 	err = register_device(&vol->dev);
@@ -443,7 +443,7 @@ int ubi_add_volume(struct ubi_device *ubi, struct ubi_volume *vol)
 
 	dbg_gen("add volume");
 
-	sprintf(vol->dev.name, "%s.%s", dev_name(&ubi->dev), vol->name);
+	dev_set_name(&vol->dev, "%s.%s", dev_name(&ubi->dev), vol->name);
 	vol->dev.id = DEVICE_ID_SINGLE;
 	vol->dev.parent = &ubi->dev;
 	err = register_device(&vol->dev);
diff --git a/drivers/net/cpsw.c b/drivers/net/cpsw.c
index 3d3939cfa..c6fc21dc5 100644
--- a/drivers/net/cpsw.c
+++ b/drivers/net/cpsw.c
@@ -916,7 +916,7 @@ static int cpsw_slave_setup(struct cpsw_slave *slave, int slave_num,
 	if (ret)
 		goto err_out;
 
-	sprintf(dev->name, "cpsw-slave");
+	dev_set_name(dev, "cpsw-slave");
 	dev->id = slave->slave_num;
 	dev->parent = priv->dev;
 	ret = register_device(dev);
diff --git a/drivers/net/e1000/eeprom.c b/drivers/net/e1000/eeprom.c
index dda022e05..180b32ede 100644
--- a/drivers/net/e1000/eeprom.c
+++ b/drivers/net/e1000/eeprom.c
@@ -1529,7 +1529,7 @@ int e1000_register_invm(struct e1000_hw *hw)
 	if (ret < 0)
 		return ret;
 
-	strcpy(hw->invm.dev.name, "invm");
+	dev_set_name(&hw->invm.dev, "invm");
 	hw->invm.dev.id = hw->dev->id;
 	hw->invm.dev.parent = hw->dev;
 	ret = register_device(&hw->invm.dev);
diff --git a/drivers/net/orion-gbe.c b/drivers/net/orion-gbe.c
index e6bd75768..431ec5c31 100644
--- a/drivers/net/orion-gbe.c
+++ b/drivers/net/orion-gbe.c
@@ -462,7 +462,7 @@ static int port_probe(struct device_d *parent, struct port_priv *port)
 		reg |= RGMII_ENABLE;
 	writel(reg, port->regs + PORT_SC1);
 
-	snprintf(dev->name, MAX_DRIVER_NAME, "%08x.ethernet-port", (u32)gbe->regs);
+	dev_set_name(dev, "%08x.ethernet-port", (u32)gbe->regs);
 	dev->id = port->portno;
 	dev->parent = parent;
 	dev->device_node = port->np;
diff --git a/drivers/net/phy/mdio_bus.c b/drivers/net/phy/mdio_bus.c
index 7d53bcc3d..177d54863 100644
--- a/drivers/net/phy/mdio_bus.c
+++ b/drivers/net/phy/mdio_bus.c
@@ -222,7 +222,7 @@ int mdiobus_register(struct mii_bus *bus)
 
 	bus->dev.priv = bus;
 	bus->dev.id = DEVICE_ID_DYNAMIC;
-	strcpy(bus->dev.name, "miibus");
+	dev_set_name(&bus->dev, "miibus");
 	bus->dev.parent = bus->parent;
 	bus->dev.detect = mdiobus_detect;
 
diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
index 42dcad906..19d458e07 100644
--- a/drivers/net/phy/phy.c
+++ b/drivers/net/phy/phy.c
@@ -176,12 +176,12 @@ struct phy_device *phy_device_create(struct mii_bus *bus, int addr, int phy_id)
 	phydev->dev.bus = &mdio_bus_type;
 
 	if (bus) {
-		sprintf(phydev->dev.name, "mdio%d-phy%02x",
-				   phydev->bus->dev.id,
-				   phydev->addr);
+		dev_set_name(&phydev->dev, "mdio%d-phy%02x",
+			     phydev->bus->dev.id,
+			     phydev->addr);
 		phydev->dev.id = DEVICE_ID_SINGLE;
 	} else {
-		sprintf(phydev->dev.name, "fixed-phy");
+		dev_set_name(&phydev->dev, "fixed-phy");
 		phydev->dev.id = DEVICE_ID_DYNAMIC;
 	}
 
diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
index c0f61f453..63c0f997b 100644
--- a/drivers/nvmem/core.c
+++ b/drivers/nvmem/core.c
@@ -199,7 +199,7 @@ struct nvmem_device *nvmem_register(const struct nvmem_config *config)
 	nvmem->read_only = of_property_read_bool(np, "read-only") |
 			   config->read_only;
 
-	safe_strncpy(nvmem->dev.name, config->name, MAX_DRIVER_NAME);
+	dev_set_name(&nvmem->dev, config->name);
 	nvmem->dev.id = DEVICE_ID_DYNAMIC;
 
 	dev_dbg(&nvmem->dev, "Registering nvmem device %s\n", config->name);
diff --git a/drivers/nvmem/ocotp.c b/drivers/nvmem/ocotp.c
index c2d2982ee..0d07da280 100644
--- a/drivers/nvmem/ocotp.c
+++ b/drivers/nvmem/ocotp.c
@@ -531,7 +531,7 @@ static int imx_ocotp_probe(struct device_d *dev)
 	if (IS_ERR(priv->clk))
 		return PTR_ERR(priv->clk);
 
-	strcpy(priv->dev.name, "ocotp");
+	dev_set_name(&priv->dev, "ocotp");
 	priv->dev.parent = dev;
 	register_device(&priv->dev);
 
diff --git a/drivers/of/platform.c b/drivers/of/platform.c
index c9157cdd7..4fd3ce2b7 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -68,12 +68,12 @@ static void of_device_make_bus_id(struct device_d *dev)
 	reg = of_get_property(np, "dcr-reg", NULL);
 	if (reg) {
 #ifdef CONFIG_PPC_DCR_NATIVE
-		snprintf(dev->name, MAX_DRIVER_NAME, "d%x.%s", *reg, name);
+		dev_set_name(dev, "d%x.%s", *reg, name);
 #else /* CONFIG_PPC_DCR_NATIVE */
 		u64 addr = of_translate_dcr_address(np, *reg, NULL);
 		if (addr != OF_BAD_ADDR) {
-			snprintf(dev->name, MAX_DRIVER_NAME, "D%llx.%s",
-				(unsigned long long)addr, name);
+			dev_set_name(dev, "D%llx.%s",
+				     (unsigned long long)addr, name);
 			free(name);
 			return;
 		}
@@ -96,8 +96,8 @@ static void of_device_make_bus_id(struct device_d *dev)
 				addr = OF_BAD_ADDR;
 		}
 		if (addr != OF_BAD_ADDR) {
-			snprintf(dev->name, MAX_DRIVER_NAME, "%llx.%s",
-				(unsigned long long)addr, name);
+			dev_set_name(dev, "%llx.%s",
+				     (unsigned long long)addr, name);
 			free(name);
 			return;
 		}
@@ -106,7 +106,7 @@ static void of_device_make_bus_id(struct device_d *dev)
 	/*
 	 * No BusID, use the node name and add a globally incremented counter
 	 */
-	snprintf(dev->name, MAX_DRIVER_NAME, "%s.%d", name, bus_no_reg_magic++);
+	dev_set_name(dev, "%s.%d", name, bus_no_reg_magic++);
 	free(name);
 }
 
diff --git a/drivers/pci/bus.c b/drivers/pci/bus.c
index 201675b48..ac1562330 100644
--- a/drivers/pci/bus.c
+++ b/drivers/pci/bus.c
@@ -87,8 +87,7 @@ int pci_register_device(struct pci_dev *pdev)
 	struct device_d *dev = &pdev->dev;
 	int ret;
 
-	snprintf(dev->name, MAX_DRIVER_NAME, "pci-%04x:%04x.",
-	         pdev->vendor, pdev->device);
+	dev_set_name(dev, "pci-%04x:%04x.", pdev->vendor, pdev->device);
 	dev->bus = &pci_bus;
 	dev->id = DEVICE_ID_DYNAMIC;
 
diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
index 1b6a9f7b1..9d6288fc0 100644
--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -46,7 +46,7 @@ struct phy *phy_create(struct device_d *dev, struct device_node *node,
 
 	id = phy_ida++;
 
-	snprintf(phy->dev.name, MAX_DRIVER_NAME, "phy");
+	dev_set_name(&phy->dev, "phy");
 	phy->dev.id = id;
 	phy->dev.parent = dev;
 	phy->dev.device_node = node ?: dev->device_node;
diff --git a/drivers/pwm/core.c b/drivers/pwm/core.c
index 80fade061..c8016999f 100644
--- a/drivers/pwm/core.c
+++ b/drivers/pwm/core.c
@@ -89,7 +89,7 @@ int pwmchip_add(struct pwm_chip *chip, struct device_d *dev)
 	pwm->chip = chip;
 	pwm->hwdev = dev;
 
-	strcpy(pwm->dev.name, chip->devname);
+	dev_set_name(&pwm->dev, chip->devname);
 	pwm->dev.id = DEVICE_ID_SINGLE;
 	pwm->dev.parent = dev;
 
diff --git a/drivers/rtc/class.c b/drivers/rtc/class.c
index 8b047a638..5b58271c0 100644
--- a/drivers/rtc/class.c
+++ b/drivers/rtc/class.c
@@ -67,7 +67,7 @@ int rtc_register(struct rtc_device *rtcdev)
 		return -EINVAL;
 
 	dev->id = DEVICE_ID_DYNAMIC;
-	strcpy(dev->name, "rtc");
+	dev_set_name(dev, "rtc");
 	if (rtcdev->dev)
 		dev->parent = rtcdev->dev;
 	platform_device_register(dev);
diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index 5650098a0..25bb98879 100644
--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -76,7 +76,7 @@ struct spi_device *spi_new_device(struct spi_master *master,
 	proxy->bits_per_word = chip->bits_per_word ? chip->bits_per_word : 8;
 	proxy->dev.platform_data = chip->platform_data;
 	proxy->dev.bus = &spi_bus;
-	strcpy(proxy->dev.name, chip->name);
+	dev_set_name(&proxy->dev, chip->name);
 	/* allocate a free id for this chip */
 	proxy->dev.id = DEVICE_ID_DYNAMIC;
 	proxy->dev.type_data = proxy;
diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index 70ded6ded..0ee8808a6 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -431,9 +431,10 @@ int usb_new_device(struct usb_device *dev)
 			   dev->serial, sizeof(dev->serial));
 
 	if (parent) {
-		sprintf(dev->dev.name, "%s-%d", parent->dev.name, dev->portnr - 1);
+		dev_set_name(&dev->dev, "%s-%d", parent->dev.name,
+			     dev->portnr - 1);
 	} else {
-		sprintf(dev->dev.name, "usb%d", dev->host->busnum);
+		dev_set_name(&dev->dev, "usb%d", dev->host->busnum);
 	}
 
 	dev->dev.id = DEVICE_ID_SINGLE;
diff --git a/drivers/usb/gadget/udc-core.c b/drivers/usb/gadget/udc-core.c
index ed99b53df..e35745609 100644
--- a/drivers/usb/gadget/udc-core.c
+++ b/drivers/usb/gadget/udc-core.c
@@ -179,7 +179,7 @@ int usb_add_gadget_udc_release(struct device_d *parent, struct usb_gadget *gadge
 	if (!udc)
 		goto err1;
 
-	strcpy(gadget->dev.name, "usbgadget");
+	dev_set_name(&gadget->dev, "usbgadget");
 	gadget->dev.id = DEVICE_ID_SINGLE;
 	gadget->dev.parent = parent;
 
@@ -198,7 +198,7 @@ int usb_add_gadget_udc_release(struct device_d *parent, struct usb_gadget *gadge
 	dev_add_param_string(&gadget->dev, "productname", NULL, NULL,
 			&gadget->productname, NULL);
 
-	strcpy(udc->dev.name, "udc");
+	dev_set_name(&udc->dev, "udc");
 	udc->dev.id = DEVICE_ID_DYNAMIC;
 
 	udc->gadget = gadget;
diff --git a/drivers/usb/musb/musb_dsps.c b/drivers/usb/musb/musb_dsps.c
index 431b97ea9..5fe3bcb7c 100644
--- a/drivers/usb/musb/musb_dsps.c
+++ b/drivers/usb/musb/musb_dsps.c
@@ -333,7 +333,7 @@ static int dsps_register_otg_device(struct dsps_glue *glue)
 {
 	int ret;
 
-	strcpy(glue->otg_dev.name, "otg");
+	dev_set_name(&glue->otg_dev, "otg");
 	glue->otg_dev.id = DEVICE_ID_DYNAMIC,
 	glue->otg_dev.parent = glue->dev;
 
diff --git a/drivers/video/backlight.c b/drivers/video/backlight.c
index 30d52fcb6..3913d1c4c 100644
--- a/drivers/video/backlight.c
+++ b/drivers/video/backlight.c
@@ -71,7 +71,7 @@ int backlight_register(struct backlight_device *bl)
 {
 	int ret;
 
-	sprintf(bl->dev.name, "backlight");
+	dev_set_name(&bl->dev, "backlight");
 	bl->dev.id = DEVICE_ID_DYNAMIC;
 
 	ret = register_device(&bl->dev);
diff --git a/drivers/video/fb.c b/drivers/video/fb.c
index c9d184d50..72f33a6db 100644
--- a/drivers/video/fb.c
+++ b/drivers/video/fb.c
@@ -309,7 +309,7 @@ int register_framebuffer(struct fb_info *info)
 	dev->id = id;
 	dev->info = fb_info;
 
-	sprintf(dev->name, "fb");
+	dev_set_name(dev, "fb");
 
 	ret = register_device(&info->dev);
 	if (ret)
diff --git a/drivers/w1/w1.c b/drivers/w1/w1.c
index ff573860e..694ffa853 100644
--- a/drivers/w1/w1.c
+++ b/drivers/w1/w1.c
@@ -423,7 +423,7 @@ static int w1_device_register(struct w1_bus *bus, struct w1_device *dev)
 	char str[18];
 	int ret;
 
-	sprintf(dev->dev.name, "w1-%x-", dev->fid);
+	dev_set_name(&dev->dev, "w1-%x-", dev->fid);
 	dev->dev.id = DEVICE_ID_DYNAMIC;
 	dev->dev.bus = &w1_bustype;
 	dev->bus = bus;
@@ -619,7 +619,7 @@ int w1_bus_register(struct w1_bus *bus)
 
 	list_add_tail(&bus->list, &w1_buses);
 
-	strcpy(bus->dev.name, "w1_bus");
+	dev_set_name(&bus->dev, "w1_bus");
 	bus->dev.id = DEVICE_ID_DYNAMIC;
 	bus->dev.parent = bus->parent;
 
diff --git a/drivers/watchdog/wd_core.c b/drivers/watchdog/wd_core.c
index 56e8626cb..e6e5ddecd 100644
--- a/drivers/watchdog/wd_core.c
+++ b/drivers/watchdog/wd_core.c
@@ -104,7 +104,7 @@ static int watchdog_register_dev(struct watchdog *wd, const char *name, int id)
 {
 	wd->dev.parent = wd->hwdev;
 	wd->dev.id = id;
-	strncpy(wd->dev.name, name, MAX_DRIVER_NAME);
+	dev_set_name(&wd->dev, name);
 
 	return register_device(&wd->dev);
 }
diff --git a/fs/fs.c b/fs/fs.c
index d76d82914..57eaaf585 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -2757,7 +2757,7 @@ int mount(const char *device, const char *fsname, const char *pathname,
 
 	fsdev = xzalloc(sizeof(struct fs_device_d));
 	fsdev->backingstore = xstrdup(device);
-	safe_strncpy(fsdev->dev.name, fsname, MAX_DRIVER_NAME);
+	dev_set_name(&fsdev->dev, fsname);
 	fsdev->dev.id = get_free_deviceid(fsdev->dev.name);
 	fsdev->dev.bus = &fs_bus;
 	fsdev->options = xstrdup(fsoptions);
diff --git a/include/driver.h b/include/driver.h
index 1b61f2066..c12ca9c2f 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -38,9 +38,12 @@ struct platform_device_id {
 
 /** @brief Describes a particular device present in the system */
 struct device_d {
-	/*! This member (and 'type' described below) is used to match with a
-	 * driver. This is a descriptive name and could be MPC5XXX_ether or
-	 * imx_serial. */
+	/*! This member (and 'type' described below) is used to match
+	 * with a driver. This is a descriptive name and could be
+	 * MPC5XXX_ether or imx_serial. Unless absolutely necessary,
+	 * should not be modified directly and dev_set_name() should
+	 * be used instead.
+	 */
 	char name[MAX_DRIVER_NAME];
 	/*! The id is used to uniquely identify a device in the system. The id
 	 * will show up under /dev/ as the device's name. Usually this is
@@ -177,6 +180,8 @@ static inline const char *dev_name(const struct device_d *dev)
 	return dev_id(dev);
 }
 
+int dev_set_name(struct device_d *dev, const char *fmt, ...);
+
 /*
  * get resource 'num' for a device
  */
diff --git a/net/eth.c b/net/eth.c
index 9dc441195..36260478d 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -363,7 +363,7 @@ int eth_register(struct eth_device *edev)
 		return -1;
 	}
 
-	strcpy(edev->dev.name, "eth");
+	dev_set_name(&edev->dev, "eth");
 
 	if (edev->parent)
 		edev->dev.parent = edev->parent;
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
