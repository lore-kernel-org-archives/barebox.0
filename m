Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vnw1y-0006zn-D3
 for barebox@lists.infradead.org; Tue, 03 Dec 2013 19:53:17 +0000
Received: from tellur.localdomain (p54831992.dip0.t-ipconnect.de
 [84.131.25.146]) by lynxeye.de (Postfix) with ESMTPA id A723E18B4268
 for <barebox@lists.infradead.org>; Tue,  3 Dec 2013 20:52:19 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Tue,  3 Dec 2013 20:56:54 +0100
Message-Id: <1386100622-8498-2-git-send-email-dev@lynxeye.de>
In-Reply-To: <1386100622-8498-1-git-send-email-dev@lynxeye.de>
References: <1386100622-8498-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH] gpio: reduce noise when parsing DT
To: barebox@lists.infradead.org

Some GPIOs are optional, so it might not be an error if we can not find
a DT property. Do the same thing as the Linux kernel and only print a
debug message not an error.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/of/of_gpio.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/of/of_gpio.c b/drivers/of/of_gpio.c
index 3afdf0d..1370d8f 100644
--- a/drivers/of/of_gpio.c
+++ b/drivers/of/of_gpio.c
@@ -25,7 +25,7 @@ int of_get_named_gpio_flags(struct device_node *np, const char *propname,
 	ret = of_parse_phandle_with_args(np, propname, "#gpio-cells",
 					index, &out_args);
 	if (ret) {
-		pr_err("%s: cannot parse %s property: %d\n",
+		pr_debug("%s: cannot parse %s property: %d\n",
 			__func__, propname, ret);
 		return ret;
 	}
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
