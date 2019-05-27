Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVCO5-0001nE-Mu
 for barebox@lists.infradead.org; Mon, 27 May 2019 09:57:52 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <afa@pengutronix.de>) id 1hVCO3-000228-US
 for barebox@lists.infradead.org; Mon, 27 May 2019 11:57:47 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1hVCO2-0003Ei-VV
 for barebox@lists.infradead.org; Mon, 27 May 2019 11:57:46 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 27 May 2019 11:57:40 +0200
Message-Id: <20190527095744.5923-15-a.fatoum@pengutronix.de>
In-Reply-To: <20190527095744.5923-1-a.fatoum@pengutronix.de>
References: <20190527095744.5923-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
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
Subject: [PATCH 14/18] scripts: omap3-usb-loader: drop unneeded header
To: barebox@lists.infradead.org

Declarations from the header aren't used anywhere, so drop it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/omap3-usb-loader.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/scripts/omap3-usb-loader.c b/scripts/omap3-usb-loader.c
index 73c5a6d97a53..ae6f1258df05 100644
--- a/scripts/omap3-usb-loader.c
+++ b/scripts/omap3-usb-loader.c
@@ -33,10 +33,6 @@
 #define OMAP_IS_BIG_ENDIAN
 #endif
 
-#ifdef OMAP_IS_BIG_ENDIAN
-#include <arpa/inet.h>
-#endif
-
 #include <unistd.h>		/* for usleep and friends */
 #include <getopt.h>
 #include <errno.h>
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
