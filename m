Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hctEg-0000S6-MD
 for barebox@lists.infradead.org; Mon, 17 Jun 2019 15:07:57 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1hctEf-0000j5-4T
 for barebox@lists.infradead.org; Mon, 17 Jun 2019 17:07:53 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1hctEe-0002GL-Gw
 for barebox@lists.infradead.org; Mon, 17 Jun 2019 17:07:52 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 17 Jun 2019 17:07:46 +0200
Message-Id: <20190617150751.3421-8-a.fatoum@pengutronix.de>
In-Reply-To: <20190617150751.3421-1-a.fatoum@pengutronix.de>
References: <20190617150751.3421-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v1 07/12] ARM: stm32mp: turn on GPIO related options
To: barebox@lists.infradead.org

Now with pinctrl/GPIO support, enable some useful GPIO-related
drivers and commands.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/configs/stm32mp_defconfig | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/arch/arm/configs/stm32mp_defconfig b/arch/arm/configs/stm32mp_defconfig
index 3c248079ac7e..26859597710b 100644
--- a/arch/arm/configs/stm32mp_defconfig
+++ b/arch/arm/configs/stm32mp_defconfig
@@ -70,6 +70,8 @@ CONFIG_CMD_MM=y
 CONFIG_CMD_CLK=y
 CONFIG_CMD_DETECT=y
 CONFIG_CMD_FLASH=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_LED=y
 CONFIG_CMD_WD=y
 CONFIG_CMD_BAREBOX_UPDATE=y
 CONFIG_CMD_OF_NODE=y
@@ -86,10 +88,14 @@ CONFIG_DRIVER_NET_DESIGNWARE_GENERIC=y
 CONFIG_AT803X_PHY=y
 CONFIG_MICREL_PHY=y
 # CONFIG_SPI is not set
+CONFIG_LED=y
+CONFIG_LED_GPIO=y
+CONFIG_LED_GPIO_OF=y
 CONFIG_WATCHDOG=y
 CONFIG_WATCHDOG_POLLER=y
 CONFIG_STM32_IWDG_WATCHDOG=y
-# CONFIG_PINCTRL is not set
+CONFIG_REGULATOR=y
+CONFIG_REGULATOR_FIXED=y
 CONFIG_FS_EXT4=y
 CONFIG_FS_TFTP=y
 CONFIG_FS_NFS=y
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
