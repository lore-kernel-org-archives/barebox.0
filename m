Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SFga3-0001rx-Vs
 for barebox@lists.infradead.org; Thu, 05 Apr 2012 06:54:04 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  5 Apr 2012 08:53:45 +0200
Message-Id: <1333608829-13213-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1333608829-13213-1-git-send-email-s.hauer@pengutronix.de>
References: <1333608829-13213-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/5] string: remove unused bcopy function
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 lib/string.c |   24 ------------------------
 1 file changed, 24 deletions(-)

diff --git a/lib/string.c b/lib/string.c
index 77435aa..2865088 100644
--- a/lib/string.c
+++ b/lib/string.c
@@ -420,30 +420,6 @@ void * memset(void * s,int c,size_t count)
 #endif
 EXPORT_SYMBOL(memset);
 
-#ifndef __HAVE_ARCH_BCOPY
-/**
- * bcopy - Copy one area of memory to another
- * @src: Where to copy from
- * @dest: Where to copy to
- * @count: The size of the area.
- *
- * Note that this is the same as memcpy(), with the arguments reversed.
- * memcpy() is the standard, bcopy() is a legacy BSD function.
- *
- * You should not use this function to access IO space, use memcpy_toio()
- * or memcpy_fromio() instead.
- */
-char * bcopy(const char * src, char * dest, int count)
-{
-	char *tmp = dest;
-
-	while (count--)
-		*tmp++ = *src++;
-
-	return dest;
-}
-#endif
-
 #ifndef __HAVE_ARCH_MEMCPY
 /**
  * memcpy - Copy one area of memory to another
-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
