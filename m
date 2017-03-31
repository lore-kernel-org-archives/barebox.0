Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ctqbT-0008Fr-RF
 for barebox@lists.infradead.org; Fri, 31 Mar 2017 07:04:19 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 31 Mar 2017 09:03:18 +0200
Message-Id: <20170331070346.26878-15-s.hauer@pengutronix.de>
In-Reply-To: <20170331070346.26878-1-s.hauer@pengutronix.de>
References: <20170331070346.26878-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 14/42] state: replace len_hint logic
To: Barebox List <barebox@lists.infradead.org>

The len_hint mechanism is rather hard to understand as it's not clear
from where to where the hint is passed and also it's not clear what
happens if the hint is empty or wrong.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/state/backend_bucket_circular.c |  4 ++--
 common/state/backend_bucket_direct.c   | 11 +++--------
 common/state/backend_format_dtb.c      |  7 +++++--
 common/state/backend_format_raw.c      |  5 ++++-
 common/state/backend_storage.c         |  9 ++++++---
 common/state/state.h                   |  2 +-
 6 files changed, 21 insertions(+), 17 deletions(-)

diff --git a/common/state/backend_bucket_circular.c b/common/state/backend_bucket_circular.c
index 8eae86694a..0b8286f9cc 100644
--- a/common/state/backend_bucket_circular.c
+++ b/common/state/backend_bucket_circular.c
@@ -227,7 +227,7 @@ static int state_mtd_peb_erase(struct state_backend_storage_bucket_circular *cir
 
 static int state_backend_bucket_circular_read(struct state_backend_storage_bucket *bucket,
 					      uint8_t ** buf_out,
-					      ssize_t * len_hint)
+					      ssize_t * len_out)
 {
 	struct state_backend_storage_bucket_circular *circ =
 	    get_bucket_circular(bucket);
@@ -282,7 +282,7 @@ static int state_backend_bucket_circular_read(struct state_backend_storage_bucke
 	}
 
 	*buf_out = buf;
-	*len_hint = read_len - sizeof(struct state_backend_storage_bucket_circular_meta);
+	*len_out = read_len - sizeof(struct state_backend_storage_bucket_circular_meta);
 
 	return ret;
 }
