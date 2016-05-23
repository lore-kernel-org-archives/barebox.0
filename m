Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.eu ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b4lEL-0000K8-GH
 for barebox@lists.infradead.org; Mon, 23 May 2016 08:28:56 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id D0AFAA00CD4
 for <barebox@lists.infradead.org>; Mon, 23 May 2016 10:28:24 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Mon, 23 May 2016 10:26:21 +0200
Message-Id: <1463992010-31537-34-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 33/62] UBI: Fastmap: Set used_ebs only for static volumes
To: barebox@lists.infradead.org

From: Richard Weinberger <richard@nod.at>

If we set it for dynamic ones we might confuse various self checks.

Signed-off-by: Richard Weinberger <richard@nod.at>
---
 drivers/mtd/ubi/fastmap.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/ubi/fastmap.c b/drivers/mtd/ubi/fastmap.c
index a9efc9c..ae6c044 100644
--- a/drivers/mtd/ubi/fastmap.c
+++ b/drivers/mtd/ubi/fastmap.c
@@ -136,14 +136,15 @@ static struct ubi_ainf_volume *add_vol(struct ubi_attach_info *ai, int vol_id,
 	if (!av)
 		goto out;
 
-	av->highest_lnum = av->leb_count = 0;
+	av->highest_lnum = av->leb_count = av->used_ebs = 0;
 	av->vol_id = vol_id;
-	av->used_ebs = used_ebs;
 	av->data_pad = data_pad;
 	av->last_data_size = last_eb_bytes;
 	av->compat = 0;
 	av->vol_type = vol_type;
 	av->root = RB_ROOT;
+	if (av->vol_type == UBI_STATIC_VOLUME)
+		av->used_ebs = used_ebs;
 
 	dbg_bld("found volume (ID %i)", vol_id);
 
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
