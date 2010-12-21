Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PV0LO-0007Kl-JJ
	for barebox@lists.infradead.org; Tue, 21 Dec 2010 11:25:33 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <jbe@pengutronix.de>) id 1PV0LM-0007h1-HF
	for barebox@lists.infradead.org; Tue, 21 Dec 2010 12:25:24 +0100
Received: from jbe by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <jbe@pengutronix.de>) id 1PV0LM-0000Qs-FN
	for barebox@lists.infradead.org; Tue, 21 Dec 2010 12:25:24 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Tue, 21 Dec 2010 12:25:15 +0100
Message-Id: <1292930721-31734-4-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 3/9] ARM STM/i.MX: Remove variable size restrictions in iomux
	managing routines
To: barebox@lists.infradead.org

There is no really need for restricted variable types for the parameters.
Replace them by standard C types with the same behaviour.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 arch/arm/mach-stm/iomux-imx.c |   13 +++++++------
 1 files changed, 7 insertions(+), 6 deletions(-)

diff --git a/arch/arm/mach-stm/iomux-imx.c b/arch/arm/mach-stm/iomux-imx.c
index 2c34d01..2ebe058 100644
--- a/arch/arm/mach-stm/iomux-imx.c
+++ b/arch/arm/mach-stm/iomux-imx.c
@@ -46,31 +46,31 @@
 #define MAX_GPIO_NO 159
 #endif
 
-static uint32_t calc_mux_reg(uint32_t no)
+static unsigned calc_mux_reg(unsigned no)
 {
 	/* each register controls 16 pads */
 	return ((no >> 4) << 4) + HW_PINCTRL_MUXSEL0;
 }
 
-static uint32_t calc_strength_reg(uint32_t no)
+static unsigned calc_strength_reg(unsigned no)
 {
 	/* each register controls 8 pads */
 	return  ((no >> 3) << 4) + HW_PINCTRL_DRIVE0;
 }
 
-static uint32_t calc_pullup_reg(uint32_t no)
+static unsigned calc_pullup_reg(unsigned no)
 {
 	/* each register controls 32 pads */
 	return  ((no >> 5) << 4) + HW_PINCTRL_PULL0;
 }
 
-static uint32_t calc_output_enable_reg(uint32_t no)
+static unsigned calc_output_enable_reg(unsigned no)
 {
 	/* each register controls 32 pads */
 	return  ((no >> 5) << 4) + HW_PINCTRL_DOE0;
 }
 
-static uint32_t calc_output_reg(uint32_t no)
+static unsigned calc_output_reg(unsigned no)
 {
 	/* each register controls 32 pads */
 	return  ((no >> 5) << 4) + HW_PINCTRL_DOUT0;
@@ -81,7 +81,8 @@ static uint32_t calc_output_reg(uint32_t no)
  */
 void imx_gpio_mode(unsigned m)
 {
-	uint32_t reg_offset, gpio_pin, reg;
+	uint32_t reg;
+	unsigned gpio_pin, reg_offset;
 
 	gpio_pin = GET_GPIO_NO(m);
 
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
