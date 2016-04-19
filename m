Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1asQDj-00031W-5T
 for barebox@lists.infradead.org; Tue, 19 Apr 2016 07:37:16 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 19 Apr 2016 09:36:44 +0200
Message-Id: <1461051412-25711-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1461051412-25711-1-git-send-email-s.hauer@pengutronix.de>
References: <1461051412-25711-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/14] show_progress: print spaces with %*s
To: Barebox List <barebox@lists.infradead.org>

Removes the need for include/linux/stringify.h in the progress
bar code.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 lib/show_progress.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/lib/show_progress.c b/lib/show_progress.c
index f9aa1a9..a32a13c 100644
--- a/lib/show_progress.c
+++ b/lib/show_progress.c
@@ -21,7 +21,6 @@
 #include <fs.h>
 #include <progress.h>
 #include <asm-generic/div64.h>
-#include <linux/stringify.h>
 
 #define HASHES_PER_LINE	65
 
@@ -58,7 +57,7 @@ void init_progression_bar(int max)
 	progress_max = max;
 	spin = 0;
 	if (progress_max && progress_max != FILESIZE_MAX)
-		printf("\t[%"__stringify(HASHES_PER_LINE)"s]\r\t[", "");
+		printf("\t[%*s]\r\t[", HASHES_PER_LINE, "");
 	else
 		printf("\t");
 }
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
