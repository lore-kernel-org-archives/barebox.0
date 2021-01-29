Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([85.220.165.71])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l5WOo-0003L9-0N
 for barebox@lists.infradead.org; Fri, 29 Jan 2021 16:13:32 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 29 Jan 2021 17:11:14 +0100
Message-Id: <20210129161116.9971-6-a.fatoum@pengutronix.de>
In-Reply-To: <20210129161116.9971-1-a.fatoum@pengutronix.de>
References: <20210129161116.9971-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 6/8] printk: port over Linux
 print_hex_dump_bytes/print_hex_dump_debug
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

print_hex_dump in barebox always prints a hex dump. Most users use
it for debugging though, so import Linux helpers to do so to cut
down on the #ifdef DEBUG.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/crypto/caam/caamrng.c | 16 ++++++----------
 drivers/mfd/rave-sp.c         | 10 ++++------
 drivers/mtd/ubi/debug.c       | 10 +++++-----
 drivers/video/tc358767.c      |  3 +--
 fs/ubifs/scan.c               |  2 +-
 include/printk.h              | 28 ++++++++++++++++++++++++++++
 6 files changed, 45 insertions(+), 24 deletions(-)

diff --git a/drivers/crypto/caam/caamrng.c b/drivers/crypto/caam/caamrng.c
index 39a90568dfe8..5d8cfb8bff93 100644
--- a/drivers/crypto/caam/caamrng.c
+++ b/drivers/crypto/caam/caamrng.c
@@ -91,10 +91,8 @@ static void rng_done(struct device_d *jrdev, u32 *desc, u32 err, void *context)
 	/* Buffer refilled, invalidate cache */
 	dma_sync_single_for_cpu(bd->addr, RN_BUF_SIZE, DMA_FROM_DEVICE);
 
-#ifdef DEBUG
-	print_hex_dump(KERN_ERR, "rng refreshed buf@: ",
-		       DUMP_PREFIX_OFFSET, 16, 4, bd->buf, RN_BUF_SIZE, 1);
-#endif
+	print_hex_dump_debug("rng refreshed buf@: ", DUMP_PREFIX_OFFSET,
+			     16, 4, bd->buf, RN_BUF_SIZE, 1);
 }
 
 static inline int submit_job(struct caam_rng_ctx *ctx, int to_current)
@@ -186,10 +184,9 @@ static inline int rng_create_sh_desc(struct caam_rng_ctx *ctx)
 
 	dma_sync_single_for_device((unsigned long)desc, desc_bytes(desc),
 				   DMA_TO_DEVICE);
-#ifdef DEBUG
-	print_hex_dump(KERN_ERR, "rng shdesc@: ", DUMP_PREFIX_OFFSET, 16, 4,
+
+	print_hex_dump_debug("rng shdesc@: ", DUMP_PREFIX_OFFSET, 16, 4,
 		       desc, desc_bytes(desc), 1);
-#endif
 	return 0;
 }
 
@@ -203,10 +200,9 @@ static inline int rng_create_job_desc(struct caam_rng_ctx *ctx, int buf_id)
 			     HDR_REVERSE);
 
 	append_seq_out_ptr_intlen(desc, bd->addr, RN_BUF_SIZE, 0);
-#ifdef DEBUG
-	print_hex_dump(KERN_ERR, "rng job desc@: ", DUMP_PREFIX_OFFSET, 16, 4,
+
+	print_hex_dump_debug("rng job desc@: ", DUMP_PREFIX_OFFSET, 16, 4,
 		       desc, desc_bytes(desc), 1);
-#endif
 	return 0;
 }
 
diff --git a/drivers/mfd/rave-sp.c b/drivers/mfd/rave-sp.c
index 8fc46b66bb2c..ef569dd513b5 100644
--- a/drivers/mfd/rave-sp.c
+++ b/drivers/mfd/rave-sp.c
@@ -269,9 +269,8 @@ static int rave_sp_write(struct rave_sp *sp, const u8 *data, u8 data_size)
 
 	length = dest - frame;
 
-	if (IS_ENABLED(DEBUG))
-		print_hex_dump(0, "rave-sp tx: ", DUMP_PREFIX_NONE,
-			       16, 1, frame, length, false);
+	print_hex_dump_debug("rave-sp tx: ", DUMP_PREFIX_NONE, 16, 1,
+			     frame, length, false);
 
 	return serdev_device_write(sp->serdev, frame, length, SECOND);
 }
