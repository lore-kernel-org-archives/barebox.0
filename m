Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x244.google.com ([2607:f8b0:400e:c05::244])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1daPDw-0002Tm-7W
 for barebox@lists.infradead.org; Wed, 26 Jul 2017 16:31:51 +0000
Received: by mail-pg0-x244.google.com with SMTP id k190so2071694pgk.4
 for <barebox@lists.infradead.org>; Wed, 26 Jul 2017 09:31:32 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 26 Jul 2017 09:31:10 -0700
Message-Id: <20170726163120.25952-2-andrew.smirnov@gmail.com>
In-Reply-To: <20170726163120.25952-1-andrew.smirnov@gmail.com>
References: <20170726163120.25952-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 01/11] gpiolib: Fix buggy flag detection code
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Both GPIOF_ACTIVE_LOW and GPIOF_INIT_ACTIVE are multi-bit constants so
detecting their assertion using simple bit-wise and is incorrect and
would lead to false positives.

Fixes: bbc499914 ("gpiolib: Add code to support "active low" GPIOs")

Acked-by: Sam Ravnborg <sam@ravnborg.org>
Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/gpio/gpiolib.c | 25 ++++++++++++++++---------
 1 file changed, 16 insertions(+), 9 deletions(-)

diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
index 1a373ef14..d081e02fd 100644
--- a/drivers/gpio/gpiolib.c
+++ b/drivers/gpio/gpiolib.c
@@ -120,24 +120,31 @@ int gpio_request_one(unsigned gpio, unsigned long flags, const char *label)
 {
 	int err;
 
+	/*
+	 * Not all of the flags below are mulit-bit, but, for the sake
+	 * of consistency, the code is written as if all of them were.
+	 */
+	const bool active_low  = (flags & GPIOF_ACTIVE_LOW) == GPIOF_ACTIVE_LOW;
+	const bool dir_in      = (flags & GPIOF_DIR_IN) == GPIOF_DIR_IN;
+	const bool logical     = (flags & GPIOF_LOGICAL) == GPIOF_LOGICAL;
+	const bool init_active = (flags & GPIOF_INIT_ACTIVE) == GPIOF_INIT_ACTIVE;
+	const bool init_high   = (flags & GPIOF_INIT_HIGH) == GPIOF_INIT_HIGH;
+
 	err = gpio_request(gpio, label);
 	if (err)
 		return err;
 
-	if (flags & GPIOF_ACTIVE_LOW) {
+	if (active_low) {
 		struct gpio_info *gi = gpio_to_desc(gpio);
 		gi->active_low = true;
 	}
 
-	if (flags & GPIOF_DIR_IN) {
+	if (dir_in)
 		err = gpio_direction_input(gpio);
-	} else if (flags & GPIOF_LOGICAL) {
-		err = gpio_direction_active(gpio,
-					    !!(flags & GPIOF_INIT_ACTIVE));
-	} else {
-		err = gpio_direction_output(gpio,
-					    !!(flags & GPIOF_INIT_HIGH));
-	}
+	else if (logical)
+		err = gpio_direction_active(gpio, init_active);
+	else
+		err = gpio_direction_output(gpio, init_high);
 
 	if (err)
 		goto free_gpio;
-- 
2.13.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
