Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b5pVz-0003g2-JX
 for barebox@lists.infradead.org; Thu, 26 May 2016 07:15:32 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 26 May 2016 09:15:09 +0200
Message-Id: <1464246909-3024-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] console: Fix initial value of baudrate parameter
To: Barebox List <barebox@lists.infradead.org>

The 'baudrate' parameter has the wrong value initially, it has to
be set to CONFIG_BAUDRATE. Otherwise a devinfo shows a baudrate of 0
until actively changed.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/console.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/console.c b/common/console.c
index a67f169..74ccfcf 100644
--- a/common/console.c
+++ b/common/console.c
@@ -256,7 +256,7 @@ int console_register(struct console_device *newcdev)
 		ret = newcdev->setbrg(newcdev, CONFIG_BAUDRATE);
 		if (ret)
 			return ret;
-		newcdev->baudrate = CONFIG_BAUDRATE;
+		newcdev->baudrate_param = newcdev->baudrate = CONFIG_BAUDRATE;
 		dev_add_param_int(dev, "baudrate", console_baudrate_set,
 			NULL, &newcdev->baudrate_param, "%u", newcdev);
 	}
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
