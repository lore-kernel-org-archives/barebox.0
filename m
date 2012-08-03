Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SxBPH-0007ll-Fa
 for barebox@lists.infradead.org; Fri, 03 Aug 2012 06:30:44 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  3 Aug 2012 08:30:34 +0200
Message-Id: <1343975435-5948-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] qsort: Fix wrong check
To: barebox@lists.infradead.org
Cc: jbe@pengutronix.de

The check for overflow accidently was exactly the opposite.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 lib/qsort.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/qsort.c b/lib/qsort.c
index f648714..d413096 100644
--- a/lib/qsort.c
+++ b/lib/qsort.c
@@ -31,7 +31,7 @@ void qsort(void  *base,
 		return;
 
 	/* check for overflow */
-	if (nel <= ((size_t)(-1)) / width)
+	if (nel > ((size_t)(-1)) / width)
 		return;
 
 	wgap = 0;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
