Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PKVRi-0000cA-Sz
	for barebox@lists.infradead.org; Mon, 22 Nov 2010 12:24:35 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Mon, 22 Nov 2010 13:24:21 +0100
Message-Id: <1290428665-23561-3-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1290428665-23561-1-git-send-email-jbe@pengutronix.de>
References: <1290428665-23561-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 2/6] Simplify test for the max. possible GPIO number.
To: barebox@lists.infradead.org

This is only for easier integration of the i.MX28 architecture.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 arch/arm/mach-stm/iomux-imx23.c |    4 +++-
 1 files changed, 3 insertions(+), 1 deletions(-)

diff --git a/arch/arm/mach-stm/iomux-imx23.c b/arch/arm/mach-stm/iomux-imx23.c
index b50aac3..55e7798 100644
--- a/arch/arm/mach-stm/iomux-imx23.c
+++ b/arch/arm/mach-stm/iomux-imx23.c
@@ -31,6 +31,8 @@
 #define HW_PINCTRL_DIN0 0x600
 #define HW_PINCTRL_DOE0 0x700
 
+#define MAX_GPIO_NO 95
+
 static unsigned calc_mux_reg(unsigned no)
 {
 	/* each register controls 16 pads */
@@ -84,7 +86,7 @@ void imx_gpio_mode(uint32_t m)
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
