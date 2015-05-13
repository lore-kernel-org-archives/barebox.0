Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YsQ5L-0002KP-Av
 for barebox@lists.infradead.org; Wed, 13 May 2015 06:24:03 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 13 May 2015 08:23:42 +0200
Message-Id: <1431498222-2682-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] xfuncs: remove debugging output
To: Barebox List <barebox@lists.infradead.org>

Adding debug statements to this code path does not make much sense
since when enabled it will massively spam the console.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 lib/xfuncs.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/lib/xfuncs.c b/lib/xfuncs.c
index 86d0013..0e78b67 100644
--- a/lib/xfuncs.c
+++ b/lib/xfuncs.c
@@ -30,8 +30,6 @@ void *xmalloc(size_t size)
 	if (!(p = malloc(size)))
 		panic("ERROR: out of memory\n");
 
-	debug("xmalloc %p (size %zu)\n", p, size);
-
 	return p;
 }
 EXPORT_SYMBOL(xmalloc);
@@ -43,8 +41,6 @@ void *xrealloc(void *ptr, size_t size)
 	if (!(p = realloc(ptr, size)))
 		panic("ERROR: out of memory\n");
 
-	debug("xrealloc %p -> %p (size %zu)\n", ptr, p, size);
-
 	return p;
 }
 EXPORT_SYMBOL(xrealloc);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
