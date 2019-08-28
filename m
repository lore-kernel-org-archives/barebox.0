Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2v7l-0002xO-P1
 for barebox@lists.infradead.org; Wed, 28 Aug 2019 10:24:23 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 28 Aug 2019 12:24:01 +0200
Message-Id: <20190828102402.18332-6-s.hauer@pengutronix.de>
In-Reply-To: <20190828102402.18332-1-s.hauer@pengutronix.de>
References: <20190828102402.18332-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/6] mtd: peb: Add function to write file
To: Barebox List <barebox@lists.infradead.org>

This adds a function to the mtd peb API to write a file spanning
multiple blocks to a mtd device. Bad blocks are automatically skipped
and before anything is done we check if the image will fit into the
remaining space (honouring bad blocks).

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/peb.c     | 84 +++++++++++++++++++++++++++++++++++++++++++
 include/mtd/mtd-peb.h |  2 ++
 2 files changed, 86 insertions(+)

diff --git a/drivers/mtd/peb.c b/drivers/mtd/peb.c
index c82b3e8bba..d10a8a024d 100644
--- a/drivers/mtd/peb.c
+++ b/drivers/mtd/peb.c
@@ -437,6 +437,90 @@ int mtd_peb_write(struct mtd_info *mtd, const void *buf, int pnum, int offset,
 	return err;
 }
 
+/**
+ * mtd_peb_write_file - write data into a mtd device
+ * @mtd: mtd device
+ * @peb_start: The first PEB where to start writing
+ * @max_pebs: Maximum number of PEBs we have space to write to
+ * @buf: buffer with the data to write
+ * @len: how many bytes to write
+ *
+ * This function writes @len bytes of data from buffer @buf to the mtd device
+ * @mtd starting at @peb_start. At maxmimum @max_pebs are used. We always write
+ * full pebs. If the buffer is not peb size aligned the last peb will be padded
+ * with zeroes. This function skips all bad blocks and returns 0 on success or a
+ * negative error code otherwise.
+ */
+int mtd_peb_write_file(struct mtd_info *mtd, int peb_start, int max_pebs,
+		       const void *buf, size_t len)
+{
+	int ret, pnum;
+	size_t left;
+
+	pnum = peb_start;
+	left = len;
+
+	/* First pass: Check if file will fit into remaining space */
+	while (1) {
+		if ((uint64_t)pnum * mtd->erasesize >= mtd->size)
+			return -ENOSPC;
+
+		if (pnum >= peb_start + max_pebs)
+			return -ENOSPC;
+
+		if (mtd_peb_is_bad(mtd, pnum)) {
+			pnum++;
+			continue;
+		}
+
+		if (left <= mtd->erasesize)
+			break;
+
+		left -= mtd->erasesize;
+		pnum++;
+	}
+
+	pnum = peb_start;
+	left = len;
+
+	/* Second pass: actually write file */
+	while (left) {
+		size_t now = min_t(size_t, mtd->erasesize, left);
+
+		if (mtd_peb_is_bad(mtd, pnum)) {
+			pnum++;
+			continue;
+		}
+
+		ret = mtd_peb_erase(mtd, pnum);
+		if (ret)
+			goto out;
+
+		if (now < mtd->erasesize) {
+			void *wrbuf = xzalloc(mtd->erasesize);
+
+			memcpy(wrbuf, buf, now);
+
+			ret = mtd_peb_write(mtd, wrbuf, pnum, 0, mtd->erasesize);
+
+			free(wrbuf);
+		} else {
+			ret = mtd_peb_write(mtd, buf, pnum, 0, mtd->erasesize);
+		}
+
+		if (ret)
+			goto out;
+
+		left -= now;
+		pnum++;
+		buf += now;
+	}
+
+	ret = 0;
+out:
+	return ret;
+}
+
 /**
  * mtd_peb_erase - erase a physical eraseblock.
  * @mtd: mtd device
diff --git a/include/mtd/mtd-peb.h b/include/mtd/mtd-peb.h
index 23f89d89a8..311f25c3df 100644
--- a/include/mtd/mtd-peb.h
+++ b/include/mtd/mtd-peb.h
@@ -21,5 +21,7 @@ int mtd_num_pebs(struct mtd_info *mtd);
 int mtd_peb_create_bitflips(struct mtd_info *mtd, int pnum, int offset,
 				   int len, int num_bitflips, int random,
 				   int info);
+int mtd_peb_write_file(struct mtd_info *mtd, int peb_start, int max_pebs,
+		       const void *buf, size_t len);
 
 #endif /* __LINUX_MTD_MTDPEB_H */
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
