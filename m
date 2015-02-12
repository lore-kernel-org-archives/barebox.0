Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YLpY2-0003lk-8C
 for barebox@lists.infradead.org; Thu, 12 Feb 2015 08:55:05 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 12 Feb 2015 09:54:21 +0100
Message-Id: <1423731274-9860-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1423731274-9860-1-git-send-email-s.hauer@pengutronix.de>
References: <1423731274-9860-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/17] mtd: partitions: Add error check
To: Barebox List <barebox@lists.infradead.org>

add_mtd_device can fail. Add an error check and bail out properly.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/partition.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/partition.c b/drivers/mtd/partition.c
index 033a7d2..c514d4b 100644
--- a/drivers/mtd/partition.c
+++ b/drivers/mtd/partition.c
@@ -108,6 +108,7 @@ struct mtd_info *mtd_add_partition(struct mtd_info *mtd, off_t offset,
 		uint64_t size, unsigned long flags, const char *name)
 {
 	struct mtd_info *part;
+	int ret;
 
 	part = xzalloc(sizeof(*part));
 
@@ -168,9 +169,17 @@ struct mtd_info *mtd_add_partition(struct mtd_info *mtd, off_t offset,
 	if (!strncmp(mtd->cdev.name, name, strlen(mtd->cdev.name)))
 		part->cdev.partname = xstrdup(name + strlen(mtd->cdev.name) + 1);
 
-	add_mtd_device(part, part->name, DEVICE_ID_SINGLE);
+	ret = add_mtd_device(part, part->name, DEVICE_ID_SINGLE);
+	if (ret)
+		goto err;
 
 	return part;
+err:
+	free(part->cdev.partname);
+	free(part->name);
+	free(part);
+
+	return ERR_PTR(ret);
 }
 
 int mtd_del_partition(struct mtd_info *part)
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
