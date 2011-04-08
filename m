Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q8CzH-00014a-LZ
	for barebox@lists.infradead.org; Fri, 08 Apr 2011 14:48:40 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  8 Apr 2011 16:48:35 +0200
Message-Id: <1302274116-9215-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1302274116-9215-1-git-send-email-s.hauer@pengutronix.de>
References: <1302274116-9215-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/4] ata: make write support optional
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/ata/Kconfig      |    4 ++++
 drivers/ata/disk_drive.c |    4 ++++
 2 files changed, 8 insertions(+), 0 deletions(-)

diff --git a/drivers/ata/Kconfig b/drivers/ata/Kconfig
index 05cba70..d7f4dcb 100644
--- a/drivers/ata/Kconfig
+++ b/drivers/ata/Kconfig
@@ -8,6 +8,10 @@ if ATA
 
 comment "drive types"
 
+config ATA_WRITE
+	select BLOCK_WRITE
+	bool "support writing to ATA drives"
+
 config ATA_DISK
 	bool "disk drives"
 	help
diff --git a/drivers/ata/disk_drive.c b/drivers/ata/disk_drive.c
index 4ad5a7a..f526b1e 100644
--- a/drivers/ata/disk_drive.c
+++ b/drivers/ata/disk_drive.c
@@ -137,6 +137,7 @@ static int atablk_read(struct block_device *blk, void *buf, int block,
 	return atablk->intf->read(atablk->dev, block, num_blocks, buf);
 }
 
+#ifdef CONFIG_ATA_WRITE
 static int atablk_write(struct block_device *blk, const void *buf, int block,
 		int num_blocks)
 {
@@ -144,10 +145,13 @@ static int atablk_write(struct block_device *blk, const void *buf, int block,
 
 	return atablk->intf->write(atablk->dev, block, num_blocks, buf);
 }
+#endif
 
 static struct block_device_ops ataops = {
 	.read = atablk_read,
+#ifdef CONFIG_ATA_WRITE
 	.write = atablk_write,
+#endif
 };
 
 /**
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
