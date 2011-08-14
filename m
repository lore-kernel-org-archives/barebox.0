Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 10.mo3.mail-out.ovh.net ([87.98.165.232]
	helo=mo3.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QscbJ-0001GH-Ex
	for barebox@lists.infradead.org; Sun, 14 Aug 2011 15:27:46 +0000
Received: from mail191.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo3.mail-out.ovh.net (Postfix) with SMTP id 1EC80FFA0F1
	for <barebox@lists.infradead.org>;
	Sun, 14 Aug 2011 17:19:14 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 14 Aug 2011 16:59:51 +0200
Message-Id: <1313333992-27572-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/2] disk_drive: fix x86 support
To: barebox@lists.infradead.org

switch to resource

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/ata/disk_drive.c |    6 +++---
 1 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/ata/disk_drive.c b/drivers/ata/disk_drive.c
index 523edfd..14b5e66 100644
--- a/drivers/ata/disk_drive.c
+++ b/drivers/ata/disk_drive.c
@@ -190,11 +190,11 @@ static int disk_probe(struct device_d *dev)
 
 #ifdef CONFIG_ATA_BIOS
 	/* On x86, BIOS based disks are coming without a valid .size field */
-	if (dev->size == 0) {
+	if (dev->resource[0].size == 0) {
 		/* guess the size of this drive if not otherwise given */
-		dev->size = disk_guess_size(dev,
+		dev->resource[0].size = disk_guess_size(dev,
 			(struct partition_entry*)&sector[446]) * SECTOR_SIZE;
-		dev_info(dev, "Drive size guessed to %u kiB\n", dev->size / 1024);
+		dev_info(dev, "Drive size guessed to %u kiB\n", dev->resource[0].size / 1024);
 	}
 #endif
 	atablk->blk.num_blocks = dev->resource[0].size / SECTOR_SIZE;
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
