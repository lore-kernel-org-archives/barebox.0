Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sot1p-0003jV-Nc
 for barebox@lists.infradead.org; Wed, 11 Jul 2012 09:16:17 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:6f8:1178:4:5054:ff:fe8d:eefb] helo=localhost)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1Sot1i-00057x-QP
 for barebox@lists.infradead.org; Wed, 11 Jul 2012 11:16:06 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Wed, 11 Jul 2012 11:15:58 +0200
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201207111115.58627.jbe@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH/Master] ARM/MXS: the GPIO bitkeeper enable logic is inverse to
 the pullup enable logic
To: barebox@lists.infradead.org

While a set bit enables the pullup (if exists) it disables the bitkeeper (if
exists). Both features are using the same register bit and only one of this
feature is present on a per pin base.
    
Signed-off-by: Juergen Beisert <jbe@pengutronix.de>

diff --git a/arch/arm/mach-mxs/iomux-imx.c b/arch/arm/mach-mxs/iomux-imx.c
index 9203588..784c506 100644
--- a/arch/arm/mach-mxs/iomux-imx.c
+++ b/arch/arm/mach-mxs/iomux-imx.c
@@ -125,7 +125,7 @@ void imx_gpio_mode(uint32_t m)
 	if (BK_PRESENT(m)) {
 		reg_offset = calc_pullup_reg(gpio_pin);
 		writel(0x1 << (gpio_pin % 32), IMX_IOMUXC_BASE + reg_offset +
-				(GET_BITKEEPER(m) == 1 ? BIT_SET : BIT_CLR));
+				(GET_BITKEEPER(m) == 1 ? BIT_CLR : BIT_SET));
 	}
 
 	if (GET_FUNC(m) == IS_GPIO) {

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
