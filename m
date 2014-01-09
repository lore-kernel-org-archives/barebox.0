Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x230.google.com ([2a00:1450:4010:c04::230])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W1Jl9-0004do-13
 for barebox@lists.infradead.org; Thu, 09 Jan 2014 17:51:12 +0000
Received: by mail-lb0-f176.google.com with SMTP id l4so2547111lbv.7
 for <barebox@lists.infradead.org>; Thu, 09 Jan 2014 09:50:45 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu,  9 Jan 2014 21:58:37 +0400
Message-Id: <1389290319-28518-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1389290319-28518-1-git-send-email-antonynpavlov@gmail.com>
References: <1389290319-28518-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 1/3] gpiolib: gpio_request(): print message on error
To: barebox@lists.infradead.org

Just copy gpiod_request() function logic from linux-v3.13-rc7.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/gpio/gpiolib.c | 23 +++++++++++++++++------
 1 file changed, 17 insertions(+), 6 deletions(-)

diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
index cafef90..b7430b0 100644
--- a/drivers/gpio/gpiolib.c
+++ b/drivers/gpio/gpiolib.c
@@ -50,22 +50,33 @@ int gpio_request(unsigned gpio, const char *label)
 	struct gpio_info *gi = gpio_to_desc(gpio);
 	int ret;
 
-	if (!gi)
-		return -ENODEV;
+	if (!gi) {
+		ret = -ENODEV;
+		goto done;
+	}
 
-	if (gi->requested)
-		return -EBUSY;
+	if (gi->requested) {
+		ret = -EBUSY;
+		goto done;
+	}
+
+	ret = 0;
 
 	if (gi->chip->ops->request) {
 		ret = gi->chip->ops->request(gi->chip, gpio - gi->chip->base);
 		if (ret)
-			return ret;
+			goto done;
 	}
 
 	gi->requested = true;
 	gi->label = xstrdup(label);
 
-	return 0;
+done:
+	if (ret)
+		pr_err("_gpio_request: gpio-%d (%s) status %d\n",
+			 gpio, label ? : "?", ret);
+
+	return ret;
 }
 
 void gpio_free(unsigned gpio)
-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
