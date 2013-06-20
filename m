Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UpfQQ-0007nz-1B
 for barebox@lists.infradead.org; Thu, 20 Jun 2013 14:01:24 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 20 Jun 2013 16:00:52 +0200
Message-Id: <1371736854-7543-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1371736854-7543-1-git-send-email-s.hauer@pengutronix.de>
References: <1371736854-7543-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] ata: ide: embed ata_ioports into struct ide_port and
 export it
To: barebox@lists.infradead.org

Embedding struct ata_ioports into struct ide_port saves us an allocation.
Making it available to client drivers is necessary to give them access
to struct ata_port which is needed in the next patch.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/ata/ide-sff.c           | 60 ++++++++++++++++-------------------------
 drivers/ata/intf_platform_ide.c | 14 +++++-----
 drivers/ata/pata-imx.c          | 13 +++++----
 include/ata_drive.h             |  7 ++++-
 4 files changed, 44 insertions(+), 50 deletions(-)

diff --git a/drivers/ata/ide-sff.c b/drivers/ata/ide-sff.c
index ef55357..0e8b744 100644
--- a/drivers/ata/ide-sff.c
+++ b/drivers/ata/ide-sff.c
@@ -8,14 +8,6 @@
 /* max timeout for a rotating disk in [ms] */
 #define MAX_TIMEOUT 5000
 
-/**
- * Collection of data we need to know about this drive
- */
-struct ide_port {
-	struct ata_ioports *io;	/**< register file */
-	struct ata_port port;
-};
-
 #define to_ata_drive_access(x) container_of((x), struct ide_port, port)
 
 #define DISK_MASTER 0
@@ -28,7 +20,7 @@ struct ide_port {
  */
 static uint8_t ata_rd_status(struct ide_port *ide)
 {
-	return readb(ide->io->status_addr);
+	return readb(ide->io.status_addr);
 }
 
 /**
@@ -90,12 +82,12 @@ static int ata_set_lba_sector(struct ide_port *ide, unsigned drive, uint64_t num
 	if (num > 0x0FFFFFFF || drive > 1)
 		return -EINVAL;
 
-	writeb(0xA0 | LBA_FLAG | drive << 4 | num >> 24, ide->io->device_addr);
-	writeb(0x00, ide->io->error_addr);
-	writeb(0x01, ide->io->nsect_addr);
-	writeb(num, ide->io->lbal_addr);	/* 0 ... 7 */
-	writeb(num >> 8, ide->io->lbam_addr); /* 8 ... 15 */
-	writeb(num >> 16, ide->io->lbah_addr); /* 16 ... 23 */
+	writeb(0xA0 | LBA_FLAG | drive << 4 | num >> 24, ide->io.device_addr);
+	writeb(0x00, ide->io.error_addr);
+	writeb(0x01, ide->io.nsect_addr);
+	writeb(num, ide->io.lbal_addr);	/* 0 ... 7 */
+	writeb(num >> 8, ide->io.lbam_addr); /* 8 ... 15 */
+	writeb(num >> 16, ide->io.lbah_addr); /* 16 ... 23 */
 
 	return 0;
 }
@@ -114,7 +106,7 @@ static int ata_wr_cmd(struct ide_port *ide, uint8_t cmd)
 	if (rc != 0)
 		return rc;
 
-	writeb(cmd, ide->io->command_addr);
+	writeb(cmd, ide->io.command_addr);
 	return 0;
 }
 
@@ -125,7 +117,7 @@ static int ata_wr_cmd(struct ide_port *ide, uint8_t cmd)
  */
 static void ata_wr_dev_ctrl(struct ide_port *ide, uint8_t val)
 {
-	writeb(val, ide->io->ctl_addr);
+	writeb(val, ide->io.ctl_addr);
 }
 
 /**
@@ -138,12 +130,12 @@ static void ata_rd_sector(struct ide_port *ide, void *buf)
 	unsigned u = SECTOR_SIZE / sizeof(uint16_t);
 	uint16_t *b = buf;
 
-	if (ide->io->dataif_be) {
+	if (ide->io.dataif_be) {
 		for (; u > 0; u--)
-			*b++ = be16_to_cpu(readw(ide->io->data_addr));
+			*b++ = be16_to_cpu(readw(ide->io.data_addr));
 	} else {
 		for (; u > 0; u--)
-			*b++ = le16_to_cpu(readw(ide->io->data_addr));
+			*b++ = le16_to_cpu(readw(ide->io.data_addr));
 	}
 }
 
@@ -157,12 +149,12 @@ static void ata_wr_sector(struct ide_port *ide, const void *buf)
 	unsigned u = SECTOR_SIZE / sizeof(uint16_t);
 	const uint16_t *b = buf;
 
-	if (ide->io->dataif_be) {
+	if (ide->io.dataif_be) {
 		for (; u > 0; u--)
-			writew(cpu_to_be16(*b++), ide->io->data_addr);
+			writew(cpu_to_be16(*b++), ide->io.data_addr);
 	} else {
 		for (; u > 0; u--)
-			writew(cpu_to_le16(*b++), ide->io->data_addr);
+			writew(cpu_to_le16(*b++), ide->io.data_addr);
 	}
 }
 
@@ -176,10 +168,10 @@ static int ide_read_id(struct ata_port *port, void *buf)
 	struct ide_port *ide = to_ata_drive_access(port);
 	int rc;
 
-	writeb(0xA0, ide->io->device_addr);	/* FIXME drive */
-	writeb(0x00, ide->io->lbal_addr);
-	writeb(0x00, ide->io->lbam_addr);
-	writeb(0x00, ide->io->lbah_addr);
+	writeb(0xA0, ide->io.device_addr);	/* FIXME drive */
+	writeb(0x00, ide->io.lbal_addr);
+	writeb(0x00, ide->io.lbam_addr);
+	writeb(0x00, ide->io.lbah_addr);
 
 	rc = ata_wr_cmd(ide, ATA_CMD_ID_ATA);
 	if (rc != 0)
