Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ctqbS-0008Fh-CS
 for barebox@lists.infradead.org; Fri, 31 Mar 2017 07:04:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 31 Mar 2017 09:03:08 +0200
Message-Id: <20170331070346.26878-5-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/42] state: backend: remove len_hint argument from
 state_storage_read
To: Barebox List <barebox@lists.infradead.org>

The argument is 0 in the only caller, so remove the argument.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/state/backend.c         | 3 +--
 common/state/backend_storage.c | 5 ++---
 common/state/state.h           | 3 +--
 3 files changed, 4 insertions(+), 7 deletions(-)

diff --git a/common/state/backend.c b/common/state/backend.c
index 6b06c845f0..803390e2aa 100644
--- a/common/state/backend.c
+++ b/common/state/backend.c
@@ -70,12 +70,11 @@ int state_load(struct state *state)
 {
 	uint8_t *buf;
 	ssize_t len;
-	ssize_t len_hint = 0;
 	int ret;
 	struct state_backend *backend = &state->backend;
 
 	ret = state_storage_read(&backend->storage, backend->format,
-				 state->magic, &buf, &len, len_hint);
+				 state->magic, &buf, &len);
 	if (ret) {
 		dev_err(&state->dev, "Failed to read state with format %s, %d\n",
 			backend->format->name, ret);
diff --git a/common/state/backend_storage.c b/common/state/backend_storage.c
index d7bd147441..5481f27df9 100644
--- a/common/state/backend_storage.c
+++ b/common/state/backend_storage.c
@@ -129,14 +129,13 @@ int state_storage_restore_consistency(struct state_backend_storage *storage,
  */
 int state_storage_read(struct state_backend_storage *storage,
 		       struct state_backend_format *format,
-		       uint32_t magic, uint8_t ** buf, ssize_t * len,
-		       ssize_t len_hint)
+		       uint32_t magic, uint8_t ** buf, ssize_t * len)
 {
 	struct state_backend_storage_bucket *bucket;
 	int ret;
 
 	list_for_each_entry(bucket, &storage->buckets, bucket_list) {
-		*len = len_hint;
+		*len = 0;
 		ret = bucket_lazy_init(bucket);
 		if (ret) {
 			dev_warn(storage->dev, "Failed to init bucket/read state backend bucket, %d\n",
diff --git a/common/state/state.h b/common/state/state.h
index 0197cb839a..ddf45239eb 100644
--- a/common/state/state.h
+++ b/common/state/state.h
@@ -234,8 +234,7 @@ int state_storage_restore_consistency(struct state_backend_storage
 				      ssize_t len);
 int state_storage_read(struct state_backend_storage *storage,
 		       struct state_backend_format *format,
-		       uint32_t magic, uint8_t **buf, ssize_t *len,
-		       ssize_t len_hint);
+		       uint32_t magic, uint8_t **buf, ssize_t *len);
 
 static inline struct state_uint32 *to_state_uint32(struct state_variable *s)
 {
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
