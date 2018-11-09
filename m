Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gL3TN-0002hb-BE
 for barebox@lists.infradead.org; Fri, 09 Nov 2018 09:53:08 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  9 Nov 2018 10:52:42 +0100
Message-Id: <20181109095246.15068-17-s.hauer@pengutronix.de>
In-Reply-To: <20181109095246.15068-1-s.hauer@pengutronix.de>
References: <20181109095246.15068-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 16/20] pinctrl: at91: Add missing include
To: Barebox List <barebox@lists.infradead.org>

mach/iomux.h provides prototypes for functions that the pinctrl driver
implements, so include it. With this we have a duplicate definition of
enum at91_mux so remove it from the pinctrl driver.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/pinctrl/pinctrl-at91.c | 9 +--------
 1 file changed, 1 insertion(+), 8 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-at91.c b/drivers/pinctrl/pinctrl-at91.c
index 3201eb9cb1..11e00833c5 100644
--- a/drivers/pinctrl/pinctrl-at91.c
+++ b/drivers/pinctrl/pinctrl-at91.c
@@ -32,6 +32,7 @@
 
 #include <mach/at91_pio.h>
 #include <mach/gpio.h>
+#include <mach/iomux.h>
 
 #include <pinctrl.h>
 
@@ -46,14 +47,6 @@ struct at91_gpio_chip {
 	struct at91_pinctrl_mux_ops *ops;	/* ops */
 };
 
-enum at91_mux {
-	AT91_MUX_GPIO = 0,
-	AT91_MUX_PERIPH_A = 1,
-	AT91_MUX_PERIPH_B = 2,
-	AT91_MUX_PERIPH_C = 3,
-	AT91_MUX_PERIPH_D = 4,
-};
-
 #define MAX_GPIO_BANKS		5
 #define to_at91_pinctrl(c) container_of(c, struct at91_pinctrl, pctl);
 #define to_at91_gpio_chip(c) container_of(c, struct at91_gpio_chip, chip)
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
