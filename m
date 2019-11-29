Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iahzG-0006RL-T7
 for barebox@lists.infradead.org; Fri, 29 Nov 2019 15:15:15 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>) id 1iahzA-0006u0-9R
 for barebox@lists.infradead.org; Fri, 29 Nov 2019 16:15:08 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 29 Nov 2019 16:15:01 +0100
Message-Id: <20191129151505.23946-36-l.stach@pengutronix.de>
In-Reply-To: <20191129151505.23946-1-l.stach@pengutronix.de>
References: <20191129151505.23946-1-l.stach@pengutronix.de>
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
Subject: [PATCH 35/39] net: designware-eqos: depend on COMMON_CLK
To: barebox@lists.infradead.org

The clk_bulk_* functions are only available with common clock.
Also OFTREE should not be selected, but is a dependency.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/net/Kconfig | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
index 62e522a302ad..5823320b03f1 100644
--- a/drivers/net/Kconfig
+++ b/drivers/net/Kconfig
@@ -90,8 +90,9 @@ endif
 config DRIVER_NET_DESIGNWARE_EQOS
 	bool "Designware Designware Ethernet QoS support"
 	depends on HAS_DMA
+	depends on COMMON_CLK
+	depends on OFTREE
 	select PHYLIB
-	select OFTREE
 	help
 	  This option enables support for the Synopsys
 	  Designware Ethernet Quality-of-Service (GMAC4).
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
