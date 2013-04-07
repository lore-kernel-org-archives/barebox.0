Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UOq9c-0001Qq-Ie
 for barebox@lists.infradead.org; Sun, 07 Apr 2013 14:01:21 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun,  7 Apr 2013 16:00:45 +0200
Message-Id: <1365343255-26497-12-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1365343255-26497-1-git-send-email-s.hauer@pengutronix.de>
References: <1365343255-26497-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 11/21] ata: Use dev_add_param_bool for probe parameter
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/ata/disk_ata_drive.c | 21 ++++++++++-----------
 include/ata_drive.h          |  1 +
 2 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/ata/disk_ata_drive.c b/drivers/ata/disk_ata_drive.c
index 6fe526a..2cff584 100644
--- a/drivers/ata/disk_ata_drive.c
+++ b/drivers/ata/disk_ata_drive.c
@@ -325,20 +325,18 @@ on_error:
 	return rc;
 }
 
-static int ata_set_probe(struct device_d *class_dev, struct param_d *param,
-				const char *val)
+static int ata_set_probe(struct param_d *param, void *priv)
 {
-	struct ata_port *port = container_of(class_dev, struct ata_port, class_dev);
-	int ret, probe;
+	struct ata_port *port = priv;
+	int ret;
 
-	if (port->initialized) {
-		dev_info(class_dev, "already initialized\n");
+	if (!port->probe)
 		return 0;
-	}
 
-	probe = !!simple_strtoul(val, NULL, 0);
-	if (!probe)
+	if (port->initialized) {
+		dev_info(&port->class_dev, "already initialized\n");
 		return 0;
+	}
 
 	ret = ata_port_init(port);
 	if (ret)
@@ -346,7 +344,7 @@ static int ata_set_probe(struct device_d *class_dev, struct param_d *param,
 
 	port->initialized = 1;
 
-	return dev_param_set_generic(class_dev, param, "1");
+	return 0;
 }
 
 /**
@@ -367,7 +365,8 @@ int ata_port_register(struct ata_port *port)
 	if (ret)
 		return ret;
 
-	dev_add_param(&port->class_dev, "probe", ata_set_probe, NULL, 0);
+	dev_add_param_bool(&port->class_dev, "probe", ata_set_probe,
+			NULL, &port->probe, port);
 
 	return ret;
 }
diff --git a/include/ata_drive.h b/include/ata_drive.h
index 4f8b6c0..049082f 100644
--- a/include/ata_drive.h
+++ b/include/ata_drive.h
@@ -95,6 +95,7 @@ struct ata_port {
 	struct block_device blk;
 	uint16_t *id;
 	int initialized;
+	int probe;
 };
 
 int ide_port_register(struct device_d *, struct ata_ioports *);
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
