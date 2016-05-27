Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.rapiddevelopmentkit.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b6CTZ-0004y0-1P
 for barebox@lists.infradead.org; Fri, 27 May 2016 07:46:36 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 8DC8FA00B51
 for <barebox@lists.infradead.org>; Fri, 27 May 2016 09:46:41 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Fri, 27 May 2016 09:44:41 +0200
Message-Id: <1464335095-35180-49-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH v2 48/62] UBI: Fastmap: Do not add vol if it already exists
To: barebox@lists.infradead.org

From: shengyong <shengyong1@huawei.com>

During fastmap attaching, check if a volume already exists when adding
the volume to volume tree. NOTE that the issue cannot happen, only if
the on-flash fastmap data is modified.

Signed-off-by: Sheng Yong <shengyong1@huawei.com>
Signed-off-by: Richard Weinberger <richard@nod.at>
Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 drivers/mtd/ubi/fastmap.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/ubi/fastmap.c b/drivers/mtd/ubi/fastmap.c
index 5483bb9..f33c2db 100644
--- a/drivers/mtd/ubi/fastmap.c
+++ b/drivers/mtd/ubi/fastmap.c
@@ -128,8 +128,10 @@ static struct ubi_ainf_volume *add_vol(struct ubi_attach_info *ai, int vol_id,
 
 		if (vol_id > av->vol_id)
 			p = &(*p)->rb_left;
-		else
+		else if (vol_id < av->vol_id)
 			p = &(*p)->rb_right;
+		else
+			return ERR_PTR(-EINVAL);
 	}
 
 	av = kmalloc(sizeof(struct ubi_ainf_volume), GFP_KERNEL);
@@ -687,6 +689,11 @@ static int ubi_attach_fastmap(struct ubi_device *ubi,
 
 		if (!av)
 			goto fail_bad;
+		if (PTR_ERR(av) == -EINVAL) {
+			ubi_err(ubi, "volume (ID %i) already exists",
+				fmvhdr->vol_id);
+			goto fail_bad;
+		}
 
 		ai->vols_found++;
 		if (ai->highest_vol_id < be32_to_cpu(fmvhdr->vol_id))
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
