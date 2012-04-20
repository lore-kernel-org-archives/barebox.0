Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SLDXe-0004YL-7D
 for barebox@lists.infradead.org; Fri, 20 Apr 2012 13:06:27 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1SLDXX-0006VW-5Z
 for barebox@lists.infradead.org; Fri, 20 Apr 2012 15:06:19 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <jbe@pengutronix.de>) id 1SLDXX-0003sL-3m
 for barebox@lists.infradead.org; Fri, 20 Apr 2012 15:06:19 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Fri, 20 Apr 2012 15:06:13 +0200
Message-Id: <1334927177-13912-3-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1334927177-13912-1-git-send-email-jbe@pengutronix.de>
References: <1334927177-13912-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 2/6] netX: use correct sized pointers
To: barebox@lists.infradead.org

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 arch/arm/mach-netx/generic.c |    6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-netx/generic.c b/arch/arm/mach-netx/generic.c
index e4763c6..f9d643f 100644
--- a/arch/arm/mach-netx/generic.c
+++ b/arch/arm/mach-netx/generic.c
@@ -63,7 +63,7 @@ static int xc_patch(int xcno, void *patch, int count)
 static void memset32(void *s, int c, int n)
 {
 	int i;
-	unsigned int *t = s;
+	u32 *t = s;
 
 	for (i = 0; i < (n >> 2); i++)
 		*t++ = 0;
@@ -72,8 +72,8 @@ static void memset32(void *s, int c, int n)
 static void memcpy32(void *trg, void *src, int size)
 {
 	int i;
-	unsigned int *t = trg;
-	unsigned int *s = src;
+	u32 *t = trg;
+	u32 *s = src;
 	for (i = 0; i < (size >> 2); i++)
 		*t++ = *s++;
 }
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
