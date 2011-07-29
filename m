Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo4.mail-out.ovh.net ([178.32.98.131]
	helo=mo4.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1Qmpl2-0005th-4C
	for barebox@lists.infradead.org; Fri, 29 Jul 2011 16:18:01 +0000
Received: from mail182.ha.ovh.net (b6.ovh.net [213.186.33.56])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id 0476EFFA803
	for <barebox@lists.infradead.org>;
	Fri, 29 Jul 2011 18:18:41 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 29 Jul 2011 17:59:47 +0200
Message-Id: <1311955207-22372-10-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20110729155356.GF25658@game.jcrosoft.org>
References: <20110729155356.GF25658@game.jcrosoft.org>
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
Subject: [PATCH 5/7] resource: introduce add_usb_ehci_device to register echi
	device
To: barebox@lists.infradead.org

pass the hccr and hcor register base via resource

instroduce add_generic_usb_echi_device with hccr = base + 0x100 and
hcor = base + 0x140

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/chumby_falconwing/falconwing.c    |   17 +--------------
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c |    8 +------
 arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c |    9 +-------
 arch/arm/boards/freescale-mx25-3-stack/3stack.c   |    9 +-------
 arch/arm/boards/guf-neso/board.c                  |   10 +--------
 arch/arm/boards/omap/board-beagle.c               |   13 +----------
 arch/arm/boards/panda/board.c                     |   18 ++++++----------
 arch/arm/boards/pcm037/pcm037.c                   |   18 +---------------
 arch/arm/boards/pcm038/pcm038.c                   |    9 +-------
 arch/arm/boards/phycard-i.MX27/pca100.c           |   18 +---------------
 drivers/base/resource.c                           |   21 ++++++++++++++++++++
 drivers/usb/host/ehci-hcd.c                       |   22 +++++++++++---------
 include/driver.h                                  |   17 ++++++++++++++++
 13 files changed, 70 insertions(+), 119 deletions(-)

diff --git a/arch/arm/boards/chumby_falconwing/falconwing.c b/arch/arm/boards/chumby_falconwing/falconwing.c
index 7a5f37e..5875955 100644
--- a/arch/arm/boards/chumby_falconwing/falconwing.c
+++ b/arch/arm/boards/chumby_falconwing/falconwing.c
@@ -327,20 +327,6 @@ static int register_persistant_environment(void)
 	return devfs_add_partition("disk0.1", 0, cdev->size, DEVFS_PARTITION_FIXED, "env0");
 }
 
-static struct ehci_platform_data chumby_usb_pdata = {
-	.flags = EHCI_HAS_TT,
-	.hccr_offset = 0x100,
-	.hcor_offset = 0x140,
-};
-
-static struct device_d usb_dev = {
-	.name		= "ehci",
-	.id		= -1,
-	.map_base	= IMX_USB_BASE,
-	.size		= 0x200,
-	.platform_data	= &chumby_usb_pdata,
-};
-
 #define GPIO_USB_HUB_RESET	29
 #define GPIO_USB_HUB_POWER	26
 
@@ -353,7 +339,8 @@ static void falconwing_init_usb(void)
 	gpio_direction_output(GPIO_USB_HUB_RESET, 1);
 
 	imx_usb_phy_enable();
-	register_device(&usb_dev);
+
+	add_generic_usb_ehci_device(-1, IMX_USB_BASE, NULL);
 }
 
 static int falconwing_devices_init(void)
diff --git a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
index 6ea4a6e..47d5e12 100644
--- a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
+++ b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
@@ -148,12 +148,6 @@ static void imx25_usb_init(void)
 	writel(tmp | 0x3, IMX_OTG_BASE + 0x5a8);
 }
 
-static struct device_d usbh2_dev = {
-	.id	  = -1,
-	.name     = "ehci",
-	.map_base = IMX_OTG_BASE + 0x400,
-	.size     = 0x200,
-};
 #endif
 
 static struct fsl_usb2_platform_data usb_pdata = {
@@ -282,7 +276,7 @@ static int eukrea_cpuimx25_devices_init(void)
 
 #ifdef CONFIG_USB
 	imx25_usb_init();
-	register_device(&usbh2_dev);
+	add_generic_usb_ehci_device(-1, IMX_OTG_BASE + 0x400, NULL);
 #endif
 	register_device(&usbotg_dev);
 
diff --git a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
index d1de495..4de3c5a 100644
--- a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
+++ b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
@@ -117,13 +117,6 @@ static void imx35_usb_init(void)
 	tmp = readl(IMX_OTG_BASE + 0x5a8);
 	writel(tmp | 0x3, IMX_OTG_BASE + 0x5a8);
 }
