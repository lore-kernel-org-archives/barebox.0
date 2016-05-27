Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b6CT2-0004ig-OU
 for barebox@lists.infradead.org; Fri, 27 May 2016 07:46:01 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 87CFFA00A7D
 for <barebox@lists.infradead.org>; Fri, 27 May 2016 09:46:37 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Fri, 27 May 2016 09:43:55 +0200
Message-Id: <1464335095-35180-3-git-send-email-t.remmet@phytec.de>
In-Reply-To: <1464335095-35180-1-git-send-email-t.remmet@phytec.de>
References: <1464335095-35180-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH v2 02/62] UBI: Improve comment on work_sem
To: barebox@lists.infradead.org

From: Richard Weinberger <richard@nod.at>

Make clear what work_sem really does.

Suggested-by: Artem Bityutskiy <dedekind1@gmail.com>
Signed-off-by: Richard Weinberger <richard@nod.at>
Signed-off-by: Artem Bityutskiy <artem.bityutskiy@linux.intel.com>
Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 drivers/mtd/ubi/ubi.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/ubi/ubi.h b/drivers/mtd/ubi/ubi.h
index 471d784..51a0112 100644
--- a/drivers/mtd/ubi/ubi.h
+++ b/drivers/mtd/ubi/ubi.h
@@ -428,7 +428,8 @@ struct ubi_debug_info {
  *	     @move_to, @move_to_put @erase_pending, @wl_scheduled, @works,
  *	     @erroneous, and @erroneous_peb_count fields
  * @move_mutex: serializes eraseblock moves
- * @work_sem: synchronizes the WL worker with use tasks
+ * @work_sem: used to wait for all the scheduled works to finish and prevent
+ * new works from being submitted
  * @wl_scheduled: non-zero if the wear-leveling was scheduled
  * @lookuptbl: a table to quickly find a &struct ubi_wl_entry object for any
  *             physical eraseblock
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
