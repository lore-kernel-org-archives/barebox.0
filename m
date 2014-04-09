Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WXz5F-0002zq-Sj
 for barebox@lists.infradead.org; Wed, 09 Apr 2014 20:26:59 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  9 Apr 2014 22:26:32 +0200
Message-Id: <1397075192-1455-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] of_gpio: return error if no device found
To: barebox@lists.infradead.org

of_get_named_gpio_flags used to return 'ret' when no device
is found, but 'ret' is zero here. Return an error instead.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/of_gpio.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/of/of_gpio.c b/drivers/of/of_gpio.c
index 1370d8f..6738a22 100644
--- a/drivers/of/of_gpio.c
+++ b/drivers/of/of_gpio.c
@@ -32,9 +32,9 @@ int of_get_named_gpio_flags(struct device_node *np, const char *propname,
 
 	dev = of_find_device_by_node(out_args.np);
 	if (!dev) {
-		pr_err("%s: unable to find device of node %s: %d\n",
-			__func__, out_args.np->full_name, ret);
-		return ret;
+		pr_err("%s: unable to find device of node %s\n",
+			__func__, out_args.np->full_name);
+		return -ENODEV;
 	}
 
 	ret = gpio_get_num(dev, out_args.args[0]);
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