-
-static struct device_d usbh2_dev = {
-	.id	  = -1,
-	.name     = "ehci",
-	.map_base = IMX_OTG_BASE + 0x400,
-	.size     = 0x200,
-};
 #endif
 
 static struct fsl_usb2_platform_data usb_pdata = {
@@ -181,7 +174,7 @@ static int eukrea_cpuimx35_devices_init(void)
 
 #ifdef CONFIG_USB
 	imx35_usb_init();
-	register_device(&usbh2_dev);
+	add_generic_usb_ehci_device(-1, IMX_OTG_BASE + 0x400, NULL);
 #endif
 #ifdef CONFIG_USB_GADGET
 	/* Workaround ENGcm09152 */
diff --git a/arch/arm/boards/freescale-mx25-3-stack/3stack.c b/arch/arm/boards/freescale-mx25-3-stack/3stack.c
index 6d4bde5..8d9b29d 100644
--- a/arch/arm/boards/freescale-mx25-3-stack/3stack.c
+++ b/arch/arm/boards/freescale-mx25-3-stack/3stack.c
@@ -137,13 +137,6 @@ static void imx25_usb_init(void)
 	tmp = readl(IMX_OTG_BASE + 0x5a8);
 	writel(tmp | 0x3, IMX_OTG_BASE + 0x5a8);
 }
