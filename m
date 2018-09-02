Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fwZoY-0000EY-UK
 for barebox@lists.infradead.org; Sun, 02 Sep 2018 21:21:49 +0000
From: Roland Hieber <r.hieber@pengutronix.de>
Date: Sun,  2 Sep 2018 23:21:21 +0200
Message-Id: <20180902212123.16405-3-r.hieber@pengutronix.de>
In-Reply-To: <20180902212123.16405-1-r.hieber@pengutronix.de>
References: <20180902212123.16405-1-r.hieber@pengutronix.de>
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
Subject: [PATCH 2/4] ARM: i.MX: Kindle 4/5 is based on Device Tree,
 select it in Kconfig
To: barebox@lists.infradead.org
Cc: Roland Hieber <rohieb@rohieb.name>

From: Roland Hieber <rohieb@rohieb.name>

Without OFTREE, no ./scripts/dtc and none of the device trees will be
built, and compilation will fail because the board code references it.

Signed-off-by: Roland Hieber <rohieb@rohieb.name>
---
 arch/arm/mach-imx/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 7cb9138d24..d57ea369a8 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -242,6 +242,7 @@ config MACH_KINDLE_MX50
 	select MFD_MC13XXX
 	select ARM_BOARD_APPEND_ATAG
 	select ARM_LINUX
+	select OFTREE
 	help
 	  Say Y here if you are using the fourth or fifth generation Amazon
 	  Kindle Model No. D01100 (Kindle Wi-Fi), D01200 (Kindle Touch) or
-- 
2.18.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
