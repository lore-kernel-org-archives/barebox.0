Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tws0L-00072L-Ep
 for barebox@lists.infradead.org; Sun, 20 Jan 2013 10:19:58 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 20 Jan 2013 11:19:50 +0100
Message-Id: <1358677194-23423-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1358677194-23423-1-git-send-email-s.hauer@pengutronix.de>
References: <1358677194-23423-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/5] ARM i.MX6 USB phy: Fix phy function names
To: barebox@lists.infradead.org

The imx6_usb_phy1* functions are misnamed. It's usb phy2 that is configured
here, so rename the functions accordingly.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/freescale-mx6-sabrelite/board.c |    4 ++--
 arch/arm/mach-imx/include/mach/usb.h            |    4 ++--
 arch/arm/mach-imx/usb-imx6.c                    |    4 ++--
 3 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boards/freescale-mx6-sabrelite/board.c b/arch/arm/boards/freescale-mx6-sabrelite/board.c
index 55087c2..2a12786 100644
--- a/arch/arm/boards/freescale-mx6-sabrelite/board.c
+++ b/arch/arm/boards/freescale-mx6-sabrelite/board.c
@@ -231,8 +231,8 @@ static struct esdhc_platform_data sabrelite_sd4_data = {
 
 static void sabrelite_ehci_init(void)
 {
-	imx6_usb_phy1_disable_oc();
-	imx6_usb_phy1_enable();
+	imx6_usb_phy2_disable_oc();
+	imx6_usb_phy2_enable();
 
 	/* hub reset */
 	gpio_direction_output(204, 0);
diff --git a/arch/arm/mach-imx/include/mach/usb.h b/arch/arm/mach-imx/include/mach/usb.h
index 0a88e7f..85528d7 100644
--- a/arch/arm/mach-imx/include/mach/usb.h
+++ b/arch/arm/mach-imx/include/mach/usb.h
@@ -11,7 +11,7 @@
 #define MX35_H1_USBTE_BIT	(1 << 4)
 #define MXC_EHCI_INTERFACE_SINGLE_UNI	(2 << 0)
 
-int imx6_usb_phy1_disable_oc(void);
-int imx6_usb_phy1_enable(void);
+int imx6_usb_phy2_disable_oc(void);
+int imx6_usb_phy2_enable(void);
 
 #endif /* __MACH_USB_H_*/
diff --git a/arch/arm/mach-imx/usb-imx6.c b/arch/arm/mach-imx/usb-imx6.c
index cd234d2..a3c4304 100644
--- a/arch/arm/mach-imx/usb-imx6.c
+++ b/arch/arm/mach-imx/usb-imx6.c
@@ -46,7 +46,7 @@
 #define USBPHY1_PLL_480_CTRL_EN_USB_CLK	(1 <<  6)
 #define USBPHY1_PLL_480_CTRL_BYPASS	(1 << 16)
 
-int imx6_usb_phy1_disable_oc(void)
+int imx6_usb_phy2_disable_oc(void)
 {
 	int val;
 
@@ -64,7 +64,7 @@ int imx6_usb_phy1_disable_oc(void)
 	return 0;
 }
 
-int imx6_usb_phy1_enable(void)
+int imx6_usb_phy2_enable(void)
 {
 	int val;
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
