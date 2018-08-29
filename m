Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fuxN5-0005Sy-N2
 for barebox@lists.infradead.org; Wed, 29 Aug 2018 10:06:45 +0000
Received: from unicorn.hi.pengutronix.de
 ([2001:67c:670:100:a61f:72ff:fe69:16d] helo=unicorn)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1fuxMs-0002Ah-58
 for barebox@lists.infradead.org; Wed, 29 Aug 2018 12:06:30 +0200
Received: from str by unicorn with local (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1fuxNO-0003Xr-7k
 for barebox@lists.infradead.org; Wed, 29 Aug 2018 12:07:02 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Wed, 29 Aug 2018 12:06:52 +0200
Message-Id: <20180829100652.13529-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH] drivers: net: designware: select reset controller
To: Barebox List <barebox@lists.infradead.org>

The socfpga-specific designware driver uses reset_control_get().
Select the socfpga-reset driver to actually use this function instead of
a stub.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/net/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
index b633a3ac4d7b..1aa096f005e3 100644
--- a/drivers/net/Kconfig
+++ b/drivers/net/Kconfig
@@ -83,6 +83,7 @@ config DRIVER_NET_DESIGNWARE_SOCFPGA
 	bool "Designware Universal MAC ethernet driver for SoCFPGA platforms"
 	depends on ARCH_SOCFPGA
 	select MFD_SYSCON
+	select RESET_CONTROLLER
 	help
 	  This option enables support for the Synopsys
 	  Designware Core Univesal MAC 10M/100M/1G ethernet IP on SoCFPGA.
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
