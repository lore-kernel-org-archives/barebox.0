Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bopAt-00013z-2C
 for barebox@lists.infradead.org; Tue, 27 Sep 2016 09:59:44 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <l.stach@pengutronix.de>) id 1bopAV-0002ex-JG
 for barebox@lists.infradead.org; Tue, 27 Sep 2016 11:59:19 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue, 27 Sep 2016 11:59:19 +0200
Message-Id: <20160927095919.3461-2-l.stach@pengutronix.de>
In-Reply-To: <20160927095919.3461-1-l.stach@pengutronix.de>
References: <20160927095919.3461-1-l.stach@pengutronix.de>
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
Subject: [PATCH 2/2] serial: arm_dcc: depend on !CPU_V8
To: barebox@lists.infradead.org

The DCC console uses coprocessor registers registers accesses, the
implementation of those for ARMv8 is currently missing.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/serial/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/serial/Kconfig b/drivers/serial/Kconfig
index 146bf1ec3c30..b112d7ee044a 100644
--- a/drivers/serial/Kconfig
+++ b/drivers/serial/Kconfig
@@ -2,7 +2,7 @@ menu "serial drivers"
 	depends on !CONSOLE_NONE
 
 config DRIVER_SERIAL_ARM_DCC
-	depends on ARM
+	depends on ARM && !CPU_V8
 	bool "ARM Debug Communications Channel (DCC) serial driver"
 
 config SERIAL_AMBA_PL011
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
