Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x232.google.com ([2a00:1450:4010:c04::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zs6SP-0003qw-Ee
 for barebox@lists.infradead.org; Fri, 30 Oct 2015 09:58:50 +0000
Received: by lbjm5 with SMTP id m5so46779971lbj.3
 for <barebox@lists.infradead.org>; Fri, 30 Oct 2015 02:58:27 -0700 (PDT)
From: Peter Mamonov <pmamonov@gmail.com>
Date: Fri, 30 Oct 2015 13:00:45 +0300
Message-Id: <1446199245-15646-1-git-send-email-pmamonov@gmail.com>
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
Subject: [PATCH] ata: disk_ata_drive: remove obsolete check for ID validity
To: barebox@lists.infradead.org
Cc: jbe@pengutronix.de, Peter Mamonov <pmamonov@gmail.com>

Acked-by: Juergen Borleis <jbe@pengutronix.de>
Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
---
 drivers/ata/disk_ata_drive.c | 17 -----------------
 1 file changed, 17 deletions(-)

diff --git a/drivers/ata/disk_ata_drive.c b/drivers/ata/disk_ata_drive.c
index ee1709e..d30d0ad 100644
--- a/drivers/ata/disk_ata_drive.c
+++ b/drivers/ata/disk_ata_drive.c
@@ -26,16 +26,6 @@
 #include <disks.h>
 #include <dma.h>
 
-static int ata_id_is_valid(const uint16_t *id)
-{
-	if ((id[ATA_ID_FIELD_VALID] & 1) == 0) {
-		pr_debug("Drive's ID seems invalid\n");
-		return -EINVAL;
-	}
-
-	return 0;
-}
-
 static uint64_t ata_id_n_sectors(uint16_t *id)
 {
 	if (ata_id_has_lba(id)) {
@@ -244,13 +234,6 @@ static int ata_port_init(struct ata_port *port)
 
 	ata_fix_endianess(port->id, SECTOR_SIZE / sizeof(uint16_t));
 
-	rc = ata_id_is_valid(port->id);
-	if (rc) {
-		dev_err(dev, "ata id invalid\n");
-		free(port->id);
-		return rc;
-	}
-
 #ifdef DEBUG
 	ata_dump_id(port->id);
 #endif
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
