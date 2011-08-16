Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 20.mo3.mail-out.ovh.net ([178.33.47.94]
	helo=mo3.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QtCcV-00063S-2C
	for barebox@lists.infradead.org; Tue, 16 Aug 2011 05:55:31 +0000
Received: from mail191.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo3.mail-out.ovh.net (Postfix) with SMTP id 85A41FFB709
	for <barebox@lists.infradead.org>;
	Tue, 16 Aug 2011 07:55:44 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 16 Aug 2011 07:36:07 +0200
Message-Id: <1313472967-19324-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1313397992-3065-1-git-send-email-s.hauer@pengutronix.de>
References: <1313397992-3065-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 4/4] switch all device/driver to
	platform_device/driver_(un)register
To: barebox@lists.infradead.org

now (un)register_device/driver are only use by bus implementation

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/nhk8815/setup.c     |    2 +-
 arch/arm/mach-imx/iim.c             |    2 +-
 arch/arm/mach-omap/arch-omap.dox    |    2 +-
 arch/nios2/boards/generic/generic.c |    4 ++--
 arch/sandbox/board/board.c          |    2 +-
 arch/sandbox/board/console.c        |    2 +-
 arch/sandbox/board/hostfile.c       |    2 +-
 commands/mem.c                      |    2 +-
 common/console.c                    |    2 +-
 drivers/ata/bios.c                  |    4 ++--
 drivers/ata/disk_drive.c            |    4 ++--
 drivers/base/driver.c               |   11 ++++-------
 drivers/base/platform.c             |   17 +++++++++++++++++
 drivers/base/resource.c             |    6 +++---
 drivers/eeprom/at25.c               |    2 +-
 drivers/i2c/busses/i2c-imx.c        |    2 +-
 drivers/i2c/busses/i2c-omap.c       |    2 +-
 drivers/i2c/i2c.c                   |    2 +-
 drivers/mci/atmel_mci.c             |    2 +-
 drivers/mci/imx-esdhc.c             |    2 +-
 drivers/mci/imx.c                   |    2 +-
 drivers/mci/mci-core.c              |    4 ++--
 drivers/mci/mxs.c                   |    2 +-
 drivers/mci/omap_hsmmc.c            |    2 +-
 drivers/mci/s3c.c                   |    2 +-
 drivers/mfd/lp3972.c                |    2 +-
 drivers/mfd/mc13783.c               |    2 +-
 drivers/mfd/mc13892.c               |    4 ++--
 drivers/mfd/mc34704.c               |    2 +-
 drivers/mfd/mc9sdz60.c              |    2 +-
 drivers/mfd/twl4030.c               |    2 +-
 drivers/mtd/nand/atmel_nand.c       |    2 +-
 drivers/mtd/nand/nand.c             |    4 ++--
 drivers/mtd/nand/nand_imx.c         |    2 +-
 drivers/mtd/nand/nand_omap_gpmc.c   |    2 +-
 drivers/mtd/nand/nand_s3c2410.c     |    2 +-
 drivers/mtd/nand/nomadik_nand.c     |    2 +-
 drivers/net/altera_tse.c            |    2 +-
 drivers/net/at91_ether.c            |    2 +-
 drivers/net/cs8900.c                |    2 +-
 drivers/net/dm9000.c                |    2 +-
 drivers/net/ep93xx.c                |    2 +-
 drivers/net/fec_imx.c               |    2 +-
 drivers/net/fec_mpc5200.c           |    2 +-
 drivers/net/macb.c                  |    2 +-
 drivers/net/miidev.c                |    6 +++---
 drivers/net/netx_eth.c              |    2 +-
 drivers/net/smc91111.c              |    2 +-
 drivers/net/smc911x.c               |    2 +-
 drivers/net/tap.c                   |    2 +-
 drivers/net/usb/usbnet.c            |    2 +-
 drivers/nor/cfi_flash.c             |    2 +-
 drivers/serial/amba-pl011.c         |    2 +-
 drivers/serial/arm_dcc.c            |    4 ++--
 drivers/serial/atmel.c              |    2 +-
 drivers/serial/linux_console.c      |    2 +-
 drivers/serial/serial_altera.c      |    2 +-
 drivers/serial/serial_altera_jtag.c |    2 +-
 drivers/serial/serial_blackfin.c    |    2 +-
 drivers/serial/serial_imx.c         |    2 +-
 drivers/serial/serial_mpc5xxx.c     |    2 +-
 drivers/serial/serial_netx.c        |    2 +-
 drivers/serial/serial_ns16550.c     |    4 ++--
 drivers/serial/serial_pl010.c       |    2 +-
 drivers/serial/serial_s3c24x0.c     |    2 +-
 drivers/serial/stm-serial.c         |    2 +-
 drivers/spi/imx_spi.c               |    2 +-
 drivers/spi/spi.c                   |    4 ++--
 drivers/usb/core/usb.c              |    6 +++---
 drivers/usb/gadget/composite.c      |    4 ++--
 drivers/usb/gadget/fsl_udc.c        |   10 +++++-----
 drivers/usb/host/ehci-hcd.c         |    2 +-
 drivers/video/fb.c                  |    4 ++--
 drivers/video/imx-ipu-fb.c          |    2 +-
 drivers/video/imx.c                 |    2 +-
 drivers/video/s3c.c                 |    2 +-
 drivers/video/stm.c                 |    2 +-
 fs/fs.c                             |    8 ++++----
 include/driver.h                    |    8 ++++++++
 net/eth.c                           |    2 +-
 80 files changed, 130 insertions(+), 108 deletions(-)

diff --git a/arch/arm/boards/nhk8815/setup.c b/arch/arm/boards/nhk8815/setup.c
index 15c16a0..97efcfb 100644
--- a/arch/arm/boards/nhk8815/setup.c
+++ b/arch/arm/boards/nhk8815/setup.c
@@ -98,7 +98,7 @@ static int nhk8815_devices_init(void)
 	add_generic_device("smc91c111", -2, NULL, 0x34000300, 16,
 			   IORESOURCE_MEM, NULL);
 
-	register_device(&nhk8815_nand_device);
+	platform_device_register(&nhk8815_nand_device);
 
 	armlinux_set_architecture(MACH_TYPE_NOMADIK);
 	armlinux_set_bootparams((void *)(0x00000100));
