Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.data-modul.de ([212.184.205.171]
 helo=mailgw1.data-modul.com)
 by bombadil.infradead.org with smtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X4Pyh-0004q7-Iw
 for barebox@lists.infradead.org; Tue, 08 Jul 2014 07:38:16 +0000
From: Zahari Doychev <zahari.doychev@linux.com>
Date: Tue,  8 Jul 2014 09:37:35 +0200
Message-Id: <a2949dd62538a64ec5689b63d6ff531620ceb198.1404734020.git.zahari.doychev@linux.com>
In-Reply-To: <cover.1404734020.git.zahari.doychev@linux.com>
References: <cover.1404734020.git.zahari.doychev@linux.com>
In-Reply-To: <cover.1404734020.git.zahari.doychev@linux.com>
References: <cover.1404734020.git.zahari.doychev@linux.com>
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
Subject: [PATCH] drivers/mtd: fix NULL pointer dereference in partition
 lock/unlock
To: barebox@lists.infradead.org

Some mtd device does not support lock and unlock functions. Adding this check
avoids crashing when mtd_part_lock/unlock are called for such devices.

Signed-off-by: Zahari Doychev <zahari.doychev@linux.com>
---
 drivers/mtd/partition.c |    6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/mtd/partition.c b/drivers/mtd/partition.c
index 5c0d46f..5a3d1ae 100644
--- a/drivers/mtd/partition.c
+++ b/drivers/mtd/partition.c
@@ -51,6 +51,9 @@ static int mtd_part_erase(struct mtd_info *mtd, struct erase_info *instr)
 
 static int mtd_part_lock(struct mtd_info *mtd, loff_t offset, size_t len)
 {
+	if (!mtd->master->lock)
+		return -ENOSYS;
+
 	if (!(mtd->flags & MTD_WRITEABLE))
 		return -EROFS;
 
@@ -64,6 +67,9 @@ static int mtd_part_lock(struct mtd_info *mtd, loff_t offset, size_t len)
 
 static int mtd_part_unlock(struct mtd_info *mtd, loff_t offset, size_t len)
 {
+	if (!mtd->master->unlock)
+		return -ENOSYS;
+
 	if (!(mtd->flags & MTD_WRITEABLE))
 		return -EROFS;
 
-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
