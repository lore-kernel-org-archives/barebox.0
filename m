Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YxDBY-0006GZ-Q6
 for barebox@lists.infradead.org; Tue, 26 May 2015 11:38:17 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Tue, 26 May 2015 13:37:46 +0200
Message-Id: <1432640273-3895-3-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 2/9] state: mtd_get_meminfo: make usage of mtd's meminfo
 compatible to linux
To: barebox@lists.infradead.org

This patch makes it possible to share the code with linux.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 common/state.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/state.c b/common/state.c
index c13f7a00c98c..82a21e912206 100644
--- a/common/state.c
+++ b/common/state.c
@@ -1019,7 +1019,7 @@ int state_backend_dtb_file(struct state *state, const char *of_path, const char
 	state->backend = backend;
 
 	ret = mtd_get_meminfo(backend->path, &meminfo);
-	if (!ret && !(meminfo.mtd->flags & MTD_NO_ERASE))
+	if (!ret && !(meminfo.flags & MTD_NO_ERASE))
 		backend_dtb->need_erase = true;
 
 	return 0;
@@ -1268,7 +1268,7 @@ int state_backend_raw_file(struct state *state, const char *of_path,
 	state->backend = backend;
 
 	ret = mtd_get_meminfo(backend->path, &meminfo);
-	if (!ret && !(meminfo.mtd->flags & MTD_NO_ERASE)) {
+	if (!ret && !(meminfo.flags & MTD_NO_ERASE)) {
 		backend_raw->need_erase = true;
 		backend_raw->step = ALIGN(backend_raw->size_full,
 					  meminfo.erasesize);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
