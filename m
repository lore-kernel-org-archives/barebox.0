Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ctqbh-0005fy-6w
 for barebox@lists.infradead.org; Fri, 31 Mar 2017 07:04:25 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 31 Mar 2017 09:03:42 +0200
Message-Id: <20170331070346.26878-39-s.hauer@pengutronix.de>
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
Subject: [PATCH 38/42] state: Allow to load without authentification
To: Barebox List <barebox@lists.infradead.org>

Sometimes it's useful to be able to load a state even when it
can't be authentificated. Add an option for this.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/state.c                  | 16 ++++++++++++----
 common/state/backend_format_dtb.c |  4 ++--
 common/state/backend_format_raw.c |  6 +++---
 common/state/backend_storage.c    |  6 ++++--
 common/state/state.c              | 14 ++++++++++++--
 common/state/state.h              |  9 +++++++--
 include/state.h                   |  1 +
 7 files changed, 41 insertions(+), 15 deletions(-)

diff --git a/commands/state.c b/commands/state.c
index aded6e71e2..c57a906ff0 100644
--- a/commands/state.c
+++ b/commands/state.c
@@ -23,8 +23,9 @@ static int do_state(int argc, char *argv[])
 	struct state *state = NULL;
 	int do_save = 0, do_load = 0;
 	const char *statename = "state";
+	int no_auth = 0;
 
-	while ((opt = getopt(argc, argv, "sl")) > 0) {
+	while ((opt = getopt(argc, argv, "sln")) > 0) {
 		switch (opt) {
 		case 's':
 			do_save = 1;
@@ -32,6 +33,9 @@ static int do_state(int argc, char *argv[])
 		case 'l':
 			do_load = 1;
 			break;
+		case 'n':
+			no_auth = 1;
+			break;
 		default:
 			return COMMAND_ERROR_USAGE;
 		}
@@ -51,10 +55,14 @@ static int do_state(int argc, char *argv[])
 		return -ENOENT;
 	}
 
-	if (do_load)
-		ret = state_load(state);
-	else if (do_save)
+	if (do_load) {
+		if (no_auth)
+			ret = state_load_no_auth(state);
+		else
+			ret = state_load(state);
+	} else if (do_save) {
 		ret = state_save(state);
+	}
 
 	return ret;
 }
