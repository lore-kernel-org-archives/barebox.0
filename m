Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1UAQzV-0005Y9-BW
 for barebox@lists.infradead.org; Tue, 26 Feb 2013 20:19:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 26 Feb 2013 21:18:46 +0100
Message-Id: <1361909936-2665-20-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1361909936-2665-1-git-send-email-s.hauer@pengutronix.de>
References: <1361909936-2665-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 19/29] of: move oftree Kconfig to the top of the drivers menu
To: barebox@lists.infradead.org

Using OFDEVICE is a basic decision, so move it to the top
of the driver menu.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/Kconfig |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/Kconfig b/drivers/Kconfig
index 988ec9e..70321ea 100644
--- a/drivers/Kconfig
+++ b/drivers/Kconfig
@@ -1,5 +1,6 @@
 menu "Drivers"
 
+source "drivers/of/Kconfig"
 source "drivers/serial/Kconfig"
 source "drivers/net/Kconfig"
 source "drivers/spi/Kconfig"
@@ -21,7 +22,6 @@ source "drivers/watchdog/Kconfig"
 source "drivers/pwm/Kconfig"
 source "drivers/dma/Kconfig"
 source "drivers/gpio/Kconfig"
-source "drivers/of/Kconfig"
 source "drivers/w1/Kconfig"
 
 endmenu
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
