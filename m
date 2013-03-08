Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UDueZ-0003Pg-QC
 for barebox@lists.infradead.org; Fri, 08 Mar 2013 10:36:03 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  8 Mar 2013 11:35:48 +0100
Message-Id: <1362738951-25614-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1362738951-25614-1-git-send-email-s.hauer@pengutronix.de>
References: <1362738951-25614-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/5] ata: add ata logical device to defer probe
To: barebox@lists.infradead.org

ata device usually take a long time to spin up, so it makes sense
to only spend this time when the device is actually used.

This adds a logical ata device and attaches a 'probe' parameter
to it, similar to what MMC does.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/ata/disk_ata_drive.c | 57 +++++++++++++++++++++++++++++++++++++-------
 include/ata_drive.h          |  2 ++
 2 files changed, 51 insertions(+), 8 deletions(-)

diff --git a/drivers/ata/disk_ata_drive.c b/drivers/ata/disk_ata_drive.c
index 923be9a..a6deb74 100644
--- a/drivers/ata/disk_ata_drive.c
+++ b/drivers/ata/disk_ata_drive.c
@@ -255,17 +255,11 @@ static struct block_device_ops ata_ops = {
 #endif
 };
 
-/**
- * Register an ATA drive behind an IDE like interface
- * @param dev The interface device
- * @param io ATA register file description
- * @return 0 on success
- */
-int ata_port_register(struct ata_port *port)
+static int ata_port_init(struct ata_port *port)
 {
 	int rc;
 	struct ata_port_operations *ops = port->ops;
-	struct device_d *dev = port->dev;
+	struct device_d *dev = &port->class_dev;
 
 	port->id = dma_alloc(SECTOR_SIZE);
 
@@ -325,6 +319,53 @@ on_error:
 	return rc;
 }
 
+static int ata_set_probe(struct device_d *class_dev, struct param_d *param,
+				const char *val)
+{
+	struct ata_port *port = container_of(class_dev, struct ata_port, class_dev);
+	int ret, probe;
+
+	if (port->initialized) {
+		dev_info(class_dev, "already initialized\n");
+		return 0;
+	}
+
+	probe = !!simple_strtoul(val, NULL, 0);
+	if (!probe)
+		return 0;
+
+	ret = ata_port_init(port);
+	if (ret)
+		return ret;
+
+	port->initialized = 1;
+
+	return dev_param_set_generic(class_dev, param, "1");
+}
+
+/**
+ * Register an ATA drive behind an IDE like interface
+ * @param dev The interface device
+ * @param io ATA register file description
+ * @return 0 on success
+ */
+int ata_port_register(struct ata_port *port)
+{
+	int ret;
+
+	port->class_dev.id = DEVICE_ID_DYNAMIC;
+	strcpy(port->class_dev.name, "ata");
+	port->class_dev.parent = port->dev;
+
+	ret = register_device(&port->class_dev);
+	if (ret)
+		return ret;
+
+	dev_add_param(&port->class_dev, "probe", ata_set_probe, NULL, 0);
+
+	return ret;
+}
+
 /**
  * @file
  * @brief Generic ATA disk drive support
diff --git a/include/ata_drive.h b/include/ata_drive.h
index 1996321..876aa74 100644
--- a/include/ata_drive.h
+++ b/include/ata_drive.h
@@ -89,9 +89,11 @@ struct ata_port_operations {
 struct ata_port {
 	struct ata_port_operations *ops;
 	struct device_d *dev;
+	struct device_d class_dev;
 	void *drvdata;
 	struct block_device blk;
 	uint16_t *id;
+	int initialized;
 };
 
 int ide_port_register(struct device_d *, struct ata_ioports *);
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
