Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PKVRg-0000bf-QN
	for barebox@lists.infradead.org; Mon, 22 Nov 2010 12:24:33 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Mon, 22 Nov 2010 13:24:20 +0100
Message-Id: <1290428665-23561-2-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 1/6] Remove variable size restrictions in i.MX23's gpio
	managing routines
To: barebox@lists.infradead.org

There is no really need for restricted variable types for the parameters.
Replace them by standard C types with the same behaviour. Only imx_gpio_mode()
need it, to ensure GPIO's bit settings.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 arch/arm/mach-stm/iomux-imx23.c |   21 ++++++++++++++-------
 1 files changed, 14 insertions(+), 7 deletions(-)

diff --git a/arch/arm/mach-stm/iomux-imx23.c b/arch/arm/mach-stm/iomux-imx23.c
index b0f4046..b50aac3 100644
--- a/arch/arm/mach-stm/iomux-imx23.c
+++ b/arch/arm/mach-stm/iomux-imx23.c
@@ -31,42 +31,49 @@
 #define HW_PINCTRL_DIN0 0x600
 #define HW_PINCTRL_DOE0 0x700
 
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
 }
 
+static unsigned calc_input_reg(unsigned no)
+{
+	/* each register controls 32 pads */
+	return  ((no >> 5) << 4) + HW_PINCTRL_DIN0;
+}
+
 /**
  * @param[in] m One of the defines from iomux-mx23.h to configure *one* pin
  */
-void imx_gpio_mode(unsigned m)
+void imx_gpio_mode(uint32_t m)
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
