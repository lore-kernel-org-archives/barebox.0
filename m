Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UVf0a-0006LJ-OZ
 for barebox@lists.infradead.org; Fri, 26 Apr 2013 09:32:02 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1UVf0X-0007tP-86
 for barebox@lists.infradead.org; Fri, 26 Apr 2013 11:31:57 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <jbe@pengutronix.de>) id 1UVf0W-0004NU-6t
 for barebox@lists.infradead.org; Fri, 26 Apr 2013 11:31:56 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Fri, 26 Apr 2013 11:31:47 +0200
Message-Id: <1366968712-17851-2-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1366968712-17851-1-git-send-email-jbe@pengutronix.de>
References: <1366968712-17851-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 1/6] MXS/MCI: add forgotten header file
To: barebox@lists.infradead.org

Commit b36f68d74b5379c216429a0f15aeedbd7917e10d now uses the generic
mxs_reset_block() routine, but this requires the mxs.h header file for the
prototype.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 drivers/mci/mxs.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mci/mxs.c b/drivers/mci/mxs.c
index 93f5a41..e2ffa43 100644
--- a/drivers/mci/mxs.c
+++ b/drivers/mci/mxs.c
@@ -37,6 +37,7 @@
 #include <clock.h>
 #include <io.h>
 #include <asm/bitops.h>
+#include <mach/mxs.h>
 #include <mach/imx-regs.h>
 #include <mach/mci.h>
 #include <mach/clock.h>
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
