Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZIGUz-0005oV-R7
 for barebox@lists.infradead.org; Thu, 23 Jul 2015 13:25:22 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 23 Jul 2015 15:24:58 +0200
Message-Id: <1437657898-29071-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] console: When deactivating a console, flush it first
To: Barebox List <barebox@lists.infradead.org>

Otherwise the last characters may not be sent before deactivating
a console.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/console.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/common/console.c b/common/console.c
index 0a6fc3e..bf64c08 100644
--- a/common/console.c
+++ b/common/console.c
@@ -73,6 +73,9 @@ int console_set_active(struct console_device *cdev, unsigned flag)
 			cdev->setbrg(cdev, cdev->baudrate);
 	}
 
+	if (!flag && cdev->f_active && cdev->flush)
+		cdev->flush(cdev);
+
 	if (cdev->set_active) {
 		ret = cdev->set_active(cdev, flag);
 		if (ret)
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
