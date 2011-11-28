Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RUwAa-0000ZX-6S
 for barebox@lists.infradead.org; Mon, 28 Nov 2011 08:02:33 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 28 Nov 2011 09:02:09 +0100
Message-Id: <1322467340-10596-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1322467340-10596-1-git-send-email-s.hauer@pengutronix.de>
References: <1322467340-10596-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/14] compile in simple_strtoull
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/common.h |    2 --
 lib/vsprintf.c   |    2 --
 2 files changed, 0 insertions(+), 4 deletions(-)

diff --git a/include/common.h b/include/common.h
index d63ad02..68ccbd9 100644
--- a/include/common.h
+++ b/include/common.h
@@ -115,9 +115,7 @@ int gunzip(void *dst, int dstlen, unsigned char *src, unsigned long *lenp);
 
 /* lib_generic/vsprintf.c */
 ulong	simple_strtoul(const char *cp,char **endp,unsigned int base);
-#ifdef CFG_64BIT_VSPRINTF
 unsigned long long	simple_strtoull(const char *cp,char **endp,unsigned int base);
-#endif
 long	simple_strtol(const char *cp,char **endp,unsigned int base);
 
 /* lib_generic/crc32.c */
diff --git a/lib/vsprintf.c b/lib/vsprintf.c
index 54e162f..4165f97 100644
--- a/lib/vsprintf.c
+++ b/lib/vsprintf.c
@@ -56,7 +56,6 @@ long simple_strtol(const char *cp,char **endp,unsigned int base)
 }
 EXPORT_SYMBOL(simple_strtol);
 
-#ifdef CFG_64BIT_STRTOUL
 unsigned long long simple_strtoull (const char *cp, char **endp, unsigned int base)
 {
 	unsigned long long result = 0, value;
@@ -84,7 +83,6 @@ unsigned long long simple_strtoull (const char *cp, char **endp, unsigned int ba
 		*endp = (char *) cp;
 	return result;
 }
-#endif /* CFG_64BIT_STRTOUL */
 
 /* we use this so that we can do without the ctype library */
 #define is_digit(c)	((c) >= '0' && (c) <= '9')
-- 
1.7.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
