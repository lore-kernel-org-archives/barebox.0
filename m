Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b6CTa-0004yb-Kp
 for barebox@lists.infradead.org; Fri, 27 May 2016 07:46:38 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id F1557A00B56
 for <barebox@lists.infradead.org>; Fri, 27 May 2016 09:46:41 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Fri, 27 May 2016 09:44:45 +0200
Message-Id: <1464335095-35180-53-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH v2 52/62] UBI: return ENOSPC if no enough space available
To: barebox@lists.infradead.org

From: shengyong <shengyong1@huawei.com>

UBI: attaching mtd1 to ubi0
UBI: scanning is finished
UBI error: init_volumes: not enough PEBs, required 706, available 686
UBI error: ubi_wl_init: no enough physical eraseblocks (-20, need 1)
UBI error: ubi_attach_mtd_dev: failed to attach mtd1, error -12 <= NOT ENOMEM
UBI error: ubi_init: cannot attach mtd1

If available PEBs are not enough when initializing volumes, return -ENOSPC
directly. If available PEBs are not enough when initializing WL, return
-ENOSPC instead of -ENOMEM.

Cc: stable@vger.kernel.org
Signed-off-by: Sheng Yong <shengyong1@huawei.com>
Signed-off-by: Richard Weinberger <richard@nod.at>
Reviewed-by: David Gstir <david@sigma-star.at>
Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 drivers/mtd/ubi/vtbl.c | 1 +
 drivers/mtd/ubi/wl.c   | 1 +
 2 files changed, 2 insertions(+)

diff --git a/drivers/mtd/ubi/vtbl.c b/drivers/mtd/ubi/vtbl.c
index 6bae84c..b5eb454 100644
--- a/drivers/mtd/ubi/vtbl.c
+++ b/drivers/mtd/ubi/vtbl.c
@@ -638,6 +638,7 @@ static int init_volumes(struct ubi_device *ubi,
 		if (ubi->corr_peb_count)
 			ubi_err(ubi, "%d PEBs are corrupted and not used",
 				ubi->corr_peb_count);
+		return -ENOSPC;
 	}
 	ubi->rsvd_pebs += reserved_pebs;
 	ubi->avail_pebs -= reserved_pebs;
diff --git a/drivers/mtd/ubi/wl.c b/drivers/mtd/ubi/wl.c
index 986a2dc..2d6c6ae 100644
--- a/drivers/mtd/ubi/wl.c
+++ b/drivers/mtd/ubi/wl.c
@@ -1438,6 +1438,7 @@ int ubi_wl_init(struct ubi_device *ubi, struct ubi_attach_info *ai)
 		if (ubi->corr_peb_count)
 			ubi_err(ubi, "%d PEBs are corrupted and not used",
 				ubi->corr_peb_count);
+		err = -ENOSPC;
 		goto out_free;
 	}
 	ubi->avail_pebs -= reserved_pebs;
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
