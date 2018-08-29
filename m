Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.microcatalog.org.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fuzT2-0005cy-2l
 for barebox@lists.infradead.org; Wed, 29 Aug 2018 12:21:09 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id CD46EA00E5F
 for <barebox@lists.infradead.org>; Wed, 29 Aug 2018 14:21:04 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Wed, 29 Aug 2018 14:20:10 +0200
Message-Id: <1535545212-18871-55-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 54/56] ubi: fastmap: Detect EBA mismatches on-the-fly
To: barebox@lists.infradead.org

From: Richard Weinberger <richard@nod.at>

Now we have the machinery to detect EBA mismatches on-the-fly
by comparing the in-memory volume ID and LEB number with the found
VID header.
This helps to detect malfunction of Fastmap.

Signed-off-by: Richard Weinberger <richard@nod.at>
Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 drivers/mtd/ubi/eba.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/mtd/ubi/eba.c b/drivers/mtd/ubi/eba.c
index d29df1d1550b..3aae3029e5b6 100644
--- a/drivers/mtd/ubi/eba.c
+++ b/drivers/mtd/ubi/eba.c
@@ -479,6 +479,7 @@ static int check_mapping(struct ubi_device *ubi, struct ubi_volume *vol, int lnu
 {
 	int err;
 	struct ubi_vid_io_buf *vidb;
+	struct ubi_vid_hdr *vid_hdr;
 
 	if (!ubi->fast_attach)
 		return 0;
@@ -516,6 +517,22 @@ static int check_mapping(struct ubi_device *ubi, struct ubi_volume *vol, int lnu
 			*pnum, err);
 
 		goto out_free;
+	} else {
+		int found_vol_id, found_lnum;
+
+		ubi_assert(err == 0 || err == UBI_IO_BITFLIPS);
+
+		vid_hdr = ubi_get_vid_hdr(vidb);
+		found_vol_id = be32_to_cpu(vid_hdr->vol_id);
+		found_lnum = be32_to_cpu(vid_hdr->lnum);
+
+		if (found_lnum != lnum || found_vol_id != vol->vol_id) {
+			ubi_err(ubi, "EBA mismatch! PEB %i is LEB %i:%i instead of LEB %i:%i",
+				*pnum, found_vol_id, found_lnum, vol->vol_id, lnum);
+			ubi_ro_mode(ubi);
+			err = -EINVAL;
+			goto out_free;
+		}
 	}
 
 	set_bit(lnum, vol->checkmap);
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
