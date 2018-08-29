Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fuzSz-0005UT-5G
 for barebox@lists.infradead.org; Wed, 29 Aug 2018 12:21:09 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 818DDA00E47
 for <barebox@lists.infradead.org>; Wed, 29 Aug 2018 14:21:03 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Wed, 29 Aug 2018 14:20:05 +0200
Message-Id: <1535545212-18871-50-git-send-email-t.remmet@phytec.de>
In-Reply-To: <1535545212-18871-1-git-send-email-t.remmet@phytec.de>
References: <1535545212-18871-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 49/56] ubi: Fastmap: Fix typo
To: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

Fix misspelling of 'available' in function name.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Richard Weinberger <richard@nod.at>
[Fixed conficts]
Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 drivers/mtd/ubi/fastmap-wl.c | 2 +-
 drivers/mtd/ubi/wl.c         | 2 +-
 drivers/mtd/ubi/wl.h         | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/mtd/ubi/fastmap-wl.c b/drivers/mtd/ubi/fastmap-wl.c
index 07982aab169a..08593ea23aee 100644
--- a/drivers/mtd/ubi/fastmap-wl.c
+++ b/drivers/mtd/ubi/fastmap-wl.c
@@ -52,7 +52,7 @@ static void return_unused_pool_pebs(struct ubi_device *ubi,
 	}
 }
 
-static int anchor_pebs_avalible(struct rb_root *root)
+static int anchor_pebs_available(struct rb_root *root)
 {
 	struct rb_node *p;
 	struct ubi_wl_entry *e;
diff --git a/drivers/mtd/ubi/wl.c b/drivers/mtd/ubi/wl.c
index b8513615b64d..8d45b318f5c1 100644
--- a/drivers/mtd/ubi/wl.c
+++ b/drivers/mtd/ubi/wl.c
@@ -663,7 +663,7 @@ static int wear_leveling_worker(struct ubi_device *ubi, struct ubi_work *wrk,
 #ifdef CONFIG_MTD_UBI_FASTMAP
 	/* Check whether we need to produce an anchor PEB */
 	if (!anchor)
-		anchor = !anchor_pebs_avalible(&ubi->free);
+		anchor = !anchor_pebs_available(&ubi->free);
 
 	if (anchor) {
 		e1 = find_anchor_wl_entry(&ubi->used);
diff --git a/drivers/mtd/ubi/wl.h b/drivers/mtd/ubi/wl.h
index 2a1899e9877d..60168116dbf9 100644
--- a/drivers/mtd/ubi/wl.h
+++ b/drivers/mtd/ubi/wl.h
@@ -1,7 +1,7 @@
 #ifndef UBI_WL_H
 #define UBI_WL_H
 #ifdef CONFIG_MTD_UBI_FASTMAP
-static int anchor_pebs_avalible(struct rb_root *root);
+static int anchor_pebs_available(struct rb_root *root);
 static struct ubi_wl_entry *find_anchor_wl_entry(struct rb_root *root);
 static struct ubi_wl_entry *get_peb_for_wl(struct ubi_device *ubi);
 static void ubi_fastmap_close(struct ubi_device *ubi);
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
