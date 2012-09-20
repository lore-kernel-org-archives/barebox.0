Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 19.mo5.mail-out.ovh.net ([46.105.35.78]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TEZTt-0003do-C8
 for barebox@lists.infradead.org; Thu, 20 Sep 2012 05:39:28 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 05650FF954D
 for <barebox@lists.infradead.org>; Thu, 20 Sep 2012 07:45:10 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 20 Sep 2012 07:36:46 +0200
Message-Id: <1348119406-17464-6-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1348119406-17464-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120920053418.GB26553@game.jcrosoft.org>
 <1348119406-17464-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 6/6] switch all platform_bus device/driver registering to
 platform_driver/device_register
To: barebox@lists.infradead.org

now register_driver and register_device are for bus only usage.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 Documentation/porting.txt                      |    2 +-
 arch/arm/boards/nhk8815/setup.c                |    2 +-
 arch/arm/boards/pcm038/pcm970.c                |    2 +-
 arch/arm/mach-imx/clocksource.c                |    2 +-
 arch/arm/mach-imx/gpio.c                       |    2 +-
 arch/arm/mach-imx/iim.c                        |    2 +-
 arch/arm/mach-imx/include/mach/devices-imx51.h |    2 +-
 arch/arm/mach-imx/include/mach/devices-imx53.h |    2 +-
 arch/arm/mach-mxs/ocotp.c                      |    2 +-
 arch/arm/mach-omap/arch-omap.dox               |    2 +-
 arch/nios2/boards/generic/generic.c            |    2 +-
 arch/sandbox/board/board.c                     |    2 +-
 arch/sandbox/board/devices.c                   |    2 +-
 arch/sandbox/board/hostfile.c                  |    2 +-
 commands/mem.c                                 |    2 +-
 common/console.c                               |    2 +-
 common/globalvar.c                             |    2 +-
 drivers/ata/disk_bios_drive.c                  |    2 +-
 drivers/ata/intf_platform_ide.c                |    2 +-
 drivers/base/driver.c                          |   20 ++----------------
 drivers/base/platform.c                        |   26 ++++++++++++++++++++++++
 drivers/base/resource.c                        |    2 +-
 drivers/gpio/gpio-stmpe.c                      |    2 +-
 drivers/i2c/busses/i2c-imx.c                   |    2 +-
 drivers/i2c/busses/i2c-omap.c                  |    2 +-
 drivers/input/gpio_keys.c                      |    2 +-
 drivers/input/imx_keypad.c                     |    2 +-
 drivers/mci/atmel_mci.c                        |    2 +-
 drivers/mci/imx-esdhc.c                        |    2 +-
 drivers/mci/imx.c                              |    2 +-
 drivers/mci/mci-core.c                         |    4 ++--
 drivers/mci/mxs.c                              |    2 +-
 drivers/mci/omap_hsmmc.c                       |    2 +-
 drivers/mci/pxamci.c                           |    2 +-
 drivers/mci/s3c.c                              |    2 +-
 drivers/misc/jtag.c                            |    2 +-
 drivers/mtd/core.c                             |    2 +-
 drivers/mtd/devices/docg3.c                    |    2 +-
 drivers/mtd/nand/atmel_nand.c                  |    2 +-
 drivers/mtd/nand/nand_imx.c                    |    2 +-
 drivers/mtd/nand/nand_mxs.c                    |    2 +-
 drivers/mtd/nand/nand_omap_gpmc.c              |    2 +-
 drivers/mtd/nand/nand_s3c24xx.c                |    2 +-
 drivers/mtd/nand/nomadik_nand.c                |    2 +-
 drivers/net/altera_tse.c                       |    2 +-
 drivers/net/at91_ether.c                       |    2 +-
 drivers/net/cs8900.c                           |    2 +-
 drivers/net/davinci_emac.c                     |    2 +-
 drivers/net/designware.c                       |    2 +-
 drivers/net/dm9k.c                             |    2 +-
 drivers/net/ep93xx.c                           |    2 +-
 drivers/net/fec_imx.c                          |    2 +-
 drivers/net/fec_mpc5200.c                      |    2 +-
 drivers/net/gianfar.c                          |    2 +-
 drivers/net/ks8851_mll.c                       |    2 +-
 drivers/net/macb.c                             |    2 +-
 drivers/net/miidev.c                           |    4 ++--
 drivers/net/netx_eth.c                         |    2 +-
 drivers/net/smc91111.c                         |    2 +-
 drivers/net/smc911x.c                          |    2 +-
 drivers/net/tap.c                              |    2 +-
 drivers/nor/cfi_flash.c                        |    2 +-
 drivers/of/base.c                              |    2 +-
 drivers/pwm/pxa_pwm.c                          |    2 +-
 drivers/serial/arm_dcc.c                       |    4 ++--
 drivers/serial/atmel.c                         |    2 +-
 drivers/serial/linux_console.c                 |    2 +-
 drivers/serial/serial_altera.c                 |    2 +-
 drivers/serial/serial_altera_jtag.c            |    2 +-
 drivers/serial/serial_blackfin.c               |    2 +-
 drivers/serial/serial_imx.c                    |    2 +-
 drivers/serial/serial_mpc5xxx.c                |    2 +-
 drivers/serial/serial_netx.c                   |    2 +-
 drivers/serial/serial_ns16550.c                |    4 ++--
 drivers/serial/serial_pl010.c                  |    2 +-
 drivers/serial/serial_pxa.c                    |    2 +-
 drivers/serial/serial_s3c.c                    |    2 +-
 drivers/serial/stm-serial.c                    |    2 +-
 drivers/spi/altera_spi.c                       |    2 +-
 drivers/spi/atmel_spi.c                        |    2 +-
 drivers/spi/imx_spi.c                          |    2 +-
 drivers/spi/omap3_spi.c                        |    2 +-
 drivers/usb/gadget/at91_udc.c                  |    2 +-
 drivers/usb/gadget/fsl_udc.c                   |    2 +-
 drivers/usb/gadget/pxa27x_udc.c                |    2 +-
 drivers/usb/host/ehci-hcd.c                    |    2 +-
 drivers/usb/host/ohci-at91.c                   |    2 +-
 drivers/usb/host/ohci-hcd.c                    |    2 +-
 drivers/video/fb.c                             |    4 ++--
 drivers/video/imx-ipu-fb.c                     |    2 +-
 drivers/video/imx.c                            |    2 +-
 drivers/video/pxa.c                            |    2 +-
 drivers/video/s3c24xx.c                        |    2 +-
 drivers/video/stm.c                            |    2 +-
 drivers/watchdog/im28wd.c                      |    2 +-
 include/driver.h                               |    3 +++
 net/eth.c                                      |    2 +-
 net/net.c                                      |    2 +-
 98 files changed, 131 insertions(+), 118 deletions(-)

diff --git a/Documentation/porting.txt b/Documentation/porting.txt
index ccfe598..a350e5e 100644
--- a/Documentation/porting.txt
+++ b/Documentation/porting.txt
@@ -40,7 +40,7 @@ extra-y += barebox.lds
 
 	static int scb9328_console_init(void)
 	{
-		register_device(&scb9328_serial_device);
+		platform_device_register(&scb9328_serial_device);
 		return 0;
 	}
 
