Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZIDFc-00036g-Lf
 for barebox@lists.infradead.org; Thu, 23 Jul 2015 09:57:18 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <l.stach@pengutronix.de>) id 1ZIBNj-00021X-O7
 for barebox@lists.infradead.org; Thu, 23 Jul 2015 09:57:31 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu, 23 Jul 2015 11:56:52 +0200
Message-Id: <1437645413-18057-3-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1437645413-18057-1-git-send-email-l.stach@pengutronix.de>
References: <1437645413-18057-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 3/4] ARM: rockchip: depend on OFTREE
To: barebox@lists.infradead.org

From: Lucas Stach <dev@lynxeye.de>

The current supported Rockchip board is initialized from a
builtin DTB and I suppose all future boards will do the same.

Fixes various missing functions and prototypes in Rockchip clk
driver.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/Kconfig                    | 1 +
 arch/arm/configs/rockchip_defconfig | 2 --
 2 files changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 50f30958bac8..ef7b60d16819 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -158,6 +158,7 @@ config ARCH_ROCKCHIP
 	select GPIOLIB
 	select PINCTRL
 	select PINCTRL_ROCKCHIP
+	select OFTREE
 	select HAVE_PBL_MULTI_IMAGES
 	select HAS_DEBUG_LL
 	select ARCH_HAS_L2X0
diff --git a/arch/arm/configs/rockchip_defconfig b/arch/arm/configs/rockchip_defconfig
index e08699d1f549..b738620c68f4 100644
--- a/arch/arm/configs/rockchip_defconfig
+++ b/arch/arm/configs/rockchip_defconfig
@@ -80,14 +80,12 @@ CONFIG_OF_BAREBOX_DRIVERS=y
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_DRIVER_NET_ARC_EMAC=y
 CONFIG_SMSC_PHY=y
-CONFIG_I2C=y
 CONFIG_I2C_GPIO=y
 CONFIG_MCI=y
 CONFIG_MCI_STARTUP=y
 CONFIG_MCI_MMC_BOOT_PARTITIONS=y
 CONFIG_MCI_DW=y
 CONFIG_MCI_DW_PIO=y
-CONFIG_MFD_ACT8846=y
 CONFIG_LED=y
 CONFIG_LED_GPIO=y
 CONFIG_LED_GPIO_OF=y
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
