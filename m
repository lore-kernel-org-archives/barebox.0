Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Upan7-0007qe-OH
 for barebox@lists.infradead.org; Thu, 20 Jun 2013 09:04:30 +0000
Date: Thu, 20 Jun 2013 11:04:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130620090406.GS32299@pengutronix.de>
References: <1371576607-8090-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1371632991-1504-2-git-send-email-sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1371632991-1504-2-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: Re: [PATCH v2 01/22] lib: string: import case-insensitive string
 compare
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

This patch needs the following before it to not break ppc compilation.

Sascha


From 1a8c27b7ad29bfa5f868db15e11da8e6bdc7d01f Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 20 Jun 2013 11:02:09 +0200
Subject: [PATCH] ppc: remove strcasecmp/strncasecmp prototypes

ppc does not implement these, so remove the prototypes and use
the ones from include/linux/string.h

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/ppc/include/asm/string.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/ppc/include/asm/string.h b/arch/ppc/include/asm/string.h
index d912a6b..33d143f 100644
--- a/arch/ppc/include/asm/string.h
+++ b/arch/ppc/include/asm/string.h
@@ -13,8 +13,6 @@
 #define __HAVE_ARCH_MEMCMP
 #define __HAVE_ARCH_MEMCHR
 
-extern int strcasecmp(const char *, const char *);
-extern int strncasecmp(const char *, const char *, int);
 extern char * strcpy(char *,const char *);
 extern char * strncpy(char *,const char *, __kernel_size_t);
 extern __kernel_size_t strlen(const char *);
-- 
1.8.3.1


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
