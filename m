Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YxDBY-0006Gc-Q3
 for barebox@lists.infradead.org; Tue, 26 May 2015 11:38:22 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Tue, 26 May 2015 13:37:51 +0200
Message-Id: <1432640273-3895-8-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 7/9] state: backend_raw: rename backend_raw_write_one() ->
 backend_raw_save_one()
To: barebox@lists.infradead.org

Use a consistent naming scheme: backend_raw_save_one() is called from
backend_raw_save().

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 common/state.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/common/state.c b/common/state.c
index 749c8e906851..8f6d14c98255 100644
--- a/common/state.c
+++ b/common/state.c
@@ -1136,7 +1136,7 @@ static int state_backend_raw_load(struct state_backend *backend,
 	return ret;
 }
 
-static int backend_raw_write_one(struct state_backend_raw *backend_raw,
+static int backend_raw_save_one(struct state_backend_raw *backend_raw,
 		struct state *state, int fd, int num, void *buf, size_t size)
 {
 	int ret;
@@ -1195,15 +1195,15 @@ static int state_backend_raw_save(struct state_backend *backend,
 		if (i == backend_raw->num_copy_read)
 			continue;
 
-		ret = backend_raw_write_one(backend_raw, state, fd,
-					    i, buf, backend_raw->size_full);
+		ret = backend_raw_save_one(backend_raw, state, fd,
+					   i, buf, backend_raw->size_full);
 		if (ret)
 			goto out_close;
 
 	}
 
-	ret = backend_raw_write_one(backend_raw, state, fd,
-				    backend_raw->num_copy_read, buf, backend_raw->size_full);
+	ret = backend_raw_save_one(backend_raw, state, fd,
+				   backend_raw->num_copy_read, buf, backend_raw->size_full);
 	if (ret)
 		goto out_close;
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
