Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SNhXR-0006sW-O8
 for barebox@lists.infradead.org; Fri, 27 Apr 2012 09:32:32 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1SNhXQ-0000Ft-2o
 for barebox@lists.infradead.org; Fri, 27 Apr 2012 11:32:28 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <jbe@pengutronix.de>) id 1SNhXQ-0004E5-0j
 for barebox@lists.infradead.org; Fri, 27 Apr 2012 11:32:28 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Fri, 27 Apr 2012 11:32:24 +0200
Message-Id: <1335519145-12349-7-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1335519145-12349-1-git-send-email-jbe@pengutronix.de>
References: <1335519145-12349-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 6/7] netX: don't bother with variable sizes, use the intend
To: barebox@lists.infradead.org

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 arch/arm/mach-netx/generic.c |   10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm/mach-netx/generic.c b/arch/arm/mach-netx/generic.c
index 5ce7a0d..53b0c60 100644
--- a/arch/arm/mach-netx/generic.c
+++ b/arch/arm/mach-netx/generic.c
@@ -20,6 +20,7 @@
 
 #include <common.h>
 #include <command.h>
+#include <io.h>
 #include <mach/netx-regs.h>
 #include "eth_firmware.h"
 
@@ -45,18 +46,17 @@ static int xc_check_ptr(int xcno, unsigned long adr, unsigned int size)
 	return -1;
 }
 
-static int xc_patch(int xcno, const void *patch, int count)
+static int xc_patch(int xcno, const u32 *patch, int count)
 {
 	unsigned int adr, val;
-	const unsigned int *p = patch;
 
 	int i;
 	for (i = 0; i < count; i++) {
-		adr = *p++;
-		val = *p++;
+		adr = *patch++;
+		val = *patch++;
 		if (xc_check_ptr(xcno, adr, 1) < 0)
 			return -1;
-		*(volatile unsigned int *)adr = val;
+		writel(val, adr);
 	}
 	return 0;
 }
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
