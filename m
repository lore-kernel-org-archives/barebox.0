Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXsHS-0004yb-Vs
 for barebox@lists.infradead.org; Mon, 03 Jun 2019 19:06:05 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <afa@pengutronix.de>) id 1hXsHR-0007CZ-G1
 for barebox@lists.infradead.org; Mon, 03 Jun 2019 21:06:01 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1hXsHR-0004Vj-2G
 for barebox@lists.infradead.org; Mon, 03 Jun 2019 21:06:01 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  3 Jun 2019 21:05:56 +0200
Message-Id: <20190603190559.16715-4-a.fatoum@pengutronix.de>
In-Reply-To: <20190603190559.16715-1-a.fatoum@pengutronix.de>
References: <20190603190559.16715-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 4/7] ARM: stm32mp1: enable watchdog in oftree and defconfig
To: barebox@lists.infradead.org

With the IWDG driver implemented in barebox, have it be part of the
default configuration.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/configs/stm32mp_defconfig | 5 ++++-
 arch/arm/dts/stm32mp157c-dk2.dts   | 4 ++++
 2 files changed, 8 insertions(+), 1 deletion(-)

diff --git a/arch/arm/configs/stm32mp_defconfig b/arch/arm/configs/stm32mp_defconfig
index 657b2edf57f2..99523a78650e 100644
--- a/arch/arm/configs/stm32mp_defconfig
+++ b/arch/arm/configs/stm32mp_defconfig
@@ -25,7 +25,6 @@ CONFIG_CONSOLE_ALLOW_COLOR=y
 CONFIG_PBL_CONSOLE=y
 CONFIG_PARTITION=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
-CONFIG_POLLER=y
 CONFIG_RESET_SOURCE=y
 CONFIG_DEBUG_INITCALLS=y
 CONFIG_CMD_DMESG=y
@@ -71,6 +70,7 @@ CONFIG_CMD_MM=y
 CONFIG_CMD_CLK=y
 CONFIG_CMD_DETECT=y
 CONFIG_CMD_FLASH=y
+CONFIG_CMD_WD=y
 CONFIG_CMD_BAREBOX_UPDATE=y
 CONFIG_CMD_OF_NODE=y
 CONFIG_CMD_OF_PROPERTY=y
@@ -86,6 +86,9 @@ CONFIG_DRIVER_NET_DESIGNWARE_GENERIC=y
 CONFIG_AT803X_PHY=y
 CONFIG_MICREL_PHY=y
 # CONFIG_SPI is not set
+CONFIG_WATCHDOG=y
+CONFIG_WATCHDOG_POLLER=y
+CONFIG_STM32_IWDG_WATCHDOG=y
 # CONFIG_PINCTRL is not set
 CONFIG_FS_EXT4=y
 CONFIG_FS_TFTP=y
diff --git a/arch/arm/dts/stm32mp157c-dk2.dts b/arch/arm/dts/stm32mp157c-dk2.dts
index 7565cabc3d92..5c39a1a4f5a8 100644
--- a/arch/arm/dts/stm32mp157c-dk2.dts
+++ b/arch/arm/dts/stm32mp157c-dk2.dts
@@ -12,3 +12,7 @@
 	model = "STMicroelectronics STM32MP157C-DK2 Discovery Board";
 	compatible = "st,stm32mp157c-dk2", "st,stm32mp157";
 };
+
+&iwdg2 {
+       status = "okay";
+};
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
