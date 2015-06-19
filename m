Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Z5vLE-0007Ds-Db
 for barebox@lists.infradead.org; Fri, 19 Jun 2015 12:24:17 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <jbe@pengutronix.de>) id 1Z5vKp-0001XA-OQ
 for barebox@lists.infradead.org; Fri, 19 Jun 2015 14:23:51 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.85)
 (envelope-from <jbe@pengutronix.de>) id 1Z5vKp-0003Nn-HC
 for barebox@lists.infradead.org; Fri, 19 Jun 2015 14:23:51 +0200
From: Juergen Borleis <jbe@pengutronix.de>
Date: Fri, 19 Jun 2015 14:23:49 +0200
Message-Id: <1434716629-10707-4-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1434716629-10707-1-git-send-email-jbe@pengutronix.de>
References: <1434716629-10707-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 3/3] arch/BCM47xx: remove bogus copy'n'paste comment
To: barebox@lists.infradead.org

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 arch/mips/mach-bcm47xx/reset.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/arch/mips/mach-bcm47xx/reset.c b/arch/mips/mach-bcm47xx/reset.c
index f1dc68a..00aee19 100644
--- a/arch/mips/mach-bcm47xx/reset.c
+++ b/arch/mips/mach-bcm47xx/reset.c
@@ -15,11 +15,6 @@
  *
  */
 
-/**
- * @file
- * @brief Resetting an malta board
- */
-
 #include <common.h>
 #include <io.h>
 #include <mach/hardware.h>
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
