Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lC6Y0-0007LP-OT
 for barebox@lists.infradead.org; Tue, 16 Feb 2021 20:02:15 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 16 Feb 2021 21:02:08 +0100
Message-Id: <20210216200208.5275-9-a.fatoum@pengutronix.de>
In-Reply-To: <20210216200208.5275-1-a.fatoum@pengutronix.de>
References: <20210216200208.5275-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 8/8] copy_file: fix progress bar for files larger than 2G
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Files larger than 2G cause the benign bug, that the progress bar is no
longer accurate. Use loff_t to fix this.

Note that printed % HASHES_PER_LINE in show_progress implies a 64-bit
division. A previous commit changed the constant divisor to a power of
two, so a division shouldn't be generated. The original multiplication
and modulo operations are left as is for clarity.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/progress.h  |  6 ++++--
 lib/libfile.c       |  2 +-
 lib/show_progress.c | 15 +++++++--------
 3 files changed, 12 insertions(+), 11 deletions(-)

diff --git a/include/progress.h b/include/progress.h
index 75aa9c4f8616..50b15fb12b4c 100644
--- a/include/progress.h
+++ b/include/progress.h
@@ -2,15 +2,17 @@
 #ifndef __PROGRSS_H
 #define __PROGRSS_H
 
+#include <linux/types.h>
+
 /* Initialize a progress bar. If max > 0 a one line progress
  * bar is printed where 'max' corresponds to 100%. If max == 0
  * a multi line progress bar is printed.
  */
-void init_progression_bar(int max);
+void init_progression_bar(loff_t max);
 
 /* update a progress bar to a new value. If now < 0 then a
  * spinner is printed.
  */
-void show_progress(int now);
+void show_progress(loff_t now);
 
 #endif /*  __PROGRSS_H */
diff --git a/lib/libfile.c b/lib/libfile.c
index 20bb689a7969..4ab8db11ad56 100644
--- a/lib/libfile.c
+++ b/lib/libfile.c
@@ -332,7 +332,7 @@ int copy_file(const char *src, const char *dst, int verbose)
 	int r, s;
 	int ret = 1, err1 = 0;
 	int mode;
-	int total = 0;
+	loff_t total = 0;
 	struct stat srcstat, dststat;
 
 	rw_buf = xmalloc(RW_BUF_SIZE);
diff --git a/lib/show_progress.c b/lib/show_progress.c
index d0d7b31303dc..1be06ea7806e 100644
--- a/lib/show_progress.c
+++ b/lib/show_progress.c
@@ -21,11 +21,11 @@
 
 #define HASHES_PER_LINE	64
 
-static int printed;
-static int progress_max;
-static int spin;
+static loff_t printed;
+static loff_t progress_max;
+static unsigned spin;
 
-void show_progress(int now)
+void show_progress(loff_t now)
 {
 	char spinchr[] = "\\|/-";
 
@@ -35,9 +35,8 @@ void show_progress(int now)
 	}
 
 	if (progress_max && progress_max != FILESIZE_MAX) {
-		uint64_t tmp = (int64_t)now * HASHES_PER_LINE;
-		do_div(tmp, progress_max);
-		now = tmp;
+		uint64_t tmp = now * HASHES_PER_LINE;
+		now = div64_u64(tmp, progress_max);
 	}
 
 	while (printed < now) {
@@ -48,7 +47,7 @@ void show_progress(int now)
 	}
 }
 
-void init_progression_bar(int max)
+void init_progression_bar(loff_t max)
 {
 	printed = 0;
 	progress_max = max;
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
