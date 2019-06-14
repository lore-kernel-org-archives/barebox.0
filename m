Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbsx5-0004RR-3p
 for barebox@lists.infradead.org; Fri, 14 Jun 2019 20:37:39 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mgr@pengutronix.de>) id 1hbsx0-0002PF-Pw
 for barebox@lists.infradead.org; Fri, 14 Jun 2019 22:37:30 +0200
Received: from mgr by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mgr@pengutronix.de>) id 1hbsx0-0005Fk-Ip
 for barebox@lists.infradead.org; Fri, 14 Jun 2019 22:37:30 +0200
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Fri, 14 Jun 2019 22:37:26 +0200
Message-Id: <20190614203726.20148-1-m.grzeschik@pengutronix.de>
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
Subject: [PATCH] pcf857x: fix CONFIG_OF to OFDEVICE
To: barebox@lists.infradead.org

There is not CONFIG_OF symbol. We fix this
by using OFDEVICE instead.

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 drivers/gpio/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
index 6a4de7fbc8..7a1503198b 100644
--- a/drivers/gpio/Kconfig
+++ b/drivers/gpio/Kconfig
@@ -101,7 +101,7 @@ config GPIO_PCA953X
 config GPIO_PCF857X
 	tristate "PCF857x, PCA{85,96}7x, and MAX732[89] I2C GPIO expanders"
 	depends on I2C
-	depends on CONFIG_OF
+	depends on OFDEVICE
 	help
 	  Say yes here to provide access to most "quasi-bidirectional" I2C
 	  GPIO expanders used for additional digital outputs or inputs.
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
