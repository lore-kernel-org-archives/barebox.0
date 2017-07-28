Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x243.google.com ([2607:f8b0:400e:c05::243])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1db6Vp-0003R9-Lo
 for barebox@lists.infradead.org; Fri, 28 Jul 2017 14:45:18 +0000
Received: by mail-pg0-x243.google.com with SMTP id 125so10359268pgi.5
 for <barebox@lists.infradead.org>; Fri, 28 Jul 2017 07:44:49 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 28 Jul 2017 07:44:18 -0700
Message-Id: <20170728144427.14007-3-andrew.smirnov@gmail.com>
In-Reply-To: <20170728144427.14007-1-andrew.smirnov@gmail.com>
References: <20170728144427.14007-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v3 02/11] gpiolib: Simplify code of gpio_request_one()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Looks like we can get rid of an 'if' and 'goto', so do it to simplify
the code.

Acked-by: Sam Ravnborg <sam@ravnborg.org>
Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/gpio/gpiolib.c | 12 +++---------
 1 file changed, 3 insertions(+), 9 deletions(-)

diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
index d081e02fd..67d771bae 100644
--- a/drivers/gpio/gpiolib.c
+++ b/drivers/gpio/gpiolib.c
@@ -119,6 +119,7 @@ void gpio_free(unsigned gpio)
 int gpio_request_one(unsigned gpio, unsigned long flags, const char *label)
 {
 	int err;
+	struct gpio_info *gi = gpio_to_desc(gpio);
 
 	/*
 	 * Not all of the flags below are mulit-bit, but, for the sake
@@ -134,10 +135,7 @@ int gpio_request_one(unsigned gpio, unsigned long flags, const char *label)
 	if (err)
 		return err;
 
-	if (active_low) {
-		struct gpio_info *gi = gpio_to_desc(gpio);
-		gi->active_low = true;
-	}
+	gi->active_low = active_low;
 
 	if (dir_in)
 		err = gpio_direction_input(gpio);
@@ -147,12 +145,8 @@ int gpio_request_one(unsigned gpio, unsigned long flags, const char *label)
 		err = gpio_direction_output(gpio, init_high);
 
 	if (err)
-		goto free_gpio;
-
-	return 0;
+		gpio_free(gpio);
 
- free_gpio:
-	gpio_free(gpio);
 	return err;
 }
 EXPORT_SYMBOL_GPL(gpio_request_one);
-- 
2.13.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
