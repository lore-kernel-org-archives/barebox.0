Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.89 #1 (Red Hat Linux))
 id 1ejAht-0006jo-7O
 for barebox@lists.infradead.org; Tue, 06 Feb 2018 21:23:14 +0000
Received: from tellur.fritz.box (a89-183-13-207.net-htp.de [89.183.13.207])
 by lynxeye.de (Postfix) with ESMTPA id 25E01E741E3
 for <barebox@lists.infradead.org>; Tue,  6 Feb 2018 22:11:20 +0100 (CET)
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue,  6 Feb 2018 22:11:15 +0100
Message-Id: <20180206211115.25178-2-l.stach@pengutronix.de>
In-Reply-To: <20180206211115.25178-1-l.stach@pengutronix.de>
References: <20180206211115.25178-1-l.stach@pengutronix.de>
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
Subject: [PATCH 2/2] ARM: rpi: enable watchdog in defconfig
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/configs/rpi_defconfig | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/configs/rpi_defconfig b/arch/arm/configs/rpi_defconfig
index ddd1a5970..2bb615849 100644
--- a/arch/arm/configs/rpi_defconfig
+++ b/arch/arm/configs/rpi_defconfig
@@ -57,6 +57,7 @@ CONFIG_CMD_MM=y
 CONFIG_CMD_CLK=y
 CONFIG_CMD_DETECT=y
 CONFIG_CMD_GPIO=y
+CONFIG_CMD_WD=y
 CONFIG_CMD_OF_NODE=y
 CONFIG_CMD_OF_PROPERTY=y
 CONFIG_CMD_OFTREE=y
@@ -67,6 +68,8 @@ CONFIG_MCI_BCM283X=y
 CONFIG_LED=y
 CONFIG_LED_GPIO=y
 CONFIG_LED_TRIGGERS=y
+CONFIG_WATCHDOG=y
+CONFIG_WATCHDOG_BCM2835=y
 CONFIG_GPIO_BCM283X=y
 # CONFIG_PINCTRL is not set
 CONFIG_REGULATOR=y
-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