@@ -201,11 +193,11 @@ static int ide_reset(struct ata_port *port)
 	uint8_t reg;
 
 	/* try a hard reset first (if available) */
-	if (ide->io->reset != NULL) {
+	if (ide->io.reset != NULL) {
 		pr_debug("%s: Resetting drive...\n", __func__);
-		ide->io->reset(1);
+		ide->io.reset(1);
 		rc = ata_wait_busy(ide, 500);
-		ide->io->reset(0);
+		ide->io.reset(0);
 		if (rc == 0) {
 			rc = ata_wait_ready(ide, MAX_TIMEOUT);
 			if (rc != 0)
@@ -324,17 +316,11 @@ static struct ata_port_operations ide_ops = {
 	.reset = ide_reset,
 };
 
-int ide_port_register(struct device_d *dev, struct ata_ioports *io, const char *devname)
+int ide_port_register(struct ide_port *ide)
 {
-	struct ide_port *ide;
 	int ret;
 
-	ide = xzalloc(sizeof(*ide));
-
-	ide->io = io;
 	ide->port.ops = &ide_ops;
-	ide->port.dev = dev;
-	ide->port.devname = devname;
 
 	ret = ata_port_register(&ide->port);
 
diff --git a/drivers/ata/intf_platform_ide.c b/drivers/ata/intf_platform_ide.c
index 455ac28..8ae0f05 100644
--- a/drivers/ata/intf_platform_ide.c
+++ b/drivers/ata/intf_platform_ide.c
@@ -80,7 +80,7 @@ static int platform_ide_probe(struct device_d *dev)
 {
 	int rc;
 	struct ide_port_info *pdata = dev->platform_data;
-	struct ata_ioports *io;
+	struct ide_port *ide;
 	void *reg_base, *alt_base;
 
 	if (pdata == NULL) {
@@ -88,17 +88,17 @@ static int platform_ide_probe(struct device_d *dev)
 		return -EINVAL;
 	}
 
-	io = xzalloc(sizeof(struct ata_ioports));
+	ide = xzalloc(sizeof(*ide));
 	reg_base = dev_request_mem_region(dev, 0);
 	alt_base = dev_request_mem_region(dev, 1);
-	platform_ide_setup_port(reg_base, alt_base, io, pdata->ioport_shift);
-	io->reset = pdata->reset;
-	io->dataif_be = pdata->dataif_be;
+	platform_ide_setup_port(reg_base, alt_base, &ide->io, pdata->ioport_shift);
+	ide->io.reset = pdata->reset;
+	ide->io.dataif_be = pdata->dataif_be;
 
-	rc = ide_port_register(dev, io, NULL);
+	rc = ide_port_register(ide);
 	if (rc != 0) {
 		dev_err(dev, "Cannot register IDE interface\n");
-		free(io);
+		free(ide);
 	}
 
 	return rc;
diff --git a/drivers/ata/pata-imx.c b/drivers/ata/pata-imx.c
index 78f2aa5..aed6df1 100644
--- a/drivers/ata/pata-imx.c
+++ b/drivers/ata/pata-imx.c
@@ -148,13 +148,13 @@ static void imx_pata_setup_port(void *reg_base, void *alt_base,
 
 static int imx_pata_probe(struct device_d *dev)
 {
-	struct ata_ioports *io;
+	struct ide_port *ide;
 	struct clk *clk;
 	void __iomem *base;
 	int ret;
 	const char *devname = NULL;
 
-	io = xzalloc(sizeof(struct ata_ioports));
+	ide = xzalloc(sizeof(*ide));
 	base = dev_request_mem_region(dev, 0);
 
 	clk = clk_get(dev, NULL);
@@ -164,7 +164,7 @@ static int imx_pata_probe(struct device_d *dev)
 	}
 
 	imx_pata_setup_port(base + PATA_IMX_DRIVE_DATA,
-			base + PATA_IMX_DRIVE_CONTROL, io, 2);
+			base + PATA_IMX_DRIVE_CONTROL, &ide->io, 2);
 
 	/* deassert resets */
 	writel(PATA_IMX_ATA_CTRL_FIFO_RST_B |
@@ -179,7 +179,10 @@ static int imx_pata_probe(struct device_d *dev)
 			devname = xstrdup(devname);
 	}
 
-	ret = ide_port_register(dev, io, devname);
+	ide->port.dev = dev;
+	ide->port.devname = devname;
+
+	ret = ide_port_register(ide);
 	if (ret) {
 		dev_err(dev, "Cannot register IDE interface: %s\n",
 				strerror(-ret));
@@ -192,7 +195,7 @@ out_free_clk:
 	clk_put(clk);
 
 out_free:
-	free(io);
+	free(ide);
 
 	return ret;
 }
diff --git a/include/ata_drive.h b/include/ata_drive.h
index 818247a..6d6cca4 100644
--- a/include/ata_drive.h
+++ b/include/ata_drive.h
@@ -143,7 +143,12 @@ struct ata_port {
 	int probe;
 };
 
-int ide_port_register(struct device_d *, struct ata_ioports *, const char *);
+struct ide_port {
+	struct ata_ioports io;	/**< register file */
+	struct ata_port port;
+};
+
+int ide_port_register(struct ide_port *ide);
 int ata_port_register(struct ata_port *port);
 int ata_port_detect(struct ata_port *port);
 
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
