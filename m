Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1go6mR-0004p8-U1
 for barebox@lists.infradead.org; Mon, 28 Jan 2019 13:16:53 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 28 Jan 2019 14:16:40 +0100
Message-Id: <20190128131640.3692-2-s.hauer@pengutronix.de>
In-Reply-To: <20190128131640.3692-1-s.hauer@pengutronix.de>
References: <20190128131640.3692-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/2] usb: fastboot: ubiformat: Fix bad block handling
To: Barebox List <barebox@lists.infradead.org>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

When fastboot handles UBI images in sparse file format then bad blocks
of the underlying mtd device are not skipped. This patch fixes this.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/ubiformat.c | 40 ++++++++++++++++++++++++++++------------
 1 file changed, 28 insertions(+), 12 deletions(-)

diff --git a/common/ubiformat.c b/common/ubiformat.c
index 0811525bd2..1968bd98f8 100644
--- a/common/ubiformat.c
+++ b/common/ubiformat.c
@@ -710,8 +710,10 @@ int ubiformat_write(struct mtd_info *mtd, const void *buf, size_t count,
 		    loff_t offset)
 {
 	int writesize = mtd->writesize >> mtd->subpage_sft;
-	size_t retlen;
 	int ret;
+	int peb = 0;
+	int n_skip_blocks = mtd_div_by_eb(offset, mtd);
+	int offset_in_peb = mtd_mod_by_eb(offset, mtd);
 
 	if (offset & (mtd->writesize - 1))
 		return -EINVAL;
@@ -719,27 +721,44 @@ int ubiformat_write(struct mtd_info *mtd, const void *buf, size_t count,
 	if (count & (mtd->writesize - 1))
 		return -EINVAL;
 
+	/* Seek forward to the first PEB we actually want to write */
+	while (1) {
+		ret = mtd_skip_bad(mtd, &peb);
+		if (ret)
+			return ret;
+
+		if (!n_skip_blocks)
+			break;
+
+		peb++;
+		n_skip_blocks--;
+	}
+
 	while (count) {
-		size_t now;
+		size_t now = mtd->erasesize - offset_in_peb;
 
-		now = ALIGN(offset, mtd->erasesize) - offset;
 		if (now > count)
 			now = count;
 
-		if (!now) {
+		if (!offset_in_peb) {
 			const struct ubi_ec_hdr *ec = buf;
 			const struct ubi_vid_hdr *vid;
 
+			ret = mtd_skip_bad(mtd, &peb);
+			if (ret)
+				return ret;
+
 			if (be32_to_cpu(ec->magic) != UBI_EC_HDR_MAGIC) {
 				pr_err("bad UBI magic %#08x, should be %#08x",
 					be32_to_cpu(ec->magic), UBI_EC_HDR_MAGIC);
 				return -EINVAL;
 			}
 
-			/* skip ec header */
-			offset += writesize;
+			/* skip ec header in both flash and image */
+			offset_in_peb = writesize;
 			buf += writesize;
 			count -= writesize;
+			now -= writesize;
 
 			if (!count)
 				break;
@@ -750,19 +769,16 @@ int ubiformat_write(struct mtd_info *mtd, const void *buf, size_t count,
 				       be32_to_cpu(vid->magic), UBI_VID_HDR_MAGIC);
 				return -EINVAL;
 			}
-
-			continue;
 		}
 
-		ret = mtd_write(mtd, offset, now, &retlen, buf);
+		ret = mtd_peb_write(mtd, buf, peb, offset_in_peb, now);
 		if (ret < 0)
 			return ret;
-		if (retlen != now)
-			return -EIO;
 
 		buf += now;
 		count -= now;
-		offset += now;
+		offset_in_peb = 0;
+		peb++;
 	}
 
 	return 0;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
