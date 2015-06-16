Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Z4pTt-00017W-Vs
 for barebox@lists.infradead.org; Tue, 16 Jun 2015 11:56:42 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <jbe@pengutronix.de>) id 1Z4pTP-0006RG-C1
 for barebox@lists.infradead.org; Tue, 16 Jun 2015 13:56:11 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.85)
 (envelope-from <jbe@pengutronix.de>) id 1Z4pTN-0004Uc-JR
 for barebox@lists.infradead.org; Tue, 16 Jun 2015 13:56:09 +0200
From: Juergen Borleis <jbe@pengutronix.de>
Date: Tue, 16 Jun 2015 13:56:08 +0200
Message-Id: <1434455769-17216-5-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1434455769-17216-1-git-send-email-jbe@pengutronix.de>
References: <1434455769-17216-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 5/6] MFD/DA9053: remove not required header file
To: barebox@lists.infradead.org

None of the the prototypes this header file provides is used in this
driver.

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 drivers/mfd/da9053.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/mfd/da9053.c b/drivers/mfd/da9053.c
index b376d8d..bc9b184 100644
--- a/drivers/mfd/da9053.c
+++ b/drivers/mfd/da9053.c
@@ -22,8 +22,6 @@
 #include <watchdog.h>
 
 #include <i2c/i2c.h>
-
-#include <asm/byteorder.h>
 #include <reset_source.h>
 
 #define DRIVERNAME		"da9053"
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
