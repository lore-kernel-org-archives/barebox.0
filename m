Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.visioncatalog.com ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fuzT4-0005dk-Pt
 for barebox@lists.infradead.org; Wed, 29 Aug 2018 12:21:12 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 43F21A00E6F
 for <barebox@lists.infradead.org>; Wed, 29 Aug 2018 14:21:05 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Wed, 29 Aug 2018 14:20:12 +0200
Message-Id: <1535545212-18871-57-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 56/56] ubi: Initialize Fastmap checkmapping correctly
To: barebox@lists.infradead.org

From: Richard Weinberger <richard@nod.at>

We cannot do it last, otherwithse it will be skipped for dynamic
volumes.

Reported-by: Lachmann, Juergen <juergen.lachmann@harman.com>
Fixes: 34653fd8c46e ("ubi: fastmap: Check each mapping only once")
Signed-off-by: Richard Weinberger <richard@nod.at>
Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 drivers/mtd/ubi/vtbl.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/mtd/ubi/vtbl.c b/drivers/mtd/ubi/vtbl.c
index 4ca5bb897463..6959564a1354 100644
--- a/drivers/mtd/ubi/vtbl.c
+++ b/drivers/mtd/ubi/vtbl.c
@@ -569,6 +569,16 @@ static int init_volumes(struct ubi_device *ubi,
 		reserved_pebs += vol->reserved_pebs;
 
 		/*
+		 * We use ubi->peb_count and not vol->reserved_pebs because
+		 * we want to keep the code simple. Otherwise we'd have to
+		 * resize/check the bitmap upon volume resize too.
+		 * Allocating a few bytes more does not hurt.
+		 */
+		err = ubi_fastmap_init_checkmap(vol, ubi->peb_count);
+		if (err)
+			return err;
+
+		/*
 		 * In case of dynamic volume UBI knows nothing about how many
 		 * data is stored there. So assume the whole volume is used.
 		 */
@@ -610,16 +620,6 @@ static int init_volumes(struct ubi_device *ubi,
 			(long long)(vol->used_ebs - 1) * vol->usable_leb_size;
 		vol->used_bytes += av->last_data_size;
 		vol->last_eb_bytes = av->last_data_size;
-
-		/*
-		 * We use ubi->peb_count and not vol->reserved_pebs because
-		 * we want to keep the code simple. Otherwise we'd have to
-		 * resize/check the bitmap upon volume resize too.
-		 * Allocating a few bytes more does not hurt.
-		 */
-		err = ubi_fastmap_init_checkmap(vol, ubi->peb_count);
-		if (err)
-			return err;
 	}
 
 	/* And add the layout volume */
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
