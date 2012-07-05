Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Smrra-0002Df-Qg
 for barebox@lists.infradead.org; Thu, 05 Jul 2012 19:37:29 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  5 Jul 2012 21:36:44 +0200
Message-Id: <1341517020-5581-14-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1341517020-5581-1-git-send-email-s.hauer@pengutronix.de>
References: <1341517020-5581-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 14/30] led: remove gpio include
To: barebox@lists.infradead.org

The LED core itself does not need gpio support, so remove include
so that it compiles on architectures without gpio support.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/led/core.c |    1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/led/core.c b/drivers/led/core.c
index 748a978..0319b4e 100644
--- a/drivers/led/core.c
+++ b/drivers/led/core.c
@@ -26,7 +26,6 @@
 #include <command.h>
 #include <linux/list.h>
 #include <errno.h>
-#include <asm/gpio.h>
 #include <led.h>
 #include <poller.h>
 #include <clock.h>
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
