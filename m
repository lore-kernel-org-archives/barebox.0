Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x234.google.com ([2a00:1450:4013:c01::234])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vf8Wp-0000gO-Le
 for barebox@lists.infradead.org; Sat, 09 Nov 2013 13:24:44 +0000
Received: by mail-ea0-f180.google.com with SMTP id b11so1709895eae.11
 for <barebox@lists.infradead.org>; Sat, 09 Nov 2013 05:24:19 -0800 (PST)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Sat,  9 Nov 2013 14:24:09 +0100
Message-Id: <1384003450-21001-5-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1384003450-21001-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1384003450-21001-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 4/4] gpio: dw: add get_direction callback
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

This adds a callback function to read the current state of a GPIOs
in/out direction.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org
---
 drivers/gpio/gpio-dw.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/gpio/gpio-dw.c b/drivers/gpio/gpio-dw.c
index 791488a..6577042 100644
--- a/drivers/gpio/gpio-dw.c
+++ b/drivers/gpio/gpio-dw.c
@@ -90,9 +90,18 @@ static int dw_gpio_direction_output(struct gpio_chip *gc,
 	return 0;
 }
 
+static int dw_gpio_get_direction(struct gpio_chip *gc, unsigned offset)
+{
+	struct dw_gpio_instance *chip = to_dw_gpio(gc);
+
+	return (readl(chip->regs + DW_GPIO_DDR) & (1 << offset)) ?
+		GPIO_DIR_OUT : GPIO_DIR_IN;
+}
+
 static struct gpio_ops imx_gpio_ops = {
 	.direction_input = dw_gpio_direction_input,
 	.direction_output = dw_gpio_direction_output,
+	.get_direction = dw_gpio_get_direction,
 	.get = dw_gpio_get,
 	.set = dw_gpio_set,
 };
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
