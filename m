Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PKVRk-0000co-Tv
	for barebox@lists.infradead.org; Mon, 22 Nov 2010 12:24:37 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Mon, 22 Nov 2010 13:24:22 +0100
Message-Id: <1290428665-23561-4-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 3/6] i.MX23: Add support for the gpio commands
To: barebox@lists.infradead.org

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 arch/arm/mach-stm/iomux-imx23.c |   38 ++++++++++++++++++++++++++++++++++++++
 1 files changed, 38 insertions(+), 0 deletions(-)

diff --git a/arch/arm/mach-stm/iomux-imx23.c b/arch/arm/mach-stm/iomux-imx23.c
index 55e7798..88e0218 100644
--- a/arch/arm/mach-stm/iomux-imx23.c
+++ b/arch/arm/mach-stm/iomux-imx23.c
@@ -20,6 +20,7 @@
 #include <common.h>
 #include <init.h>
 #include <gpio.h>
+#include <errno.h>
 #include <asm/io.h>
 #include <mach/imx-regs.h>
 
@@ -124,3 +125,40 @@ void imx_gpio_mode(uint32_t m)
 		}
 	}
 }
+
+void gpio_set_value(unsigned gpio, int val)
+{
+	unsigned reg_offset;
+
+	reg_offset = calc_output_reg(gpio);
+	pr_debug("%u: Accessing %X+%X with value %X\n", gpio, IMX_IOMUXC_BASE,
+		reg_offset, 0x1 << (gpio % 32));
+	writel(0x1 << (gpio % 32),
+		IMX_IOMUXC_BASE + reg_offset + (val != 0 ? 4 : 8));
+}
+
+int gpio_direction_input(unsigned gpio)
+{
+	pr_err("Not yet supported\n");
+	return -EINVAL;
+}
+
+int gpio_direction_output(unsigned gpio, int val)
+{
+	pr_err("Not yet supported\n");
+	return -EINVAL;
+}
+
+int gpio_get_value(unsigned gpio)
+{
+	uint32_t reg;
+	unsigned reg_offset;
+
+	reg_offset = calc_input_reg(gpio);
+	reg = readl(IMX_IOMUXC_BASE + reg_offset);
+	pr_debug("%u: Accessing %X+%X with value %X->%X\n", gpio, IMX_IOMUXC_BASE,
+		reg_offset, 0x1 << (gpio % 32), reg & (0x1 << (gpio % 32)));
+	if (reg & (0x1 << (gpio % 32)))
+		return 1;
+	return 0;
+}
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
