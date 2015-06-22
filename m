Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z6z30-0002Rt-Vq
 for barebox@lists.infradead.org; Mon, 22 Jun 2015 10:33:52 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <jbe@pengutronix.de>) id 1Z6z2d-0002E3-GV
 for barebox@lists.infradead.org; Mon, 22 Jun 2015 12:33:27 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.85)
 (envelope-from <jbe@pengutronix.de>) id 1Z6z2d-0002jB-9w
 for barebox@lists.infradead.org; Mon, 22 Jun 2015 12:33:27 +0200
From: Juergen Borleis <jbe@pengutronix.de>
Date: Mon, 22 Jun 2015 12:33:23 +0200
Message-Id: <1434969204-11433-6-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1434969204-11433-1-git-send-email-jbe@pengutronix.de>
References: <1434969204-11433-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 5/6] Watchdog/i.MX: make the watchdog driver a regular driver
To: barebox@lists.infradead.org

Even if the driver for the internal watchdog unit is disabled, it gets
enabled again silently if we select an i.MX platform.

This change compiles the driver on user demand only. Barebox can handle one
watchdog and one reset source. This change enables a user to select a
different one if the built-in unit cannot be used due to hardware issues like
power management and voltage changes the internal watchdog cannot reset
correctly.

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 arch/arm/Kconfig          | 1 -
 drivers/watchdog/Kconfig  | 3 ---
 drivers/watchdog/Makefile | 2 +-
 3 files changed, 1 insertion(+), 5 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 50f3095..b115d10 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -101,7 +101,6 @@ config ARCH_IMX
 	select GPIOLIB
 	select COMMON_CLK
 	select CLKDEV_LOOKUP
-	select WATCHDOG_IMX_RESET_SOURCE
 	select HAS_DEBUG_LL
 
 config ARCH_MVEBU
diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
index 7f7b02e..f43c101 100644
--- a/drivers/watchdog/Kconfig
+++ b/drivers/watchdog/Kconfig
@@ -1,7 +1,4 @@
 
-config WATCHDOG_IMX_RESET_SOURCE
-	bool
-
 menuconfig WATCHDOG
 	bool "Watchdog support"
 	help
diff --git a/drivers/watchdog/Makefile b/drivers/watchdog/Makefile
index 865fc47..446056d 100644
--- a/drivers/watchdog/Makefile
+++ b/drivers/watchdog/Makefile
@@ -1,4 +1,4 @@
 obj-$(CONFIG_WATCHDOG) += wd_core.o
 obj-$(CONFIG_WATCHDOG_MXS28) += im28wd.o
 obj-$(CONFIG_WATCHDOG_JZ4740) += jz4740.o
-obj-$(CONFIG_WATCHDOG_IMX_RESET_SOURCE) += imxwd.o
+obj-$(CONFIG_WATCHDOG_IMX) += imxwd.o
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
