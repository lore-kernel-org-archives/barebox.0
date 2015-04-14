Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x22e.google.com ([2a00:1450:400c:c05::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Yi9iI-0007AW-Ur
 for barebox@lists.infradead.org; Tue, 14 Apr 2015 22:53:52 +0000
Received: by wizk4 with SMTP id k4so132619797wiz.1
 for <barebox@lists.infradead.org>; Tue, 14 Apr 2015 15:53:27 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Wed, 15 Apr 2015 00:53:16 +0200
Message-Id: <1429052000-20647-3-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH v2 2/6] gpio: Return -EPROBE_DEFER on gpio_get_num()
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

GPIO drivers can be registered quite late in registration process
causing dependant devices to fail probing. If we know gpio_get_num
will be called with a non-NULL device, return -EPROBE_DEFER instead
of -ENODEV to allow re-probing later.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Changelog:
v1->v2:
- none

Cc: barebox@lists.infradead.org
---
 drivers/gpio/gpiolib.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
index 611e41ea5606..1f57c76ec16d 100644
--- a/drivers/gpio/gpiolib.c
+++ b/drivers/gpio/gpiolib.c
@@ -292,12 +292,15 @@ int gpio_get_num(struct device_d *dev, int gpio)
 {
 	struct gpio_chip *chip;
 
+	if (!dev)
+		return -ENODEV;
+
 	list_for_each_entry(chip, &chip_list, list) {
 		if (chip->dev == dev)
 			return chip->base + gpio;
 	}
 
-	return -ENODEV;
+	return -EPROBE_DEFER;
 }
 
 #ifdef CONFIG_CMD_GPIO
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
