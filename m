Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PV0LO-0007Ko-JS
	for barebox@lists.infradead.org; Tue, 21 Dec 2010 11:25:30 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <jbe@pengutronix.de>) id 1PV0LM-0007h8-Kc
	for barebox@lists.infradead.org; Tue, 21 Dec 2010 12:25:24 +0100
Received: from jbe by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <jbe@pengutronix.de>) id 1PV0LM-0000R4-Hd
	for barebox@lists.infradead.org; Tue, 21 Dec 2010 12:25:24 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Tue, 21 Dec 2010 12:25:19 +0100
Message-Id: <1292930721-31734-8-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1292930721-31734-1-git-send-email-jbe@pengutronix.de>
References: <1292930721-31734-1-git-send-email-jbe@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 7/9] ARM STM/i.MX: Avoid very long lines
To: barebox@lists.infradead.org

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 arch/arm/mach-stm/iomux-imx.c |    6 ++++--
 1 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-stm/iomux-imx.c b/arch/arm/mach-stm/iomux-imx.c
index b9fa565..c59f0ac 100644
--- a/arch/arm/mach-stm/iomux-imx.c
+++ b/arch/arm/mach-stm/iomux-imx.c
@@ -124,14 +124,16 @@ void imx_gpio_mode(uint32_t m)
 
 	if (PE_PRESENT(m)) {
 		reg_offset = calc_pullup_reg(gpio_pin);
-		writel(0x1 << (gpio_pin % 32), IMX_IOMUXC_BASE + reg_offset + (GET_PULLUP(m) == 1 ? 4 : 8));
+		writel(0x1 << (gpio_pin % 32), IMX_IOMUXC_BASE + reg_offset +
+				(GET_PULLUP(m) == 1 ? 4 : 8));
 	}
 
 	if (GET_FUNC(m) == IS_GPIO) {
 		if (GET_GPIODIR(m) == 1) {
 			/* first set the output value */
 			reg_offset = calc_output_reg(gpio_pin);
-			writel(0x1 << (gpio_pin % 32), IMX_IOMUXC_BASE + reg_offset + (GET_GPIOVAL(m) == 1 ? 4 : 8));
+			writel(0x1 << (gpio_pin % 32), IMX_IOMUXC_BASE +
+				reg_offset + (GET_GPIOVAL(m) == 1 ? 4 : 8));
 			/* then the direction */
 			reg_offset = calc_output_enable_reg(gpio_pin);
 			writel(0x1 << (gpio_pin % 32),
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
