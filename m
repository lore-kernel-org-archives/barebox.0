Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SckSl-0003iS-6y
 for barebox@lists.infradead.org; Thu, 07 Jun 2012 21:41:53 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  7 Jun 2012 23:41:47 +0200
Message-Id: <1339105307-18301-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] resource: store 'end' instead of 'size' in struct resource
To: barebox@lists.infradead.org

Storing the size instead of the resource end in struct resource was
a mistake. 'size' ranges from 0 to UINT[32|64]_MAX + 1 which obviously
leads to problems. 'end' on the other hand will never exceed
UINT[32|64]_MAX. Also this way we can express a iomem region covering
the whole address space.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/nhk8815/setup.c                |    6 ++---
 arch/arm/lib/bootm.c                           |    8 +++----
 arch/arm/mach-at91/at91sam9260_devices.c       |    4 ++--
 arch/arm/mach-at91/at91sam9263_devices.c       |    4 ++--
 arch/arm/mach-at91/at91sam9g45_devices.c       |    4 ++--
 arch/arm/mach-at91/at91sam9x5_devices.c        |    4 ++--
 arch/arm/mach-imx/include/mach/devices-imx51.h |    4 ++--
 arch/arm/mach-imx/include/mach/devices-imx53.h |    4 ++--
 arch/nios2/boards/generic/generic.c            |    6 ++---
 commands/bootm.c                               |    6 ++---
 commands/iomem.c                               |    3 +--
 commands/mem.c                                 |    2 +-
 common/memory.c                                |    4 ++--
 common/resource.c                              |   30 ++++++++++++++----------
 common/uimage.c                                |    6 ++---
 drivers/base/driver.c                          |    4 ++--
 drivers/base/resource.c                        |   14 +++++------
 drivers/usb/host/ohci-at91.c                   |    2 +-
 drivers/video/fb.c                             |    4 ++--
 fs/devfs.c                                     |    2 +-
 fs/fs.c                                        |    4 ++--
 include/linux/ioport.h                         |    8 +++----
 22 files changed, 67 insertions(+), 66 deletions(-)

