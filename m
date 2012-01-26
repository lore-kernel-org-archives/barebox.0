Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp6-g21.free.fr ([2a01:e0c:1:1599::15])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RqVQA-0000d4-MP
 for barebox@lists.infradead.org; Thu, 26 Jan 2012 19:55:47 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Thu, 26 Jan 2012 20:55:25 +0100
Message-Id: <1327607728-2788-2-git-send-email-robert.jarzmik@free.fr>
In-Reply-To: <1327607728-2788-1-git-send-email-robert.jarzmik@free.fr>
References: <1327607728-2788-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: [PATCH] drivers/mtd: fix docg3 write support
To: barebox@lists.infradead.org

Fix typo error in MTD_WRITE defines.

Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>

---
This fix applies to branches master and next.
---
 drivers/mtd/devices/docg3.c |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/devices/docg3.c b/drivers/mtd/devices/docg3.c
index f7e33dc..88d707c 100644
--- a/drivers/mtd/devices/docg3.c
+++ b/drivers/mtd/devices/docg3.c
@@ -614,7 +614,7 @@ static int doc_block_isbad(struct mtd_info *mtd, loff_t from)
 	return !is_good;
 }
 
-#ifdef MTD_WRITE
+#ifdef CONFIG_MTD_WRITE
 static int doc_guess_autoecc(struct mtd_oob_ops *ops)
 {
 	int autoecc;
@@ -1065,7 +1065,7 @@ static void __init doc_set_driver_info(int chip_id, struct mtd_info *mtd)
 	mtd->read = doc_read;
 	mtd->read_oob = doc_read_oob;
 	mtd->block_isbad = doc_block_isbad;
-#ifdef MTD_WRITE
+#ifdef CONFIG_MTD_WRITE
 	mtd->erase = doc_erase;
 	mtd->write = doc_write;
 	mtd->write_oob = doc_write_oob;
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