@@ -406,9 +405,8 @@ static void rave_sp_receive_frame(struct rave_sp *sp,
 	struct device_d *dev         = sp->serdev->dev;
 	u8 crc_calculated[checksum_length];
 
-	if (IS_ENABLED(DEBUG))
-		print_hex_dump(0, "rave-sp rx: ", DUMP_PREFIX_NONE,
-			       16, 1, data, length, false);
+	print_hex_dump_debug("rave-sp rx: ", DUMP_PREFIX_NONE, 16, 1,
+			     data, length, false);
 
 	if (unlikely(length <= checksum_length)) {
 		dev_warn(dev, "Dropping short frame\n");
diff --git a/drivers/mtd/ubi/debug.c b/drivers/mtd/ubi/debug.c
index 6ae797c2bfd6..75d6b69f090e 100644
--- a/drivers/mtd/ubi/debug.c
+++ b/drivers/mtd/ubi/debug.c
@@ -42,7 +42,7 @@ void ubi_dump_flash(struct ubi_device *ubi, int pnum, int offset, int len)
 
 	ubi_msg(ubi, "dumping %d bytes of data from PEB %d, offset %d",
 		len, pnum, offset);
-	print_hex_dump(KERN_DEBUG, "", DUMP_PREFIX_OFFSET, 32, 1, buf, len, 1);
+	print_hex_dump_debug("", DUMP_PREFIX_OFFSET, 32, 1, buf, len, 1);
 out:
 	vfree(buf);
 	return;
@@ -63,8 +63,8 @@ void ubi_dump_ec_hdr(const struct ubi_ec_hdr *ec_hdr)
 	pr_err("\timage_seq      %d\n", be32_to_cpu(ec_hdr->image_seq));
 	pr_err("\thdr_crc        %#08x\n", be32_to_cpu(ec_hdr->hdr_crc));
 	pr_err("erase counter header hexdump:\n");
-	print_hex_dump(KERN_DEBUG, "", DUMP_PREFIX_OFFSET, 32, 1,
-		       ec_hdr, UBI_EC_HDR_SIZE, 1);
+	print_hex_dump_debug("", DUMP_PREFIX_OFFSET, 32, 1,
+			     ec_hdr, UBI_EC_HDR_SIZE, 1);
 }
 
 /**
@@ -88,8 +88,8 @@ void ubi_dump_vid_hdr(const struct ubi_vid_hdr *vid_hdr)
 		(unsigned long long)be64_to_cpu(vid_hdr->sqnum));
 	pr_err("\thdr_crc   %08x\n", be32_to_cpu(vid_hdr->hdr_crc));
 	pr_err("Volume identifier header hexdump:\n");
-	print_hex_dump(KERN_DEBUG, "", DUMP_PREFIX_OFFSET, 32, 1,
-		       vid_hdr, UBI_VID_HDR_SIZE, 1);
+	print_hex_dump_debug("", DUMP_PREFIX_OFFSET, 32, 1,
+			     vid_hdr, UBI_VID_HDR_SIZE, 1);
 }
 
 /**
diff --git a/drivers/video/tc358767.c b/drivers/video/tc358767.c
index e64dde1ddf3f..7d14aca9115b 100644
--- a/drivers/video/tc358767.c
+++ b/drivers/video/tc358767.c
@@ -1191,8 +1191,7 @@ static int tc_read_edid(struct tc_data *tc)
 
 #ifdef DEBUG
 	printk(KERN_DEBUG "eDP display EDID:\n");
-	print_hex_dump(KERN_DEBUG, "", DUMP_PREFIX_OFFSET, 16, 1, tc->edid,
-		       EDID_LENGTH, true);
+	print_hex_dump_bytes("", DUMP_PREFIX_OFFSET, tc->edid, EDID_LENGTH);
 #endif
 
 	return 0;
diff --git a/fs/ubifs/scan.c b/fs/ubifs/scan.c
index ea88926163f4..113c2cf755de 100644
--- a/fs/ubifs/scan.c
+++ b/fs/ubifs/scan.c
@@ -244,7 +244,7 @@ void ubifs_scanned_corruption(const struct ubifs_info *c, int lnum, int offs,
 	if (len > 8192)
 		len = 8192;
 	ubifs_err(c, "first %d bytes from LEB %d:%d", len, lnum, offs);
-	print_hex_dump(KERN_DEBUG, "", DUMP_PREFIX_OFFSET, 32, 4, buf, len, 1);
+	print_hex_dump_debug("", DUMP_PREFIX_OFFSET, 32, 4, buf, len, 1);
 }
 
 /**
diff --git a/include/printk.h b/include/printk.h
index 9941ddb12cd7..f92e477298aa 100644
--- a/include/printk.h
+++ b/include/printk.h
@@ -160,4 +160,32 @@ extern void print_hex_dump(const char *level, const char *prefix_str,
 			   int prefix_type, int rowsize, int groupsize,
 			   const void *buf, size_t len, bool ascii);
 
+#if LOGLEVEL <= MSG_DEBUG
+#define print_hex_dump_debug(prefix_str, prefix_type, rowsize,		\
+			     groupsize, buf, len, ascii)		\
+	print_hex_dump(KERN_DEBUG, prefix_str, prefix_type, rowsize,	\
+		       groupsize, buf, len, ascii)
+#else
+static inline void print_hex_dump_debug(const char *prefix_str, int prefix_type,
+                                        int rowsize, int groupsize,
+                                        const void *buf, size_t len, bool ascii)
+{
+}
+#endif
+
+/**
+ * print_hex_dump_bytes - shorthand form of print_hex_dump() with default params
+ * @prefix_str: string to prefix each line with;
+ *  caller supplies trailing spaces for alignment if desired
+ * @prefix_type: controls whether prefix of an offset, address, or none
+ *  is printed (%DUMP_PREFIX_OFFSET, %DUMP_PREFIX_ADDRESS, %DUMP_PREFIX_NONE)
+ * @buf: data blob to dump
+ * @len: number of bytes in the @buf
+ *
+ * Calls print_hex_dump(), with log level of KERN_DEBUG,
+ * rowsize of 16, groupsize of 1, and ASCII output included.
+ */
+#define print_hex_dump_bytes(prefix_str, prefix_type, buf, len)	\
+	print_hex_dump_debug(prefix_str, prefix_type, 16, 1, buf, len, true)
+
 #endif
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