diff --git a/common/state/backend_bucket_direct.c b/common/state/backend_bucket_direct.c
index 5225433ec5..06a5433c45 100644
--- a/common/state/backend_bucket_direct.c
+++ b/common/state/backend_bucket_direct.c
@@ -47,7 +47,7 @@ static inline struct state_backend_storage_bucket_direct
 
 static int state_backend_bucket_direct_read(struct state_backend_storage_bucket
 					    *bucket, uint8_t ** buf_out,
-					    ssize_t * len_hint)
+					    ssize_t * len_out)
 {
 	struct state_backend_storage_bucket_direct *direct =
 	    get_bucket_direct(bucket);
@@ -69,18 +69,13 @@ static int state_backend_bucket_direct_read(struct state_backend_storage_bucket
 	if (meta.magic == direct_magic) {
 		read_len = meta.written_length;
 	} else {
-		if (*len_hint)
-			read_len = *len_hint;
-		else
-			read_len = direct->max_size;
+		read_len = direct->max_size;
 		ret = lseek(direct->fd, direct->offset, SEEK_SET);
 		if (ret < 0) {
 			dev_err(direct->dev, "Failed to seek file, %d\n", ret);
 			return ret;
 		}
 	}
-	if (direct->max_size)
-		read_len = min(read_len, direct->max_size);
 
 	buf = xmalloc(read_len);
 	if (!buf)
@@ -94,7 +89,7 @@ static int state_backend_bucket_direct_read(struct state_backend_storage_bucket
 	}
 
 	*buf_out = buf;
-	*len_hint = read_len;
+	*len_out = read_len;
 
 	return 0;
 }
diff --git a/common/state/backend_format_dtb.c b/common/state/backend_format_dtb.c
index dc19c888e5..abf8921dc4 100644
--- a/common/state/backend_format_dtb.c
+++ b/common/state/backend_format_dtb.c
@@ -40,12 +40,13 @@ static inline struct state_backend_format_dtb *get_format_dtb(struct
 
 static int state_backend_format_dtb_verify(struct state_backend_format *format,
 					   uint32_t magic, const uint8_t * buf,
-					   ssize_t len)
+					   ssize_t *lenp)
 {
 	struct state_backend_format_dtb *fdtb = get_format_dtb(format);
 	struct device_node *root;
 	struct fdt_header *fdt = (struct fdt_header *)buf;
 	size_t dtb_len = fdt32_to_cpu(fdt->totalsize);
+	size_t len = *lenp;
 
 	if (dtb_len > len) {
 		dev_err(fdtb->dev, "Error, stored DTB length (%d) longer than read buffer (%d)\n",
@@ -67,6 +68,8 @@ static int state_backend_format_dtb_verify(struct state_backend_format *format,
 
 	fdtb->root = root;
 
+	*lenp = be32_to_cpu(fdt->totalsize);
+
 	return 0;
 }
 
@@ -78,7 +81,7 @@ static int state_backend_format_dtb_unpack(struct state_backend_format *format,
 	int ret;
 
 	if (!fdtb->root) {
-		state_backend_format_dtb_verify(format, 0, buf, len);
+		state_backend_format_dtb_verify(format, 0, buf, &len);
 	}
 
 	ret = state_from_node(state, fdtb->root, 0);
diff --git a/common/state/backend_format_raw.c b/common/state/backend_format_raw.c
index e028ea616c..3c8956f8ef 100644
--- a/common/state/backend_format_raw.c
+++ b/common/state/backend_format_raw.c
@@ -55,13 +55,14 @@ static inline struct state_backend_format_raw *get_format_raw(
 
 static int backend_format_raw_verify(struct state_backend_format *format,
 				     uint32_t magic, const uint8_t * buf,
-				     ssize_t len)
+				     ssize_t *lenp)
 {
 	uint32_t crc;
 	struct backend_raw_header *header;
 	int d_len = 0;
 	int ret;
 	const uint8_t *data;
+	ssize_t len = *lenp;
 	struct state_backend_format_raw *backend_raw = get_format_raw(format);
 	ssize_t complete_len;
 
@@ -105,6 +106,8 @@ static int backend_format_raw_verify(struct state_backend_format *format,
 		return -EINVAL;
 	}
 
+	*lenp = header->data_len + sizeof(*header);
+
 	if (backend_raw->digest) {
 		struct digest *d = backend_raw->digest;
 		const void *hmac = data + header->data_len;
diff --git a/common/state/backend_storage.c b/common/state/backend_storage.c
index 52f4aedee7..f1b3f5a6b2 100644
--- a/common/state/backend_storage.c
+++ b/common/state/backend_storage.c
@@ -111,15 +111,18 @@ int state_storage_read(struct state_backend_storage *storage,
 	int ret;
 
 	list_for_each_entry(bucket, &storage->buckets, bucket_list) {
-		*len = 0;
-
 		ret = bucket->read(bucket, buf, len);
 		if (ret) {
 			dev_warn(storage->dev, "Failed to read from state backend bucket, trying next, %d\n",
 				 ret);
 			continue;
 		}
-		ret = format->verify(format, magic, *buf, *len);
+
+		/*
+		 * Verify the buffer crcs. The buffer length is passed in the len argument,
+		 * .verify overwrites it with the length actually used.
+		 */
+		ret = format->verify(format, magic, *buf, len);
 		if (!ret) {
 			goto found;
 		}
diff --git a/common/state/state.h b/common/state/state.h
index 6f5de31dff..0b1a7e5ec2 100644
--- a/common/state/state.h
+++ b/common/state/state.h
@@ -46,7 +46,7 @@ struct state_backend_storage_bucket {
  */
 struct state_backend_format {
 	int (*verify) (struct state_backend_format * format, uint32_t magic,
-		       const uint8_t * buf, ssize_t len);
+		       const uint8_t * buf, ssize_t *lenp);
 	int (*pack) (struct state_backend_format * format, struct state * state,
 		     uint8_t ** buf, ssize_t * len);
 	int (*unpack) (struct state_backend_format * format,
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
