Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycore.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b6CTS-0004yV-CL
 for barebox@lists.infradead.org; Fri, 27 May 2016 07:46:29 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 0D24CA00B34
 for <barebox@lists.infradead.org>; Fri, 27 May 2016 09:46:40 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Fri, 27 May 2016 09:44:24 +0200
Message-Id: <1464335095-35180-32-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH v2 31/62] UBI: Fastmap: Make WL pool size 50% of user pool size
To: barebox@lists.infradead.org

From: Richard Weinberger <richard@nod.at>

Don't use a fixed size for the WL pool.
Make it instead 50% of the user pool.
We don't make it 100% as it is not as heavily used as the user pool.

Signed-off-by: Richard Weinberger <richard@nod.at>
Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 drivers/mtd/ubi/build.c     | 2 +-
 drivers/mtd/ubi/ubi-media.h | 2 --
 2 files changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/mtd/ubi/build.c b/drivers/mtd/ubi/build.c
index b505252..8b135c3 100644
--- a/drivers/mtd/ubi/build.c
+++ b/drivers/mtd/ubi/build.c
@@ -585,7 +585,7 @@ int ubi_attach_mtd_dev(struct mtd_info *mtd, int ubi_num,
 	if (ubi->fm_pool.max_size < UBI_FM_MIN_POOL_SIZE)
 		ubi->fm_pool.max_size = UBI_FM_MIN_POOL_SIZE;
 
-	ubi->fm_wl_pool.max_size = UBI_FM_WL_POOL_SIZE;
+	ubi->fm_wl_pool.max_size = ubi->fm_pool.max_size / 2;
 	ubi->fm_disabled = !fm_autoconvert;
 
 	if (!ubi->fm_disabled && (int)mtd_div_by_eb(ubi->mtd->size, ubi->mtd)
diff --git a/drivers/mtd/ubi/ubi-media.h b/drivers/mtd/ubi/ubi-media.h
index b83ade8..34d6747 100644
--- a/drivers/mtd/ubi/ubi-media.h
+++ b/drivers/mtd/ubi/ubi-media.h
@@ -399,8 +399,6 @@ struct ubi_vtbl_record {
 #define UBI_FM_MIN_POOL_SIZE	8
 #define UBI_FM_MAX_POOL_SIZE	256
 
-#define UBI_FM_WL_POOL_SIZE	25
-
 /**
  * struct ubi_fm_sb - UBI fastmap super block
  * @magic: fastmap super block magic number (%UBI_FM_SB_MAGIC)
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
