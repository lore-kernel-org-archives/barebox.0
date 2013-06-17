Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UoVHu-0000v0-LV
 for barebox@lists.infradead.org; Mon, 17 Jun 2013 08:59:48 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 17 Jun 2013 10:59:15 +0200
Message-Id: <1371459556-24073-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1371459556-24073-1-git-send-email-s.hauer@pengutronix.de>
References: <1371459556-24073-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/4] ata: ide: Allow to set the devicename
To: barebox@lists.infradead.org

To get persistent devicenames under /dev/ allow to set the
devicename from the driver instead of using "ata" unconditionally.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/ata/disk_ata_drive.c    | 14 +++++++++-----
 drivers/ata/ide-sff.c           |  3 ++-
 drivers/ata/intf_platform_ide.c |  2 +-
 include/ata_drive.h             |  3 ++-
 4 files changed, 14 insertions(+), 8 deletions(-)

diff --git a/drivers/ata/disk_ata_drive.c b/drivers/ata/disk_ata_drive.c
index 4c82797..a25c75e 100644
--- a/drivers/ata/disk_ata_drive.c
+++ b/drivers/ata/disk_ata_drive.c
@@ -298,12 +298,16 @@ static int ata_port_init(struct ata_port *port)
 #ifdef DEBUG
 	ata_dump_id(port->id);
 #endif
-	rc = cdev_find_free_index("ata");
-	if (rc == -1)
-		pr_err("Cannot find a free index for the disk node\n");
+	if (port->devname) {
+		port->blk.cdev.name = xstrdup(port->devname);
+	} else {
+		rc = cdev_find_free_index("ata");
+		if (rc == -1)
+			pr_err("Cannot find a free index for the disk node\n");
+		port->blk.cdev.name = asprintf("ata%d", rc);
+	}
 
 	port->blk.num_blocks = ata_id_n_sectors(port->id);
-	port->blk.cdev.name = asprintf("ata%d", rc);
 	port->blk.blockbits = SECTOR_SHIFT;
 
 	rc = blockdevice_register(&port->blk);
@@ -378,7 +382,7 @@ int ata_port_register(struct ata_port *port)
 	int ret;
 
 	port->class_dev.id = DEVICE_ID_DYNAMIC;
-	strcpy(port->class_dev.name, "ata");
+
 	port->class_dev.parent = port->dev;
 	port->class_dev.detect = ata_detect;
 
diff --git a/drivers/ata/ide-sff.c b/drivers/ata/ide-sff.c
index 632b0e5..ef55357 100644
--- a/drivers/ata/ide-sff.c
+++ b/drivers/ata/ide-sff.c
@@ -324,7 +324,7 @@ static struct ata_port_operations ide_ops = {
 	.reset = ide_reset,
 };
 
-int ide_port_register(struct device_d *dev, struct ata_ioports *io)
+int ide_port_register(struct device_d *dev, struct ata_ioports *io, const char *devname)
 {
 	struct ide_port *ide;
 	int ret;
@@ -334,6 +334,7 @@ int ide_port_register(struct device_d *dev, struct ata_ioports *io)
 	ide->io = io;
 	ide->port.ops = &ide_ops;
 	ide->port.dev = dev;
+	ide->port.devname = devname;
 
 	ret = ata_port_register(&ide->port);
 
diff --git a/drivers/ata/intf_platform_ide.c b/drivers/ata/intf_platform_ide.c
index 0b56eb4..455ac28 100644
--- a/drivers/ata/intf_platform_ide.c
+++ b/drivers/ata/intf_platform_ide.c
@@ -95,7 +95,7 @@ static int platform_ide_probe(struct device_d *dev)
 	io->reset = pdata->reset;
 	io->dataif_be = pdata->dataif_be;
 
-	rc = ide_port_register(dev, io);
+	rc = ide_port_register(dev, io, NULL);
 	if (rc != 0) {
 		dev_err(dev, "Cannot register IDE interface\n");
 		free(io);
diff --git a/include/ata_drive.h b/include/ata_drive.h
index fcb3a3c..2499e62 100644
--- a/include/ata_drive.h
+++ b/include/ata_drive.h
@@ -91,6 +91,7 @@ struct ata_port {
 	struct ata_port_operations *ops;
 	struct device_d *dev;
 	struct device_d class_dev;
+	const char *devname;
 	void *drvdata;
 	struct block_device blk;
 	uint16_t *id;
@@ -98,7 +99,7 @@ struct ata_port {
 	int probe;
 };
 
-int ide_port_register(struct device_d *, struct ata_ioports *);
+int ide_port_register(struct device_d *, struct ata_ioports *, const char *);
 int ata_port_register(struct ata_port *port);
 int ata_port_detect(struct ata_port *port);
 
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
