Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UllWo-0002Ls-9S
 for barebox@lists.infradead.org; Sun, 09 Jun 2013 19:43:51 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Sun,  9 Jun 2013 21:43:13 +0200
Message-Id: <1370806993-28524-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH] console: fix new console registration
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

The console_register-function gets the baudrate from a kconfig parameter and
sets the console accordingly, if a setbrg function is registered.
Add the missing call to setbrg on the newly registered console to actually
use the baudrate setting.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 common/console.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/common/console.c b/common/console.c
index a0a06f6..abf5322 100644
--- a/common/console.c
+++ b/common/console.c
@@ -147,6 +147,7 @@ int console_register(struct console_device *newcdev)
 		newcdev->baudrate = CONFIG_BAUDRATE;
 		dev_add_param_int(dev, "baudrate", console_baudrate_set,
 			NULL, &newcdev->baudrate, "%u", newcdev);
+		newcdev->setbrg(newcdev, newcdev->baudrate);
 	}
 
 	dev_add_param(dev, "active", console_std_set, NULL, 0);
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
