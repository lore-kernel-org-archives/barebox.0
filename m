Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJzkx-0006N8-S2
 for barebox@lists.infradead.org; Mon, 14 Oct 2019 12:47:25 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Oct 2019 14:47:21 +0200
Message-Id: <20191014124721.1965-1-a.fatoum@pengutronix.de>
In-Reply-To: <20191014123930.x2ea4ka6hwu3u7uv@pengutronix.de>
References: <20191014123930.x2ea4ka6hwu3u7uv@pengutronix.de>
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
Subject: [PATCH] fixup! watchdog: add support for Fintek F718xx and,
 F818xx Super I/O
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

 Remove unrelated hunk, replace select with depends like suggested by
 Sascha.

---
 drivers/watchdog/Kconfig | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
index b1c2a39b6629..45dd41a2a2f3 100644
--- a/drivers/watchdog/Kconfig
+++ b/drivers/watchdog/Kconfig
@@ -90,7 +90,6 @@ config STM32_IWDG_WATCHDOG
 	  Enable to support configuration of the STM32's on-SoC IWDG watchdog.
 	  Once started by the user, the IWDG can't be disabled.
 
-
 config STPMIC1_WATCHDOG
 	bool "STPMIC1 Watchdog"
 	depends on MFD_STPMIC1
@@ -100,7 +99,7 @@ config STPMIC1_WATCHDOG
 config F71808E_WDT
 	bool "Fintek F718xx, F818xx Super I/O Watchdog"
 	depends on X86
-	select FINTEK_SUPERIO
+	depends on FINTEK_SUPERIO
 	help
 	  This is the driver for the hardware watchdog on the Fintek F71808E,
 	  F71862FG, F71868, F71869, F71882FG, F71889FG, F81865 and F81866
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