diff --git a/arch/arm/boards/nhk8815/setup.c b/arch/arm/boards/nhk8815/setup.c
index b455afe..7f93ecb 100644
--- a/arch/arm/boards/nhk8815/setup.c
+++ b/arch/arm/boards/nhk8815/setup.c
@@ -94,7 +94,7 @@ static int nhk8815_devices_init(void)
 	add_generic_device("smc91c111", DEVICE_ID_DYNAMIC, NULL, 0x34000300, 16,
 			   IORESOURCE_MEM, NULL);
 
-	register_device(&nhk8815_nand_device);
+	platform_device_register(&nhk8815_nand_device);
 
 	armlinux_set_architecture(MACH_TYPE_NOMADIK);
 	armlinux_set_bootparams((void *)(0x00000100));
diff --git a/arch/arm/boards/pcm038/pcm970.c b/arch/arm/boards/pcm038/pcm970.c
index b2ed85f..5834311 100644
--- a/arch/arm/boards/pcm038/pcm970.c
+++ b/arch/arm/boards/pcm038/pcm970.c
@@ -141,7 +141,7 @@ static void pcm970_ide_init(void)
 	/* Make PCMCIA bank0 valid */
 	writel(readl(PCMCIA_POR(0)) | (1 << 29), PCMCIA_POR(0));
 
-	register_device(&pcm970_ide_device);
+	platform_device_register(&pcm970_ide_device);
 }
 #endif
 
