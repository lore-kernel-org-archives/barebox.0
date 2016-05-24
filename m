Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b59xc-0007iP-4A
 for barebox@lists.infradead.org; Tue, 24 May 2016 10:53:16 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 24 May 2016 12:52:51 +0200
Message-Id: <1464087171-14853-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] of: Add missing include
To: Barebox List <barebox@lists.infradead.org>

drivers/of/device.c has the implementation for of_match_device(), so
also include the header which has the prototype.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/device.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/of/device.c b/drivers/of/device.c
index e2c3c02..67a67bd 100644
--- a/drivers/of/device.c
+++ b/drivers/of/device.c
@@ -1,6 +1,6 @@
 #include <common.h>
 #include <of.h>
-
+#include <of_device.h>
 
 /**
  * of_match_device - Tell if a struct device matches an of_device_id list
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
