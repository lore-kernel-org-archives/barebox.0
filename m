Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlS4k-00046H-7N
 for barebox@lists.infradead.org; Thu, 11 Jul 2019 05:57:03 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 11 Jul 2019 07:56:55 +0200
Message-Id: <20190711055655.6497-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] usb: imx-usb-phy: select syscon driver
To: Barebox List <barebox@lists.infradead.org>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Since b904eca92f we depend on syscon once the "fsl,anatop" property is
found. select MFD_SYSCON to make sure it is available.

Fixes: b904eca92f ("usb: imx-usb-phy: Disable charger detect during initialization")
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/imx/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/usb/imx/Kconfig b/drivers/usb/imx/Kconfig
index 07ca41b63a..05f17fbd2f 100644
--- a/drivers/usb/imx/Kconfig
+++ b/drivers/usb/imx/Kconfig
@@ -18,3 +18,4 @@ config USB_IMX_PHY
 	bool
 	default y if (ARCH_IMX6 || ARCH_VF610) && GENERIC_PHY
 	select STMP_DEVICE
+	select MFD_SYSCON
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
