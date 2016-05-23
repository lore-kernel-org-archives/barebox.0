Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.visioncatalog.com ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b4lEP-0000Js-DL
 for barebox@lists.infradead.org; Mon, 23 May 2016 08:29:00 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id C6FB0A00CDF
 for <barebox@lists.infradead.org>; Mon, 23 May 2016 10:28:25 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Mon, 23 May 2016 10:26:32 +0200
Message-Id: <1463992010-31537-45-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 44/62] UBI: Fastmap: Use max() to get the larger value
To: barebox@lists.infradead.org

From: shengyong <shengyong1@huawei.com>

Signed-off-by: Sheng Yong <shengyong1@huawei.com>
Signed-off-by: Richard Weinberger <richard@nod.at>
---
 drivers/mtd/ubi/build.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/ubi/build.c b/drivers/mtd/ubi/build.c
index 8b135c3..0e8dccc 100644
--- a/drivers/mtd/ubi/build.c
+++ b/drivers/mtd/ubi/build.c
@@ -582,8 +582,8 @@ int ubi_attach_mtd_dev(struct mtd_info *mtd, int ubi_num,
 	 */
 	ubi->fm_pool.max_size = min(((int)mtd_div_by_eb(ubi->mtd->size,
 		ubi->mtd) / 100) * 5, UBI_FM_MAX_POOL_SIZE);
-	if (ubi->fm_pool.max_size < UBI_FM_MIN_POOL_SIZE)
-		ubi->fm_pool.max_size = UBI_FM_MIN_POOL_SIZE;
+	ubi->fm_pool.max_size = max(ubi->fm_pool.max_size,
+		UBI_FM_MIN_POOL_SIZE);
 
 	ubi->fm_wl_pool.max_size = ubi->fm_pool.max_size / 2;
 	ubi->fm_disabled = !fm_autoconvert;
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
