Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fuzSu-0005bX-Po
 for barebox@lists.infradead.org; Wed, 29 Aug 2018 12:20:59 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 4F3DDA00BC0
 for <barebox@lists.infradead.org>; Wed, 29 Aug 2018 14:20:55 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Wed, 29 Aug 2018 14:19:32 +0200
Message-Id: <1535545212-18871-17-git-send-email-t.remmet@phytec.de>
In-Reply-To: <1535545212-18871-1-git-send-email-t.remmet@phytec.de>
References: <1535545212-18871-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 16/56] ubi: Check whether the Fastmap anchor matches the super
 block
To: barebox@lists.infradead.org

From: Richard Weinberger <richard@nod.at>

This helps to detect cases where an user copies an UBI image to
another target with different bad blocks.

Signed-off-by: Richard Weinberger <richard@nod.at>
Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 drivers/mtd/ubi/fastmap.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/mtd/ubi/fastmap.c b/drivers/mtd/ubi/fastmap.c
index 4a8de1db407a..d60f89fdb369 100644
--- a/drivers/mtd/ubi/fastmap.c
+++ b/drivers/mtd/ubi/fastmap.c
@@ -908,6 +908,13 @@ int ubi_scan_fastmap(struct ubi_device *ubi, struct ubi_attach_info *ai,
 			goto free_hdr;
 		}
 
+		if (i == 0 && pnum != fm_anchor) {
+			ubi_err(ubi, "Fastmap anchor PEB mismatch: PEB: %i vs. %i",
+				pnum, fm_anchor);
+			ret = UBI_BAD_FASTMAP;
+			goto free_hdr;
+		}
+
 		ret = ubi_io_read_ec_hdr(ubi, pnum, ech, 0);
 		if (ret && ret != UBI_IO_BITFLIPS) {
 			ubi_err(ubi, "unable to read fastmap block# %i EC (PEB: %i)",
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
