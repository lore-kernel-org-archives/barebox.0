Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.de ([217.6.246.34] helo=root.phytec.de)
 by casper.infradead.org with esmtp (Exim 4.85_2 #1 (Red Hat Linux))
 id 1b4lEg-00050v-At
 for barebox@lists.infradead.org; Mon, 23 May 2016 08:29:15 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 98C04A00CD3
 for <barebox@lists.infradead.org>; Mon, 23 May 2016 10:28:24 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Mon, 23 May 2016 10:26:20 +0200
Message-Id: <1463992010-31537-33-git-send-email-t.remmet@phytec.de>
In-Reply-To: <1463992010-31537-1-git-send-email-t.remmet@phytec.de>
References: <1463992010-31537-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 32/62] UBI: Fastmap: Fix leb_count unbalance
To: barebox@lists.infradead.org

From: Richard Weinberger <richard@nod.at>

If a LEB is unmapped we have to decrement leb_count as well.

Signed-off-by: Richard Weinberger <richard@nod.at>

Conflicts:
	drivers/mtd/ubi/fastmap.c

Fixed minor conflict.

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 drivers/mtd/ubi/fastmap.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mtd/ubi/fastmap.c b/drivers/mtd/ubi/fastmap.c
index d94e1d9..a9efc9c 100644
--- a/drivers/mtd/ubi/fastmap.c
+++ b/drivers/mtd/ubi/fastmap.c
@@ -361,6 +361,7 @@ static void unmap_peb(struct ubi_attach_info *ai, int pnum)
 			aeb = rb_entry(node2, struct ubi_ainf_peb, u.rb);
 			if (aeb->pnum == pnum) {
 				rb_erase(&aeb->u.rb, &av->root);
+				av->leb_count--;
 				kfree(aeb);
 				return;
 			}
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