-
-static struct device_d usbh2_dev = {
-	.id	  = -1,
-	.name     = "ehci",
-	.map_base = IMX_OTG_BASE + 0x400,
-	.size     = 0x200,
-};
 #endif
 
 static struct i2c_board_info i2c_devices[] = {
@@ -207,7 +200,7 @@ static int imx25_devices_init(void)
 	 * the CPLD has to be initialized.
 	 */
 	imx25_usb_init();
-	register_device(&usbh2_dev);
+	add_generic_usb_ehci_device(-1, IMX_OTG_BASE + 0x400, NULL);
 #endif
 
 	imx25_add_fec(&fec_info);
diff --git a/arch/arm/boards/guf-neso/board.c b/arch/arm/boards/guf-neso/board.c
index 4e0ac90..f3a4635 100644
--- a/arch/arm/boards/guf-neso/board.c
+++ b/arch/arm/boards/guf-neso/board.c
@@ -114,14 +114,6 @@ static struct imx_fb_platform_data neso_fb_data = {
 };
 
 #ifdef CONFIG_USB
-
-static struct device_d usbh2_dev = {
-	.id	  = -1,
-	.name     = "ehci",
-	.map_base = IMX_OTG_BASE + 0x400,
-	.size     = 0x200,
-};
-
 static void neso_usbh_init(void)
 {
 	uint32_t temp;
@@ -304,7 +296,7 @@ static int neso_devices_init(void)
 
 #ifdef CONFIG_USB
 	neso_usbh_init();
-	register_device(&usbh2_dev);
+	add_generic_usb_ehci_device(-1, IMX_OTG_BASE + 0x400, NULL);
 #endif
 
 	imx27_add_fec(&fec_info);
diff --git a/arch/arm/boards/omap/board-beagle.c b/arch/arm/boards/omap/board-beagle.c
index 107a009..adf0b94 100644
--- a/arch/arm/boards/omap/board-beagle.c
+++ b/arch/arm/boards/omap/board-beagle.c
@@ -277,16 +277,6 @@ static struct omap_hcd omap_ehci_pdata = {
 
 static struct ehci_platform_data ehci_pdata = {
 	.flags = 0,
-	.hccr_offset = 0x100,
-	.hcor_offset = 0x110,
-};
-
-static struct device_d usbh_dev = {
-	.id	  = -1,
-	.name     = "ehci",
-	.map_base = 0x48064700,
-	.size     = 4 * 1024,
-	.platform_data = &ehci_pdata,
 };
 #endif /* CONFIG_USB_EHCI_OMAP */
 
@@ -324,7 +314,8 @@ static int beagle_devices_init(void)
 
 #ifdef CONFIG_USB_EHCI_OMAP
 	if (ehci_omap_init(&omap_ehci_pdata) >= 0)
-		register_device(&usbh_dev);
+		add_usb_ehci_device(-1, 0x48064700 + 0x100,
+				    0x48064700 + 0x110, &ehci_pdata);
 #endif /* CONFIG_USB_EHCI_OMAP */
 #ifdef CONFIG_GPMC
 	/* WP is made high and WAIT1 active Low */
diff --git a/arch/arm/boards/panda/board.c b/arch/arm/boards/panda/board.c
index c5b1e5c..9cbc10b 100644
--- a/arch/arm/boards/panda/board.c
+++ b/arch/arm/boards/panda/board.c
@@ -67,18 +67,9 @@ static int panda_mmu_init(void)
 device_initcall(panda_mmu_init);
 #endif
 
+#ifdef CONFIG_USB_EHCI
 static struct ehci_platform_data ehci_pdata = {
 	.flags = 0,
-	.hccr_offset = 0x0,
-	.hcor_offset = 0x10,
-};
-
-static struct device_d usbh_dev = {
-	.id	  = -1,
-	.name     = "ehci",
-	.map_base = 0x4a064c00,
-	.size     = 4 * 1024,
-	.platform_data = &ehci_pdata,
 };
 
 static void panda_ehci_init(void)
@@ -111,8 +102,13 @@ static void panda_ehci_init(void)
 	/* enable power to hub */
 	gpio_set_value(GPIO_HUB_POWER, 1);
 
-	register_device(&usbh_dev);
+	add_usb_ehci_device(-1, 0x4a064c00,
+			    0x4a064c00 + 0x10, &ehci_pdata);
 }
+#else
+static void panda_ehci_init(void)
+{}
+#endif
 
 static void __init panda_boardrev_init(void)
 {
diff --git a/arch/arm/boards/pcm037/pcm037.c b/arch/arm/boards/pcm037/pcm037.c
index 6e20d1d..c2d0e8b 100644
--- a/arch/arm/boards/pcm037/pcm037.c
+++ b/arch/arm/boards/pcm037/pcm037.c
@@ -70,20 +70,6 @@ struct imx_nand_platform_data nand_info = {
 };
 
 #ifdef CONFIG_USB
-static struct device_d usbotg_dev = {
-	.id	  = -1,
-	.name     = "ehci",
-	.map_base = IMX_OTG_BASE,
-	.size     = 0x200,
-};
-
-static struct device_d usbh2_dev = {
-	.id	  = -1,
-	.name     = "ehci",
-	.map_base = IMX_OTG_BASE + 0x400,
-	.size     = 0x200,
-};
-
 static void pcm037_usb_init(void)
 {
 	u32 tmp;
@@ -250,8 +236,8 @@ static int imx31_devices_init(void)
 #endif
 #ifdef CONFIG_USB
 	pcm037_usb_init();
-	register_device(&usbotg_dev);
-	register_device(&usbh2_dev);
+	add_generic_usb_ehci_device(-1, IMX_OTG_BASE, NULL);
+	add_generic_usb_ehci_device(-1, IMX_OTG_BASE + 0x400, NULL);
 #endif
 
 	armlinux_set_bootparams((void *)0x80000100);
diff --git a/arch/arm/boards/pcm038/pcm038.c b/arch/arm/boards/pcm038/pcm038.c
index 2f87b12..02c3dba 100644
--- a/arch/arm/boards/pcm038/pcm038.c
+++ b/arch/arm/boards/pcm038/pcm038.c
@@ -109,13 +109,6 @@ static struct imx_fb_platform_data pcm038_fb_data = {
 };
 
 #ifdef CONFIG_USB
-static struct device_d usbh2_dev = {
-	.id	  = -1,
-	.name     = "ehci",
-	.map_base = IMX_OTG_BASE + 0x400,
-	.size     = 0x200,
-};
-
 static void pcm038_usbh_init(void)
 {
 	uint32_t temp;
@@ -271,7 +264,7 @@ static int pcm038_devices_init(void)
 
 #ifdef CONFIG_USB
 	pcm038_usbh_init();
-	register_device(&usbh2_dev);
+	add_generic_usb_ehci_device(-1, IMX_OTG_BASE + 0x400, NULL);
 #endif
 
 	/* Register the fec device after the PLL re-initialisation
diff --git a/arch/arm/boards/phycard-i.MX27/pca100.c b/arch/arm/boards/phycard-i.MX27/pca100.c
index 63216f5..e557d89 100644
--- a/arch/arm/boards/phycard-i.MX27/pca100.c
+++ b/arch/arm/boards/phycard-i.MX27/pca100.c
@@ -53,20 +53,6 @@ struct imx_nand_platform_data nand_info = {
 };
 
 #ifdef CONFIG_USB
-static struct device_d usbotg_dev = {
-	.id	  = -1,
-	.name     = "ehci",
-	.map_base = IMX_OTG_BASE,
-	.size     = 0x200,
-};
-
-static struct device_d usbh2_dev = {
-	.id	  = -1,
-	.name     = "ehci",
-	.map_base = IMX_OTG_BASE + 0x400,
-	.size     = 0x200,
-};
-
 static void pca100_usb_register(void)
 {
 	mdelay(10);
@@ -77,9 +63,9 @@ static void pca100_usb_register(void)
 	mdelay(10);
 
 	isp1504_set_vbus_power((void *)(IMX_OTG_BASE + 0x170), 1);
-	register_device(&usbotg_dev);
+	add_generic_usb_ehci_device(-1, IMX_OTG_BASE, NULL);
 	isp1504_set_vbus_power((void *)(IMX_OTG_BASE + 0x570), 1);
-	register_device(&usbh2_dev);
+	add_generic_usb_ehci_device(-1, IMX_OTG_BASE + 0x400, NULL);
 }
 #endif
 
diff --git a/drivers/base/resource.c b/drivers/base/resource.c
index 98fc68a..5fc705f 100644
--- a/drivers/base/resource.c
+++ b/drivers/base/resource.c
@@ -97,3 +97,24 @@ struct device_d *add_dm9000_device(int id, resource_size_t base,
 }
 EXPORT_SYMBOL(add_dm9000_device);
 #endif
+
+#ifdef CONFIG_USB_EHCI
+struct device_d *add_usb_ehci_device(int id, resource_size_t hccr,
+		resource_size_t hcor, void *pdata)
+{
+	struct device_d *dev;
+
+	dev = alloc_device("ehci", id, pdata);
+	dev->resource = xzalloc(sizeof(struct resource) * 2);
+	dev->num_resources = 2;
+	dev->resource[0].start = hccr;
+	dev->resource[0].flags = IORESOURCE_MEM;
+	dev->resource[1].start = hcor;
+	dev->resource[1].flags = IORESOURCE_MEM;
+
+	register_device(dev);
+
+	return dev;
+}
+EXPORT_SYMBOL(add_usb_ehci_device);
+#endif
diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index 844dc1d..54856a3 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -900,20 +900,22 @@ static int ehci_probe(struct device_d *dev)
 	host = &ehci->host;
 	dev->priv = ehci;
 
-	if (pdata) {
+	/* default to EHCI_HAS_TT to not change behaviour of boards
+	 * with platform_data
+	 */
+	if (pdata)
 		ehci->flags = pdata->flags;
-		ehci->hccr = (void *)(dev->map_base + pdata->hccr_offset);
-		ehci->hcor = (void *)(dev->map_base + pdata->hcor_offset);
-	}
-	else {
-		/* default to EHCI_HAS_TT to not change behaviour of boards
-		 * with platform_data
-		 */
+	else
 		ehci->flags = EHCI_HAS_TT;
-		ehci->hccr = (void *)(dev->map_base + 0x100);
-		ehci->hcor = (void *)(dev->map_base + 0x140);
+
+	if (dev->num_resources < 2) {
+		printf("echi: need 2 resources base and data");
+		return -ENODEV;
 	}
 
+	ehci->hccr = dev_request_mem_region(dev, 0);
+	ehci->hcor = dev_request_mem_region(dev, 1);
+
 	host->init = ehci_init;
 	host->submit_int_msg = submit_int_msg;
 	host->submit_control_msg = submit_control_msg;
diff --git a/include/driver.h b/include/driver.h
index 1f45019..fecaecc 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -238,6 +238,23 @@ static inline struct device_d *add_dm9000_device(int id, resource_size_t base,
 }
 #endif
 
+#ifdef CONFIG_USB_EHCI
+struct device_d *add_usb_ehci_device(int id, resource_size_t hccr,
+		resource_size_t hcor, void *pdata);
+#else
+static inline struct device_d *add_usb_ehci_device(int id, resource_size_t hccr,
+		resource_size_t hcor, void *pdata)
+{
+	return NULL;
+}
+#endif
+
+static inline struct device_d *add_generic_usb_ehci_device(int id,
+		resource_size_t base, void *pdata)
+{
+	return add_usb_ehci_device(id, base + 0x100, base + 0x140, pdata);
+}
+
 /* linear list over all available devices
  */
 extern struct list_head device_list;
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
