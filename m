Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PV0LO-0007Kp-Jo
	for barebox@lists.infradead.org; Tue, 21 Dec 2010 11:25:34 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <jbe@pengutronix.de>) id 1PV0LM-0007h7-KH
	for barebox@lists.infradead.org; Tue, 21 Dec 2010 12:25:24 +0100
Received: from jbe by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <jbe@pengutronix.de>) id 1PV0LM-0000R1-H7
	for barebox@lists.infradead.org; Tue, 21 Dec 2010 12:25:24 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Tue, 21 Dec 2010 12:25:18 +0100
Message-Id: <1292930721-31734-7-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 6/9] ARM STM/i.MX: Add support for the gpio commands
To: barebox@lists.infradead.org

Just an architecture improvement.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 arch/arm/Kconfig                      |    1 +
 arch/arm/configs/chumbyone_defconfig  |    1 +
 arch/arm/configs/tx28stk5_defconfig   |    1 +
 arch/arm/mach-stm/include/mach/gpio.h |    4 ++
 arch/arm/mach-stm/iomux-imx.c         |   60 +++++++++++++++++++++++++++++++++
 5 files changed, 67 insertions(+), 0 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index c09d21b..f1536a5 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -41,6 +41,7 @@ config ARCH_IMX
 
 config ARCH_STM
 	bool "SigmaTel/FSL iMX-based"
+	select GENERIC_GPIO
 
 config ARCH_NETX
 	bool "Hilscher NetX based"
diff --git a/arch/arm/configs/chumbyone_defconfig b/arch/arm/configs/chumbyone_defconfig
index 6e6623a..45804a8 100644
--- a/arch/arm/configs/chumbyone_defconfig
+++ b/arch/arm/configs/chumbyone_defconfig
@@ -24,6 +24,7 @@ CONFIG_CMD_RESET=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_BMP=y
+CONFIG_CMD_GPIO=y
 # CONFIG_SPI is not set
 CONFIG_VIDEO=y
 CONFIG_DRIVER_VIDEO_STM=y
diff --git a/arch/arm/configs/tx28stk5_defconfig b/arch/arm/configs/tx28stk5_defconfig
index d6b81c6..0851d5e 100644
--- a/arch/arm/configs/tx28stk5_defconfig
+++ b/arch/arm/configs/tx28stk5_defconfig
@@ -32,6 +32,7 @@ CONFIG_CMD_GO=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_BMP=y
+CONFIG_CMD_GPIO=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_TFTP=y
diff --git a/arch/arm/mach-stm/include/mach/gpio.h b/arch/arm/mach-stm/include/mach/gpio.h
index 97566a2..c419926 100644
--- a/arch/arm/mach-stm/include/mach/gpio.h
+++ b/arch/arm/mach-stm/include/mach/gpio.h
@@ -30,5 +30,9 @@
 #endif
 
 void imx_gpio_mode(uint32_t);
+void gpio_set_value(unsigned, int);
+int gpio_direction_input(unsigned);
+int gpio_direction_output(unsigned, int);
+int gpio_get_value(unsigned);
 
 #endif /* __ASM_MACH_GPIO_H */
diff --git a/arch/arm/mach-stm/iomux-imx.c b/arch/arm/mach-stm/iomux-imx.c
index 8a34e4c..b9fa565 100644
--- a/arch/arm/mach-stm/iomux-imx.c
+++ b/arch/arm/mach-stm/iomux-imx.c
@@ -20,6 +20,7 @@
 #include <common.h>
 #include <init.h>
 #include <gpio.h>
+#include <errno.h>
 #include <asm/io.h>
 #include <mach/imx-regs.h>
 
@@ -76,6 +77,12 @@ static unsigned calc_output_reg(unsigned no)
 	return  ((no >> 5) << 4) + HW_PINCTRL_DOUT0;
 }
 
+static unsigned calc_input_reg(unsigned no)
+{
+	/* each register controls 32 pads */
+	return  ((no >> 5) << 4) + HW_PINCTRL_DIN0;
+}
+
 /**
  * @param[in] m One pin define per call from iomux-mx23.h/iomux-mx28.h
  */
@@ -137,3 +144,56 @@ void imx_gpio_mode(uint32_t m)
 		}
 	}
 }
+
+int gpio_direction_input(unsigned gpio)
+{
+	unsigned reg_offset;
+
+	if (gpio > MAX_GPIO_NO)
+		return -EINVAL;
+
+	reg_offset = calc_output_enable_reg(gpio);
+	writel(0x1 << (gpio % 32), IMX_IOMUXC_BASE + reg_offset + BIT_CLR);
+
+	return 0;
+}
+
+int gpio_direction_output(unsigned gpio, int val)
+{
+	unsigned reg_offset;
+
+	if (gpio > MAX_GPIO_NO)
+		return -EINVAL;
+
+	/* first set the output value... */
+	reg_offset = calc_output_reg(gpio);
+	writel(0x1 << (gpio % 32), IMX_IOMUXC_BASE +
+		reg_offset + (val != 0 ? BIT_SET : BIT_CLR));
+	/* ...then the direction */
+	reg_offset = calc_output_enable_reg(gpio);
+	writel(0x1 << (gpio % 32), IMX_IOMUXC_BASE + reg_offset + BIT_SET);
+
+	return 0;
+}
+
+void gpio_set_value(unsigned gpio, int val)
+{
+	unsigned reg_offset;
+
+	reg_offset = calc_output_reg(gpio);
+	writel(0x1 << (gpio % 32), IMX_IOMUXC_BASE +
+				reg_offset + (val != 0 ? BIT_SET : BIT_CLR));
+}
+
+int gpio_get_value(unsigned gpio)
+{
+	uint32_t reg;
+	unsigned reg_offset;
+
+	reg_offset = calc_input_reg(gpio);
+	reg = readl(IMX_IOMUXC_BASE + reg_offset);
+	if (reg & (0x1 << (gpio % 32)))
+		return 1;
+
+	return 0;
+}
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
