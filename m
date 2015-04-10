Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x22d.google.com ([2a00:1450:400c:c05::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YgNLo-0002e3-Ow
 for barebox@lists.infradead.org; Fri, 10 Apr 2015 01:03:18 +0000
Received: by widjs5 with SMTP id js5so5717414wid.1
 for <barebox@lists.infradead.org>; Thu, 09 Apr 2015 18:02:54 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Fri, 10 Apr 2015 03:02:45 +0200
Message-Id: <1428627766-17178-4-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1428627766-17178-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1428627766-17178-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 3/4] OF: gpio: Silence error message on -EPROBE_DEFER
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

With deferred probing, -EPROBE_DEFER is not worth spilling an error.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org
---
 drivers/of/of_gpio.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/of/of_gpio.c b/drivers/of/of_gpio.c
index 6738a220a5a3..470ccfa1ba77 100644
--- a/drivers/of/of_gpio.c
+++ b/drivers/of/of_gpio.c
@@ -39,8 +39,9 @@ int of_get_named_gpio_flags(struct device_node *np, const char *propname,
 
 	ret = gpio_get_num(dev, out_args.args[0]);
 	if (ret < 0) {
-		pr_err("%s: unable to get gpio num of device %s: %d\n",
-			__func__, dev_name(dev), ret);
+		if (ret != -EPROBE_DEFER)
+			pr_err("%s: unable to get gpio num of device %s: %d\n",
+			       __func__, dev_name(dev), ret);
 		return ret;
 	}
 
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
