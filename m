Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fmfjG-0001Wk-Fb
 for barebox@lists.infradead.org; Mon, 06 Aug 2018 13:39:23 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  6 Aug 2018 15:39:06 +0200
Message-Id: <20180806133906.14986-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] aiodev: Fix whitespaces in Kconfig
To: Barebox List <barebox@lists.infradead.org>

Replace whitespaces with tabs.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/aiodev/Kconfig | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/aiodev/Kconfig b/drivers/aiodev/Kconfig
index 8bad946920..9f4fe60577 100644
--- a/drivers/aiodev/Kconfig
+++ b/drivers/aiodev/Kconfig
@@ -7,10 +7,10 @@ menuconfig AIODEV
 if AIODEV
 
 config IMX_THERMAL
-       tristate "Temperature sensor driver for Freescale i.MX SoCs"
-       depends on ARCH_IMX6
-       select MFD_SYSCON
-       help
+	tristate "Temperature sensor driver for Freescale i.MX SoCs"
+	depends on ARCH_IMX6
+	select MFD_SYSCON
+	help
          Support for Temperature Monitor (TEMPMON) found on Freescale
          i.MX SoCs.
 
-- 
2.18.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
