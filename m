Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YxDBY-0006GY-Q9
 for barebox@lists.infradead.org; Tue, 26 May 2015 11:38:21 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Tue, 26 May 2015 13:37:49 +0200
Message-Id: <1432640273-3895-6-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 5/9] state: backend_raw: properly align write and erase size
To: barebox@lists.infradead.org

This patch makes it easier to share the code with linux, on Linux the ease and
write size have to be aligned. Use stride (which is already aligned to erase
block size) during erase, align size_full to writesize and use it while
writing.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 common/state.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/common/state.c b/common/state.c
index 4dae3409049a..7e5a31ae00a5 100644
--- a/common/state.c
+++ b/common/state.c
@@ -1150,7 +1150,7 @@ static int backend_raw_write_one(struct state_backend_raw *backend_raw,
 		return ret;
 
 	if (backend_raw->need_erase) {
-		ret = erase(fd, backend_raw->size_full, offset);
+		ret = erase(fd, backend_raw->stride, offset);
 		if (ret)
 			return ret;
 	}
@@ -1167,14 +1167,12 @@ static int state_backend_raw_save(struct state_backend *backend,
 {
 	struct state_backend_raw *backend_raw = container_of(backend,
 			struct state_backend_raw, backend);
-	int ret = 0, size, fd, i;
+	int ret = 0, fd, i;
 	void *buf, *data;
 	struct backend_raw_header *header;
 	struct state_variable *sv;
 
-	size = backend_raw->size_data + sizeof(struct backend_raw_header);
-
-	buf = xzalloc(size);
+	buf = xzalloc(backend_raw->size_full);
 
 	header = buf;
 	data = buf + sizeof(*header);
@@ -1198,14 +1196,14 @@ static int state_backend_raw_save(struct state_backend *backend,
 			continue;
 
 		ret = backend_raw_write_one(backend_raw, state, fd,
-					    i, buf, size);
+					    i, buf, backend_raw->size_full);
 		if (ret)
 			goto out_close;
 
 	}
 
 	ret = backend_raw_write_one(backend_raw, state, fd,
-				    backend_raw->num_copy_read, buf, size);
+				    backend_raw->num_copy_read, buf, backend_raw->size_full);
 	if (ret)
 		goto out_close;
 
@@ -1277,6 +1275,8 @@ int state_backend_raw_file(struct state *state, const char *of_path,
 	ret = mtd_get_meminfo(backend->path, &meminfo);
 	if (!ret && !(meminfo.flags & MTD_NO_ERASE)) {
 		backend_raw->need_erase = true;
+		backend_raw->size_full = ALIGN(backend_raw->size_full,
+					       meminfo.writesize);
 		backend_raw->stride = ALIGN(backend_raw->size_full,
 					    meminfo.erasesize);
 		dev_dbg(&state->dev, "is a mtd, adjust stepsize to %ld\n",
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
