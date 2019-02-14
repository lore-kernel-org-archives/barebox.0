Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2a00:ee2:100:3a01::1] (helo=chandra.tablix.org)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1guH0e-0000r7-U4
 for barebox@lists.infradead.org; Thu, 14 Feb 2019 13:25:18 +0000
From: Tomaz Solc <tomaz.solc@tablix.org>
Date: Thu, 14 Feb 2019 14:24:27 +0100
Message-Id: <20190214132429.7463-6-tomaz.solc@tablix.org>
In-Reply-To: <20190214132429.7463-1-tomaz.solc@tablix.org>
References: <20190214132429.7463-1-tomaz.solc@tablix.org>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 5/7] mci: move after pinctrl in link order.
To: barebox@lists.infradead.org
Cc: Tomaz Solc <tomaz.solc@tablix.org>

pinctrl driver needs to be initialized before mci driver or the pinctrl
device tree properties in the mci node are ignored. Since mci is already
initialized by the coredevice_initcall(), changing the link order is currently
the only way to ensure that.
---
 drivers/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/Makefile b/drivers/Makefile
index 752fd6624..9f0a5e4d6 100644
--- a/drivers/Makefile
+++ b/drivers/Makefile
@@ -9,7 +9,6 @@ obj-y	+= usb/
 obj-$(CONFIG_DISK) += ata/
 obj-$(CONFIG_SPI) += spi/
 obj-$(CONFIG_I2C) += i2c/
-obj-$(CONFIG_MCI) += mci/
 obj-$(CONFIG_VIDEO) += video/
 obj-y	+= clk/
 obj-y	+= clocksource/
@@ -27,6 +26,7 @@ obj-$(CONFIG_HWRNG) += hw_random/
 obj-$(CONFIG_OFTREE) += of/
 obj-$(CONFIG_W1) += w1/
 obj-y += pinctrl/
+obj-$(CONFIG_MCI) += mci/
 obj-y += bus/
 obj-$(CONFIG_REGULATOR) += regulator/
 obj-$(CONFIG_RESET_CONTROLLER) += reset/
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
