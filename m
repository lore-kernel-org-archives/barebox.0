Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x236.google.com ([2607:f8b0:400e:c03::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1avQc7-0000RN-Nf
 for barebox@lists.infradead.org; Wed, 27 Apr 2016 14:38:53 +0000
Received: by mail-pa0-x236.google.com with SMTP id bt5so19993858pac.3
 for <barebox@lists.infradead.org>; Wed, 27 Apr 2016 07:38:29 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 27 Apr 2016 07:38:13 -0700
Message-Id: <1461767893-13103-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH] ATA: Implement a hook for 'devinfo'
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Implement simple adapter function to serve as a hook for 'devinfo'
command.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/ata/disk_ata_drive.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/ata/disk_ata_drive.c b/drivers/ata/disk_ata_drive.c
index d30d0ad..9b3730c 100644
--- a/drivers/ata/disk_ata_drive.c
+++ b/drivers/ata/disk_ata_drive.c
@@ -303,6 +303,14 @@ static int ata_detect(struct device_d *dev)
 	return ata_port_detect(port);
 }
 
+static void ata_info(struct device_d *dev)
+{
+	struct ata_port *port = container_of(dev, struct ata_port, class_dev);
+
+	if (port->initialized)
+		ata_dump_id(port->id);
+}
+
 /**
  * Register an ATA drive behind an IDE like interface
  * @param dev The interface device
@@ -322,6 +330,7 @@ int ata_port_register(struct ata_port *port)
 	}
 
 	port->class_dev.parent = port->dev;
+	port->class_dev.info   = ata_info;
 	port->class_dev.detect = ata_detect;
 
 	ret = register_device(&port->class_dev);
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
