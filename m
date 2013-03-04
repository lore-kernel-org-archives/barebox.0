Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UCS5d-0005q6-P8
 for barebox@lists.infradead.org; Mon, 04 Mar 2013 09:53:51 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Mar 2013 10:53:24 +0100
Message-Id: <1362390820-10333-22-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1362390820-10333-1-git-send-email-s.hauer@pengutronix.de>
References: <1362390820-10333-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 21/37] of: move oftree Kconfig to the top of the drivers menu
To: barebox@lists.infradead.org

Using OFDEVICE is a basic decision, so move it to the top
of the driver menu.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/Kconfig |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/Kconfig b/drivers/Kconfig
index 16ca5b9..b213849 100644
--- a/drivers/Kconfig
+++ b/drivers/Kconfig
@@ -1,5 +1,6 @@
 menu "Drivers"
 
+source "drivers/of/Kconfig"
 source "drivers/amba/Kconfig"
 source "drivers/serial/Kconfig"
 source "drivers/net/Kconfig"
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
