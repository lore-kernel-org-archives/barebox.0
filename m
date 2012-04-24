Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SMbw7-0007d5-F4
 for barebox@lists.infradead.org; Tue, 24 Apr 2012 09:21:30 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 24 Apr 2012 11:21:18 +0200
Message-Id: <1335259279-25353-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1335259279-25353-1-git-send-email-s.hauer@pengutronix.de>
References: <1335259279-25353-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/3] devinfo: use accessor function for parameters
To: barebox@lists.infradead.org

Instead of directly accessing the struct member of struct param_d
use the provided getter function.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/base/driver.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 2d206f9..9924fee 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -401,7 +401,7 @@ static int do_devinfo(int argc, char *argv[])
 				"no parameters available" : "Parameters:");
 
 		list_for_each_entry(param, &dev->parameters, list)
-			printf("%16s = %s\n", param->name, param->value);
+			printf("%16s = %s\n", param->name, dev_get_param(dev, param->name));
 	}
 
 	return 0;
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
