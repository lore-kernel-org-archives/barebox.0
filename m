Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U5umx-00052x-30
 for barebox@lists.infradead.org; Thu, 14 Feb 2013 09:07:33 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 14 Feb 2013 10:07:27 +0100
Message-Id: <1360832847-22414-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1360832847-22414-1-git-send-email-s.hauer@pengutronix.de>
References: <1360832847-22414-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/5] USB i.MX6: Add HSIC support
To: barebox@lists.infradead.org

HSIC needs some special setup for i.MX6. Most ugly detail is that
the HSIC needs help of the IOMUX to configure a pullup on the strobe
line. This has to be done after the ehci controller has started.
Fortunately there is only one muxing possibility for the HSIC ports
on i.MX6, so we can simply control the iomux from the usbmisc driver.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/imx/imx-usb-misc.c |   60 ++++++++++++++++++++++++++++++++++++++++
 1 file changed, 60 insertions(+)

diff --git a/drivers/usb/imx/imx-usb-misc.c b/drivers/usb/imx/imx-usb-misc.c
index d42f4c0..901ced4 100644
--- a/drivers/usb/imx/imx-usb-misc.c
+++ b/drivers/usb/imx/imx-usb-misc.c
@@ -17,6 +17,8 @@
 #include <init.h>
 #include <io.h>
 #include <usb/chipidea-imx.h>
+#include <mach/imx6-regs.h>
+#include <mach/iomux-mx6.h>
 
 #define MX25_OTG_SIC_SHIFT	29
 #define MX25_OTG_SIC_MASK	(0x3 << MX25_OTG_SIC_SHIFT)
@@ -345,14 +347,72 @@ static __maybe_unused struct imx_usb_misc_data mx5_data = {
 	.init = mx5_initialize_usb_hw,
 };
 
+static void mx6_hsic_pullup(unsigned long reg, int on)
+{
+	u32 val;
+
+	val = readl(MX6_IOMUXC_BASE_ADDR + reg);
+
+	if (on)
+		val |= MX6_PAD_CTL_PUS_47K_UP;
+	else
+		val &= ~MX6_PAD_CTL_PUS_47K_UP;
+
+	writel(val, MX6_IOMUXC_BASE_ADDR + reg);
+}
+
 static __maybe_unused int mx6_initialize_usb_hw(void __iomem *base, int port,
 		unsigned int flags)
 {
+	switch (port) {
+	case 0:
+		break;
+	case 1:
+		break;
+	case 2: /* HSIC port */
+		mx6_hsic_pullup(0x388, 0);
+
+		writel(0x00003000, base + 0x8);
+		writel(0x80001842, base + 0x10);
+
+		break;
+	case 3: /* HSIC port */
+		writel(0x00003000, base + 0xc);
+		writel(0x80001842, base + 0x14);
+
+		mx6_hsic_pullup(0x398, 0);
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+static __maybe_unused int mx6_post_init(void __iomem *base, int port,
+		unsigned int flags)
+{
+	switch (port) {
+	case 0:
+		break;
+	case 1:
+		break;
+	case 2: /* HSIC port */
+		mx6_hsic_pullup(0x388, 1);
+		break;
+	case 3: /* HSIC port */
+		mx6_hsic_pullup(0x398, 1);
+		break;
+	default:
+		return -EINVAL;
+	}
+
 	return 0;
 }
 
 static __maybe_unused struct imx_usb_misc_data mx6_data = {
 	.init = mx6_initialize_usb_hw,
+	.post_init = mx6_post_init,
 };
 
 static struct platform_device_id imx_usbmisc_ids[] = {
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
