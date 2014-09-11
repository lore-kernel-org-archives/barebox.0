Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XS66u-0003Xe-NT
 for barebox@lists.infradead.org; Thu, 11 Sep 2014 15:16:40 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1XS66Y-000662-KD
 for barebox@lists.infradead.org; Thu, 11 Sep 2014 17:16:14 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.84)
 (envelope-from <sha@pengutronix.de>) id 1XS66Y-0001MG-Iq
 for barebox@lists.infradead.org; Thu, 11 Sep 2014 17:16:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 11 Sep 2014 17:16:05 +0200
Message-Id: <1410448570-2054-6-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/10] UBI: fix ubi free PEBs count calculation
To: barebox@lists.infradead.org

From: Tanya Brokhman <tlinder@codeaurora.org>

The ubi->free_count should be updated with every insert/remove to/from
the ubi->free list.

Signed-off-by: Tanya Brokhman <tlinder@codeaurora.org>
Reviewed-by: Dolev Raviv <draviv@codeaurora.org>
Acked-by: Richard Weinberger <richard@nod.at>
Signed-off-by: Artem Bityutskiy <artem.bityutskiy@linux.intel.com>
---
 drivers/mtd/ubi/wl.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/mtd/ubi/wl.c b/drivers/mtd/ubi/wl.c
index 4ecbe18..e52910f 100644
--- a/drivers/mtd/ubi/wl.c
+++ b/drivers/mtd/ubi/wl.c
@@ -635,6 +635,8 @@ static struct ubi_wl_entry *get_peb_for_wl(struct ubi_device *ubi)
 
 	e = find_wl_entry(ubi, &ubi->free, WL_FREE_MAX_DIFF);
 	self_check_in_wl_tree(ubi, e, &ubi->free);
+	ubi->free_count--;
+	ubi_assert(ubi->free_count >= 0);
 	rb_erase(&e->u.rb, &ubi->free);
 
 	return e;
@@ -1018,6 +1020,7 @@ static int wear_leveling_worker(struct ubi_device *ubi, struct ubi_work *wrk,
 
 			/* Give the unused PEB back */
 			wl_tree_add(e2, &ubi->free);
+			ubi->free_count++;
 			goto out_cancel;
 		}
 		self_check_in_wl_tree(ubi, e1, &ubi->used);
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