diff --git a/arch/arm/mach-imx/iim.c b/arch/arm/mach-imx/iim.c
index ca89710..3e6b80f 100644
--- a/arch/arm/mach-imx/iim.c
+++ b/arch/arm/mach-imx/iim.c
@@ -295,7 +295,7 @@ static struct driver_d imx_iim_driver = {
 
 static int imx_iim_init(void)
 {
-	register_driver(&imx_iim_driver);
+	platform_driver_register(&imx_iim_driver);
 
 	return 0;
 }
diff --git a/arch/arm/mach-omap/arch-omap.dox b/arch/arm/mach-omap/arch-omap.dox
index 9c90b4f..6b6b3a8 100644
--- a/arch/arm/mach-omap/arch-omap.dox
+++ b/arch/arm/mach-omap/arch-omap.dox
@@ -85,7 +85,7 @@ static struct device_d my_little_device = {
  };
 static int my_board_devices_init(void) {
 	/* Do Blah Blah Blah */
-	return register_device(&my_little_device);
+	return platform_device_register(&my_little_device);
 }
 
 device_initcall(my_board_devices_init);
diff --git a/arch/nios2/boards/generic/generic.c b/arch/nios2/boards/generic/generic.c
index 84fe5b8..7bf0dc8 100644
--- a/arch/nios2/boards/generic/generic.c
+++ b/arch/nios2/boards/generic/generic.c
@@ -37,8 +37,8 @@ static int generic_devices_init(void)
 	add_cfi_flash_device(-2, NIOS_SOPC_FLASH_BASE, NIOS_SOPC_FLASH_SIZE, 0);
 	add_mem_device("ram0", NIOS_SOPC_MEMORY_BASE, NIOS_SOPC_MEMORY_SIZE,
 		       IORESOURCE_MEM_WRITEABLE);
-	register_device(&mac_dev);
-	/*register_device(&epcs_flash_device);*/
+	platform_device_register(&mac_dev);
+	/*platform_device_register(&epcs_flash_device);*/
 
 	devfs_add_partition("nor0", 0x00000, 0x40000, PARTITION_FIXED, "self0");
 	devfs_add_partition("nor0", 0x40000, 0x20000, PARTITION_FIXED, "env0");
diff --git a/arch/sandbox/board/board.c b/arch/sandbox/board/board.c
index 7d489fd..e3d2587 100644
--- a/arch/sandbox/board/board.c
+++ b/arch/sandbox/board/board.c
@@ -34,7 +34,7 @@ static struct device_d tap_device = {
 
 static int devices_init(void)
 {
-	register_device(&tap_device);
+	platform_device_register(&tap_device);
 
 	return 0;
 }
diff --git a/arch/sandbox/board/console.c b/arch/sandbox/board/console.c
index 2959e85..474953c 100644
--- a/arch/sandbox/board/console.c
+++ b/arch/sandbox/board/console.c
@@ -47,6 +47,6 @@ int barebox_register_console(char *name, int stdinfd, int stdoutfd)
 	data->stdoutfd = stdoutfd;
 	data->stdinfd  = stdinfd;
 
-	return register_device(dev);
+	return platform_device_register(dev);
 }
 
diff --git a/arch/sandbox/board/hostfile.c b/arch/sandbox/board/hostfile.c
index b3a7cd3..54d4906 100644
--- a/arch/sandbox/board/hostfile.c
+++ b/arch/sandbox/board/hostfile.c
@@ -95,7 +95,7 @@ static struct driver_d hf_drv = {
 
 static int hf_init(void)
 {
-	return register_driver(&hf_drv);
+	return platform_driver_register(&hf_drv);
 }
 
 device_initcall(hf_init);
diff --git a/commands/mem.c b/commands/mem.c
index 88af55c..e0e0e6e 100644
--- a/commands/mem.c
+++ b/commands/mem.c
@@ -619,7 +619,7 @@ static int mem_init(void)
 	}
 
 	add_mem_device("mem", 0, ~0, IORESOURCE_MEM_WRITEABLE);
-	register_driver(&mem_drv);
+	platform_driver_register(&mem_drv);
 
 	return 0;
 }
diff --git a/common/console.c b/common/console.c
index 6c88fba..ffd886e 100644
--- a/common/console.c
+++ b/common/console.c
@@ -134,7 +134,7 @@ int console_register(struct console_device *newcdev)
 	dev->type_data = newcdev;
 	if (newcdev->dev)
 		dev_add_child(newcdev->dev, dev);
-	register_device(dev);
+	platform_device_register(dev);
 
 	if (newcdev->setbrg) {
 		dev_add_param(dev, "baudrate", console_baudrate_set, NULL, 0);
diff --git a/drivers/ata/bios.c b/drivers/ata/bios.c
index 6e2377c..4aac33b 100644
--- a/drivers/ata/bios.c
+++ b/drivers/ata/bios.c
@@ -260,7 +260,7 @@ static int biosdisk_probe(struct device_d *dev)
 		drive_dev->resource[0].start = 0;
 		drive_dev->platform_data = p;
 
-		register_device(drive_dev);
+		platform_device_register(drive_dev);
 	}
 
 	return 0;
@@ -283,7 +283,7 @@ static int biosdisk_init(void)
 		return -EIO;
 	}
 
-	register_driver(&biosdisk_driver);
+	platform_driver_register(&biosdisk_driver);
 	return 0;
 }
 
