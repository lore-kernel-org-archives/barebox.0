Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.visioncatalog.com ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b4lEV-0000Js-NW
 for barebox@lists.infradead.org; Mon, 23 May 2016 08:29:05 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id DA303A00CF4
 for <barebox@lists.infradead.org>; Mon, 23 May 2016 10:28:27 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Mon, 23 May 2016 10:26:47 +0200
Message-Id: <1463992010-31537-60-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 59/62] mtd: ubi: don't leak e if schedule_erase() fails
To: barebox@lists.infradead.org

From: Sebastian Siewior <bigeasy@linutronix.de>

If __erase_worker() fails to erase the EB and schedule_erase() fails as
well to do anything about it then we go RO. But that is not a reason to
leak the e argument here. Therefore clean up e.

Cc: <stable@vger.kernel.org>
Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Signed-off-by: Richard Weinberger <richard@nod.at>
---
 drivers/mtd/ubi/wl.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mtd/ubi/wl.c b/drivers/mtd/ubi/wl.c
index 1feef3f..e81f796 100644
--- a/drivers/mtd/ubi/wl.c
+++ b/drivers/mtd/ubi/wl.c
@@ -1015,6 +1015,7 @@ static int __erase_worker(struct ubi_device *ubi, struct ubi_work *wl_wrk)
 		/* Re-schedule the LEB for erasure */
 		err1 = schedule_erase(ubi, e, vol_id, lnum, 0);
 		if (err1) {
+			wl_entry_destroy(ubi, e);
 			err = err1;
 			goto out_ro;
 		}
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
