Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycore.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aVdA0-0006SC-HU
 for barebox@lists.infradead.org; Tue, 16 Feb 2016 10:47:14 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 3F108A00431
 for <barebox@lists.infradead.org>; Tue, 16 Feb 2016 11:47:09 +0100 (CET)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Tue, 16 Feb 2016 11:44:57 +0100
Message-Id: <1455619502-19908-3-git-send-email-t.remmet@phytec.de>
In-Reply-To: <1455619502-19908-1-git-send-email-t.remmet@phytec.de>
References: <1455619502-19908-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 2/7] ARM: am335x_defconfig: Enable watchdog support
To: barebox@lists.infradead.org

Enable wdt driver and command.

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 arch/arm/configs/am335x_defconfig | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/configs/am335x_defconfig b/arch/arm/configs/am335x_defconfig
index 180e016..7cf48b8 100644
--- a/arch/arm/configs/am335x_defconfig
+++ b/arch/arm/configs/am335x_defconfig
@@ -79,6 +79,7 @@ CONFIG_CMD_NANDTEST=y
 CONFIG_CMD_SPI=y
 CONFIG_CMD_LED_TRIGGER=y
 CONFIG_CMD_USBGADGET=y
+CONFIG_CMD_WD=y
 CONFIG_CMD_BAREBOX_UPDATE=y
 CONFIG_CMD_OF_NODE=y
 CONFIG_CMD_OF_PROPERTY=y
@@ -124,6 +125,8 @@ CONFIG_LED_GPIO=y
 CONFIG_LED_GPIO_OF=y
 CONFIG_LED_TRIGGERS=y
 CONFIG_EEPROM_AT24=y
+CONFIG_WATCHDOG=y
+CONFIG_WATCHDOG_OMAP=y
 CONFIG_GPIO_GENERIC_PLATFORM=y
 CONFIG_PINCTRL_SINGLE=y
 CONFIG_BUS_OMAP_GPMC=y
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
