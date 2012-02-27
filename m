Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1S25sn-0005PQ-1m
 for barebox@lists.infradead.org; Mon, 27 Feb 2012 19:05:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 27 Feb 2012 20:05:05 +0100
Message-Id: <1330369505-21262-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] lib: remove unused bcopy function
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/ppc/lib/ppcstring.S |    7 -------
 lib/string.c             |   24 ------------------------
 2 files changed, 0 insertions(+), 31 deletions(-)

diff --git a/arch/ppc/lib/ppcstring.S b/arch/ppc/lib/ppcstring.S
index cce85e3..05fd4b1 100644
--- a/arch/ppc/lib/ppcstring.S
+++ b/arch/ppc/lib/ppcstring.S
@@ -95,13 +95,6 @@ memset:
 	bdnz	8b
 	blr
 
-	.globl	bcopy
-bcopy:
-	mr	r6,r3
-	mr	r3,r4
-	mr	r4,r6
-	b	memcpy
-
 	.globl	memmove
 memmove:
 	cmplw	0,r3,r4
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
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
