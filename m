Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dY8Py-0008DT-ON
 for barebox@lists.infradead.org; Thu, 20 Jul 2017 10:10:52 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.84_2)
 (envelope-from <l.stach@pengutronix.de>) id 1dY8Pd-0005pZ-3J
 for barebox@lists.infradead.org; Thu, 20 Jul 2017 12:10:29 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu, 20 Jul 2017 12:10:27 +0200
Message-Id: <20170720101028.4289-2-l.stach@pengutronix.de>
In-Reply-To: <20170720101028.4289-1-l.stach@pengutronix.de>
References: <20170720101028.4289-1-l.stach@pengutronix.de>
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
Subject: [PATCH 2/3] ARM: imx: hab: depend on OFDEVICE
To: barebox@lists.infradead.org

The selected OCOTP driver requires OFDEVICE support.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 1c9e33ffe58a..321f5696c184 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -734,6 +734,7 @@ config HABV4
 	select HAB
 	select IMX_OCOTP
 	depends on ARCH_IMX6
+	depends on OFDEVICE
 	help
 	  High Assurance Boot, as found on i.MX28/i.MX6.
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
