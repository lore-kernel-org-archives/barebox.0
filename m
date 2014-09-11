Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XS66u-0003Xb-NQ
 for barebox@lists.infradead.org; Thu, 11 Sep 2014 15:16:39 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1XS66Y-00065x-Io
 for barebox@lists.infradead.org; Thu, 11 Sep 2014 17:16:14 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.84)
 (envelope-from <sha@pengutronix.de>) id 1XS66Y-0001Lo-H2
 for barebox@lists.infradead.org; Thu, 11 Sep 2014 17:16:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 11 Sep 2014 17:16:03 +0200
Message-Id: <1410448570-2054-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1410448570-2054-1-git-send-email-s.hauer@pengutronix.de>
References: <1410448570-2054-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/10] UBI: fix some use after free bugs
To: barebox@lists.infradead.org

From: Dan Carpenter <dan.carpenter@oracle.com>

Move the kmem_cache_free() calls down a couple lines.

Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
Signed-off-by: Artem Bityutskiy <artem.bityutskiy@linux.intel.com>
---
 drivers/mtd/ubi/fastmap.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/mtd/ubi/fastmap.c b/drivers/mtd/ubi/fastmap.c
index de68c32..50db661 100644
--- a/drivers/mtd/ubi/fastmap.c
+++ b/drivers/mtd/ubi/fastmap.c
@@ -462,8 +462,8 @@ static int scan_pool(struct ubi_device *ubi, struct ubi_attach_info *ai,
 				}
 			}
 			if (found_orphan) {
-				kfree(tmp_aeb);
 				list_del(&tmp_aeb->u.list);
+				kfree(tmp_aeb);
 			}
 
 			new_aeb = kzalloc(sizeof(*new_aeb), GFP_KERNEL);
@@ -835,16 +835,16 @@ fail_bad:
 	ret = UBI_BAD_FASTMAP;
 fail:
 	list_for_each_entry_safe(tmp_aeb, _tmp_aeb, &used, u.list) {
-		free(tmp_aeb);
 		list_del(&tmp_aeb->u.list);
+		free(tmp_aeb);
 	}
 	list_for_each_entry_safe(tmp_aeb, _tmp_aeb, &eba_orphans, u.list) {
-		free(tmp_aeb);
 		list_del(&tmp_aeb->u.list);
+		free(tmp_aeb);
 	}
 	list_for_each_entry_safe(tmp_aeb, _tmp_aeb, &lfree, u.list) {
-		free(tmp_aeb);
 		list_del(&tmp_aeb->u.list);
+		free(tmp_aeb);
 	}
 
 	return ret;
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