diff --git a/arch/arm/mach-imx/clocksource.c b/arch/arm/mach-imx/clocksource.c
index 78b05c5..04afada 100644
--- a/arch/arm/mach-imx/clocksource.c
+++ b/arch/arm/mach-imx/clocksource.c
@@ -167,7 +167,7 @@ static struct driver_d imx_gpt_driver = {
 
 static int imx_gpt_init(void)
 {
-	return register_driver(&imx_gpt_driver);
+	return platform_driver_register(&imx_gpt_driver);
 }
 coredevice_initcall(imx_gpt_init);
 
diff --git a/arch/arm/mach-imx/gpio.c b/arch/arm/mach-imx/gpio.c
index e661cc1..312480a 100644
--- a/arch/arm/mach-imx/gpio.c
+++ b/arch/arm/mach-imx/gpio.c
@@ -201,7 +201,7 @@ static struct driver_d imx_gpio_driver = {
 
 static int imx_gpio_add(void)
 {
-	register_driver(&imx_gpio_driver);
+	platform_driver_register(&imx_gpio_driver);
 	return 0;
 }
 coredevice_initcall(imx_gpio_add);
diff --git a/arch/arm/mach-imx/iim.c b/arch/arm/mach-imx/iim.c
index 0da8ea0..69ddc4d 100644
--- a/arch/arm/mach-imx/iim.c
+++ b/arch/arm/mach-imx/iim.c
@@ -295,7 +295,7 @@ static struct driver_d imx_iim_driver = {
 
 static int imx_iim_init(void)
 {
-	register_driver(&imx_iim_driver);
+	platform_driver_register(&imx_iim_driver);
 
 	return 0;
 }
diff --git a/arch/arm/mach-imx/include/mach/devices-imx51.h b/arch/arm/mach-imx/include/mach/devices-imx51.h
index 3d7ff72..4b35c96 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx51.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx51.h
@@ -84,7 +84,7 @@ static inline struct device_d *imx51_add_nand(struct imx_nand_platform_data *pda
 	dev->id = DEVICE_ID_DYNAMIC;
 	dev->platform_data = pdata;
 
-	register_device(dev);
+	platform_device_register(dev);
 
 	return dev;
 }
diff --git a/arch/arm/mach-imx/include/mach/devices-imx53.h b/arch/arm/mach-imx/include/mach/devices-imx53.h
index 0fc4b5c..54d7b27 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx53.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx53.h
@@ -78,7 +78,7 @@ static inline struct device_d *imx53_add_nand(struct imx_nand_platform_data *pda
 	dev->id = DEVICE_ID_DYNAMIC;
 	dev->platform_data = pdata;
 
-	register_device(dev);
+	platform_device_register(dev);
 
 	return dev;
 }
diff --git a/arch/arm/mach-mxs/ocotp.c b/arch/arm/mach-mxs/ocotp.c
index 7824402..84f38b5 100644
--- a/arch/arm/mach-mxs/ocotp.c
+++ b/arch/arm/mach-mxs/ocotp.c
@@ -232,7 +232,7 @@ static struct driver_d mxs_ocotp_driver = {
 
 static int mxs_ocotp_init(void)
 {
-	register_driver(&mxs_ocotp_driver);
+	platform_driver_register(&mxs_ocotp_driver);
 
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
index cdaaa02..66eb856 100644
--- a/arch/nios2/boards/generic/generic.c
+++ b/arch/nios2/boards/generic/generic.c
@@ -37,7 +37,7 @@ static int generic_devices_init(void)
 	add_cfi_flash_device(DEVICE_ID_DYNAMIC, NIOS_SOPC_FLASH_BASE, NIOS_SOPC_FLASH_SIZE, 0);
 	add_mem_device("ram0", NIOS_SOPC_MEMORY_BASE, NIOS_SOPC_MEMORY_SIZE,
 		       IORESOURCE_MEM_WRITEABLE);
-	register_device(&mac_dev);
+	platform_device_register(&mac_dev);
 	/*register_device(&epcs_flash_device);*/
 
 	devfs_add_partition("nor0", 0x00000, 0x40000, DEVFS_PARTITION_FIXED, "self0");
diff --git a/arch/sandbox/board/board.c b/arch/sandbox/board/board.c
index 5d4f5e0..d6c11de 100644
--- a/arch/sandbox/board/board.c
+++ b/arch/sandbox/board/board.c
@@ -31,7 +31,7 @@ static struct device_d tap_device = {
 
 static int devices_init(void)
 {
-	register_device(&tap_device);
+	platform_device_register(&tap_device);
 
 	return 0;
 }
diff --git a/arch/sandbox/board/devices.c b/arch/sandbox/board/devices.c
index dba0d5d..62091ee 100644
--- a/arch/sandbox/board/devices.c
+++ b/arch/sandbox/board/devices.c
@@ -25,7 +25,7 @@ static int sandbox_device_init(void)
 		/* reset the list_head before registering for real */
 		dev->list.prev = NULL;
 		dev->list.next = NULL;
-		register_device(dev);
+		platform_device_register(dev);
 	}
 
 	return 0;
diff --git a/arch/sandbox/board/hostfile.c b/arch/sandbox/board/hostfile.c
index 2cc7c1f..a3ebe19 100644
--- a/arch/sandbox/board/hostfile.c
+++ b/arch/sandbox/board/hostfile.c
@@ -92,7 +92,7 @@ static struct driver_d hf_drv = {
 
 static int hf_init(void)
 {
-	return register_driver(&hf_drv);
+	return platform_driver_register(&hf_drv);
 }
 
 device_initcall(hf_init);
diff --git a/commands/mem.c b/commands/mem.c
index 441b7f2..6fbc7cc 100644
--- a/commands/mem.c
+++ b/commands/mem.c
@@ -614,7 +614,7 @@ static int mem_init(void)
 	}
 
 	add_mem_device("mem", 0, ~0, IORESOURCE_MEM_WRITEABLE);
-	register_driver(&mem_drv);
+	platform_driver_register(&mem_drv);
 
 	return 0;
 }
diff --git a/common/console.c b/common/console.c
index 25a451c..3dd964c 100644
--- a/common/console.c
+++ b/common/console.c
@@ -141,7 +141,7 @@ int console_register(struct console_device *newcdev)
 	strcpy(dev->name, "cs");
 	if (newcdev->dev)
 		dev_add_child(newcdev->dev, dev);
-	register_device(dev);
+	platform_device_register(dev);
 
 	if (newcdev->setbrg) {
 		dev_add_param(dev, "baudrate", console_baudrate_set, NULL, 0);
diff --git a/common/globalvar.c b/common/globalvar.c
index a8aaa72..ffb0c66 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -68,7 +68,7 @@ int globalvar_add_simple(const char *name)
 
 static int globalvar_init(void)
 {
-	register_device(&global_device);
+	platform_device_register(&global_device);
 
 	return 0;
 }
diff --git a/drivers/ata/disk_bios_drive.c b/drivers/ata/disk_bios_drive.c
index 5563867..8e768dc 100644
--- a/drivers/ata/disk_bios_drive.c
+++ b/drivers/ata/disk_bios_drive.c
@@ -295,7 +295,7 @@ static int biosdisk_init(void)
 		return -EIO;
 	}
 
-	register_driver(&biosdisk_driver);
+	platform_driver_register(&biosdisk_driver);
 	return 0;
 }
 
diff --git a/drivers/ata/intf_platform_ide.c b/drivers/ata/intf_platform_ide.c
index af20e05..a1840f7 100644
--- a/drivers/ata/intf_platform_ide.c
+++ b/drivers/ata/intf_platform_ide.c
@@ -111,7 +111,7 @@ static struct driver_d platform_ide_driver = {
 
 static int platform_ide_init(void)
 {
-	return register_driver(&platform_ide_driver);
+	return platform_driver_register(&platform_ide_driver);
 }
 
 device_initcall(platform_ide_init);
diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 1def2f8..27b0353 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -111,20 +111,7 @@ int register_device(struct device_d *new_device)
 
 	debug ("register_device: %s\n", dev_name(new_device));
 
-	if (!new_device->bus)
-		new_device->bus = &platform_bus;
-
-	if (new_device->bus == &platform_bus && new_device->resource) {
-		struct device_d *dev;
-
-		bus_for_each_device(new_device->bus, dev) {
-			if (!dev->resource)
-				continue;
-			if (dev->resource->start == new_device->resource->start) {
-				return -EBUSY;
-			}
-		}
-	}
+	BUG_ON(!new_device->bus);
 
 	list_add_tail(&new_device->list, &device_list);
 	list_add_tail(&new_device->bus_list, &new_device->bus->device_list);
@@ -213,10 +200,7 @@ int register_driver(struct driver_d *drv)
 
 	debug("register_driver: %s\n", drv->name);
 
-	if (!drv->bus) {
-//		pr_err("driver %s has no bus type associated. Needs fixup\n", drv->name);
-		drv->bus = &platform_bus;
-	}
+	BUG_ON(!drv->bus);
 
 	list_add_tail(&drv->list, &driver_list);
 	list_add_tail(&drv->bus_list, &drv->bus->driver_list);
diff --git a/drivers/base/platform.c b/drivers/base/platform.c
index d3021ab..13b4620 100644
--- a/drivers/base/platform.c
+++ b/drivers/base/platform.c
@@ -55,6 +55,32 @@ static void platform_remove(struct device_d *dev)
 	dev->driver->remove(dev);
 }
 
+int platform_driver_register(struct driver_d *drv)
+{
+	drv->bus = &platform_bus;
+
+	return register_driver(drv);
+}
+
+int platform_device_register(struct device_d *new_device)
+{
+	new_device->bus = &platform_bus;
+
+	if (new_device->resource) {
+		struct device_d *dev;
+
+		bus_for_each_device(new_device->bus, dev) {
+			if (!dev->resource)
+				continue;
+			if (dev->resource->start == new_device->resource->start) {
+				return -EBUSY;
+			}
+		}
+	}
+
+	return register_device(new_device);
+}
+
 struct bus_type platform_bus = {
 	.name = "platform",
 	.match = platform_match,
diff --git a/drivers/base/resource.c b/drivers/base/resource.c
index 2709a91..2985c78 100644
--- a/drivers/base/resource.c
+++ b/drivers/base/resource.c
@@ -59,7 +59,7 @@ struct device_d *add_generic_device_res(const char* devname, int id,
 	dev->resource = res;
 	dev->num_resources = nb;
 
-	register_device(dev);
+	platform_device_register(dev);
 
 	return dev;
 }
diff --git a/drivers/gpio/gpio-stmpe.c b/drivers/gpio/gpio-stmpe.c
index fa3b041..686f11d 100644
--- a/drivers/gpio/gpio-stmpe.c
+++ b/drivers/gpio/gpio-stmpe.c
@@ -156,6 +156,6 @@ static struct driver_d stmpe_gpio_driver = {
 
 static int stmpe_gpio_add(void)
 {
-	return register_driver(&stmpe_gpio_driver);
+	return platform_driver_register(&stmpe_gpio_driver);
 }
 coredevice_initcall(stmpe_gpio_add);
diff --git a/drivers/i2c/busses/i2c-imx.c b/drivers/i2c/busses/i2c-imx.c
index 2ac043b..eed104f 100644
--- a/drivers/i2c/busses/i2c-imx.c
+++ b/drivers/i2c/busses/i2c-imx.c
@@ -573,6 +573,6 @@ static struct driver_d i2c_fsl_driver = {
 
 static int __init i2c_adap_fsl_init(void)
 {
-	return register_driver(&i2c_fsl_driver);
+	return platform_driver_register(&i2c_fsl_driver);
 }
 device_initcall(i2c_adap_fsl_init);
diff --git a/drivers/i2c/busses/i2c-omap.c b/drivers/i2c/busses/i2c-omap.c
index 8b2e3fc..24961eb 100644
--- a/drivers/i2c/busses/i2c-omap.c
+++ b/drivers/i2c/busses/i2c-omap.c
@@ -864,7 +864,7 @@ static struct driver_d omap_i2c_driver = {
 /* I2C may be needed to bring up other drivers */
 static int __init omap_i2c_init_driver(void)
 {
-	return register_driver(&omap_i2c_driver);
+	return platform_driver_register(&omap_i2c_driver);
 }
 device_initcall(omap_i2c_init_driver);
 
diff --git a/drivers/input/gpio_keys.c b/drivers/input/gpio_keys.c
index 4d0f6ab..6f3c912 100644
--- a/drivers/input/gpio_keys.c
+++ b/drivers/input/gpio_keys.c
@@ -109,7 +109,7 @@ static struct driver_d gpio_keys_driver = {
 
 static int gpio_keys_init(void)
 {
-	register_driver(&gpio_keys_driver);
+	platform_driver_register(&gpio_keys_driver);
 	return 0;
 }
 device_initcall(gpio_keys_init);
diff --git a/drivers/input/imx_keypad.c b/drivers/input/imx_keypad.c
index bd9c6dc..f6c3b1b 100644
--- a/drivers/input/imx_keypad.c
+++ b/drivers/input/imx_keypad.c
@@ -457,7 +457,7 @@ static struct driver_d imx_keypad_driver = {
 
 static int imx_keypad_init(void)
 {
-	register_driver(&imx_keypad_driver);
+	platform_driver_register(&imx_keypad_driver);
 	return 0;
 }
 device_initcall(imx_keypad_init);
diff --git a/drivers/mci/atmel_mci.c b/drivers/mci/atmel_mci.c
index 6e74990..4065355 100644
--- a/drivers/mci/atmel_mci.c
+++ b/drivers/mci/atmel_mci.c
@@ -494,7 +494,7 @@ static struct driver_d atmel_mci_driver = {
 
 static int atmel_mci_init_driver(void)
 {
-	register_driver(&atmel_mci_driver);
+	platform_driver_register(&atmel_mci_driver);
 	return 0;
 }
 
diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index 4cc534b..d84307c 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -586,7 +586,7 @@ static struct driver_d fsl_esdhc_driver = {
 
 static int fsl_esdhc_init_driver(void)
 {
-	register_driver(&fsl_esdhc_driver);
+	platform_driver_register(&fsl_esdhc_driver);
 	return 0;
 }
 
diff --git a/drivers/mci/imx.c b/drivers/mci/imx.c
index 0e4fa66..8a6547d 100644
--- a/drivers/mci/imx.c
+++ b/drivers/mci/imx.c
@@ -518,7 +518,7 @@ static struct driver_d mxcmci_driver = {
 
 static int mxcmci_init_driver(void)
 {
-        register_driver(&mxcmci_driver);
+        platform_driver_register(&mxcmci_driver);
         return 0;
 }
 
diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 9336d36..216a8a5 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1497,7 +1497,7 @@ static struct driver_d mci_driver = {
 static int mci_init(void)
 {
 	sector_buf = xmemalign(32, 512);
-	return register_driver(&mci_driver);
+	return platform_driver_register(&mci_driver);
 }
 
 device_initcall(mci_init);
@@ -1516,5 +1516,5 @@ int mci_register(struct mci_host *host)
 	mci_dev->platform_data = host;
 	dev_add_child(host->hw_dev, mci_dev);
 
-	return register_device(mci_dev);
+	return platform_device_register(mci_dev);
 }
diff --git a/drivers/mci/mxs.c b/drivers/mci/mxs.c
index b311682..ed644d1 100644
--- a/drivers/mci/mxs.c
+++ b/drivers/mci/mxs.c
@@ -763,7 +763,7 @@ static struct driver_d mxs_mci_driver = {
 
 static int mxs_mci_init_driver(void)
 {
-        register_driver(&mxs_mci_driver);
+        platform_driver_register(&mxs_mci_driver);
         return 0;
 }
 
diff --git a/drivers/mci/omap_hsmmc.c b/drivers/mci/omap_hsmmc.c
index 00bfc79..fe6640c 100644
--- a/drivers/mci/omap_hsmmc.c
+++ b/drivers/mci/omap_hsmmc.c
@@ -599,7 +599,7 @@ static struct driver_d omap_mmc_driver = {
 
 static int omap_mmc_init_driver(void)
 {
-        register_driver(&omap_mmc_driver);
+        platform_driver_register(&omap_mmc_driver);
         return 0;
 }
 
diff --git a/drivers/mci/pxamci.c b/drivers/mci/pxamci.c
index 027fa7b..c18e63a 100644
--- a/drivers/mci/pxamci.c
+++ b/drivers/mci/pxamci.c
@@ -381,7 +381,7 @@ static struct driver_d pxamci_driver = {
 
 static int __init pxamci_init_driver(void)
 {
-	register_driver(&pxamci_driver);
+	platform_driver_register(&pxamci_driver);
 	return 0;
 }
 
diff --git a/drivers/mci/s3c.c b/drivers/mci/s3c.c
index d014400..3e5d6d9 100644
--- a/drivers/mci/s3c.c
+++ b/drivers/mci/s3c.c
@@ -770,7 +770,7 @@ static struct driver_d s3c_mci_driver = {
 
 static int s3c_mci_init_driver(void)
 {
-        register_driver(&s3c_mci_driver);
+        platform_driver_register(&s3c_mci_driver);
         return 0;
 }
 
diff --git a/drivers/misc/jtag.c b/drivers/misc/jtag.c
index 99fd081..cf2d000 100644
--- a/drivers/misc/jtag.c
+++ b/drivers/misc/jtag.c
@@ -381,7 +381,7 @@ static struct driver_d jtag_driver = {
 
 static int jtag_module_init(void)
 {
-	return register_driver(&jtag_driver);
+	return platform_driver_register(&jtag_driver);
 }
 
 device_initcall(jtag_module_init);
diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index 68ab70d..6550741 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -224,7 +224,7 @@ int add_mtd_device(struct mtd_info *mtd, char *devname)
 		devname = "mtd";
 	strcpy(mtd->class_dev.name, devname);
 	mtd->class_dev.id = DEVICE_ID_DYNAMIC;
-	register_device(&mtd->class_dev);
+	platform_device_register(&mtd->class_dev);
 
 	mtd->cdev.ops = &mtd_ops;
 	mtd->cdev.size = mtd->size;
diff --git a/drivers/mtd/devices/docg3.c b/drivers/mtd/devices/docg3.c
index d19969b..0fe6799 100644
--- a/drivers/mtd/devices/docg3.c
+++ b/drivers/mtd/devices/docg3.c
@@ -1201,7 +1201,7 @@ static struct driver_d  g3_driver = {
 
 static int __init docg3_init(void)
 {
-	return register_driver(&g3_driver);
+	return platform_driver_register(&g3_driver);
 }
 
 device_initcall(docg3_init);
diff --git a/drivers/mtd/nand/atmel_nand.c b/drivers/mtd/nand/atmel_nand.c
index 96624a1..aa01124 100644
--- a/drivers/mtd/nand/atmel_nand.c
+++ b/drivers/mtd/nand/atmel_nand.c
@@ -484,7 +484,7 @@ static struct driver_d atmel_nand_driver = {
 
 static int __init atmel_nand_init(void)
 {
-	return register_driver(&atmel_nand_driver);
+	return platform_driver_register(&atmel_nand_driver);
 }
 
 device_initcall(atmel_nand_init);
diff --git a/drivers/mtd/nand/nand_imx.c b/drivers/mtd/nand/nand_imx.c
index 83b49e3..b1b7f55 100644
--- a/drivers/mtd/nand/nand_imx.c
+++ b/drivers/mtd/nand/nand_imx.c
@@ -1288,7 +1288,7 @@ static struct driver_d imx_nand_driver = {
  */
 static int __init imx_nand_init(void)
 {
-	return register_driver(&imx_nand_driver);
+	return platform_driver_register(&imx_nand_driver);
 }
 
 device_initcall(imx_nand_init);
diff --git a/drivers/mtd/nand/nand_mxs.c b/drivers/mtd/nand/nand_mxs.c
index ba49287..8aeb14d 100644
--- a/drivers/mtd/nand/nand_mxs.c
+++ b/drivers/mtd/nand/nand_mxs.c
@@ -1248,7 +1248,7 @@ static struct driver_d mxs_nand_driver = {
 
 static int __init mxs_nand_init(void)
 {
-	return register_driver(&mxs_nand_driver);
+	return platform_driver_register(&mxs_nand_driver);
 }
 
 device_initcall(mxs_nand_init);
diff --git a/drivers/mtd/nand/nand_omap_gpmc.c b/drivers/mtd/nand/nand_omap_gpmc.c
index fa6074f..cc356f7 100644
--- a/drivers/mtd/nand/nand_omap_gpmc.c
+++ b/drivers/mtd/nand/nand_omap_gpmc.c
@@ -1084,7 +1084,7 @@ static struct driver_d gpmc_nand_driver = {
 
 static int gpmc_nand_init(void)
 {
-	return register_driver(&gpmc_nand_driver);
+	return platform_driver_register(&gpmc_nand_driver);
 }
 
 device_initcall(gpmc_nand_init);
diff --git a/drivers/mtd/nand/nand_s3c24xx.c b/drivers/mtd/nand/nand_s3c24xx.c
index c55fc5e..12db692 100644
--- a/drivers/mtd/nand/nand_s3c24xx.c
+++ b/drivers/mtd/nand/nand_s3c24xx.c
@@ -651,7 +651,7 @@ BAREBOX_CMD_END
  */
 static int __init s3c24x0_nand_init(void)
 {
-	return register_driver(&s3c24x0_nand_driver);
+	return platform_driver_register(&s3c24x0_nand_driver);
 }
 
 device_initcall(s3c24x0_nand_init);
diff --git a/drivers/mtd/nand/nomadik_nand.c b/drivers/mtd/nand/nomadik_nand.c
index 05d61c2..6fc9398 100644
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
index e766865..9a030d2 100644
--- a/drivers/net/altera_tse.c
+++ b/drivers/net/altera_tse.c
@@ -561,7 +561,7 @@ static struct driver_d altera_tse_driver = {
 
 static int tse_init(void)
 {
-	register_driver(&altera_tse_driver);
+	platform_driver_register(&altera_tse_driver);
 	return 0;
 }
 
diff --git a/drivers/net/at91_ether.c b/drivers/net/at91_ether.c
index 9ff8c25..83e43ee 100644
--- a/drivers/net/at91_ether.c
+++ b/drivers/net/at91_ether.c
@@ -370,7 +370,7 @@ static struct driver_d at91_ether_driver = {
 
 static int at91_ether_driver_init(void)
 {
-	register_driver(&at91_ether_driver);
+	platform_driver_register(&at91_ether_driver);
 	return 0;
 }
 device_initcall(at91_ether_driver_init);
diff --git a/drivers/net/cs8900.c b/drivers/net/cs8900.c
index ef00ea6..b1ef390 100644
--- a/drivers/net/cs8900.c
+++ b/drivers/net/cs8900.c
@@ -471,7 +471,7 @@ static struct driver_d cs8900_driver = {
 
 static int cs8900_init(void)
 {
-	register_driver(&cs8900_driver);
+	platform_driver_register(&cs8900_driver);
 	return 0;
 }
 
diff --git a/drivers/net/davinci_emac.c b/drivers/net/davinci_emac.c
index 09fcb63..4cd6aea 100644
--- a/drivers/net/davinci_emac.c
+++ b/drivers/net/davinci_emac.c
@@ -611,7 +611,7 @@ static struct driver_d davinci_emac_driver = {
 
 static int davinci_emac_register(void)
 {
-	register_driver(&davinci_emac_driver);
+	platform_driver_register(&davinci_emac_driver);
 	return 0;
 }
 
diff --git a/drivers/net/designware.c b/drivers/net/designware.c
index aab2178..9692aa2 100644
--- a/drivers/net/designware.c
+++ b/drivers/net/designware.c
@@ -435,7 +435,7 @@ static struct driver_d dwc_ether_driver = {
 
 static int dwc_ether_driver_init(void)
 {
-	register_driver(&dwc_ether_driver);
+	platform_driver_register(&dwc_ether_driver);
 	return 0;
 }
 device_initcall(dwc_ether_driver_init);
diff --git a/drivers/net/dm9k.c b/drivers/net/dm9k.c
index 6387370..dbd16e8 100644
--- a/drivers/net/dm9k.c
+++ b/drivers/net/dm9k.c
@@ -784,7 +784,7 @@ static struct driver_d dm9k_driver = {
 
 static int dm9k_init(void)
 {
-	register_driver(&dm9k_driver);
+	platform_driver_register(&dm9k_driver);
 	return 0;
 }
 
diff --git a/drivers/net/ep93xx.c b/drivers/net/ep93xx.c
index a0500e4..deb264e 100644
--- a/drivers/net/ep93xx.c
+++ b/drivers/net/ep93xx.c
@@ -667,7 +667,7 @@ static struct driver_d ep93xx_eth_driver = {
 
 static int ep93xx_eth_init(void)
 {
-	register_driver(&ep93xx_eth_driver);
+	platform_driver_register(&ep93xx_eth_driver);
 	return 0;
 }
 
diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index bfbda97..f5c7f9b 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -722,7 +722,7 @@ static struct driver_d fec_driver = {
 
 static int fec_register(void)
 {
-	register_driver(&fec_driver);
+	platform_driver_register(&fec_driver);
 	return 0;
 }
 
diff --git a/drivers/net/fec_mpc5200.c b/drivers/net/fec_mpc5200.c
index e16f762..8b7ff3f 100644
--- a/drivers/net/fec_mpc5200.c
+++ b/drivers/net/fec_mpc5200.c
@@ -722,7 +722,7 @@ static struct driver_d mpc5xxx_driver = {
 
 static int mpc5xxx_fec_register(void)
 {
-        register_driver(&mpc5xxx_driver);
+        platform_driver_register(&mpc5xxx_driver);
         return 0;
 }
 
diff --git a/drivers/net/gianfar.c b/drivers/net/gianfar.c
index f8a7cd7..f9b70dd 100644
--- a/drivers/net/gianfar.c
+++ b/drivers/net/gianfar.c
@@ -533,7 +533,7 @@ static struct driver_d gfar_eth_driver = {
 
 static int gfar_eth_init(void)
 {
-	register_driver(&gfar_eth_driver);
+	platform_driver_register(&gfar_eth_driver);
 	return 0;
 }
 
diff --git a/drivers/net/ks8851_mll.c b/drivers/net/ks8851_mll.c
index 3292db8..f7c4c09 100644
--- a/drivers/net/ks8851_mll.c
+++ b/drivers/net/ks8851_mll.c
@@ -877,7 +877,7 @@ static struct driver_d ks8851_driver = {
 
 static int ks8851_init(void)
 {
-	register_driver(&ks8851_driver);
+	platform_driver_register(&ks8851_driver);
 	return 0;
 }
 
diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index b68cc5a..6f392f8 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -495,7 +495,7 @@ static struct driver_d macb_driver = {
 static int macb_driver_init(void)
 {
 	debug("%s\n", __func__);
-	register_driver(&macb_driver);
+	platform_driver_register(&macb_driver);
 	return 0;
 }
 
diff --git a/drivers/net/miidev.c b/drivers/net/miidev.c
index 288baac..50c190e 100644
--- a/drivers/net/miidev.c
+++ b/drivers/net/miidev.c
@@ -49,7 +49,7 @@ int mii_register(struct mii_device *mdev)
 	if (mdev->parent)
 		dev_add_child(mdev->parent, &mdev->dev);
 
-	return register_device(&mdev->dev);
+	return platform_device_register(&mdev->dev);
 }
 
 void mii_unregister(struct mii_device *mdev)
@@ -59,7 +59,7 @@ void mii_unregister(struct mii_device *mdev)
 
 static int miidev_init(void)
 {
-	register_driver(&miidev_drv);
+	platform_driver_register(&miidev_drv);
 	return 0;
 }
 device_initcall(miidev_init);
diff --git a/drivers/net/netx_eth.c b/drivers/net/netx_eth.c
index 853df50..a2e808b 100644
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
index 12195cd..4f9eaa1 100644
--- a/drivers/net/smc91111.c
+++ b/drivers/net/smc91111.c
@@ -1323,7 +1323,7 @@ static struct driver_d smc91c111_driver = {
 
 static int smc91c111_init(void)
 {
-        register_driver(&smc91c111_driver);
+        platform_driver_register(&smc91c111_driver);
         return 0;
 }
 
diff --git a/drivers/net/smc911x.c b/drivers/net/smc911x.c
index ab1d954..2018c3a 100644
--- a/drivers/net/smc911x.c
+++ b/drivers/net/smc911x.c
@@ -553,7 +553,7 @@ static struct driver_d smc911x_driver = {
 
 static int smc911x_init(void)
 {
-        register_driver(&smc911x_driver);
+        platform_driver_register(&smc911x_driver);
         return 0;
 }
 
diff --git a/drivers/net/tap.c b/drivers/net/tap.c
index d5c7031..1cf4e18 100644
--- a/drivers/net/tap.c
+++ b/drivers/net/tap.c
@@ -112,7 +112,7 @@ static struct driver_d tap_driver = {
 
 static int tap_init(void)
 {
-        register_driver(&tap_driver);
+        platform_driver_register(&tap_driver);
         return 0;
 }
 
diff --git a/drivers/nor/cfi_flash.c b/drivers/nor/cfi_flash.c
index f65763a..6154940 100644
--- a/drivers/nor/cfi_flash.c
+++ b/drivers/nor/cfi_flash.c
@@ -1034,7 +1034,7 @@ static struct driver_d cfi_driver = {
 
 static int cfi_init(void)
 {
-	return register_driver(&cfi_driver);
+	return platform_driver_register(&cfi_driver);
 }
 
 device_initcall(cfi_init);
diff --git a/drivers/of/base.c b/drivers/of/base.c
index ebbaef8..fd152d6 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -604,7 +604,7 @@ static struct device_d *add_of_device(struct device_node *node)
 
 	debug("register device 0x%08x\n", node->resource[0].start);
 
-	register_device(dev);
+	platform_device_register(dev);
 
 	free(name);
 
diff --git a/drivers/pwm/pxa_pwm.c b/drivers/pwm/pxa_pwm.c
index cf1f96a..8e22d49 100644
--- a/drivers/pwm/pxa_pwm.c
+++ b/drivers/pwm/pxa_pwm.c
@@ -150,7 +150,7 @@ static struct driver_d pxa_pwm_driver = {
 static int __init pxa_pwm_init_driver(void)
 {
 	CKEN &= ~CKEN_PWM0 & ~CKEN_PWM1;
-	register_driver(&pxa_pwm_driver);
+	platform_driver_register(&pxa_pwm_driver);
 	return 0;
 }
 
diff --git a/drivers/serial/arm_dcc.c b/drivers/serial/arm_dcc.c
index 8c2253b..e82218a 100644
--- a/drivers/serial/arm_dcc.c
+++ b/drivers/serial/arm_dcc.c
@@ -157,8 +157,8 @@ static struct device_d arm_dcc_device = {
 
 static int arm_dcc_init(void)
 {
-	register_device(&arm_dcc_device);
-	register_driver(&arm_dcc_driver);
+	platform_device_register(&arm_dcc_device);
+	platform_driver_register(&arm_dcc_driver);
 	return 0;
 }
 
diff --git a/drivers/serial/atmel.c b/drivers/serial/atmel.c
index 4522529..6beae25 100644
--- a/drivers/serial/atmel.c
+++ b/drivers/serial/atmel.c
@@ -421,7 +421,7 @@ static struct driver_d atmel_serial_driver = {
 
 static int atmel_serial_init(void)
 {
-	register_driver(&atmel_serial_driver);
+	platform_driver_register(&atmel_serial_driver);
 	return 0;
 }
 
diff --git a/drivers/serial/linux_console.c b/drivers/serial/linux_console.c
index 597c390..4a99e96 100644
--- a/drivers/serial/linux_console.c
+++ b/drivers/serial/linux_console.c
@@ -81,7 +81,7 @@ static struct driver_d linux_console_driver = {
 
 static int console_init(void)
 {
-	return register_driver(&linux_console_driver);
+	return platform_driver_register(&linux_console_driver);
 }
 
 console_initcall(console_init);
diff --git a/drivers/serial/serial_altera.c b/drivers/serial/serial_altera.c
index c8dc3a5..013b32c 100644
--- a/drivers/serial/serial_altera.c
+++ b/drivers/serial/serial_altera.c
@@ -104,7 +104,7 @@ static struct driver_d altera_serial_driver = {
 
 static int altera_serial_init(void)
 {
-	return register_driver(&altera_serial_driver);
+	return platform_driver_register(&altera_serial_driver);
 }
 
 console_initcall(altera_serial_init);
diff --git a/drivers/serial/serial_altera_jtag.c b/drivers/serial/serial_altera_jtag.c
index e808183..b83fcbd 100644
--- a/drivers/serial/serial_altera_jtag.c
+++ b/drivers/serial/serial_altera_jtag.c
@@ -109,7 +109,7 @@ static struct driver_d altera_serial_jtag_driver = {
 
 static int altera_serial_jtag_init(void)
 {
-	return register_driver(&altera_serial_jtag_driver);
+	return platform_driver_register(&altera_serial_jtag_driver);
 }
 
 console_initcall(altera_serial_jtag_init);
diff --git a/drivers/serial/serial_blackfin.c b/drivers/serial/serial_blackfin.c
index c134fcf..2117b11 100644
--- a/drivers/serial/serial_blackfin.c
+++ b/drivers/serial/serial_blackfin.c
@@ -133,7 +133,7 @@ static struct driver_d blackfin_serial_driver = {
 
 static int blackfin_serial_init(void)
 {
-	register_driver(&blackfin_serial_driver);
+	platform_driver_register(&blackfin_serial_driver);
 	return 0;
 }
 
diff --git a/drivers/serial/serial_imx.c b/drivers/serial/serial_imx.c
index 012ab02..61ceb48 100644
--- a/drivers/serial/serial_imx.c
+++ b/drivers/serial/serial_imx.c
@@ -375,7 +375,7 @@ static struct driver_d imx_serial_driver = {
 
 static int imx_serial_init(void)
 {
-	register_driver(&imx_serial_driver);
+	platform_driver_register(&imx_serial_driver);
 	return 0;
 }
 
diff --git a/drivers/serial/serial_mpc5xxx.c b/drivers/serial/serial_mpc5xxx.c
index d19eda9..81eaf07 100644
--- a/drivers/serial/serial_mpc5xxx.c
+++ b/drivers/serial/serial_mpc5xxx.c
@@ -169,7 +169,7 @@ static struct driver_d mpc5xxx_serial_driver = {
 
 static int mpc5xxx_serial_register(void)
 {
-	register_driver(&mpc5xxx_serial_driver);
+	platform_driver_register(&mpc5xxx_serial_driver);
 	return 0;
 }
 
diff --git a/drivers/serial/serial_netx.c b/drivers/serial/serial_netx.c
index b165d64..2ad9cfa 100644
--- a/drivers/serial/serial_netx.c
+++ b/drivers/serial/serial_netx.c
@@ -158,7 +158,7 @@ static struct driver_d netx_serial_driver = {
 
 static int netx_serial_init(void)
 {
-	register_driver(&netx_serial_driver);
+	platform_driver_register(&netx_serial_driver);
 	return 0;
 }
 
diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
index 9984437..0ea940d 100644
--- a/drivers/serial/serial_ns16550.c
+++ b/drivers/serial/serial_ns16550.c
@@ -266,11 +266,11 @@ static struct driver_d ns16550_serial_driver = {
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
index fd17a3a..0526b00 100644
--- a/drivers/serial/serial_pl010.c
+++ b/drivers/serial/serial_pl010.c
@@ -160,7 +160,7 @@ static struct driver_d pl010_driver = {
 
 static int pl010_init(void)
 {
-	register_driver(&pl010_driver);
+	platform_driver_register(&pl010_driver);
 
 	return 0;
 }
diff --git a/drivers/serial/serial_pxa.c b/drivers/serial/serial_pxa.c
index adfbe82..08f3d7f 100644
--- a/drivers/serial/serial_pxa.c
+++ b/drivers/serial/serial_pxa.c
@@ -198,7 +198,7 @@ static struct driver_d pxa_serial_driver = {
 
 static int pxa_serial_init(void)
 {
-	return register_driver(&pxa_serial_driver);
+	return platform_driver_register(&pxa_serial_driver);
 }
 
 console_initcall(pxa_serial_init);
diff --git a/drivers/serial/serial_s3c.c b/drivers/serial/serial_s3c.c
index 08212c7..ed401ab 100644
--- a/drivers/serial/serial_s3c.c
+++ b/drivers/serial/serial_s3c.c
@@ -216,7 +216,7 @@ static struct driver_d s3c_serial_driver = {
 
 static int s3c_serial_init(void)
 {
-	register_driver(&s3c_serial_driver);
+	platform_driver_register(&s3c_serial_driver);
 	return 0;
 }
 
diff --git a/drivers/serial/stm-serial.c b/drivers/serial/stm-serial.c
index 958cc76..3968892 100644
--- a/drivers/serial/stm-serial.c
+++ b/drivers/serial/stm-serial.c
@@ -190,7 +190,7 @@ static struct driver_d stm_serial_driver = {
 
 static int stm_serial_init(void)
 {
-	register_driver(&stm_serial_driver);
+	platform_driver_register(&stm_serial_driver);
 	return 0;
 }
 
diff --git a/drivers/spi/altera_spi.c b/drivers/spi/altera_spi.c
index 5b4f1fa..a089761 100644
--- a/drivers/spi/altera_spi.c
+++ b/drivers/spi/altera_spi.c
@@ -242,7 +242,7 @@ static struct driver_d altera_spi_driver = {
 
 static int altera_spi_driver_init(void)
 {
-	return register_driver(&altera_spi_driver);
+	return platform_driver_register(&altera_spi_driver);
 }
 
 device_initcall(altera_spi_driver_init);
diff --git a/drivers/spi/atmel_spi.c b/drivers/spi/atmel_spi.c
index 490b7a1..43aec8e 100644
--- a/drivers/spi/atmel_spi.c
+++ b/drivers/spi/atmel_spi.c
@@ -312,7 +312,7 @@ static struct driver_d atmel_spi_driver = {
 
 static int atmel_spi_init(void)
 {
-	register_driver(&atmel_spi_driver);
+	platform_driver_register(&atmel_spi_driver);
 	return 0;
 }
 
diff --git a/drivers/spi/imx_spi.c b/drivers/spi/imx_spi.c
index c3dc6cc..8551f73 100644
--- a/drivers/spi/imx_spi.c
+++ b/drivers/spi/imx_spi.c
@@ -584,7 +584,7 @@ static struct driver_d imx_spi_driver = {
 
 static int imx_spi_init(void)
 {
-	register_driver(&imx_spi_driver);
+	platform_driver_register(&imx_spi_driver);
 	return 0;
 }
 
diff --git a/drivers/spi/omap3_spi.c b/drivers/spi/omap3_spi.c
index 3008977..29cb69a 100644
--- a/drivers/spi/omap3_spi.c
+++ b/drivers/spi/omap3_spi.c
@@ -393,7 +393,7 @@ static struct driver_d omap3_spi_driver = {
 
 static int omap3_spi_init(void)
 {
-	return register_driver(&omap3_spi_driver);
+	return platform_driver_register(&omap3_spi_driver);
 }
 
 device_initcall(omap3_spi_init);
diff --git a/drivers/usb/gadget/at91_udc.c b/drivers/usb/gadget/at91_udc.c
index 0e4c6c4..80d6de0 100644
--- a/drivers/usb/gadget/at91_udc.c
+++ b/drivers/usb/gadget/at91_udc.c
@@ -1533,7 +1533,7 @@ static struct driver_d at91_udc_driver = {
 
 static int at91_udc_init(void)
 {
-	register_driver(&at91_udc_driver);
+	platform_driver_register(&at91_udc_driver);
 	return 0;
 }
 device_initcall(at91_udc_init);
diff --git a/drivers/usb/gadget/fsl_udc.c b/drivers/usb/gadget/fsl_udc.c
index 5537a0e..0a7c3ae 100644
--- a/drivers/usb/gadget/fsl_udc.c
+++ b/drivers/usb/gadget/fsl_udc.c
@@ -2333,7 +2333,7 @@ static struct driver_d fsl_udc_driver = {
 
 static int fsl_udc_init(void)
 {
-	register_driver(&fsl_udc_driver);
+	platform_driver_register(&fsl_udc_driver);
 	return 0;
 }
 
diff --git a/drivers/usb/gadget/pxa27x_udc.c b/drivers/usb/gadget/pxa27x_udc.c
index c660095..1ccc232 100644
--- a/drivers/usb/gadget/pxa27x_udc.c
+++ b/drivers/usb/gadget/pxa27x_udc.c
@@ -1515,7 +1515,7 @@ static struct driver_d udc_driver = {
 
 static int __init pxa27x_udc_init(void)
 {
-	register_driver(&udc_driver);
+	platform_driver_register(&udc_driver);
 	return 0;
 }
 
diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index 25f2ad2..d8814aa 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -868,7 +868,7 @@ static struct driver_d ehci_driver = {
 
 static int ehcil_init(void)
 {
-	register_driver(&ehci_driver);
+	platform_driver_register(&ehci_driver);
 	return 0;
 }
 
diff --git a/drivers/usb/host/ohci-at91.c b/drivers/usb/host/ohci-at91.c
index cb770eb..b2598f2 100644
--- a/drivers/usb/host/ohci-at91.c
+++ b/drivers/usb/host/ohci-at91.c
@@ -88,7 +88,7 @@ static struct driver_d at91_ohci_driver = {
 
 static int at91_ohci_init(void)
 {
-	register_driver(&at91_ohci_driver);
+	platform_driver_register(&at91_ohci_driver);
 	return 0;
 }
 device_initcall(at91_ohci_init);
diff --git a/drivers/usb/host/ohci-hcd.c b/drivers/usb/host/ohci-hcd.c
index aca0acd..d9b5f60 100644
--- a/drivers/usb/host/ohci-hcd.c
+++ b/drivers/usb/host/ohci-hcd.c
@@ -1822,7 +1822,7 @@ static struct driver_d ohci_driver = {
 
 static int ohcil_init(void)
 {
-	register_driver(&ohci_driver);
+	platform_driver_register(&ohci_driver);
 	return 0;
 }
 
diff --git a/drivers/video/fb.c b/drivers/video/fb.c
index d885570..14ad4b6 100644
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
index 80236b3..5e5244d 100644
--- a/drivers/video/imx-ipu-fb.c
+++ b/drivers/video/imx-ipu-fb.c
@@ -1036,7 +1036,7 @@ static struct driver_d imx3fb_driver = {
 
 static int imx3fb_init(void)
 {
-	return register_driver(&imx3fb_driver);
+	return platform_driver_register(&imx3fb_driver);
 }
 
 device_initcall(imx3fb_init);
diff --git a/drivers/video/imx.c b/drivers/video/imx.c
index 452e558..29b1fc5 100644
--- a/drivers/video/imx.c
+++ b/drivers/video/imx.c
@@ -614,7 +614,7 @@ static struct driver_d imxfb_driver = {
 
 static int imxfb_init(void)
 {
-	return register_driver(&imxfb_driver);
+	return platform_driver_register(&imxfb_driver);
 }
 
 device_initcall(imxfb_init);
diff --git a/drivers/video/pxa.c b/drivers/video/pxa.c
index f06a394..cec9d14 100644
--- a/drivers/video/pxa.c
+++ b/drivers/video/pxa.c
@@ -548,7 +548,7 @@ static struct driver_d pxafb_driver = {
 
 static int pxafb_init(void)
 {
-	return register_driver(&pxafb_driver);
+	return platform_driver_register(&pxafb_driver);
 }
 
 device_initcall(pxafb_init);
diff --git a/drivers/video/s3c24xx.c b/drivers/video/s3c24xx.c
index 4925ca8..6dd49e2 100644
--- a/drivers/video/s3c24xx.c
+++ b/drivers/video/s3c24xx.c
@@ -409,7 +409,7 @@ static struct driver_d s3cfb_driver = {
 
 static int s3cfb_init(void)
 {
-	return register_driver(&s3cfb_driver);
+	return platform_driver_register(&s3cfb_driver);
 }
 
 device_initcall(s3cfb_init);
diff --git a/drivers/video/stm.c b/drivers/video/stm.c
index c109352..28c7b6e 100644
--- a/drivers/video/stm.c
+++ b/drivers/video/stm.c
@@ -519,7 +519,7 @@ static struct driver_d stmfb_driver = {
 
 static int stmfb_init(void)
 {
-	return register_driver(&stmfb_driver);
+	return platform_driver_register(&stmfb_driver);
 }
 
 device_initcall(stmfb_init);
diff --git a/drivers/watchdog/im28wd.c b/drivers/watchdog/im28wd.c
index 1f987de..ca32a72 100644
--- a/drivers/watchdog/im28wd.c
+++ b/drivers/watchdog/im28wd.c
@@ -142,7 +142,7 @@ static struct driver_d imx28_wd_driver = {
 
 static int imx28_wd_init(void)
 {
-	register_driver(&imx28_wd_driver);
+	platform_driver_register(&imx28_wd_driver);
 	return 0;
 }
 
diff --git a/include/driver.h b/include/driver.h
index 85a0c72..4918054 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -401,6 +401,9 @@ extern struct list_head bus_list;
 
 extern struct bus_type platform_bus;
 
+int platform_driver_register(struct driver_d *drv);
+int platform_device_register(struct device_d *new_device);
+
 struct file_operations {
 	/*! Called in response of reading from this device. Required */
 	ssize_t (*read)(struct cdev*, void* buf, size_t count, loff_t offset, ulong flags);
diff --git a/net/eth.c b/net/eth.c
index d42a72d..9fda03c 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -222,7 +222,7 @@ int eth_register(struct eth_device *edev)
 	if (edev->parent)
 		dev_add_child(edev->parent, &edev->dev);
 
-	register_device(&edev->dev);
+	platform_device_register(&edev->dev);
 
 	dev_add_param(dev, "ipaddr", eth_set_ipaddr, NULL, 0);
 	dev_add_param(dev, "ethaddr", eth_set_ethaddr, NULL, 0);
diff --git a/net/net.c b/net/net.c
index 3ac098f..7ad1877 100644
--- a/net/net.c
+++ b/net/net.c
@@ -676,7 +676,7 @@ static int net_init(void)
 	for (i = 0; i < PKTBUFSRX; i++)
 		NetRxPackets[i] = net_alloc_packet();
 
-	register_device(&net_device);
+	platform_device_register(&net_device);
 	dev_add_param(&net_device, "nameserver", NULL, NULL, 0);
 	dev_add_param(&net_device, "domainname", NULL, NULL, 0);
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
