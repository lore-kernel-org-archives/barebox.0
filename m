Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UpfQQ-0007o1-1W
 for barebox@lists.infradead.org; Thu, 20 Jun 2013 14:01:23 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 20 Jun 2013 16:00:54 +0200
Message-Id: <1371736854-7543-4-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] ata: Make 'already initialized' a debug message
To: barebox@lists.infradead.org

This is only interesting for the debug case.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/ata/disk_ata_drive.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/ata/disk_ata_drive.c b/drivers/ata/disk_ata_drive.c
index e96d98d..ee1709e 100644
--- a/drivers/ata/disk_ata_drive.c
+++ b/drivers/ata/disk_ata_drive.c
@@ -290,7 +290,7 @@ int ata_port_detect(struct ata_port *port)
 	int ret;
 
 	if (port->initialized) {
-		dev_info(&port->class_dev, "already initialized\n");
+		dev_dbg(&port->class_dev, "already initialized\n");
 		return 0;
 	}
 
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
