Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vjs2v-0008Fv-51
 for barebox@lists.infradead.org; Fri, 22 Nov 2013 14:49:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 22 Nov 2013 15:48:47 +0100
Message-Id: <1385131741-28280-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1385131741-28280-1-git-send-email-s.hauer@pengutronix.de>
References: <1385131741-28280-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/17] spi: omap: encode register offset into device_id
To: barebox@lists.infradead.org

The omap3 and omap4/am33xx spi cores differ in the offset of the
registers in the address space. Instead of encoding this into the
resources use the platform_device_id mechanism. This is done in
preparation for devicetree probe support where the address space
is in the devicetree and can't be adjusted.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-omap/include/mach/am33xx-devices.h |  2 +-
 drivers/spi/omap3_spi.c                          | 38 ++++++++++++++++++++++--
 drivers/spi/omap3_spi.h                          |  6 +++-
 3 files changed, 42 insertions(+), 4 deletions(-)

diff --git a/arch/arm/mach-omap/include/mach/am33xx-devices.h b/arch/arm/mach-omap/include/mach/am33xx-devices.h
index 6691980..d2411a4 100644
--- a/arch/arm/mach-omap/include/mach/am33xx-devices.h
+++ b/arch/arm/mach-omap/include/mach/am33xx-devices.h
@@ -45,7 +45,7 @@ static inline struct device_d *am33xx_add_cpsw(struct cpsw_platform_data *cpsw_d
 
 static inline struct device_d *am33xx_add_spi(int id, resource_size_t start)
 {
-	return add_generic_device("omap3_spi", id, NULL, start + 0x100, SZ_4K - 0x100,
+	return add_generic_device("omap4-spi", id, NULL, start, SZ_4K,
 				   IORESOURCE_MEM, NULL);
 }
 
diff --git a/drivers/spi/omap3_spi.c b/drivers/spi/omap3_spi.c
index 5c8cc88..136fc18 100644
--- a/drivers/spi/omap3_spi.c
+++ b/drivers/spi/omap3_spi.c
@@ -49,6 +49,10 @@
 #define SPI_XFER_BEGIN  0x01                    /* Assert CS before transfer */
 #define SPI_XFER_END    0x02                    /* Deassert CS after transfer */
 
+struct omap_spi_drvdata {
+	unsigned register_offset;
+};
+
 static void spi_reset(struct spi_master *master)
 {
 	struct omap3_spi_master *omap3_master = container_of(master, struct omap3_spi_master, master);
@@ -343,6 +347,12 @@ static int omap3_spi_probe(struct device_d *dev)
 {
 	struct spi_master *master;
 	struct omap3_spi_master *omap3_master;
+	struct omap_spi_drvdata *devtype;
+	int ret;
+
+	ret = dev_get_drvdata(dev, (unsigned long *)&devtype);
+	if (ret)
+		return ret;
 
 	omap3_master = xzalloc(sizeof(*omap3_master));
 
@@ -374,7 +384,10 @@ static int omap3_spi_probe(struct device_d *dev)
 	master->setup = omap3_spi_setup;
 	master->transfer = omap3_spi_transfer;
 
-	omap3_master->regs = dev_request_mem_region(dev, 0);
+	omap3_master->base = dev_request_mem_region(dev, 0);
+	omap3_master->regs = omap3_master->base;
+
+	omap3_master->regs += devtype->register_offset;
 
 	spi_reset(master);
 
@@ -383,8 +396,29 @@ static int omap3_spi_probe(struct device_d *dev)
 	return 0;
 }
 
+static struct omap_spi_drvdata omap3_data = {
+	.register_offset = 0x0,
+};
+
+static struct omap_spi_drvdata omap4_data = {
+	.register_offset = 0x100,
+};
+
+static struct platform_device_id omap_spi_ids[] = {
+	{
+		.name = "omap3-spi",
+		.driver_data = (unsigned long)&omap3_data,
+	}, {
+		.name = "omap4-spi",
+		.driver_data = (unsigned long)&omap4_data,
+	}, {
+		/* sentinel */
+	},
+};
+
 static struct driver_d omap3_spi_driver = {
-	.name = "omap3_spi",
+	.name = "omap-spi",
 	.probe = omap3_spi_probe,
+	.id_table = omap_spi_ids,
 };
 device_platform_driver(omap3_spi_driver);
diff --git a/drivers/spi/omap3_spi.h b/drivers/spi/omap3_spi.h
index 55fd2fc..ce4a29b 100644
--- a/drivers/spi/omap3_spi.h
+++ b/drivers/spi/omap3_spi.h
@@ -88,7 +88,11 @@
 
 struct omap3_spi_master {
 	struct spi_master master;
-	void __iomem *regs;
+	void __iomem *base; /* base of address space */
+	void __iomem *regs; /* actual start of registers, omap4/am33xx have an
+			     * offset of 0x100 between start of register space
+			     * and registers
+			     */
 };
 
 #endif /* _OMAP3_SPI_H_ */
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
