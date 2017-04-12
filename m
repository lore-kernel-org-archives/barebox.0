Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cyIRI-0005lS-0v
 for barebox@lists.infradead.org; Wed, 12 Apr 2017 13:36:07 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.84_2)
 (envelope-from <l.stach@pengutronix.de>) id 1cyIQt-000833-Ha
 for barebox@lists.infradead.org; Wed, 12 Apr 2017 15:35:39 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed, 12 Apr 2017 15:35:39 +0200
Message-Id: <20170412133539.32000-3-l.stach@pengutronix.de>
In-Reply-To: <20170412133539.32000-1-l.stach@pengutronix.de>
References: <20170412133539.32000-1-l.stach@pengutronix.de>
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
Subject: [PATCH 3/3] ARM: imx: HAB needs fuse driver support
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 96ba1d497b71..6a4b00b62bd5 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -711,6 +711,7 @@ config HAB
 config HABV4
 	tristate "HABv4 support"
 	select HAB
+	select IMX_OCOTP
 	depends on ARCH_IMX6
 	help
 	  High Assurance Boot, as found on i.MX28/i.MX6.
@@ -752,6 +753,7 @@ endif
 config HABV3
 	tristate "HABv3 support"
 	select HAB
+	select IMX_IIM
 	select ARCH_IMX_IMXIMAGE_SSL_SUPPORT
 	depends on ARCH_IMX25
 	help
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
