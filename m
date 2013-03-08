Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UDueh-0003TX-7X
 for barebox@lists.infradead.org; Fri, 08 Mar 2013 10:36:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  8 Mar 2013 11:35:49 +0100
Message-Id: <1362738951-25614-4-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/5] ata: Add init callback to ata_port_operations
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/ata/disk_ata_drive.c | 6 ++++++
 include/ata_drive.h          | 1 +
 2 files changed, 7 insertions(+)

diff --git a/drivers/ata/disk_ata_drive.c b/drivers/ata/disk_ata_drive.c
index a6deb74..6fe526a 100644
--- a/drivers/ata/disk_ata_drive.c
+++ b/drivers/ata/disk_ata_drive.c
@@ -261,6 +261,12 @@ static int ata_port_init(struct ata_port *port)
 	struct ata_port_operations *ops = port->ops;
 	struct device_d *dev = &port->class_dev;
 
+	if (ops->init) {
+		rc = ops->init(port);
+		if (rc)
+			return rc;
+	}
+
 	port->id = dma_alloc(SECTOR_SIZE);
 
 	port->blk.dev = dev;
diff --git a/include/ata_drive.h b/include/ata_drive.h
index 876aa74..4f8b6c0 100644
--- a/include/ata_drive.h
+++ b/include/ata_drive.h
@@ -80,6 +80,7 @@ struct ata_ioports {
 struct ata_port;
 
 struct ata_port_operations {
+	int (*init)(struct ata_port *port);
 	int (*read)(struct ata_port *port, void *buf, unsigned int block, int num_blocks);
 	int (*write)(struct ata_port *port, const void *buf, unsigned int block, int num_blocks);
 	int (*read_id)(struct ata_port *port, void *buf);
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
