Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x235.google.com ([2a00:1450:400c:c05::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Yi9iI-0007Al-UO
 for barebox@lists.infradead.org; Tue, 14 Apr 2015 22:53:53 +0000
Received: by wizk4 with SMTP id k4so132619959wiz.1
 for <barebox@lists.infradead.org>; Tue, 14 Apr 2015 15:53:28 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Wed, 15 Apr 2015 00:53:17 +0200
Message-Id: <1429052000-20647-4-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1429052000-20647-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1429052000-20647-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH v2 3/6] OF: gpio: Silence error message on -EPROBE_DEFER
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

With deferred probing, -EPROBE_DEFER is not worth spilling an error.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Changelog:
v1->v2:
- Also return early on gpio_get_num() == -EPROBE_DEFER

Cc: barebox@lists.infradead.org
---
 drivers/of/of_gpio.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/of/of_gpio.c b/drivers/of/of_gpio.c
index 6738a220a5a3..dc8ae2277641 100644
--- a/drivers/of/of_gpio.c
+++ b/drivers/of/of_gpio.c
@@ -32,12 +32,14 @@ int of_get_named_gpio_flags(struct device_node *np, const char *propname,
 
 	dev = of_find_device_by_node(out_args.np);
 	if (!dev) {
-		pr_err("%s: unable to find device of node %s\n",
-			__func__, out_args.np->full_name);
-		return -ENODEV;
+		pr_debug("%s: unable to find device of node %s\n",
+			 __func__, out_args.np->full_name);
+		return -EPROBE_DEFER;
 	}
 
 	ret = gpio_get_num(dev, out_args.args[0]);
+	if (ret == -EPROBE_DEFER)
+		return ret;
 	if (ret < 0) {
 		pr_err("%s: unable to get gpio num of device %s: %d\n",
 			__func__, dev_name(dev), ret);
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
