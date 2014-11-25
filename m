Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XtJWC-0002PI-I8
 for barebox@lists.infradead.org; Tue, 25 Nov 2014 17:03:13 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <l.stach@pengutronix.de>) id 1XtJVq-0000RL-Vs
 for barebox@lists.infradead.org; Tue, 25 Nov 2014 18:02:51 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue, 25 Nov 2014 18:02:48 +0100
Message-Id: <1416934970-24929-3-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1416934970-24929-1-git-send-email-l.stach@pengutronix.de>
References: <1416934970-24929-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH v2 3/5] net: ethoc: depend on OPENRISC
To: barebox@lists.infradead.org

This driver currently only works on OpenRISC, as it uses
the cache flush/invalidate functions of this arch.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
The situation with cache functions scatterd into different files
for the various arches is a mess currently. We should really aim
to unify this into a common dma-mapping.h, to make it easier for
driver writers.
---
 drivers/net/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
index 24b984462d15..0d32f952422c 100644
--- a/drivers/net/Kconfig
+++ b/drivers/net/Kconfig
@@ -97,6 +97,7 @@ config DRIVER_NET_EP93XX
 
 config DRIVER_NET_ETHOC
 	bool "OpenCores ethernet MAC driver"
+	depends on OPENRISC
 	depends on HAS_CACHE
 	select PHYLIB
 	help
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
