Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-f41.google.com ([74.125.82.41])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TPSsG-0006WX-0a
 for barebox@lists.infradead.org; Sat, 20 Oct 2012 06:49:33 +0000
Received: by mail-wg0-f41.google.com with SMTP id ds1so512669wgb.0
 for <barebox@lists.infradead.org>; Fri, 19 Oct 2012 23:49:27 -0700 (PDT)
From: Alexander Aring <alex.aring@googlemail.com>
Date: Sat, 20 Oct 2012 08:51:05 +0200
Message-Id: <1350715865-4252-2-git-send-email-alex.aring@gmail.com>
In-Reply-To: <1350715865-4252-1-git-send-email-alex.aring@gmail.com>
References: <1350715865-4252-1-git-send-email-alex.aring@gmail.com>
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
Subject: [PATCH 2/2] progressbar: add TOSTRING macro
To: barebox@lists.infradead.org

Add TOSTRING macro in common.h and use it for
HASH_PER_LINE in printf format string of
function init_progression_bar.

Signed-off-by: Alexander Aring <alex.aring@gmail.com>
---
 include/common.h    | 5 +++++
 lib/show_progress.c | 2 +-
 2 files changed, 6 insertions(+), 1 deletion(-)

diff --git a/include/common.h b/include/common.h
index c1f44b4..ffdfcd9 100644
--- a/include/common.h
+++ b/include/common.h
@@ -256,4 +256,9 @@ static inline void barebox_banner(void) {}
 		(__x < 0) ? -__x : __x;         \
 	})
 
+/* Convert a number define to
+ * const char* with concat */
+#define STRINGIFY(x) #x
+#define TOSTRING(x) STRINGIFY(x)
+
 #endif	/* __COMMON_H_ */
diff --git a/lib/show_progress.c b/lib/show_progress.c
index d958a44..eca7e1e 100644
--- a/lib/show_progress.c
+++ b/lib/show_progress.c
@@ -56,7 +56,7 @@ void init_progression_bar(int max)
 	progress_max = max;
 	spin = 0;
 	if (progress_max)
-		printf("\t[%65s]\r\t[", "");
+		printf("\t[%"TOSTRING(HASHES_PER_LINE)"s]\r\t[", "");
 	else
 		printf("\t");
 }
-- 
1.7.12.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
