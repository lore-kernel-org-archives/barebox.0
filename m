Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1al95I-0001YP-Of
 for barebox@lists.infradead.org; Wed, 30 Mar 2016 05:54:29 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 30 Mar 2016 07:54:03 +0200
Message-Id: <1459317243-28206-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1459317243-28206-1-git-send-email-s.hauer@pengutronix.de>
References: <1459317243-28206-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] mtd: doc3: Fix wrong format specifier
To: Barebox List <barebox@lists.infradead.org>

Fixes: 1e009bf mtd: Make erase_info structs 64bit where necessary

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/devices/docg3.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/devices/docg3.c b/drivers/mtd/devices/docg3.c
index 3ff7ddf..6a9bc74 100644
--- a/drivers/mtd/devices/docg3.c
+++ b/drivers/mtd/devices/docg3.c
@@ -849,7 +849,7 @@ static int doc_erase(struct mtd_info *mtd, struct erase_info *info)
 	uint64_t len;
 	int block0, block1, page, ret, ofs = 0;
 
-	doc_dbg("doc_erase(from=%d, len=%d\n", info->addr, info->len);
+	doc_dbg("doc_erase(from=%lld, len=%lld\n", info->addr, info->len);
 	doc_set_device_id(docg3, docg3->device_id);
 
 	info->state = MTD_ERASE_PENDING;
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
