Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UoVHp-0000uv-RM
 for barebox@lists.infradead.org; Mon, 17 Jun 2013 08:59:42 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 17 Jun 2013 10:59:14 +0200
Message-Id: <1371459556-24073-2-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/4] ata: Add detect callback for hardware device
To: barebox@lists.infradead.org

To be able to use the 'detect' command on hardware devices.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/ata/disk_ata_drive.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/ata/disk_ata_drive.c b/drivers/ata/disk_ata_drive.c
index 4ad7564..4c82797 100644
--- a/drivers/ata/disk_ata_drive.c
+++ b/drivers/ata/disk_ata_drive.c
@@ -360,6 +360,13 @@ static int ata_detect(struct device_d *dev)
 	return ata_port_detect(port);
 }
 
+static int ata_detect_hw(struct device_d *dev)
+{
+	struct ata_port *port = dev->priv;
+
+	return ata_port_detect(port);
+}
+
 /**
  * Register an ATA drive behind an IDE like interface
  * @param dev The interface device
@@ -379,6 +386,9 @@ int ata_port_register(struct ata_port *port)
 	if (ret)
 		return ret;
 
+	port->dev->priv = port;
+	port->dev->detect = ata_detect_hw;
+
 	dev_add_param_bool(&port->class_dev, "probe", ata_set_probe,
 			NULL, &port->probe, port);
 
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
