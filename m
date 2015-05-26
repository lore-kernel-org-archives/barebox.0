Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YxDBY-0006Gd-Q7
 for barebox@lists.infradead.org; Tue, 26 May 2015 11:38:17 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Tue, 26 May 2015 13:37:47 +0200
Message-Id: <1432640273-3895-4-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 3/9] state: backend_raw: remove hard coded limit of two copies
To: barebox@lists.infradead.org

Although there is the define RAW_BACKEND_COPIES, the state_backend_raw_save()
function silently assumes exactly two copies. This patch removes that assumtion
by looping over all copies, but saving the one we're read from at the end.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 common/state.c | 17 ++++++++++++-----
 1 file changed, 12 insertions(+), 5 deletions(-)

diff --git a/common/state.c b/common/state.c
index 82a21e912206..79e7f4cc6849 100644
--- a/common/state.c
+++ b/common/state.c
@@ -1167,7 +1167,7 @@ static int state_backend_raw_save(struct state_backend *backend,
 {
 	struct state_backend_raw *backend_raw = container_of(backend,
 			struct state_backend_raw, backend);
-	int ret = 0, size, fd;
+	int ret = 0, size, fd, i;
 	void *buf, *data;
 	struct backend_raw_header *header;
 	struct state_variable *sv;
@@ -1192,10 +1192,17 @@ static int state_backend_raw_save(struct state_backend *backend,
 	if (fd < 0)
 		goto out_free;
 
-	ret = backend_raw_write_one(backend_raw, state, fd,
-				    !backend_raw->num_copy_read, buf, size);
-	if (ret)
-		goto out_close;
+	/* save other slots first */
+	for (i = 0; i < RAW_BACKEND_COPIES; i++) {
+		if (i == backend_raw->num_copy_read)
+			continue;
+
+		ret = backend_raw_write_one(backend_raw, state, fd,
+					    i, buf, size);
+		if (ret)
+			goto out_close;
+
+	}
 
 	ret = backend_raw_write_one(backend_raw, state, fd,
 				    backend_raw->num_copy_read, buf, size);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
