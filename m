Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fuzSm-0005Ux-Qa
 for barebox@lists.infradead.org; Wed, 29 Aug 2018 12:20:50 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 0685AA00C31
 for <barebox@lists.infradead.org>; Wed, 29 Aug 2018 14:20:56 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Wed, 29 Aug 2018 14:19:35 +0200
Message-Id: <1535545212-18871-20-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 19/56] UBI: fix add_fastmap() to use the vid_hdr passed in
 argument
To: barebox@lists.infradead.org

From: Boris Brezillon <boris.brezillon@free-electrons.com>

add_fastmap() is passed a ubi_vid_hdr pointer in argument, but is
referencing the global vidh pointer.
Even if this is correct from a functional point of view (vidh and vid_hdr
point to the same object), it is confusing.

Signed-off-by: Boris Brezillon <boris.brezillon@free-electrons.com>
Signed-off-by: Richard Weinberger <richard@nod.at>
Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 drivers/mtd/ubi/attach.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/ubi/attach.c b/drivers/mtd/ubi/attach.c
index a5d48932ed33..4d3a936ae861 100644
--- a/drivers/mtd/ubi/attach.c
+++ b/drivers/mtd/ubi/attach.c
@@ -191,8 +191,8 @@ static int add_fastmap(struct ubi_attach_info *ai, int pnum,
 		return -ENOMEM;
 
 	aeb->pnum = pnum;
-	aeb->vol_id = be32_to_cpu(vidh->vol_id);
-	aeb->sqnum = be64_to_cpu(vidh->sqnum);
+	aeb->vol_id = be32_to_cpu(vid_hdr->vol_id);
+	aeb->sqnum = be64_to_cpu(vid_hdr->sqnum);
 	aeb->ec = ec;
 	list_add(&aeb->u.list, &ai->fastmap);
 
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
