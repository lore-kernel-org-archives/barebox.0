Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bkmse-0005rw-9N
 for barebox@lists.infradead.org; Fri, 16 Sep 2016 06:44:13 +0000
From: Michael Olbrich <m.olbrich@pengutronix.de>
Date: Fri, 16 Sep 2016 08:43:38 +0200
Message-Id: <1474008220-7601-1-git-send-email-m.olbrich@pengutronix.de>
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
Subject: [PATCH v2 1/3] state: copy backend of_path string
To: barebox@lists.infradead.org
Cc: Michael Olbrich <m.olbrich@pengutronix.de>

Caching pointers to device tree nodes or names is not save. The barebox
internal device tree may be changed by loading a new device tree or through
fixup handlers. As a result, the string may be deleted.
Use local copies of the full path instead.

Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
---
Changes since v1:
- First patch split into two patches

 common/state/backend.c | 3 ++-
 common/state/state.h   | 2 +-
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/common/state/backend.c b/common/state/backend.c
index 2f2e6dfd32d1..5235bb0283dd 100644
--- a/common/state/backend.c
+++ b/common/state/backend.c
@@ -164,7 +164,7 @@ int state_backend_init(struct state_backend *backend, struct device_d *dev,
 	if (ret)
 		goto out_free_format;
 
-	backend->of_path = of_path;
+	backend->of_path = xstrdup(of_path);
 
 	return 0;
 
@@ -185,4 +185,5 @@ void state_backend_free(struct state_backend *backend)
 	state_storage_free(&backend->storage);
 	if (backend->format)
 		state_format_free(backend->format);
+	free(backend->of_path);
 }
diff --git a/common/state/state.h b/common/state/state.h
index 32146ca1bbc7..f930d06195b2 100644
--- a/common/state/state.h
+++ b/common/state/state.h
@@ -87,7 +87,7 @@ struct state_backend_storage {
 struct state_backend {
 	struct state_backend_format *format;
 	struct state_backend_storage storage;
-	const char *of_path;
+	char *of_path;
 };
 
 struct state {
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
