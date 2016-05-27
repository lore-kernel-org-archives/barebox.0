Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b6CTX-0004xy-An
 for barebox@lists.infradead.org; Fri, 27 May 2016 07:46:34 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 73081A00B4E
 for <barebox@lists.infradead.org>; Fri, 27 May 2016 09:46:41 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Fri, 27 May 2016 09:44:38 +0200
Message-Id: <1464335095-35180-46-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH v2 45/62] UBI: Fastmap: Remove unnecessary `\'
To: barebox@lists.infradead.org

From: shengyong <shengyong1@huawei.com>

Signed-off-by: Sheng Yong <shengyong1@huawei.com>
Signed-off-by: Richard Weinberger <richard@nod.at>
Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 drivers/mtd/ubi/fastmap.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/mtd/ubi/fastmap.c b/drivers/mtd/ubi/fastmap.c
index e60bc7f..80a6224 100644
--- a/drivers/mtd/ubi/fastmap.c
+++ b/drivers/mtd/ubi/fastmap.c
@@ -24,13 +24,13 @@ size_t ubi_calc_fm_size(struct ubi_device *ubi)
 {
 	size_t size;
 
-	size = sizeof(struct ubi_fm_sb) + \
-		sizeof(struct ubi_fm_hdr) + \
-		sizeof(struct ubi_fm_scan_pool) + \
-		sizeof(struct ubi_fm_scan_pool) + \
-		(ubi->peb_count * sizeof(struct ubi_fm_ec)) + \
-		(sizeof(struct ubi_fm_eba) + \
-		(ubi->peb_count * sizeof(__be32))) + \
+	size = sizeof(struct ubi_fm_sb) +
+		sizeof(struct ubi_fm_hdr) +
+		sizeof(struct ubi_fm_scan_pool) +
+		sizeof(struct ubi_fm_scan_pool) +
+		(ubi->peb_count * sizeof(struct ubi_fm_ec)) +
+		(sizeof(struct ubi_fm_eba) +
+		(ubi->peb_count * sizeof(__be32))) +
 		sizeof(struct ubi_fm_volhdr) * UBI_MAX_VOLUMES;
 	return roundup(size, ubi->leb_size);
 }
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
