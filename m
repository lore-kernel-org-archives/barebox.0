Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RpdyF-00045v-Iy
 for barebox@lists.infradead.org; Tue, 24 Jan 2012 10:51:24 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Tue, 24 Jan 2012 11:51:03 +0100
Message-Id: <1327402267-22385-3-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1327402267-22385-1-git-send-email-mkl@pengutronix.de>
References: <1327402267-22385-1-git-send-email-mkl@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/6] show_progress: fix progress bar for files > 32 MiB
To: barebox@lists.infradead.org

The next limit with the current code will probably 2GiB.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 lib/show_progress.c |    8 ++++++--
 1 files changed, 6 insertions(+), 2 deletions(-)

diff --git a/lib/show_progress.c b/lib/show_progress.c
index 333f498..39808d2 100644
--- a/lib/show_progress.c
+++ b/lib/show_progress.c
@@ -22,6 +22,7 @@
 
 #include <common.h>
 #include <progress.h>
+#include <asm-generic/div64.h>
 
 #define HASHES_PER_LINE	65
 
@@ -38,8 +39,11 @@ void show_progress(int now)
 		return;
 	}
 
-	if (progress_max)
-		now = now * HASHES_PER_LINE / progress_max;
+	if (progress_max) {
+		uint64_t tmp = (int64_t)now * HASHES_PER_LINE;
+		do_div(tmp, progress_max);
+		now = tmp;
+	}
 
 	while (printed < now) {
 		if (!(printed % HASHES_PER_LINE) && printed)
-- 
1.7.4.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
