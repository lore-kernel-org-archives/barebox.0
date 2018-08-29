Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.rapiddevelopmentkit.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fuzSm-0005Ul-Ry
 for barebox@lists.infradead.org; Wed, 29 Aug 2018 12:20:50 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 843E5A00C6B
 for <barebox@lists.infradead.org>; Wed, 29 Aug 2018 14:20:56 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Wed, 29 Aug 2018 14:19:37 +0200
Message-Id: <1535545212-18871-22-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 21/56] UBI: fastmap: scrub PEB when bitflips are detected in a
 free PEB EC header
To: barebox@lists.infradead.org

From: Boris Brezillon <boris.brezillon@free-electrons.com>

scan_pool() does not mark the PEB for scrubing when bitflips are
detected in the EC header of a free PEB (VID header region left to
0xff).
Make sure we scrub the PEB in this case.

Signed-off-by: Boris Brezillon <boris.brezillon@free-electrons.com>
Fixes: dbb7d2a88d2a ("UBI: Add fastmap core")
Signed-off-by: Richard Weinberger <richard@nod.at>
[Fixed conflict]
Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 drivers/mtd/ubi/fastmap.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/mtd/ubi/fastmap.c b/drivers/mtd/ubi/fastmap.c
index 6ef94189b612..c10ef0650760 100644
--- a/drivers/mtd/ubi/fastmap.c
+++ b/drivers/mtd/ubi/fastmap.c
@@ -431,10 +431,11 @@ static int scan_pool(struct ubi_device *ubi, struct ubi_attach_info *ai,
 			unsigned long long ec = be64_to_cpu(ech->ec);
 			unmap_peb(ai, pnum);
 			dbg_bld("Adding PEB to free: %i", pnum);
+
 			if (err == UBI_IO_FF_BITFLIPS)
-				add_aeb(ai, lfree, pnum, ec, 1);
-			else
-				add_aeb(ai, lfree, pnum, ec, 0);
+				scrub = 1;
+
+			add_aeb(ai, lfree, pnum, ec, scrub);
 			continue;
 		} else if (err == 0 || err == UBI_IO_BITFLIPS) {
 			dbg_bld("Found non empty PEB:%i in pool", pnum);
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
