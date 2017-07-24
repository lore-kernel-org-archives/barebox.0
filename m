Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x243.google.com ([2607:f8b0:400e:c05::243])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dZekz-0003Rv-5O
 for barebox@lists.infradead.org; Mon, 24 Jul 2017 14:54:53 +0000
Received: by mail-pg0-x243.google.com with SMTP id 123so1364271pgj.0
 for <barebox@lists.infradead.org>; Mon, 24 Jul 2017 07:54:26 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 24 Jul 2017 07:53:52 -0700
Message-Id: <20170724145400.2279-2-andrew.smirnov@gmail.com>
In-Reply-To: <20170724145400.2279-1-andrew.smirnov@gmail.com>
References: <20170724145400.2279-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 1/9] gpiolib: Fix buggy flag detection code
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Both GPIOF_ACTIVE_LOW and GPIOF_INIT_ACTIVE are multi-bit constants so
detecting their assertion using simple bit-wise and is incorrect and
would lead to false positives.

Fixes: bbc499914 ("gpiolib: Add code to support "active low" GPIOs")

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/gpio/gpiolib.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
index 1a373ef14..6337a3a47 100644
--- a/drivers/gpio/gpiolib.c
+++ b/drivers/gpio/gpiolib.c
@@ -119,12 +119,13 @@ void gpio_free(unsigned gpio)
 int gpio_request_one(unsigned gpio, unsigned long flags, const char *label)
 {
 	int err;
+	const bool active_low = (flags & GPIOF_ACTIVE_LOW) == GPIOF_ACTIVE_LOW;
 
 	err = gpio_request(gpio, label);
 	if (err)
 		return err;
 
-	if (flags & GPIOF_ACTIVE_LOW) {
+	if (active_low) {
 		struct gpio_info *gi = gpio_to_desc(gpio);
 		gi->active_low = true;
 	}
@@ -132,8 +133,9 @@ int gpio_request_one(unsigned gpio, unsigned long flags, const char *label)
 	if (flags & GPIOF_DIR_IN) {
 		err = gpio_direction_input(gpio);
 	} else if (flags & GPIOF_LOGICAL) {
-		err = gpio_direction_active(gpio,
-					    !!(flags & GPIOF_INIT_ACTIVE));
+		const bool value =
+			(flags & GPIOF_INIT_ACTIVE) == GPIOF_INIT_ACTIVE;
+		err = gpio_direction_active(gpio, value);
 	} else {
 		err = gpio_direction_output(gpio,
 					    !!(flags & GPIOF_INIT_HIGH));
-- 
2.13.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