diff --git a/drivers/ata/disk_drive.c b/drivers/ata/disk_drive.c
index 14b5e66..6123ca2 100644
--- a/drivers/ata/disk_drive.c
+++ b/drivers/ata/disk_drive.c
@@ -233,9 +233,9 @@ static struct driver_d disk_driver = {
 static int disk_init(void)
 {
 #ifdef CONFIG_ATA_BIOS
-	register_driver(&biosdisk_driver);
+	platform_driver_register(&biosdisk_driver);
 #endif
-	register_driver(&disk_driver);
+	platform_driver_register(&disk_driver);
 	return 0;
 }
 
diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 33eb016..b0d614b 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -116,13 +116,10 @@ int register_device(struct device_d *new_device)
 	debug ("register_device: %s\n", dev_name(new_device));
 
 	if (!new_device->bus) {
-//		dev_err(new_device, "no bus type associated. Needs fixup\n");
-		new_device->bus = &platform_bus;
+		dev_err(new_device, "no bus type associated. Needs fixup\n");
+		return -EIO;
 	}
 
-	if (!new_device->parent && new_device->bus == &platform_bus)
-		dev_add_child(&platform_bus_device, new_device);
-
 	list_add_tail(&new_device->list, &device_list);
 	INIT_LIST_HEAD(&new_device->children);
 	INIT_LIST_HEAD(&new_device->cdevs);
@@ -199,8 +196,8 @@ int register_driver(struct driver_d *drv)
 	debug("register_driver: %s\n", drv->name);
 
 	if (!drv->bus) {
-//		pr_err("driver %s has no bus type associated. Needs fixup\n", drv->name);
-		drv->bus = &platform_bus;
+		pr_err("driver %s has no bus type associated. Needs fixup\n", drv->name);
+		return -EIO;
 	}
 
 	list_add_tail(&drv->list, &driver_list);
diff --git a/drivers/base/platform.c b/drivers/base/platform.c
index 60c87d3..32f25d0 100644
--- a/drivers/base/platform.c
+++ b/drivers/base/platform.c
@@ -50,6 +50,23 @@ struct device_d platform_bus_device = {
 	.name	= "platform",
 };
 
+int platform_driver_register(struct driver_d *drv)
+{
+	drv->bus = &platform_bus;
+
+	return register_driver(drv);
+}
+
+int platform_device_register(struct device_d *dev)
+{
+	dev->bus = &platform_bus;
+
+	if (!dev->parent)
+		dev_add_child(&platform_bus_device, dev);
+
+	return register_device(dev);
+}
+
 static int platform_bus_init(void)
 {
 	register_bus_device(&platform_bus_device);
diff --git a/drivers/base/resource.c b/drivers/base/resource.c
index 175beb9..e8a47e6 100644
--- a/drivers/base/resource.c
+++ b/drivers/base/resource.c
@@ -52,7 +52,7 @@ struct device_d *add_generic_device(const char* devname, int id, const char *res
 	dev->resource[0].size = size;
 	dev->resource[0].flags = flags;
 
-	register_device(dev);
+	platform_device_register(dev);
 
 	return dev;
 }
@@ -91,7 +91,7 @@ struct device_d *add_dm9000_device(int id, resource_size_t base,
 	dev->resource[1].size = size;
 	dev->resource[1].flags = IORESOURCE_MEM | flags;
 
-	register_device(dev);
+	platform_device_register(dev);
 
 	return dev;
 }
@@ -112,7 +112,7 @@ struct device_d *add_usb_ehci_device(int id, resource_size_t hccr,
 	dev->resource[1].start = hcor;
 	dev->resource[1].flags = IORESOURCE_MEM;
 
-	register_device(dev);
+	platform_device_register(dev);
 
 	return dev;
 }
diff --git a/drivers/eeprom/at25.c b/drivers/eeprom/at25.c
index 8a979d5..f8e3a18 100644
--- a/drivers/eeprom/at25.c
+++ b/drivers/eeprom/at25.c
@@ -312,7 +312,7 @@ static struct driver_d at25_driver = {
 
 static int at25_init(void)
 {
-	register_driver(&at25_driver);
+	platform_driver_register(&at25_driver);
 	return 0;
 }
 
diff --git a/drivers/i2c/busses/i2c-imx.c b/drivers/i2c/busses/i2c-imx.c
index 2d075f7..2ae3050 100644
--- a/drivers/i2c/busses/i2c-imx.c
+++ b/drivers/i2c/busses/i2c-imx.c
@@ -502,6 +502,6 @@ static struct driver_d i2c_imx_driver = {
 
 static int __init i2c_adap_imx_init(void)
 {
-	return register_driver(&i2c_imx_driver);
+	return platform_driver_register(&i2c_imx_driver);
 }
 device_initcall(i2c_adap_imx_init);
diff --git a/drivers/i2c/busses/i2c-omap.c b/drivers/i2c/busses/i2c-omap.c
index 95c4fdf..b84a2f8 100644
--- a/drivers/i2c/busses/i2c-omap.c
+++ b/drivers/i2c/busses/i2c-omap.c
@@ -793,7 +793,7 @@ static struct driver_d omap_i2c_driver = {
 /* I2C may be needed to bring up other drivers */
 static int __init omap_i2c_init_driver(void)
 {
-	return register_driver(&omap_i2c_driver);
+	return platform_driver_register(&omap_i2c_driver);
 }
 device_initcall(omap_i2c_init_driver);
 
diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
index 5df0d30..489e38c 100644
--- a/drivers/i2c/i2c.c
+++ b/drivers/i2c/i2c.c
@@ -253,7 +253,7 @@ struct i2c_client *i2c_new_device(struct i2c_adapter *adapter,
 	client->adapter = adapter;
 	client->addr = chip->addr;
 
-	status = register_device(&client->dev);
+	status = platform_device_register(&client->dev);
 
 #if 0
 	/* drivers may modify this initial i/o setup */
diff --git a/drivers/mci/atmel_mci.c b/drivers/mci/atmel_mci.c
index 47e3924..a213a12 100644
--- a/drivers/mci/atmel_mci.c
+++ b/drivers/mci/atmel_mci.c
@@ -488,7 +488,7 @@ static struct driver_d atmel_mci_driver = {
 
 static int atmel_mci_init_driver(void)
 {
-	register_driver(&atmel_mci_driver);
+	platform_driver_register(&atmel_mci_driver);
 	return 0;
 }
 
diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index 358f0dc..d38144a 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -506,7 +506,7 @@ static struct driver_d fsl_esdhc_driver = {
 
 static int fsl_esdhc_init_driver(void)
 {
-        register_driver(&fsl_esdhc_driver);
+        platform_driver_register(&fsl_esdhc_driver);
         return 0;
 }
 
diff --git a/drivers/mci/imx.c b/drivers/mci/imx.c
index 905c251..6705e4c 100644
--- a/drivers/mci/imx.c
+++ b/drivers/mci/imx.c
@@ -513,7 +513,7 @@ static struct driver_d mxcmci_driver = {
 
 static int mxcmci_init_driver(void)
 {
-        register_driver(&mxcmci_driver);
+        platform_driver_register(&mxcmci_driver);
         return 0;
 }
 
diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index ce3c1eb..9ee9e8e 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1349,7 +1349,7 @@ static struct driver_d mci_driver = {
 static int mci_init(void)
 {
 	sector_buf = xmemalign(32, 512);
-	return register_driver(&mci_driver);
+	return platform_driver_register(&mci_driver);
 }
 
 device_initcall(mci_init);
@@ -1367,5 +1367,5 @@ int mci_register(struct mci_host *host)
 	mci_dev->platform_data = (void*)host;
 	dev_add_child(host->hw_dev, mci_dev);
 
-	return register_device(mci_dev);
+	return platform_device_register(mci_dev);
 }
diff --git a/drivers/mci/mxs.c b/drivers/mci/mxs.c
index 70b8be9..f45f635 100644
--- a/drivers/mci/mxs.c
+++ b/drivers/mci/mxs.c
@@ -766,7 +766,7 @@ static struct driver_d mxs_mci_driver = {
 
 static int mxs_mci_init_driver(void)
 {
-        register_driver(&mxs_mci_driver);
+        platform_driver_register(&mxs_mci_driver);
         return 0;
 }
 
diff --git a/drivers/mci/omap_hsmmc.c b/drivers/mci/omap_hsmmc.c
index 5fdf445..1ca0d64 100644
--- a/drivers/mci/omap_hsmmc.c
+++ b/drivers/mci/omap_hsmmc.c
@@ -578,7 +578,7 @@ static struct driver_d omap_mmc_driver = {
 
 static int omap_mmc_init_driver(void)
 {
-        register_driver(&omap_mmc_driver);
+        platform_driver_register(&omap_mmc_driver);
         return 0;
 }
 
diff --git a/drivers/mci/s3c.c b/drivers/mci/s3c.c
index c621445..7b3e0a1 100644
--- a/drivers/mci/s3c.c
+++ b/drivers/mci/s3c.c
@@ -823,7 +823,7 @@ static struct driver_d s3c_mci_driver = {
 
 static int s3c_mci_init_driver(void)
 {
-        register_driver(&s3c_mci_driver);
+        platform_driver_register(&s3c_mci_driver);
         return 0;
 }
 
diff --git a/drivers/mfd/lp3972.c b/drivers/mfd/lp3972.c
index 9826699..ca7ba57 100644
--- a/drivers/mfd/lp3972.c
+++ b/drivers/mfd/lp3972.c
@@ -103,7 +103,7 @@ static struct driver_d lp_driver = {
 
 static int lp_init(void)
 {
-	register_driver(&lp_driver);
+	platform_driver_register(&lp_driver);
 	return 0;
 }
 
diff --git a/drivers/mfd/mc13783.c b/drivers/mfd/mc13783.c
index 19e2780..7bd4145 100644
--- a/drivers/mfd/mc13783.c
+++ b/drivers/mfd/mc13783.c
@@ -229,7 +229,7 @@ static struct driver_d pmic_driver = {
 
 static int pmic_init(void)
 {
-        register_driver(&pmic_driver);
+        platform_driver_register(&pmic_driver);
         return 0;
 }
 
diff --git a/drivers/mfd/mc13892.c b/drivers/mfd/mc13892.c
index b2cc911..3fcba4a 100644
--- a/drivers/mfd/mc13892.c
+++ b/drivers/mfd/mc13892.c
@@ -319,8 +319,8 @@ static struct driver_d mc_spi_driver = {
 
 static int mc_init(void)
 {
-        register_driver(&mc_i2c_driver);
-        register_driver(&mc_spi_driver);
+        platform_driver_register(&mc_i2c_driver);
+        platform_driver_register(&mc_spi_driver);
         return 0;
 }
 
diff --git a/drivers/mfd/mc34704.c b/drivers/mfd/mc34704.c
index a2171b3..37a0280 100644
--- a/drivers/mfd/mc34704.c
+++ b/drivers/mfd/mc34704.c
@@ -134,7 +134,7 @@ static struct driver_d mc34704_driver = {
 
 static int mc34704_init(void)
 {
-	register_driver(&mc34704_driver);
+	platform_driver_register(&mc34704_driver);
         return 0;
 }
 device_initcall(mc34704_init);
diff --git a/drivers/mfd/mc9sdz60.c b/drivers/mfd/mc9sdz60.c
index db208ec..9121c0a 100644
--- a/drivers/mfd/mc9sdz60.c
+++ b/drivers/mfd/mc9sdz60.c
@@ -146,7 +146,7 @@ static struct driver_d mc_driver = {
 
 static int mc_init(void)
 {
-        register_driver(&mc_driver);
+        platform_driver_register(&mc_driver);
         return 0;
 }
 
diff --git a/drivers/mfd/twl4030.c b/drivers/mfd/twl4030.c
index 6a06bd4..2ab714b 100644
--- a/drivers/mfd/twl4030.c
+++ b/drivers/mfd/twl4030.c
@@ -179,7 +179,7 @@ static struct driver_d twl_driver = {
 
 static int twl_init(void)
 {
-        register_driver(&twl_driver);
+        platform_driver_register(&twl_driver);
         return 0;
 }
 
diff --git a/drivers/mtd/nand/atmel_nand.c b/drivers/mtd/nand/atmel_nand.c
index f79be9a..06b1ba4 100644
--- a/drivers/mtd/nand/atmel_nand.c
+++ b/drivers/mtd/nand/atmel_nand.c
@@ -506,7 +506,7 @@ static struct driver_d atmel_nand_driver = {
 
 static int __init atmel_nand_init(void)
 {
-	return register_driver(&atmel_nand_driver);
+	return platform_driver_register(&atmel_nand_driver);
 }
 
 device_initcall(atmel_nand_init);
diff --git a/drivers/mtd/nand/nand.c b/drivers/mtd/nand/nand.c
index 9423ac8..ae74324 100644
--- a/drivers/mtd/nand/nand.c
+++ b/drivers/mtd/nand/nand.c
@@ -254,7 +254,7 @@ int add_mtd_device(struct mtd_info *mtd)
 	char str[16];
 
 	strcpy(mtd->class_dev.name, "nand");
-	register_device(&mtd->class_dev);
+	platform_device_register(&mtd->class_dev);
 
 	mtd->cdev.ops = &nand_ops;
 	mtd->cdev.size = mtd->size;
@@ -275,7 +275,7 @@ int add_mtd_device(struct mtd_info *mtd)
 
 int del_mtd_device (struct mtd_info *mtd)
 {
-	unregister_device(&mtd->class_dev);
+	platform_device_unregister(&mtd->class_dev);
 	nand_exit_oob_cdev(mtd);
 	free(mtd->param_size.value);
 	free(mtd->cdev.name);
diff --git a/drivers/mtd/nand/nand_imx.c b/drivers/mtd/nand/nand_imx.c
index e471c8a..bcb8a24 100644
--- a/drivers/mtd/nand/nand_imx.c
+++ b/drivers/mtd/nand/nand_imx.c
@@ -1185,7 +1185,7 @@ static struct driver_d imx_nand_driver = {
  */
 static int __init imx_nand_init(void)
 {
-	return register_driver(&imx_nand_driver);
+	return platform_driver_register(&imx_nand_driver);
 }
 
 device_initcall(imx_nand_init);
diff --git a/drivers/mtd/nand/nand_omap_gpmc.c b/drivers/mtd/nand/nand_omap_gpmc.c
index 083aa57..b5d35fd 100644
--- a/drivers/mtd/nand/nand_omap_gpmc.c
+++ b/drivers/mtd/nand/nand_omap_gpmc.c
@@ -842,7 +842,7 @@ static struct driver_d gpmc_nand_driver = {
 
 static int gpmc_nand_init(void)
 {
-	return register_driver(&gpmc_nand_driver);
+	return platform_driver_register(&gpmc_nand_driver);
 }
 
 device_initcall(gpmc_nand_init);
diff --git a/drivers/mtd/nand/nand_s3c2410.c b/drivers/mtd/nand/nand_s3c2410.c
index 0ce20d4..bdb8858 100644
--- a/drivers/mtd/nand/nand_s3c2410.c
+++ b/drivers/mtd/nand/nand_s3c2410.c
@@ -644,7 +644,7 @@ BAREBOX_CMD_END
  */
 static int __init s3c24x0_nand_init(void)
 {
-	return register_driver(&s3c24x0_nand_driver);
+	return platform_driver_register(&s3c24x0_nand_driver);
 }
 
 device_initcall(s3c24x0_nand_init);
diff --git a/drivers/mtd/nand/nomadik_nand.c b/drivers/mtd/nand/nomadik_nand.c
index 3073011..e9ff8b6 100644
--- a/drivers/mtd/nand/nomadik_nand.c
+++ b/drivers/mtd/nand/nomadik_nand.c
@@ -237,7 +237,7 @@ static struct driver_d nomadik_nand_driver = {
 static int __init nand_nomadik_init(void)
 {
 	pr_info("Nomadik NAND driver\n");
-	return register_driver(&nomadik_nand_driver);
+	return platform_driver_register(&nomadik_nand_driver);
 }
 
 device_initcall(nand_nomadik_init);
diff --git a/drivers/net/altera_tse.c b/drivers/net/altera_tse.c
index 7e456c7..2b9eea8 100644
--- a/drivers/net/altera_tse.c
+++ b/drivers/net/altera_tse.c
@@ -570,7 +570,7 @@ static struct driver_d altera_tse_driver = {
 
 static int tse_init(void)
 {
-	register_driver(&altera_tse_driver);
+	platform_driver_register(&altera_tse_driver);
 	return 0;
 }
 
diff --git a/drivers/net/at91_ether.c b/drivers/net/at91_ether.c
index 8d0b43b..1d477f9 100644
--- a/drivers/net/at91_ether.c
+++ b/drivers/net/at91_ether.c
@@ -337,7 +337,7 @@ static struct driver_d at91_eth_driver = {
 
 static int at91_eth_init(void)
 {
-        register_driver(&at91_eth_driver);
+        platform_driver_register(&at91_eth_driver);
         return 0;
 }
 
diff --git a/drivers/net/cs8900.c b/drivers/net/cs8900.c
index 33afc5e..c1766eb 100644
--- a/drivers/net/cs8900.c
+++ b/drivers/net/cs8900.c
@@ -472,7 +472,7 @@ static struct driver_d cs8900_driver = {
 
 static int cs8900_init(void)
 {
-	register_driver(&cs8900_driver);
+	platform_driver_register(&cs8900_driver);
 	return 0;
 }
 
diff --git a/drivers/net/dm9000.c b/drivers/net/dm9000.c
index e9ec61b..feefd63 100644
--- a/drivers/net/dm9000.c
+++ b/drivers/net/dm9000.c
@@ -556,7 +556,7 @@ static struct driver_d dm9000_driver = {
 
 static int dm9000_init(void)
 {
-        register_driver(&dm9000_driver);
+        platform_driver_register(&dm9000_driver);
         return 0;
 }
 
diff --git a/drivers/net/ep93xx.c b/drivers/net/ep93xx.c
index 954ec78..c901090 100644
--- a/drivers/net/ep93xx.c
+++ b/drivers/net/ep93xx.c
@@ -662,7 +662,7 @@ static struct driver_d ep93xx_eth_driver = {
 
 static int ep93xx_eth_init(void)
 {
-	register_driver(&ep93xx_eth_driver);
+	platform_driver_register(&ep93xx_eth_driver);
 	return 0;
 }
 
diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 3b0f266..b307502 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -672,7 +672,7 @@ static struct driver_d fec_driver = {
 
 static int fec_register(void)
 {
-        register_driver(&fec_driver);
+        platform_driver_register(&fec_driver);
         return 0;
 }
 
diff --git a/drivers/net/fec_mpc5200.c b/drivers/net/fec_mpc5200.c
index 403aad5..aa77dba 100644
--- a/drivers/net/fec_mpc5200.c
+++ b/drivers/net/fec_mpc5200.c
@@ -704,7 +704,7 @@ static struct driver_d mpc5xxx_driver = {
 
 static int mpc5xxx_fec_register(void)
 {
-        register_driver(&mpc5xxx_driver);
+        platform_driver_register(&mpc5xxx_driver);
         return 0;
 }
 
diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index 898cf3d..77a3cd1 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -486,7 +486,7 @@ static struct driver_d macb_driver = {
 static int macb_driver_init(void)
 {
 	debug("%s\n", __func__);
-        register_driver(&macb_driver);
+        platform_driver_register(&macb_driver);
         return 0;
 }
 
diff --git a/drivers/net/miidev.c b/drivers/net/miidev.c
index fe02db7..d616c10 100644
--- a/drivers/net/miidev.c
+++ b/drivers/net/miidev.c
@@ -213,17 +213,17 @@ int mii_register(struct mii_device *mdev)
 	if (mdev->parent)
 		dev_add_child(mdev->parent, &mdev->dev);
 
-	return register_device(&mdev->dev);
+	return platform_device_register(&mdev->dev);
 }
 
 void mii_unregister(struct mii_device *mdev)
 {
-	unregister_device(&mdev->dev);
+	platform_device_unregister(&mdev->dev);
 }
 
 static int miidev_init(void)
 {
-	register_driver(&miidev_drv);
+	platform_driver_register(&miidev_drv);
 	return 0;
 }
 
diff --git a/drivers/net/netx_eth.c b/drivers/net/netx_eth.c
index 5503bc9..e136c81 100644
--- a/drivers/net/netx_eth.c
+++ b/drivers/net/netx_eth.c
@@ -280,7 +280,7 @@ static struct driver_d netx_eth_driver = {
 
 static int netx_eth_init(void)
 {
-        register_driver(&netx_eth_driver);
+        platform_driver_register(&netx_eth_driver);
         return 0;
 }
 
diff --git a/drivers/net/smc91111.c b/drivers/net/smc91111.c
index 2313aae..d478e9c 100644
--- a/drivers/net/smc91111.c
+++ b/drivers/net/smc91111.c
@@ -1336,7 +1336,7 @@ static struct driver_d smc91c111_driver = {
 
 static int smc91c111_init(void)
 {
-        register_driver(&smc91c111_driver);
+        platform_driver_register(&smc91c111_driver);
         return 0;
 }
 
diff --git a/drivers/net/smc911x.c b/drivers/net/smc911x.c
index fba61c4..6acba9c 100644
--- a/drivers/net/smc911x.c
+++ b/drivers/net/smc911x.c
@@ -751,7 +751,7 @@ static struct driver_d smc911x_driver = {
 
 static int smc911x_init(void)
 {
-        register_driver(&smc911x_driver);
+        platform_driver_register(&smc911x_driver);
         return 0;
 }
 
diff --git a/drivers/net/tap.c b/drivers/net/tap.c
index a30a9c8..38c3ae7 100644
--- a/drivers/net/tap.c
+++ b/drivers/net/tap.c
@@ -115,7 +115,7 @@ static struct driver_d tap_driver = {
 
 static int tap_init(void)
 {
-        register_driver(&tap_driver);
+        platform_driver_register(&tap_driver);
         return 0;
 }
 
diff --git a/drivers/net/usb/usbnet.c b/drivers/net/usb/usbnet.c
index 5ffd7a6..da740ce 100644
--- a/drivers/net/usb/usbnet.c
+++ b/drivers/net/usb/usbnet.c
@@ -236,7 +236,7 @@ void usbnet_disconnect(struct usb_device *usbdev)
 	struct driver_info *info;
 
 	eth_unregister(edev);
-	unregister_device(&edev->dev);
+	platform_device_unregister(&edev->dev);
 
 	info = undev->driver_info;
 	if (info->unbind)
diff --git a/drivers/nor/cfi_flash.c b/drivers/nor/cfi_flash.c
index 461b0e6..009e626 100644
--- a/drivers/nor/cfi_flash.c
+++ b/drivers/nor/cfi_flash.c
@@ -1017,7 +1017,7 @@ static struct driver_d cfi_driver = {
 
 static int cfi_init(void)
 {
-        return register_driver(&cfi_driver);
+        return platform_driver_register(&cfi_driver);
 }
 
 device_initcall(cfi_init);
diff --git a/drivers/serial/amba-pl011.c b/drivers/serial/amba-pl011.c
index 2b6d5d3..c5252dd 100644
--- a/drivers/serial/amba-pl011.c
+++ b/drivers/serial/amba-pl011.c
@@ -190,7 +190,7 @@ static struct driver_d pl011_driver = {
 
 static int pl011_init(void)
 {
-	register_driver(&pl011_driver);
+	platform_driver_register(&pl011_driver);
 	return 0;
 }
 
diff --git a/drivers/serial/arm_dcc.c b/drivers/serial/arm_dcc.c
index e1066ab..100468d 100644
--- a/drivers/serial/arm_dcc.c
+++ b/drivers/serial/arm_dcc.c
@@ -161,8 +161,8 @@ static struct device_d arm_dcc_device = {
 
 static int arm_dcc_init(void)
 {
-	register_device(&arm_dcc_device);
-	register_driver(&arm_dcc_driver);
+	platform_device_register(&arm_dcc_device);
+	platform_driver_register(&arm_dcc_driver);
 	return 0;
 }
 
diff --git a/drivers/serial/atmel.c b/drivers/serial/atmel.c
index 2d4b842..120a985 100644
--- a/drivers/serial/atmel.c
+++ b/drivers/serial/atmel.c
@@ -425,7 +425,7 @@ static struct driver_d atmel_serial_driver = {
 
 static int atmel_serial_init(void)
 {
-	register_driver(&atmel_serial_driver);
+	platform_driver_register(&atmel_serial_driver);
 	return 0;
 }
 
diff --git a/drivers/serial/linux_console.c b/drivers/serial/linux_console.c
index c792b50..d9b7639 100644
--- a/drivers/serial/linux_console.c
+++ b/drivers/serial/linux_console.c
@@ -85,7 +85,7 @@ static struct driver_d linux_console_driver = {
 
 static int console_init(void)
 {
-	return register_driver(&linux_console_driver);
+	return platform_driver_register(&linux_console_driver);
 }
 
 console_initcall(console_init);
diff --git a/drivers/serial/serial_altera.c b/drivers/serial/serial_altera.c
index 1148564..2fc9b8c 100644
--- a/drivers/serial/serial_altera.c
+++ b/drivers/serial/serial_altera.c
@@ -109,7 +109,7 @@ static struct driver_d altera_serial_driver = {
 
 static int altera_serial_init(void)
 {
-	return register_driver(&altera_serial_driver);
+	return platform_driver_register(&altera_serial_driver);
 }
 
 console_initcall(altera_serial_init);
diff --git a/drivers/serial/serial_altera_jtag.c b/drivers/serial/serial_altera_jtag.c
index 2e34c89..26d5423 100644
--- a/drivers/serial/serial_altera_jtag.c
+++ b/drivers/serial/serial_altera_jtag.c
@@ -114,7 +114,7 @@ static struct driver_d altera_serial_jtag_driver = {
 
 static int altera_serial_jtag_init(void)
 {
-	return register_driver(&altera_serial_jtag_driver);
+	return platform_driver_register(&altera_serial_jtag_driver);
 }
 
 console_initcall(altera_serial_jtag_init);
diff --git a/drivers/serial/serial_blackfin.c b/drivers/serial/serial_blackfin.c
index 59b2fbb..01dc1a1 100644
--- a/drivers/serial/serial_blackfin.c
+++ b/drivers/serial/serial_blackfin.c
@@ -138,7 +138,7 @@ static struct driver_d blackfin_serial_driver = {
 
 static int blackfin_serial_init(void)
 {
-	register_driver(&blackfin_serial_driver);
+	platform_driver_register(&blackfin_serial_driver);
 	return 0;
 }
 
diff --git a/drivers/serial/serial_imx.c b/drivers/serial/serial_imx.c
index e3edac9..5415007 100644
--- a/drivers/serial/serial_imx.c
+++ b/drivers/serial/serial_imx.c
@@ -363,7 +363,7 @@ static struct driver_d imx_serial_driver = {
 
 static int imx_serial_init(void)
 {
-	register_driver(&imx_serial_driver);
+	platform_driver_register(&imx_serial_driver);
 	return 0;
 }
 
diff --git a/drivers/serial/serial_mpc5xxx.c b/drivers/serial/serial_mpc5xxx.c
index fb580cf..5e15345 100644
--- a/drivers/serial/serial_mpc5xxx.c
+++ b/drivers/serial/serial_mpc5xxx.c
@@ -175,7 +175,7 @@ static struct driver_d mpc5xxx_serial_driver = {
 
 static int mpc5xxx_serial_register(void)
 {
-	register_driver(&mpc5xxx_serial_driver);
+	platform_driver_register(&mpc5xxx_serial_driver);
 	return 0;
 }
 
diff --git a/drivers/serial/serial_netx.c b/drivers/serial/serial_netx.c
index fbbc4ef..ca72de7 100644
--- a/drivers/serial/serial_netx.c
+++ b/drivers/serial/serial_netx.c
@@ -164,7 +164,7 @@ static struct driver_d netx_serial_driver = {
 
 static int netx_serial_init(void)
 {
-	register_driver(&netx_serial_driver);
+	platform_driver_register(&netx_serial_driver);
 	return 0;
 }
 
diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
index 36d39cd..5252518 100644
--- a/drivers/serial/serial_ns16550.c
+++ b/drivers/serial/serial_ns16550.c
@@ -270,11 +270,11 @@ static struct driver_d ns16550_serial_driver = {
 /**
  * @brief driver initialization function
  *
- * @return result of register_driver
+ * @return result of platform_driver_register
  */
 static int ns16550_serial_init(void)
 {
-	return register_driver(&ns16550_serial_driver);
+	return platform_driver_register(&ns16550_serial_driver);
 }
 
 console_initcall(ns16550_serial_init);
diff --git a/drivers/serial/serial_pl010.c b/drivers/serial/serial_pl010.c
index 9f7b7d3..6dc2bd3 100644
--- a/drivers/serial/serial_pl010.c
+++ b/drivers/serial/serial_pl010.c
@@ -165,7 +165,7 @@ static struct driver_d pl010_driver = {
 
 static int pl010_init(void)
 {
-	register_driver(&pl010_driver);
+	platform_driver_register(&pl010_driver);
 
 	return 0;
 }
diff --git a/drivers/serial/serial_s3c24x0.c b/drivers/serial/serial_s3c24x0.c
index 21bca12..cf45f76 100644
--- a/drivers/serial/serial_s3c24x0.c
+++ b/drivers/serial/serial_s3c24x0.c
@@ -163,7 +163,7 @@ static struct driver_d s3c24x0_serial_driver = {
 
 static int s3c24x0_serial_init(void)
 {
-	register_driver(&s3c24x0_serial_driver);
+	platform_driver_register(&s3c24x0_serial_driver);
 	return 0;
 }
 
diff --git a/drivers/serial/stm-serial.c b/drivers/serial/stm-serial.c
index 4264345..e992ea1 100644
--- a/drivers/serial/stm-serial.c
+++ b/drivers/serial/stm-serial.c
@@ -190,7 +190,7 @@ static struct driver_d stm_serial_driver = {
 
 static int stm_serial_init(void)
 {
-	register_driver(&stm_serial_driver);
+	platform_driver_register(&stm_serial_driver);
 	return 0;
 }
 
diff --git a/drivers/spi/imx_spi.c b/drivers/spi/imx_spi.c
index 0e2ea7e..3eb6455 100644
--- a/drivers/spi/imx_spi.c
+++ b/drivers/spi/imx_spi.c
@@ -356,7 +356,7 @@ static struct driver_d imx_spi_driver = {
 
 static int imx_spi_init(void)
 {
-	register_driver(&imx_spi_driver);
+	platform_driver_register(&imx_spi_driver);
 	return 0;
 }
 
diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index b561f9d..d77162c 100644
--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -80,7 +80,7 @@ struct spi_device *spi_new_device(struct spi_master *master,
 	strcpy(proxy->dev.name, chip->name);
 	proxy->dev.type_data = proxy;
 	dev_add_child(master->dev, &proxy->dev);
-	status = register_device(&proxy->dev);
+	status = platform_device_register(&proxy->dev);
 
 	/* drivers may modify this initial i/o setup */
 	status = master->setup(proxy);
@@ -93,7 +93,7 @@ struct spi_device *spi_new_device(struct spi_master *master,
 	return proxy;
 
 fail:
-	unregister_device(&proxy->dev);
+	platform_device_unregister(&proxy->dev);
 	free(proxy);
 	return NULL;
 }
diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index b01a797..271ee9f 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -427,7 +427,7 @@ static int usb_new_device(struct usb_device *dev)
 
 	print_usb_device(dev);
 
-	register_device(&dev->dev);
+	platform_device_register(&dev->dev);
 	list_add_tail(&dev->list, &usb_device_list);
 
 	return 0;
@@ -457,7 +457,7 @@ void usb_rescan(void)
 
 	list_for_each_entry_safe(dev, tmp, &usb_device_list, list) {
 		list_del(&dev->list);
-		unregister_device(&dev->dev);
+		platform_device_unregister(&dev->dev);
 		if (dev->hub)
 			free(dev->hub);
 		free(dev);
@@ -1273,7 +1273,7 @@ static int usb_hub_probe(struct usb_device *dev, int ifnum)
 int usb_driver_register(struct usb_driver *drv)
 {
 	drv->driver.bus = &usb_bus_type;
-	return register_driver(&drv->driver);
+	return platform_driver_register(&drv->driver);
 }
 
 /* returns 0 if no match, 1 if match */
diff --git a/drivers/usb/gadget/composite.c b/drivers/usb/gadget/composite.c
index fd70e62..b21e87e 100644
--- a/drivers/usb/gadget/composite.c
+++ b/drivers/usb/gadget/composite.c
@@ -1004,7 +1004,7 @@ int usb_composite_register(struct usb_composite_driver *driver)
 	composite_driver.function =  (char *) driver->name;
 	composite = driver;
 
-	return usb_gadget_register_driver(&composite_driver);
+	return usb_gadget_platform_driver_register(&composite_driver);
 }
 
 /**
@@ -1018,5 +1018,5 @@ void usb_composite_unregister(struct usb_composite_driver *driver)
 {
 	if (composite != driver)
 		return;
-	usb_gadget_unregister_driver(&composite_driver);
+	usb_gadget_unplatform_driver_register(&composite_driver);
 }
diff --git a/drivers/usb/gadget/fsl_udc.c b/drivers/usb/gadget/fsl_udc.c
index 1e4d4b0..2a512b8 100644
--- a/drivers/usb/gadget/fsl_udc.c
+++ b/drivers/usb/gadget/fsl_udc.c
@@ -1977,7 +1977,7 @@ int usb_gadget_poll(void)
  * Hook to gadget drivers
  * Called by initialization code of gadget drivers
 *----------------------------------------------------------------*/
-int usb_gadget_register_driver(struct usb_gadget_driver *driver)
+int usb_gadget_platform_driver_register(struct usb_gadget_driver *driver)
 {
 	int retval = -ENODEV;
 
@@ -2016,10 +2016,10 @@ out:
 		       retval);
 	return retval;
 }
-EXPORT_SYMBOL(usb_gadget_register_driver);
+EXPORT_SYMBOL(usb_gadget_platform_driver_register);
 
 /* Disconnect from gadget driver */
-int usb_gadget_unregister_driver(struct usb_gadget_driver *driver)
+int usb_gadget_unplatform_driver_register(struct usb_gadget_driver *driver)
 {
 	struct fsl_ep *loop_ep;
 
@@ -2053,7 +2053,7 @@ int usb_gadget_unregister_driver(struct usb_gadget_driver *driver)
 
 	return 0;
 }
-EXPORT_SYMBOL(usb_gadget_unregister_driver);
+EXPORT_SYMBOL(usb_gadget_unplatform_driver_register);
 
 static int struct_udc_setup(struct fsl_udc *udc,
 		struct device_d *dev)
@@ -2305,7 +2305,7 @@ static struct driver_d fsl_udc_driver = {
 
 static int fsl_udc_init(void)
 {
-	register_driver(&fsl_udc_driver);
+	platform_driver_register(&fsl_udc_driver);
 	return 0;
 }
 
diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index 60fc181..5e027d2 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -950,7 +950,7 @@ static struct driver_d ehci_driver = {
 
 static int ehcil_init(void)
 {
-	register_driver(&ehci_driver);
+	platform_driver_register(&ehci_driver);
 	return 0;
 }
 
diff --git a/drivers/video/fb.c b/drivers/video/fb.c
index 0be465f..6ce10d1 100644
--- a/drivers/video/fb.c
+++ b/drivers/video/fb.c
@@ -125,7 +125,7 @@ int register_framebuffer(struct fb_info *info)
 
 	sprintf(dev->name, "fb");
 
-	register_device(&info->dev);
+	platform_device_register(&info->dev);
 	dev_add_param(dev, "enable", fb_enable_set, NULL, 0);
 	dev_set_param(dev, "enable", "0");
 
@@ -173,7 +173,7 @@ static struct driver_d fb_driver = {
 
 static int fb_init_driver(void)
 {
-	register_driver(&fb_driver);
+	platform_driver_register(&fb_driver);
 	return 0;
 }
 device_initcall(fb_init_driver);
diff --git a/drivers/video/imx-ipu-fb.c b/drivers/video/imx-ipu-fb.c
index 5ae8c4b..c4f1227 100644
--- a/drivers/video/imx-ipu-fb.c
+++ b/drivers/video/imx-ipu-fb.c
@@ -903,7 +903,7 @@ static struct driver_d imx3fb_driver = {
 
 static int imx3fb_init(void)
 {
-	return register_driver(&imx3fb_driver);
+	return platform_driver_register(&imx3fb_driver);
 }
 
 device_initcall(imx3fb_init);
diff --git a/drivers/video/imx.c b/drivers/video/imx.c
index c19e83e..6c8bd73 100644
--- a/drivers/video/imx.c
+++ b/drivers/video/imx.c
@@ -594,7 +594,7 @@ static struct driver_d imxfb_driver = {
 
 static int imxfb_init(void)
 {
-	return register_driver(&imxfb_driver);
+	return platform_driver_register(&imxfb_driver);
 }
 
 device_initcall(imxfb_init);
diff --git a/drivers/video/s3c.c b/drivers/video/s3c.c
index d079fde..7eb7533 100644
--- a/drivers/video/s3c.c
+++ b/drivers/video/s3c.c
@@ -415,7 +415,7 @@ static struct driver_d s3cfb_driver = {
 
 static int s3cfb_init(void)
 {
-	return register_driver(&s3cfb_driver);
+	return platform_driver_register(&s3cfb_driver);
 }
 
 device_initcall(s3cfb_init);
diff --git a/drivers/video/stm.c b/drivers/video/stm.c
index 78acad7..b9205bc 100644
--- a/drivers/video/stm.c
+++ b/drivers/video/stm.c
@@ -519,7 +519,7 @@ static struct driver_d stmfb_driver = {
 
 static int stmfb_init(void)
 {
-	return register_driver(&stmfb_driver);
+	return platform_driver_register(&stmfb_driver);
 }
 
 device_initcall(stmfb_init);
diff --git a/fs/fs.c b/fs/fs.c
index 7d65ec8..b4900a2 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -716,7 +716,7 @@ static LIST_HEAD(fs_driver_list);
 int register_fs_driver(struct fs_driver_d *fsdrv)
 {
 	list_add_tail(&fsdrv->list, &fs_driver_list);
-	register_driver(&fsdrv->drv);
+	platform_driver_register(&fsdrv->drv);
 	return 0;
 }
 EXPORT_SYMBOL(register_fs_driver);
@@ -787,7 +787,7 @@ int mount(const char *device, const char *fsname, const char *_path)
 	fsdev->dev.type_data = fsdev;
 	fsdev->dev.id = get_free_deviceid(fsdev->dev.name);
 
-	if ((ret = register_device(&fsdev->dev))) {
+	if ((ret = platform_device_register(&fsdev->dev))) {
 		errno = ret;
 		goto out1;
 	}
@@ -824,7 +824,7 @@ int mount(const char *device, const char *fsname, const char *_path)
 	return 0;
 
 out2:
-	unregister_device(&fsdev->dev);
+	platform_device_unregister(&fsdev->dev);
 out1:
 	if (fsdev->backingstore)
 		free(fsdev->backingstore);
@@ -859,7 +859,7 @@ int umount(const char *pathname)
 	else
 		last->next = entry->next;
 
-	unregister_device(entry->dev);
+	platform_device_unregister(entry->dev);
 	fsdev = entry->dev->type_data;
 	free(fsdev->backingstore);
 	free(fsdev);
diff --git a/include/driver.h b/include/driver.h
index c122cf2..c3da162 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -143,6 +143,14 @@ int register_device(struct device_d *);
  */
 int unregister_device(struct device_d *);
 
+int platform_driver_register(struct driver_d *);
+int platform_device_register(struct device_d *);
+
+static inline int platform_device_unregister(struct device_d *dev)
+{
+	return unregister_device(dev);
+}
+
 /* Organize devices in a tree. These functions do _not_ register or
  * unregister a device. Only registered devices are allowed here.
  */
diff --git a/net/eth.c b/net/eth.c
index 406a4e6..0527c91 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -203,7 +203,7 @@ int eth_register(struct eth_device *edev)
 	if (edev->parent)
 		dev_add_child(edev->parent, &edev->dev);
 
-	register_device(&edev->dev);
+	platform_device_register(&edev->dev);
 
 	dev->type_data = edev;
 	dev_add_param(dev, "ipaddr", eth_set_ipaddr, NULL, 0);
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
