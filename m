Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2DKt-0002eK-3q
 for barebox@lists.infradead.org; Mon, 26 Aug 2019 11:39:00 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Mon, 26 Aug 2019 13:38:52 +0200
Message-Id: <20190826113854.27895-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v1 1/3] MIPS: ath79: enable watchdog support
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

all ath79 based SoCs have watchdog. Make sure, it can be used.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/mips/configs/ath79_defconfig | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/mips/configs/ath79_defconfig b/arch/mips/configs/ath79_defconfig
index 83d22e4e1c..c41d0bf545 100644
--- a/arch/mips/configs/ath79_defconfig
+++ b/arch/mips/configs/ath79_defconfig
@@ -52,6 +52,7 @@ CONFIG_CMD_LED=y
 CONFIG_CMD_POWEROFF=y
 CONFIG_CMD_SPI=y
 CONFIG_CMD_LED_TRIGGER=y
+CONFIG_CMD_WD=y
 CONFIG_CMD_BAREBOX_UPDATE=y
 CONFIG_CMD_OF_NODE=y
 CONFIG_CMD_OF_PROPERTY=y
@@ -77,6 +78,9 @@ CONFIG_LED=y
 CONFIG_LED_GPIO=y
 CONFIG_LED_GPIO_OF=y
 CONFIG_LED_TRIGGERS=y
+CONFIG_WATCHDOG=y
+CONFIG_WATCHDOG_POLLER=y
+CONFIG_WATCHDOG_AR9344=y
 CONFIG_FS_TFTP=y
 CONFIG_FS_NFS=y
 CONFIG_DIGEST_SHA224_GENERIC=y
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
