Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YxDBY-0006Ge-Pq
 for barebox@lists.infradead.org; Tue, 26 May 2015 11:38:22 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Tue, 26 May 2015 13:37:48 +0200
Message-Id: <1432640273-3895-5-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1432640273-3895-1-git-send-email-mkl@pengutronix.de>
References: <1432640273-3895-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 4/9] state: backend_raw: rename struct state_backend_raw::step
 -> stride
To: barebox@lists.infradead.org

This patch renames the member "step" of the struct state_backend_raw to
"stride" and tries to clarifies its meaning.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 common/state.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/common/state.c b/common/state.c
index 79e7f4cc6849..4dae3409049a 100644
--- a/common/state.c
+++ b/common/state.c
@@ -1032,7 +1032,7 @@ struct state_backend_raw {
 	struct state_backend backend;
 	unsigned long size_data; /* The raw data size (without magic and crc) */
 	unsigned long size_full;
-	unsigned long step; /* The step in bytes between two copies */
+	unsigned long stride; /* The stride size in bytes of the copies */
 	off_t offset; /* offset in the storage file */
 	size_t size; /* size of the storage area */
 	int num_copy_read; /* The first successfully read copy */
@@ -1120,7 +1120,7 @@ static int state_backend_raw_load(struct state_backend *backend,
 		return fd;
 
 	for (i = 0; i < RAW_BACKEND_COPIES; i++) {
-		off_t offset = backend_raw->offset + i * backend_raw->step;
+		off_t offset = backend_raw->offset + i * backend_raw->stride;
 
 		ret = backend_raw_load_one(backend_raw, state, fd, offset);
 		if (!ret) {
@@ -1140,7 +1140,7 @@ static int backend_raw_write_one(struct state_backend_raw *backend_raw,
 		struct state *state, int fd, int num, void *buf, size_t size)
 {
 	int ret;
-	off_t offset = backend_raw->offset + num * backend_raw->step;
+	off_t offset = backend_raw->offset + num * backend_raw->stride;
 
 	dev_dbg(&state->dev, "%s: 0x%08lx 0x%08zx\n",
 			__func__, offset, size);
@@ -1277,15 +1277,15 @@ int state_backend_raw_file(struct state *state, const char *of_path,
 	ret = mtd_get_meminfo(backend->path, &meminfo);
 	if (!ret && !(meminfo.flags & MTD_NO_ERASE)) {
 		backend_raw->need_erase = true;
-		backend_raw->step = ALIGN(backend_raw->size_full,
-					  meminfo.erasesize);
+		backend_raw->stride = ALIGN(backend_raw->size_full,
+					    meminfo.erasesize);
 		dev_dbg(&state->dev, "is a mtd, adjust stepsize to %ld\n",
-			backend_raw->step);
+			backend_raw->stride);
 	} else {
-		backend_raw->step = backend_raw->size_full;
+		backend_raw->stride = backend_raw->size_full;
 	}
 
-	if (backend_raw->size / backend_raw->step < RAW_BACKEND_COPIES) {
+	if (backend_raw->size / backend_raw->stride < RAW_BACKEND_COPIES) {
 		dev_err(&state->dev, "not enough space for two copies\n");
 		ret = -ENOSPC;
 		goto err;
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
