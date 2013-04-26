Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp38.i.mail.ru ([94.100.177.98])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UVli5-0008Rf-Ix
 for barebox@lists.infradead.org; Fri, 26 Apr 2013 16:41:23 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Fri, 26 Apr 2013 20:41:07 +0400
Message-Id: <1366994474-21325-2-git-send-email-shc_work@mail.ru>
In-Reply-To: <1366994474-21325-1-git-send-email-shc_work@mail.ru>
References: <1366994474-21325-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 2/9] ARM: at91 gpio: Fix possible null pointer dereference
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/mach-at91/gpio.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-at91/gpio.c b/arch/arm/mach-at91/gpio.c
index c2618c7..0e39a52 100644
--- a/arch/arm/mach-at91/gpio.c
+++ b/arch/arm/mach-at91/gpio.c
@@ -185,10 +185,10 @@ static struct at91_pinctrl_mux_ops at91sam9x5_ops = {
 int at91_mux_pin(unsigned pin, enum at91_mux mux, int use_pullup)
 {
 	struct at91_gpio_chip *at91_gpio = pin_to_controller(pin);
-	void __iomem *pio = at91_gpio->regbase;
+	void __iomem *pio;
+	struct device_d *dev;
 	unsigned mask = pin_to_mask(pin);
 	int bank = pin_to_bank(pin);
-	struct device_d *dev = at91_gpio->chip.dev;
 
 	if (!at91_gpio)
 		return -EINVAL;
@@ -197,6 +197,7 @@ int at91_mux_pin(unsigned pin, enum at91_mux mux, int use_pullup)
 	if (!pio)
 		return -EINVAL;
 
+	dev = at91_gpio->chip.dev;
 	at91_mux_disable_interrupt(pio, mask);
 
 	pin %= MAX_NB_GPIO_PER_BANK;
-- 
1.8.1.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
