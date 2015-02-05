Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YJJOC-00005O-2E
 for barebox@lists.infradead.org; Thu, 05 Feb 2015 10:10:25 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  5 Feb 2015 11:09:56 +0100
Message-Id: <1423130998-21853-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1423130998-21853-1-git-send-email-s.hauer@pengutronix.de>
References: <1423130998-21853-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/4] mtd: Fix allowing to erase bad blocks on partitions
To: Barebox List <barebox@lists.infradead.org>

Partitions are mtd devices themselves, but the 'erasebad'
parameter is only set to the master mtd device. To allow to
erase bad blocks on partitions test the master device instead
of the partition devices.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/core.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index 82fb5f7..345752e 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -168,10 +168,10 @@ static int mtd_op_erase(struct cdev *cdev, size_t count, loff_t offset)
 	while (count > 0) {
 		dev_dbg(cdev->dev, "erase %d %d\n", addr, erase.len);
 
-		if (!mtd->allow_erasebad)
-			ret = mtd_block_isbad(mtd, addr);
-		else
+		if (mtd->allow_erasebad || (mtd->master && mtd->master->allow_erasebad))
 			ret = 0;
+		else
+			ret = mtd_block_isbad(mtd, addr);
 
 		erase.addr = addr;
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
