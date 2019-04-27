Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKSCA-0003kZ-RE
 for barebox@lists.infradead.org; Sat, 27 Apr 2019 18:37:10 +0000
Received: from antimon.fritz.box (a89-183-44-132.net-htp.de [89.183.44.132])
 by lynxeye.de (Postfix) with ESMTPA id BA243E74222
 for <barebox@lists.infradead.org>; Sat, 27 Apr 2019 20:36:31 +0200 (CEST)
From: Lucas Stach <l.stach@pengutronix.de>
Date: Sat, 27 Apr 2019 20:36:26 +0200
Message-Id: <20190427183627.22549-4-l.stach@pengutronix.de>
In-Reply-To: <20190427183627.22549-1-l.stach@pengutronix.de>
References: <20190427183627.22549-1-l.stach@pengutronix.de>
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
Subject: [PATCH 3/4] ARM: rpi: enable sdhost driver in defconfig
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/configs/rpi_defconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/configs/rpi_defconfig b/arch/arm/configs/rpi_defconfig
index f167625c96..0ae0c42b12 100644
--- a/arch/arm/configs/rpi_defconfig
+++ b/arch/arm/configs/rpi_defconfig
@@ -66,12 +66,12 @@ CONFIG_SERIAL_AMBA_PL011=y
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_MCI=y
 CONFIG_MCI_BCM283X=y
+CONFIG_MCI_BCM283X_SDHOST=y
 CONFIG_LED=y
 CONFIG_LED_GPIO=y
 CONFIG_LED_TRIGGERS=y
 CONFIG_WATCHDOG=y
 CONFIG_WATCHDOG_BCM2835=y
-CONFIG_PINCTRL=y
 CONFIG_PINCTRL_BCM283X=y
 CONFIG_REGULATOR=y
 CONFIG_FS_EXT4=y
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
