Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.visioncatalog.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b4lEb-0000WQ-Bw
 for barebox@lists.infradead.org; Mon, 23 May 2016 08:29:11 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 17A5EA00CC0
 for <barebox@lists.infradead.org>; Mon, 23 May 2016 10:28:23 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Mon, 23 May 2016 10:26:06 +0200
Message-Id: <1463992010-31537-19-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 18/62] UBI: initialize LEB number variable
To: barebox@lists.infradead.org

From: Brian Norris <computersforpeace@gmail.com>

In some of the 'out_not_moved' error paths, lnum may be used
uninitialized. Don't ignore the warning; let's fix it.

This uninitialized variable doesn't have much visible effect in the end,
since we just schedule the PEB for erasure, and its LEB number doesn't
really matter (it just gets printed in debug messages). But let's get it
straight anyway.

Coverity CID #113449

Cc: stable <stable@vger.kernel.org>
Signed-off-by: Brian Norris <computersforpeace@gmail.com>
Signed-off-by: Richard Weinberger <richard@nod.at>
---
 drivers/mtd/ubi/wl.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/ubi/wl.c b/drivers/mtd/ubi/wl.c
index aaa882e..adbb29b 100644
--- a/drivers/mtd/ubi/wl.c
+++ b/drivers/mtd/ubi/wl.c
@@ -951,7 +951,7 @@ static int wear_leveling_worker(struct ubi_device *ubi, struct ubi_work *wrk,
 				int shutdown)
 {
 	int err, scrubbing = 0, torture = 0, protect = 0, erroneous = 0;
-	int vol_id = -1, uninitialized_var(lnum);
+	int vol_id = -1, lnum = -1;
 #ifdef CONFIG_MTD_UBI_FASTMAP
 	int anchor = wrk->anchor;
 #endif
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
