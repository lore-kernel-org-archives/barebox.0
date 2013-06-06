Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ukb5j-00028d-J0
 for barebox@lists.infradead.org; Thu, 06 Jun 2013 14:23:07 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  6 Jun 2013 16:22:36 +0200
Message-Id: <1370528559-15694-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1370528559-15694-1-git-send-email-s.hauer@pengutronix.de>
References: <1370528559-15694-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/6] ata: implement detect
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/ata/disk_ata_drive.c | 24 +++++++++++++++++++-----
 include/ata_drive.h          |  1 +
 2 files changed, 20 insertions(+), 5 deletions(-)

diff --git a/drivers/ata/disk_ata_drive.c b/drivers/ata/disk_ata_drive.c
index 034233d..7669539 100644
--- a/drivers/ata/disk_ata_drive.c
+++ b/drivers/ata/disk_ata_drive.c
@@ -281,14 +281,10 @@ on_error:
 	return rc;
 }
 
-static int ata_set_probe(struct param_d *param, void *priv)
+int ata_port_detect(struct ata_port *port)
 {
-	struct ata_port *port = priv;
 	int ret;
 
-	if (!port->probe)
-		return 0;
-
 	if (port->initialized) {
 		dev_info(&port->class_dev, "already initialized\n");
 		return 0;
@@ -303,6 +299,23 @@ static int ata_set_probe(struct param_d *param, void *priv)
 	return 0;
 }
 
+static int ata_set_probe(struct param_d *param, void *priv)
+{
+	struct ata_port *port = priv;
+
+	if (!port->probe)
+		return 0;
+
+	return ata_port_detect(port);
+}
+
+static int ata_detect(struct device_d *dev)
+{
+	struct ata_port *port = container_of(dev, struct ata_port, class_dev);
+
+	return ata_port_detect(port);
+}
+
 /**
  * Register an ATA drive behind an IDE like interface
  * @param dev The interface device
@@ -316,6 +329,7 @@ int ata_port_register(struct ata_port *port)
 	port->class_dev.id = DEVICE_ID_DYNAMIC;
 	strcpy(port->class_dev.name, "ata");
 	port->class_dev.parent = port->dev;
+	port->class_dev.detect = ata_detect;
 
 	ret = register_device(&port->class_dev);
 	if (ret)
diff --git a/include/ata_drive.h b/include/ata_drive.h
index abbafb9..9961aea 100644
--- a/include/ata_drive.h
+++ b/include/ata_drive.h
@@ -144,6 +144,7 @@ struct ata_port {
 
 int ide_port_register(struct device_d *, struct ata_ioports *);
 int ata_port_register(struct ata_port *port);
+int ata_port_detect(struct ata_port *port);
 
 struct device_d;
 
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
