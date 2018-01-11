Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eZXdJ-0003sM-V6
 for barebox@lists.infradead.org; Thu, 11 Jan 2018 07:50:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 11 Jan 2018 08:50:07 +0100
Message-Id: <20180111075012.9050-3-s.hauer@pengutronix.de>
In-Reply-To: <20180111075012.9050-1-s.hauer@pengutronix.de>
References: <20180111075012.9050-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/7] ubiformat: Add ubiformat write function
To: Barebox List <barebox@lists.infradead.org>

The ubiformat C API expects an image file as argument. With upcoming
Android fastboot sparse image support we can no longer provide a
complete image anymore. With this patch we can write an image in
multiple chunks after we've formatted a MTD device with ubiformat.

ubiformat_write will skip the EC header in both the MTD device we
write to and also the image we read from, so we can flash an image
on a MTD device containing EC headers already.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/ubiformat.c  | 61 +++++++++++++++++++++++++++++++++++++++++++++++++++++
 include/ubiformat.h |  3 +++
 2 files changed, 64 insertions(+)

diff --git a/common/ubiformat.c b/common/ubiformat.c
index aaa1f5d6bc..4c5f1f5794 100644
--- a/common/ubiformat.c
+++ b/common/ubiformat.c
@@ -679,3 +679,64 @@ out_close:
 	return err;
 }
 
+int ubiformat_write(struct mtd_info *mtd, const void *buf, size_t count,
+		    loff_t offset)
+{
+	int writesize = mtd->writesize >> mtd->subpage_sft;
+	size_t retlen;
+	int ret;
+
+	if (offset & (mtd->writesize - 1))
+		return -EINVAL;
+
+	if (count & (mtd->writesize - 1))
+		return -EINVAL;
+
+	while (count) {
+		size_t now;
+
+		now = ALIGN(offset, mtd->erasesize) - offset;
+		if (now > count)
+			now = count;
+
+		if (!now) {
+			const struct ubi_ec_hdr *ec = buf;
+			const struct ubi_vid_hdr *vid;
+
+			if (be32_to_cpu(ec->magic) != UBI_EC_HDR_MAGIC) {
+				pr_err("bad UBI magic %#08x, should be %#08x",
+					be32_to_cpu(ec->magic), UBI_EC_HDR_MAGIC);
+				return -EINVAL;
+			}
+
+			/* skip ec header */
+			offset += writesize;
+			buf += writesize;
+			count -= writesize;
+
+			if (!count)
+				break;
+
+			vid = buf;
+			if (be32_to_cpu(vid->magic) != UBI_VID_HDR_MAGIC) {
+				pr_err("bad UBI magic %#08x, should be %#08x",
+				       be32_to_cpu(vid->magic), UBI_VID_HDR_MAGIC);
+				return -EINVAL;
+			}
+
+			continue;
+		}
+
+		ret = mtd_write(mtd, offset, now, &retlen, buf);
+		if (ret < 0)
+			return ret;
+		if (retlen != now)
+			return -EIO;
+
+		buf += now;
+		count -= now;
+		offset += now;
+	}
+
+	return 0;
+}
diff --git a/include/ubiformat.h b/include/ubiformat.h
index b195fd8392..8305a853c7 100644
--- a/include/ubiformat.h
+++ b/include/ubiformat.h
@@ -20,4 +20,7 @@ struct ubiformat_args {
 
 int ubiformat(struct mtd_info *mtd, struct ubiformat_args *args);
 
+int ubiformat_write(struct mtd_info *mtd, const void *buf, size_t count,
+		    loff_t offset);
+
 #endif /* __UBIFORMAT_H */
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
