Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PS62L-000207-Ru
	for barebox@lists.infradead.org; Mon, 13 Dec 2010 10:53:54 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <jbe@pengutronix.de>) id 1PS62F-0008Qo-Rr
	for barebox@lists.infradead.org; Mon, 13 Dec 2010 11:53:39 +0100
Received: from jbe by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <jbe@pengutronix.de>) id 1PS62F-0002IX-Pc
	for barebox@lists.infradead.org; Mon, 13 Dec 2010 11:53:39 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Mon, 13 Dec 2010 11:53:28 +0100
Message-Id: <1292237617-7064-6-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1292237617-7064-1-git-send-email-jbe@pengutronix.de>
References: <1292237617-7064-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 05/14] STM378x: Parameterize the max. possible GPIO number
To: barebox@lists.infradead.org

This is for easier integration of the i.MX28 architecture (to share the code
later on).

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 arch/arm/mach-stm/iomux-imx23.c |    4 +++-
 1 files changed, 3 insertions(+), 1 deletions(-)

diff --git a/arch/arm/mach-stm/iomux-imx23.c b/arch/arm/mach-stm/iomux-imx23.c
index b0f4046..5d4465e 100644
--- a/arch/arm/mach-stm/iomux-imx23.c
+++ b/arch/arm/mach-stm/iomux-imx23.c
@@ -31,6 +31,8 @@
 #define HW_PINCTRL_DIN0 0x600
 #define HW_PINCTRL_DOE0 0x700
 
+#define MAX_GPIO_NO 95
+
 static uint32_t calc_mux_reg(uint32_t no)
 {
 	/* each register controls 16 pads */
@@ -77,7 +79,7 @@ void imx_gpio_mode(unsigned m)
 	writel(reg, IMX_IOMUXC_BASE + reg_offset);
 
 	/* some pins are disabled when configured for GPIO */
-	if ((gpio_pin > 95) && (GET_FUNC(m) == IS_GPIO)) {
+	if ((gpio_pin > MAX_GPIO_NO) && (GET_FUNC(m) == IS_GPIO)) {
 		printf("Cannot configure pad %d to GPIO\n", gpio_pin);
 		return;
 	}
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
