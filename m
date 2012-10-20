Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-f177.google.com ([74.125.82.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TPWzZ-0006Ak-Si
 for barebox@lists.infradead.org; Sat, 20 Oct 2012 11:13:22 +0000
Received: by mail-we0-f177.google.com with SMTP id u50so657500wey.36
 for <barebox@lists.infradead.org>; Sat, 20 Oct 2012 04:13:20 -0700 (PDT)
From: Alexander Aring <alex.aring@googlemail.com>
Date: Sat, 20 Oct 2012 13:15:04 +0200
Message-Id: <1350731704-17204-1-git-send-email-alex.aring@gmail.com>
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
Subject: [PATCH] progressbar: use __stringify in format string
To: barebox@lists.infradead.org

Use stringify in format string for HASH_PER_LINE.

Signed-off-by: Alexander Aring <alex.aring@gmail.com>
---
 lib/show_progress.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/lib/show_progress.c b/lib/show_progress.c
index d958a44..a43b4c9 100644
--- a/lib/show_progress.c
+++ b/lib/show_progress.c
@@ -20,6 +20,7 @@
 #include <common.h>
 #include <progress.h>
 #include <asm-generic/div64.h>
+#include <linux/stringify.h>
 
 #define HASHES_PER_LINE	65
 
@@ -56,7 +57,9 @@ void init_progression_bar(int max)
 	progress_max = max;
 	spin = 0;
 	if (progress_max)
-		printf("\t[%65s]\r\t[", "");
+		printf("\t[%"
+				__stringify(HASHES_PER_LINE)
+				"s]\r\t[", "");
 	else
 		printf("\t");
 }
-- 
1.7.12.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
