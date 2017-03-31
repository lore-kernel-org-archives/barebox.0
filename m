Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ctqbb-0005fm-On
 for barebox@lists.infradead.org; Fri, 31 Mar 2017 07:04:22 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 31 Mar 2017 09:03:19 +0200
Message-Id: <20170331070346.26878-16-s.hauer@pengutronix.de>
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
Subject: [PATCH 15/42] state: Convert all bufs to void *
To: Barebox List <barebox@lists.infradead.org>

A void * is a much better type for a buffer than a u8 * as it
can be casted to any other type implicitly. Convert all buffers
used by the state framework to void *.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/state/backend_bucket_cached.c   |  6 +++---
 common/state/backend_bucket_circular.c | 16 ++++++++--------
 common/state/backend_bucket_direct.c   |  6 +++---
 common/state/backend_format_dtb.c      |  6 +++---
 common/state/backend_format_raw.c      | 10 +++++-----
 common/state/backend_storage.c         |  6 +++---
 common/state/state.c                   |  4 ++--
 common/state/state.h                   | 16 ++++++++--------
 8 files changed, 35 insertions(+), 35 deletions(-)

diff --git a/common/state/backend_bucket_cached.c b/common/state/backend_bucket_cached.c
index 5e7f44c8f8..f8a7785387 100644
--- a/common/state/backend_bucket_cached.c
+++ b/common/state/backend_bucket_cached.c
@@ -20,7 +20,7 @@ struct state_backend_storage_bucket_cache {
 
 	struct state_backend_storage_bucket *raw;
 
-	u8 *data;
+	void *data;
 	ssize_t data_len;
 	bool force_write;
 
@@ -61,7 +61,7 @@ static int state_backend_bucket_cache_fill(
 }
 
 static int state_backend_bucket_cache_read(struct state_backend_storage_bucket *bucket,
-					   uint8_t ** buf_out,
+					   void ** buf_out,
 					   ssize_t * len_hint)
 {
 	struct state_backend_storage_bucket_cache *cache =
@@ -85,7 +85,7 @@ static int state_backend_bucket_cache_read(struct state_backend_storage_bucket *
 }
 
 static int state_backend_bucket_cache_write(struct state_backend_storage_bucket *bucket,
-					    const uint8_t * buf, ssize_t len)
+					    const void * buf, ssize_t len)
 {
 	struct state_backend_storage_bucket_cache *cache =
 			get_bucket_cache(bucket);
diff --git a/common/state/backend_bucket_circular.c b/common/state/backend_bucket_circular.c
index 0b8286f9cc..53ee0c3f57 100644
--- a/common/state/backend_bucket_circular.c
+++ b/common/state/backend_bucket_circular.c
@@ -65,7 +65,7 @@ static inline struct state_backend_storage_bucket_circular
 
 #ifdef __BAREBOX__
 static int state_mtd_peb_read(struct state_backend_storage_bucket_circular *circ,
-			      char *buf, int offset, int len)
+			      void *buf, int offset, int len)
 {
 	int ret;
 
@@ -102,7 +102,7 @@ static int state_mtd_peb_read(struct state_backend_storage_bucket_circular *circ
 }
 
 static int state_mtd_peb_write(struct state_backend_storage_bucket_circular *circ,
-			       const char *buf, int offset, int len)
+			       const void *buf, int offset, int len)
 {
 	int ret;
 
@@ -133,7 +133,7 @@ static int state_mtd_peb_erase(struct state_backend_storage_bucket_circular *cir
 }
 #else
 static int state_mtd_peb_read(struct state_backend_storage_bucket_circular *circ,
-			      char *buf, int suboffset, int len)
+			      void *buf, int suboffset, int len)
 {
 	int ret;
 	off_t offset = suboffset;
@@ -185,7 +185,7 @@ static int state_mtd_peb_read(struct state_backend_storage_bucket_circular *circ
 }
 
 static int state_mtd_peb_write(struct state_backend_storage_bucket_circular *circ,
-			       const char *buf, int suboffset, int len)
+			       const void *buf, int suboffset, int len)
 {
 	int ret;
 	off_t offset = suboffset;
@@ -226,14 +226,14 @@ static int state_mtd_peb_erase(struct state_backend_storage_bucket_circular *cir
 #endif
 
 static int state_backend_bucket_circular_read(struct state_backend_storage_bucket *bucket,
-					      uint8_t ** buf_out,
+					      void ** buf_out,
 					      ssize_t * len_out)
 {
 	struct state_backend_storage_bucket_circular *circ =
 	    get_bucket_circular(bucket);
 	ssize_t read_len;
 	off_t offset;
-	uint8_t *buf;
+	void *buf;
 	int ret;
 
 	/* Storage is empty */
@@ -288,7 +288,7 @@ static int state_backend_bucket_circular_read(struct state_backend_storage_bucke
 }
 
 static int state_backend_bucket_circular_write(struct state_backend_storage_bucket *bucket,
-					       const uint8_t * buf,
+					       const void * buf,
 					       ssize_t len)
 {
 	struct state_backend_storage_bucket_circular *circ =
@@ -297,7 +297,7 @@ static int state_backend_bucket_circular_write(struct state_backend_storage_buck
 	struct state_backend_storage_bucket_circular_meta *meta;
 	uint32_t written_length = ALIGN(len + sizeof(*meta), circ->writesize);
 	int ret;
-	uint8_t *write_buf;
+	void *write_buf;
 
 	if (written_length > circ->max_size) {
 		dev_err(circ->dev, "Error, state data too big to be written, to write: %zd, writesize: %zd, length: %zd, available: %zd\n",
diff --git a/common/state/backend_bucket_direct.c b/common/state/backend_bucket_direct.c
index 06a5433c45..246cb499c4 100644
--- a/common/state/backend_bucket_direct.c
+++ b/common/state/backend_bucket_direct.c
@@ -46,14 +46,14 @@ static inline struct state_backend_storage_bucket_direct
 }
 
 static int state_backend_bucket_direct_read(struct state_backend_storage_bucket
-					    *bucket, uint8_t ** buf_out,
+					    *bucket, void ** buf_out,
 					    ssize_t * len_out)
 {
 	struct state_backend_storage_bucket_direct *direct =
 	    get_bucket_direct(bucket);
 	struct state_backend_storage_bucket_direct_meta meta;
 	ssize_t read_len;
-	uint8_t *buf;
+	void *buf;
 	int ret;
 
 	ret = lseek(direct->fd, direct->offset, SEEK_SET);
@@ -95,7 +95,7 @@ static int state_backend_bucket_direct_read(struct state_backend_storage_bucket
 }
 
 static int state_backend_bucket_direct_write(struct state_backend_storage_bucket
-					     *bucket, const uint8_t * buf,
+					     *bucket, const void * buf,
 					     ssize_t len)
 {
 	struct state_backend_storage_bucket_direct *direct =
diff --git a/common/state/backend_format_dtb.c b/common/state/backend_format_dtb.c
index abf8921dc4..d7b01729bc 100644
--- a/common/state/backend_format_dtb.c
+++ b/common/state/backend_format_dtb.c
@@ -39,7 +39,7 @@ static inline struct state_backend_format_dtb *get_format_dtb(struct
 }
 
 static int state_backend_format_dtb_verify(struct state_backend_format *format,
-					   uint32_t magic, const uint8_t * buf,
+					   uint32_t magic, const void * buf,
 					   ssize_t *lenp)
 {
 	struct state_backend_format_dtb *fdtb = get_format_dtb(format);
@@ -75,7 +75,7 @@ static int state_backend_format_dtb_verify(struct state_backend_format *format,
 
 static int state_backend_format_dtb_unpack(struct state_backend_format *format,
 					   struct state *state,
-					   const uint8_t * buf, ssize_t len)
+					   const void * buf, ssize_t len)
 {
 	struct state_backend_format_dtb *fdtb = get_format_dtb(format);
 	int ret;
@@ -92,7 +92,7 @@ static int state_backend_format_dtb_unpack(struct state_backend_format *format,
 }
 
 static int state_backend_format_dtb_pack(struct state_backend_format *format,
-					 struct state *state, uint8_t ** buf,
+					 struct state *state, void ** buf,
 					 ssize_t * len)
 {
 	struct state_backend_format_dtb *fdtb = get_format_dtb(format);
diff --git a/common/state/backend_format_raw.c b/common/state/backend_format_raw.c
index 3c8956f8ef..a425b636d0 100644
--- a/common/state/backend_format_raw.c
+++ b/common/state/backend_format_raw.c
@@ -54,14 +54,14 @@ static inline struct state_backend_format_raw *get_format_raw(
 }
 
 static int backend_format_raw_verify(struct state_backend_format *format,
-				     uint32_t magic, const uint8_t * buf,
+				     uint32_t magic, const void * buf,
 				     ssize_t *lenp)
 {
 	uint32_t crc;
 	struct backend_raw_header *header;
 	int d_len = 0;
 	int ret;
-	const uint8_t *data;
+	const void *data;
 	ssize_t len = *lenp;
 	struct state_backend_format_raw *backend_raw = get_format_raw(format);
 	ssize_t complete_len;
@@ -139,12 +139,12 @@ static int backend_format_raw_verify(struct state_backend_format *format,
 }
 
 static int backend_format_raw_unpack(struct state_backend_format *format,
-				     struct state *state, const uint8_t * buf,
+				     struct state *state, const void * buf,
 				     ssize_t len)
 {
 	struct state_variable *sv;
 	const struct backend_raw_header *header;
-	const uint8_t *data;
+	const void *data;
 	struct state_backend_format_raw *backend_raw = get_format_raw(format);
 
 	header = (const struct backend_raw_header *)buf;
@@ -163,7 +163,7 @@ static int backend_format_raw_unpack(struct state_backend_format *format,
 }
 
 static int backend_format_raw_pack(struct state_backend_format *format,
-				   struct state *state, uint8_t ** buf_out,
+				   struct state *state, void ** buf_out,
 				   ssize_t * len_out)
 {
 	struct state_backend_format_raw *backend_raw = get_format_raw(format);
diff --git a/common/state/backend_storage.c b/common/state/backend_storage.c
index f1b3f5a6b2..6ec58a0c97 100644
--- a/common/state/backend_storage.c
+++ b/common/state/backend_storage.c
@@ -42,7 +42,7 @@ const unsigned int min_copies_written = 1;
  * error.
  */
 int state_storage_write(struct state_backend_storage *storage,
-		        const uint8_t * buf, ssize_t len)
+		        const void * buf, ssize_t len)
 {
 	struct state_backend_storage_bucket *bucket;
 	int ret;
@@ -82,7 +82,7 @@ int state_storage_write(struct state_backend_storage *storage,
  * low, can read their own copy first and compare it.
  */
 int state_storage_restore_consistency(struct state_backend_storage *storage,
-				      const uint8_t * buf, ssize_t len)
+				      const void * buf, ssize_t len)
 {
 	return state_storage_write(storage, buf, len);
 }
@@ -105,7 +105,7 @@ int state_storage_restore_consistency(struct state_backend_storage *storage,
  */
 int state_storage_read(struct state_backend_storage *storage,
 		       struct state_backend_format *format,
-		       uint32_t magic, uint8_t ** buf, ssize_t * len)
+		       uint32_t magic, void **buf, ssize_t *len)
 {
 	struct state_backend_storage_bucket *bucket;
 	int ret;
diff --git a/common/state/state.c b/common/state/state.c
index 8d2dca2523..476e3ee08e 100644
--- a/common/state/state.c
+++ b/common/state/state.c
@@ -41,7 +41,7 @@ static LIST_HEAD(state_list);
  */
 int state_save(struct state *state)
 {
-	uint8_t *buf;
+	void *buf;
 	ssize_t len;
 	int ret;
 
@@ -80,7 +80,7 @@ out:
  */
 int state_load(struct state *state)
 {
-	uint8_t *buf;
+	void *buf;
 	ssize_t len;
 	int ret;
 
diff --git a/common/state/state.h b/common/state/state.h
index 0b1a7e5ec2..52d332e27d 100644
--- a/common/state/state.h
+++ b/common/state/state.h
@@ -21,9 +21,9 @@ struct mtd_info_user;
  */
 struct state_backend_storage_bucket {
 	int (*write) (struct state_backend_storage_bucket * bucket,
-		      const uint8_t * buf, ssize_t len);
+		      const void * buf, ssize_t len);
 	int (*read) (struct state_backend_storage_bucket * bucket,
-		     uint8_t ** buf, ssize_t * len_hint);
+		     void ** buf, ssize_t * len_hint);
 	void (*free) (struct state_backend_storage_bucket * bucket);
 
 	struct list_head bucket_list;
@@ -46,11 +46,11 @@ struct state_backend_storage_bucket {
  */
 struct state_backend_format {
 	int (*verify) (struct state_backend_format * format, uint32_t magic,
-		       const uint8_t * buf, ssize_t *lenp);
+		       const void * buf, ssize_t *lenp);
 	int (*pack) (struct state_backend_format * format, struct state * state,
-		     uint8_t ** buf, ssize_t * len);
+		     void ** buf, ssize_t * len);
 	int (*unpack) (struct state_backend_format * format,
-		       struct state * state, const uint8_t * buf, ssize_t len);
+		       struct state * state, const void * buf, ssize_t len);
 	void (*free) (struct state_backend_format * format);
 	const char *name;
 };
@@ -207,13 +207,13 @@ int state_backend_bucket_direct_create(struct device_d *dev, const char *path,
 				       struct state_backend_storage_bucket **bucket,
 				       off_t offset, ssize_t max_size);
 int state_storage_write(struct state_backend_storage *storage,
-			const uint8_t * buf, ssize_t len);
+			const void * buf, ssize_t len);
 int state_storage_restore_consistency(struct state_backend_storage
-				      *storage, const uint8_t * buf,
+				      *storage, const void * buf,
 				      ssize_t len);
 int state_storage_read(struct state_backend_storage *storage,
 		       struct state_backend_format *format,
-		       uint32_t magic, uint8_t **buf, ssize_t *len);
+		       uint32_t magic, void **buf, ssize_t *len);
 
 static inline struct state_uint32 *to_state_uint32(struct state_variable *s)
 {
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