diff --git a/common/state/backend_format_dtb.c b/common/state/backend_format_dtb.c
index d7b01729bc..55fa1fc597 100644
--- a/common/state/backend_format_dtb.c
+++ b/common/state/backend_format_dtb.c
@@ -40,7 +40,7 @@ static inline struct state_backend_format_dtb *get_format_dtb(struct
 
 static int state_backend_format_dtb_verify(struct state_backend_format *format,
 					   uint32_t magic, const void * buf,
-					   ssize_t *lenp)
+					   ssize_t *lenp, enum state_flags flags)
 {
 	struct state_backend_format_dtb *fdtb = get_format_dtb(format);
 	struct device_node *root;
@@ -81,7 +81,7 @@ static int state_backend_format_dtb_unpack(struct state_backend_format *format,
 	int ret;
 
 	if (!fdtb->root) {
-		state_backend_format_dtb_verify(format, 0, buf, &len);
+		state_backend_format_dtb_verify(format, 0, buf, &len, 0);
 	}
 
 	ret = state_from_node(state, fdtb->root, 0);
diff --git a/common/state/backend_format_raw.c b/common/state/backend_format_raw.c
index 43a5523152..232856a209 100644
--- a/common/state/backend_format_raw.c
+++ b/common/state/backend_format_raw.c
@@ -96,7 +96,7 @@ static int backend_raw_digest_init(struct state_backend_format_raw *raw)
 
 static int backend_format_raw_verify(struct state_backend_format *format,
 				     uint32_t magic, const void * buf,
-				     ssize_t *lenp)
+				     ssize_t *lenp, enum state_flags flags)
 {
 	uint32_t crc;
 	struct backend_raw_header *header;
@@ -127,7 +127,7 @@ static int backend_format_raw_verify(struct state_backend_format *format,
 		return -EINVAL;
 	}
 
-	if (backend_raw->algo) {
+	if (backend_raw->algo && !(flags & STATE_FLAG_NO_AUTHENTIFICATION)) {
 		ret = backend_raw_digest_init(backend_raw);
 		if (ret)
 			return ret;
@@ -153,7 +153,7 @@ static int backend_format_raw_verify(struct state_backend_format *format,
 
 	*lenp = header->data_len + sizeof(*header);
 
-	if (backend_raw->algo) {
+	if (backend_raw->algo && !(flags & STATE_FLAG_NO_AUTHENTIFICATION)) {
 		const void *hmac = data + header->data_len;
 
 		/* hmac over header and data */
diff --git a/common/state/backend_storage.c b/common/state/backend_storage.c
index a5688aa424..9ed6ad79ac 100644
--- a/common/state/backend_storage.c
+++ b/common/state/backend_storage.c
@@ -127,6 +127,7 @@ refresh:
  * @param magic state magic value
  * @param buf The newly allocated data area will be stored in this pointer
  * @param len The resulting length of the buffer
+ * @param flags flags controlling how to load state
  * @return 0 on success, -errno otherwise. buf and len will be set to valid
  * values on success.
  *
@@ -137,7 +138,8 @@ refresh:
  */
 int state_storage_read(struct state_backend_storage *storage,
 		       struct state_backend_format *format,
-		       uint32_t magic, void **buf, ssize_t *len)
+		       uint32_t magic, void **buf, ssize_t *len,
+		       enum state_flags flags)
 {
 	struct state_backend_storage_bucket *bucket, *bucket_used = NULL;
 	int ret;
@@ -157,7 +159,7 @@ int state_storage_read(struct state_backend_storage *storage,
 		 * Verify the buffer crcs. The buffer length is passed in the len argument,
 		 * .verify overwrites it with the length actually used.
 		 */
-		ret = format->verify(format, magic, bucket->buf, &bucket->len);
+		ret = format->verify(format, magic, bucket->buf, &bucket->len, flags);
 		if (!ret && !bucket_used)
 			bucket_used = bucket;
 	}
diff --git a/common/state/state.c b/common/state/state.c
index 476e3ee08e..1232ff3207 100644
--- a/common/state/state.c
+++ b/common/state/state.c
@@ -78,14 +78,14 @@ out:
  * we read is checked for integrity by the formatter. After that we unpack the
  * data into our state.
  */
-int state_load(struct state *state)
+static int state_do_load(struct state *state, enum state_flags flags)
 {
 	void *buf;
 	ssize_t len;
 	int ret;
 
 	ret = state_storage_read(&state->storage, state->format,
-				 state->magic, &buf, &len);
+				 state->magic, &buf, &len, flags);
 	if (ret) {
 		dev_err(&state->dev, "Failed to read state with format %s, %d\n",
 			state->format->name, ret);
@@ -106,6 +106,16 @@ out:
 	return ret;
 }
 
+int state_load(struct state *state)
+{
+	return state_do_load(state, 0);
+}
+
+int state_load_no_auth(struct state *state)
+{
+	return state_do_load(state, STATE_FLAG_NO_AUTHENTIFICATION);
+}
+
 static int state_format_init(struct state *state, const char *backend_format,
 			     struct device_node *node, const char *state_name)
 {
diff --git a/common/state/state.h b/common/state/state.h
index a2737abeb6..5e240c4773 100644
--- a/common/state/state.h
+++ b/common/state/state.h
@@ -5,6 +5,10 @@
 struct state;
 struct mtd_info_user;
 
+enum state_flags {
+	STATE_FLAG_NO_AUTHENTIFICATION = (1 << 0),
+};
+
 /**
  * state_backend_storage_bucket - This class describes a single backend storage
  * object copy
@@ -53,7 +57,7 @@ struct state_backend_storage_bucket {
  */
 struct state_backend_format {
 	int (*verify) (struct state_backend_format * format, uint32_t magic,
-		       const void * buf, ssize_t *lenp);
+		       const void * buf, ssize_t *lenp, enum state_flags flags);
 	int (*pack) (struct state_backend_format * format, struct state * state,
 		     void ** buf, ssize_t * len);
 	int (*unpack) (struct state_backend_format * format,
@@ -223,7 +227,8 @@ int state_storage_write(struct state_backend_storage *storage,
 			const void * buf, ssize_t len);
 int state_storage_read(struct state_backend_storage *storage,
 		       struct state_backend_format *format,
-		       uint32_t magic, void **buf, ssize_t *len);
+		       uint32_t magic, void **buf, ssize_t *len,
+		       enum state_flags flags);
 
 static inline struct state_uint32 *to_state_uint32(struct state_variable *s)
 {
diff --git a/include/state.h b/include/state.h
index bc9a574093..63164f92e5 100644
--- a/include/state.h
+++ b/include/state.h
@@ -18,6 +18,7 @@ struct state *state_by_name(const char *name);
 struct state *state_by_node(const struct device_node *node);
 int state_get_name(const struct state *state, char const **name);
 
+int state_load_no_auth(struct state *state);
 int state_load(struct state *state);
 int state_save(struct state *state);
 void state_info(void);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