diff --git a/arch/arm/boards/nhk8815/setup.c b/arch/arm/boards/nhk8815/setup.c
index 173892a..ccc0510 100644
--- a/arch/arm/boards/nhk8815/setup.c
+++ b/arch/arm/boards/nhk8815/setup.c
@@ -55,15 +55,15 @@ static struct nomadik_nand_platform_data nhk8815_nand_data = {
 static struct resource nhk8815_nand_resources[] = {
 	{
 		.start	= NAND_IO_ADDR,
-		.size	= 0xfff,
+		.end	= NAND_IO_ADDR + 0xfff,
 		.flags	= IORESOURCE_MEM,
 	}, {
 		.start	= NAND_IO_CMD,
-		.size	= 0xfff,
+		.end	= NAND_IO_CMD + 0xfff,
 		.flags	= IORESOURCE_MEM,
 	}, {
 		.start	= NAND_IO_DATA,
-		.size	= 0xfff,
+		.end	= NAND_IO_CMD + 0xfff,
 		.flags	= IORESOURCE_MEM,
 	}
 };
diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib/bootm.c
index 033e2eb..3a00437 100644
--- a/arch/arm/lib/bootm.c
+++ b/arch/arm/lib/bootm.c
@@ -80,7 +80,7 @@ static int __do_bootm_linux(struct image_data *data, int swap)
 
 	if (data->initrd_res) {
 		initrd_start = data->initrd_res->start;
-		initrd_size = data->initrd_res->size;
+		initrd_size = resource_size(data->initrd_res);
 	}
 
 	if (bootm_verbose(data)) {
@@ -154,7 +154,7 @@ static int do_bootz_linux_fdt(int fd, struct image_data *data)
 		}
 	} else {
 
-		of_res = request_sdram_region("oftree", r->start + r->size, end);
+		of_res = request_sdram_region("oftree", r->start + resource_size(r), end);
 		if (!of_res) {
 			perror("zImage: oftree request_sdram_region");
 			return -ENOMEM;
@@ -310,9 +310,9 @@ static int aimage_load_resource(int fd, struct resource *r, void* buf, int ps)
 {
 	int ret;
 	void *image = (void *)r->start;
-	unsigned to_read = ps - r->size % ps;
+	unsigned to_read = ps - resource_size(r) % ps;
 
-	ret = read_full(fd, image, r->size);
+	ret = read_full(fd, image, resource_size(r));
 	if (ret < 0)
 		return ret;
 
diff --git a/arch/arm/mach-at91/at91sam9260_devices.c b/arch/arm/mach-at91/at91sam9260_devices.c
index 3297a89..b56ca14 100644
--- a/arch/arm/mach-at91/at91sam9260_devices.c
+++ b/arch/arm/mach-at91/at91sam9260_devices.c
@@ -111,12 +111,12 @@ void at91_add_device_eth(int id, struct at91_ether_platform_data *data) {}
 static struct resource nand_resources[] = {
 	[0] = {
 		.start	= AT91_CHIPSELECT_3,
-		.size	= SZ_256M,
+		.end	= AT91_CHIPSELECT_3 + SZ_256M - 1,
 		.flags	= IORESOURCE_MEM,
 	},
 	[1] = {
 		.start	= AT91_BASE_SYS + AT91_ECC,
-		.size	= 512,
+		.end	= AT91_BASE_SYS + AT91_ECC + 512 - 1,
 		.flags	= IORESOURCE_MEM,
 	}
 };
diff --git a/arch/arm/mach-at91/at91sam9263_devices.c b/arch/arm/mach-at91/at91sam9263_devices.c
index 2ebc4da..7f916d2 100644
--- a/arch/arm/mach-at91/at91sam9263_devices.c
+++ b/arch/arm/mach-at91/at91sam9263_devices.c
@@ -113,12 +113,12 @@ void at91_add_device_eth(int id, struct at91_ether_platform_data *data) {}
 static struct resource nand_resources[] = {
 	[0] = {
 		.start	= AT91_CHIPSELECT_3,
-		.size	= SZ_256M,
+		.end	= AT91_CHIPSELECT_3 + SZ_256M - 1,
 		.flags	= IORESOURCE_MEM,
 	},
 	[1] = {
 		.start	= AT91_BASE_SYS + AT91_ECC0,
-		.size	= 512,
+		.end	= AT91_BASE_SYS + AT91_ECC0 + 512 - 1,
 		.flags	= IORESOURCE_MEM,
 	}
 };
diff --git a/arch/arm/mach-at91/at91sam9g45_devices.c b/arch/arm/mach-at91/at91sam9g45_devices.c
index d406bcc..22b455e 100644
--- a/arch/arm/mach-at91/at91sam9g45_devices.c
+++ b/arch/arm/mach-at91/at91sam9g45_devices.c
@@ -93,12 +93,12 @@ void at91_add_device_eth(int id, struct at91_ether_platform_data *data) {}
 static struct resource nand_resources[] = {
 	[0] = {
 		.start	= AT91_CHIPSELECT_3,
-		.size	= SZ_256M,
+		.end	= AT91_CHIPSELECT_3 + SZ_256M - 1,
 		.flags	= IORESOURCE_MEM,
 	},
 	[1] = {
 		.start	= AT91_BASE_SYS + AT91_ECC,
-		.size	= 512,
+		.end	= AT91_BASE_SYS + AT91_ECC + 512 - 1,
 		.flags	= IORESOURCE_MEM,
 	}
 };
diff --git a/arch/arm/mach-at91/at91sam9x5_devices.c b/arch/arm/mach-at91/at91sam9x5_devices.c
index 50bad7f..26a380d 100644
--- a/arch/arm/mach-at91/at91sam9x5_devices.c
+++ b/arch/arm/mach-at91/at91sam9x5_devices.c
@@ -130,12 +130,12 @@ void at91_add_device_eth(int id, struct at91_ether_platform_data *data) {}
 static struct resource nand_resources[] = {
 	[0] = {
 		.start	= AT91_CHIPSELECT_3,
-		.size	= SZ_256M,
+		.end	= AT91_CHIPSELECT_3 + SZ_256M - 1,
 		.flags	= IORESOURCE_MEM,
 	},
 	[1] = {
 		.start	= AT91_BASE_SYS + AT91_PMECC,
-		.size	= 512,
+		.end	= AT91_BASE_SYS + AT91_PMECC + 512 - 1,
 		.flags	= IORESOURCE_MEM,
 	}
 };
diff --git a/arch/arm/mach-imx/include/mach/devices-imx51.h b/arch/arm/mach-imx/include/mach/devices-imx51.h
index 5de0fa7..dbf5862 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx51.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx51.h
@@ -67,11 +67,11 @@ static inline struct device_d *imx51_add_nand(struct imx_nand_platform_data *pda
 	struct resource res[] = {
 		{
 			.start = MX51_NFC_BASE_ADDR,
-			.size = SZ_4K,
+			.end = MX51_NFC_BASE_ADDR + SZ_4K - 1,
 			.flags = IORESOURCE_MEM,
 		}, {
 			.start = MX51_NFC_AXI_BASE_ADDR,
-			.size = SZ_4K,
+			.end = MX51_NFC_AXI_BASE_ADDR + SZ_4K - 1,
 			.flags = IORESOURCE_MEM,
 		},
 	};
diff --git a/arch/arm/mach-imx/include/mach/devices-imx53.h b/arch/arm/mach-imx/include/mach/devices-imx53.h
index a9fe454..0fc4b5c 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx53.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx53.h
@@ -61,11 +61,11 @@ static inline struct device_d *imx53_add_nand(struct imx_nand_platform_data *pda
 	struct resource res[] = {
 		{
 			.start = MX53_NFC_BASE_ADDR,
-			.size = SZ_4K,
+			.end = MX53_NFC_BASE_ADDR + SZ_4K - 1,
 			.flags = IORESOURCE_MEM,
 		}, {
 			.start = MX53_NFC_AXI_BASE_ADDR,
-			.size = SZ_4K,
+			.end = MX53_NFC_AXI_BASE_ADDR + SZ_4K - 1,
 			.flags = IORESOURCE_MEM,
 		},
 	};
diff --git a/arch/nios2/boards/generic/generic.c b/arch/nios2/boards/generic/generic.c
index b51b94a..2c998fe 100644
--- a/arch/nios2/boards/generic/generic.c
+++ b/arch/nios2/boards/generic/generic.c
@@ -9,17 +9,17 @@ static int phy_address = 1;
 static struct resource mac_resources[] = {
 	[0] = {
 		.start	= NIOS_SOPC_TSE_BASE,
-		.size	= 0x400,
+		.end	= NIOS_SOPC_TSE_BASE + 0x400 - 1,
 		.flags	= IORESOURCE_MEM,
 	},
 	[1] = {
 		.start	= NIOS_SOPC_SGDMA_RX_BASE,
-		.size	= 0x40,
+		.end	= 0x40 + NIOS_SOPC_SGDMA_RX_BASE - 1,
 		.flags	= IORESOURCE_MEM,
 	},
 	[2] = {
 		.start	= NIOS_SOPC_SGDMA_TX_BASE,
-		.size	= 0x40,
+		.end	= 0x40 + NIOS_SOPC_SGDMA_TX_BASE - 1,
 		.flags	= IORESOURCE_MEM,
 	},
 };
diff --git a/commands/bootm.c b/commands/bootm.c
index 2989d39..3c47ab5 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -383,8 +383,7 @@ static int do_bootm(int argc, char *argv[])
 		if (data.os_res)
 			printf("OS image is at 0x%08x-0x%08x\n",
 					data.os_res->start,
-					data.os_res->start +
-					data.os_res->size - 1);
+					data.os_res->end);
 		else
 			printf("OS image not yet relocated\n");
 
@@ -399,8 +398,7 @@ static int do_bootm(int argc, char *argv[])
 			if (data.initrd_res)
 				printf("initrd is at 0x%08x-0x%08x\n",
 					data.initrd_res->start,
-					data.initrd_res->start +
-					data.initrd_res->size - 1);
+					data.initrd_res->end);
 			else
 				printf("initrd image not yet relocated\n");
 		}
diff --git a/commands/iomem.c b/commands/iomem.c
index 96b03ba..7b30946 100644
--- a/commands/iomem.c
+++ b/commands/iomem.c
@@ -31,8 +31,7 @@ static void __print_resources(struct resource *res, int indent)
 		printf("  ");
 
 	printf("0x%08x - 0x%08x (size 0x%08x) %s\n", res->start,
-			res->start + res->size - 1,
-			res->size, res->name);
+			res->end, resource_size(res), res->name);
 
 	list_for_each_entry(r, &res->children, sibling)
 		__print_resources(r, indent + 1);
diff --git a/commands/mem.c b/commands/mem.c
index 080bfde..6d1a2b8 100644
--- a/commands/mem.c
+++ b/commands/mem.c
@@ -594,7 +594,7 @@ static int mem_probe(struct device_d *dev)
 	dev->priv = cdev;
 
 	cdev->name = (char*)dev->resource[0].name;
-	cdev->size = (unsigned long)dev->resource[0].size;
+	cdev->size = (unsigned long)resource_size(&dev->resource[0]);
 	cdev->ops = &memops;
 	cdev->dev = dev;
 
diff --git a/common/memory.c b/common/memory.c
index 3b4a5ef..f04cfac 100644
--- a/common/memory.c
+++ b/common/memory.c
@@ -122,7 +122,7 @@ void barebox_add_memory_bank(const char *name, resource_size_t start,
 	struct memory_bank *bank = xzalloc(sizeof(*bank));
 	struct device_d *dev;
 
-	bank->res = request_iomem_region(name, start, size);
+	bank->res = request_iomem_region(name, start, start + size - 1);
 
 	BUG_ON(!bank->res);
 
@@ -146,7 +146,7 @@ struct resource *request_sdram_region(const char *name, resource_size_t start,
 	for_each_memory_bank(bank) {
 		struct resource *res;
 
-		res = request_region(bank->res, name, start, size);
+		res = request_region(bank->res, name, start, start + size - 1);
 		if (res)
 			return res;
 	}
diff --git a/common/resource.c b/common/resource.c
index 63e9c49..ce5aa27 100644
--- a/common/resource.c
+++ b/common/resource.c
@@ -42,16 +42,20 @@ static int init_resource(struct resource *res, const char *name)
  */
 struct resource *request_region(struct resource *parent,
 		const char *name, resource_size_t start,
-		resource_size_t size)
+		resource_size_t end)
 {
 	struct resource *r, *new;
 
+	if (end < start) {
+		debug("%s: request region 0x%08x:0x%08x: end < start\n",
+				__func__, start, end);
+		return NULL;
+	}
+
 	/* outside parent resource? */
-	if (start < parent->start ||
-			start + size > parent->start + parent->size) {
+	if (start < parent->start || end > parent->end) {
 		debug("%s: 0x%08x:0x%08x outside parent resource 0x%08x:0x%08x\n",
-				__func__, start, size, parent->start,
-				parent->size);
+				__func__, start, end, parent->start, parent->end);
 		return NULL;
 	}
 
@@ -60,22 +64,22 @@ struct resource *request_region(struct resource *parent,
 	 * us searching for conflicts here.
 	 */
 	list_for_each_entry(r, &parent->children, sibling) {
-		if (start + size <= r->start)
+		if (end < r->start)
 			goto ok;
-		if (start >= r->start + r->size)
+		if (start > r->end)
 			continue;
 		debug("%s: 0x%08x:0x%08x conflicts with 0x%08x:0x%08x\n",
-				__func__, start, size, r->start, r->size);
+				__func__, start, end, r->start, r->end);
 		return NULL;
 	}
 
 ok:
-	debug("%s ok: 0x%08x 0x%08x\n", __func__, start, size);
+	debug("%s ok: 0x%08x:0x%08x\n", __func__, start, end);
 
 	new = xzalloc(sizeof(*new));
 	init_resource(new, name);
 	new->start = start;
-	new->size = size;
+	new->end = end;
 	new->parent = parent;
 	list_add_tail(&new->sibling, &r->sibling);
 
@@ -100,16 +104,16 @@ int release_region(struct resource *res)
 /* The root resource for the whole io space */
 struct resource iomem_resource = {
 	.start = 0,
-	.size = ~0,
+	.end = 0xffffffff,
 };
 
 /*
  * request a region inside the io space
  */
 struct resource *request_iomem_region(const char *name,
-		resource_size_t start, resource_size_t size)
+		resource_size_t start, resource_size_t end)
 {
-	return request_region(&iomem_resource, name, start, size);
+	return request_region(&iomem_resource, name, start, end);
 }
 
 static int iomem_init(void)
diff --git a/common/uimage.c b/common/uimage.c
index 945f3d6..43878b5 100644
--- a/common/uimage.c
+++ b/common/uimage.c
@@ -354,9 +354,9 @@ static struct resource *uimage_resource;
 
 static int uimage_sdram_flush(void *buf, unsigned int len)
 {
-	if (uimage_size + len > uimage_resource->size) {
-		resource_size_t start = uimage_resource->start;
-		resource_size_t size = uimage_resource->size + len;
+	if (uimage_size + len > resource_size(uimage_resource)) {
+		resource_size_t start = resource_size(uimage_resource);
+		resource_size_t size = resource_size(uimage_resource) + len;
 		release_sdram_region(uimage_resource);
 
 		uimage_resource = request_sdram_region("uimage",
diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 547d684..4957875 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -261,7 +261,7 @@ void __iomem *dev_request_mem_region(struct device_d *dev, int num)
 	if (!res)
 		return NULL;
 
-	res = request_iomem_region(dev_name(dev), res->start, res->size);
+	res = request_iomem_region(dev_name(dev), res->start, res->end);
 
 	return (void __force __iomem *)res->start;
 }
@@ -389,7 +389,7 @@ static int do_devinfo(int argc, char *argv[])
 			if (res->name)
 				printf("name  : %s\n", res->name);
 			printf("start : 0x%08x\nsize  : 0x%08x\n",
-			       res->start, res->size);
+			       res->start, resource_size(res));
 		}
 
 		printf("driver: %s\n\n", dev->driver ?
diff --git a/drivers/base/resource.c b/drivers/base/resource.c
index 347b2f0..6790af3 100644
--- a/drivers/base/resource.c
+++ b/drivers/base/resource.c
@@ -47,7 +47,7 @@ struct device_d *add_generic_device(const char* devname, int id, const char *res
 	if (resname)
 		res[0].name = xstrdup(resname);
 	res[0].start = start;
-	res[0].size = size;
+	res[0].end = start + size - 1;
 	res[0].flags = flags;
 
 	return add_generic_device_res(devname, id, res, 1, pdata);
@@ -94,10 +94,10 @@ struct device_d *add_dm9000_device(int id, resource_size_t base,
 	}
 
 	res[0].start = base;
-	res[0].size = size;
+	res[0].end = base + size - 1;
 	res[0].flags = IORESOURCE_MEM | flags;
 	res[1].start = data;
-	res[1].size = size;
+	res[1].end = data + size - 1;
 	res[1].flags = IORESOURCE_MEM | flags;
 
 	return add_generic_device_res("dm9000", id, res, 2, pdata);
@@ -113,10 +113,10 @@ struct device_d *add_usb_ehci_device(int id, resource_size_t hccr,
 
 	res = xzalloc(sizeof(struct resource) * 2);
 	res[0].start = hccr;
-	res[0].size = 0x40;
+	res[0].end = hccr + 0x40 - 1;
 	res[0].flags = IORESOURCE_MEM;
 	res[1].start = hcor;
-	res[1].size = 0xc0;
+	res[1].end = hcor + 0xc0 - 1;
 	res[1].flags = IORESOURCE_MEM;
 
 	return add_generic_device_res("ehci", id, res, 2, pdata);
@@ -146,10 +146,10 @@ struct device_d *add_ks8851_device(int id, resource_size_t addr,
 	res = xzalloc(sizeof(struct resource) * 2);
 
 	res[0].start = addr;
-	res[0].size = size;
+	res[0].end = addr + size - 1;
 	res[0].flags = IORESOURCE_MEM | flags;
 	res[1].start = addr_cmd;
-	res[1].size = size;
+	res[1].end = addr_cmd + size - 1;
 	res[1].flags = IORESOURCE_MEM | flags;
 
 	return add_generic_device_res("ks8851_mll", id, res, 2, pdata);
diff --git a/drivers/usb/host/ohci-at91.c b/drivers/usb/host/ohci-at91.c
index 2ce7c6e..b3e9909 100644
--- a/drivers/usb/host/ohci-at91.c
+++ b/drivers/usb/host/ohci-at91.c
@@ -64,7 +64,7 @@ static int at91_ohci_probe(struct device_d *dev)
 	writel(0, &regs->control);
 
 	add_generic_device("ohci", DEVICE_ID_DYNAMIC, NULL, dev->resource[0].start,
-			   dev->resource[0].size, IORESOURCE_MEM, NULL);
+			   resource_size(&dev->resource[0]), IORESOURCE_MEM, NULL);
 
 	return 0;
 }
diff --git a/drivers/video/fb.c b/drivers/video/fb.c
index 0be465f..d885570 100644
--- a/drivers/video/fb.c
+++ b/drivers/video/fb.c
@@ -86,7 +86,7 @@ static int fb_setup_mode(struct device_d *dev, struct param_d *param,
 	if (!ret) {
 		dev->resource[0].start = (resource_size_t)info->screen_base;
 		info->cdev.size = info->xres * info->yres * (info->bits_per_pixel >> 3);
-		dev->resource[0].size = info->cdev.size;
+		dev->resource[0].end = info->cdev.size - 1;
 		dev_param_set_generic(dev, param, val);
 	} else
 		info->cdev.size = 0;
@@ -116,7 +116,7 @@ int register_framebuffer(struct fb_info *info)
 	info->cdev.priv = info;
 	dev->resource = xzalloc(sizeof(struct resource));
 	dev->resource[0].start = (resource_size_t)info->screen_base;
-	dev->resource[0].size = info->cdev.size;
+	dev->resource[0].end = info->cdev.size - 1;
 	dev->resource[0].flags = IORESOURCE_MEM;
 	dev->num_resources = 1;
 
diff --git a/fs/devfs.c b/fs/devfs.c
index ae48451..b746a0e 100644
--- a/fs/devfs.c
+++ b/fs/devfs.c
@@ -166,7 +166,7 @@ static int devfs_truncate(struct device_d *dev, FILE *f, ulong size)
 {
 	if (f->dev->num_resources < 1)
 		return -ENOSPC;
-	if (size > f->dev->resource[0].size)
+	if (size > resource_size(&f->dev->resource[0]))
 		return -ENOSPC;
 	return 0;
 }
diff --git a/fs/fs.c b/fs/fs.c
index af73c8c..8c6102d 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -1252,7 +1252,7 @@ ssize_t mem_read(struct cdev *cdev, void *buf, size_t count, ulong offset, ulong
 		return -1;
 	dev = cdev->dev;
 
-	size = min((ulong)count, dev->resource[0].size - offset);
+	size = min((ulong)count, resource_size(&dev->resource[0]) - offset);
 	memcpy_sz(buf, dev_get_mem_region(dev, 0) + offset, size, flags & O_RWSIZE_MASK);
 	return size;
 }
@@ -1267,7 +1267,7 @@ ssize_t mem_write(struct cdev *cdev, const void *buf, size_t count, ulong offset
 		return -1;
 	dev = cdev->dev;
 
-	size = min((ulong)count, dev->resource[0].size - offset);
+	size = min((ulong)count, resource_size(&dev->resource[0]) - offset);
 	memcpy_sz(dev_get_mem_region(dev, 0) + offset, buf, size, flags & O_RWSIZE_MASK);
 	return size;
 }
diff --git a/include/linux/ioport.h b/include/linux/ioport.h
index c837b53..1925bfc 100644
--- a/include/linux/ioport.h
+++ b/include/linux/ioport.h
@@ -17,7 +17,7 @@
  */
 struct resource {
 	resource_size_t start;
-	resource_size_t size;
+	resource_size_t end;
 	const char *name;
 	unsigned long flags;
 	struct resource *parent;
@@ -107,7 +107,7 @@ struct resource {
 
 static inline resource_size_t resource_size(const struct resource *res)
 {
-	return res->size;
+	return res->end - res->start + 1;
 }
 static inline unsigned long resource_type(const struct resource *res)
 {
@@ -115,10 +115,10 @@ static inline unsigned long resource_type(const struct resource *res)
 }
 
 struct resource *request_iomem_region(const char *name,
-		resource_size_t start, resource_size_t size);
+		resource_size_t start, resource_size_t end);
 
 struct resource *request_region(struct resource *parent,
-		const char *name, resource_size_t start,
+		const char *name, resource_size_t end,
 		resource_size_t size);
 
 int release_region(struct resource *res);
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
