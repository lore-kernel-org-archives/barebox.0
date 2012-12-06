Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tgbay-00081J-TR
 for barebox@lists.infradead.org; Thu, 06 Dec 2012 13:34:35 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  6 Dec 2012 14:34:25 +0100
Message-Id: <1354800870-28385-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1354800870-28385-1-git-send-email-s.hauer@pengutronix.de>
References: <1354800870-28385-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 4/9] ata: align ata command defines with kernel
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/ata/ide-sff.c |    6 +++---
 include/ata_drive.h   |    9 +++++----
 2 files changed, 8 insertions(+), 7 deletions(-)

diff --git a/drivers/ata/ide-sff.c b/drivers/ata/ide-sff.c
index 6a452d6..3dd6f63 100644
--- a/drivers/ata/ide-sff.c
+++ b/drivers/ata/ide-sff.c
@@ -181,7 +181,7 @@ static int ide_read_id(struct ata_port *port, void *buf)
 	writeb(0x00, ide->io->lbam_addr);
 	writeb(0x00, ide->io->lbah_addr);
 
-	rc = ata_wr_cmd(ide, ATA_CMD_ID_DEVICE);
+	rc = ata_wr_cmd(ide, ATA_CMD_ID_ATA);
 	if (rc != 0)
 		return rc;
 
@@ -264,7 +264,7 @@ static int ide_read(struct ata_port *port, void *buffer, unsigned int block,
 		rc = ata_set_lba_sector(ide, DISK_MASTER, sector);
 		if (rc != 0)
 			return rc;
-		rc = ata_wr_cmd(ide, ATA_CMD_RD);
+		rc = ata_wr_cmd(ide, ATA_CMD_READ);
 		if (rc != 0)
 			return rc;
 		rc = ata_wait_ready(ide, MAX_TIMEOUT);
@@ -303,7 +303,7 @@ static int __maybe_unused ide_write(struct ata_port *port,
 		rc = ata_set_lba_sector(ide, DISK_MASTER, sector);
 		if (rc != 0)
 			return rc;
-		rc = ata_wr_cmd(ide, ATA_CMD_WR);
+		rc = ata_wr_cmd(ide, ATA_CMD_WRITE);
 		if (rc != 0)
 			return rc;
 		ata_wr_sector(ide, buffer);
diff --git a/include/ata_drive.h b/include/ata_drive.h
index 10edd51..1996321 100644
--- a/include/ata_drive.h
+++ b/include/ata_drive.h
@@ -35,10 +35,11 @@
 #define IDE_REG_DEV_CTL 0x00
 #define IDE_REG_DRV_ADDR 0x01
 
-#define ATA_CMD_ID_DEVICE 0xEC
-#define ATA_CMD_RD_CONF 0x40
-#define ATA_CMD_RD	0x20
-#define ATA_CMD_WR	0x30
+#define ATA_CMD_ID_ATA		0xEC
+#define ATA_CMD_READ		0x20
+#define ATA_CMD_READ_EXT	0x25
+#define ATA_CMD_WRITE		0x30
+#define ATA_CMD_WRITE_EXT	0x35
 
 /* drive's status flags */
 #define ATA_STATUS_BUSY		(1 << 7)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
