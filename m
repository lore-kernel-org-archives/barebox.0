Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kOIjx-0006QG-Eg
 for barebox@lists.infradead.org; Fri, 02 Oct 2020 10:56:42 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1kOIju-0000U8-Rq
 for barebox@lists.infradead.org; Fri, 02 Oct 2020 12:56:38 +0200
Received: from mfe by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1kOIju-0001jJ-JY
 for barebox@lists.infradead.org; Fri, 02 Oct 2020 12:56:38 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Fri,  2 Oct 2020 12:56:34 +0200
Message-Id: <20201002105635.4662-2-m.felsch@pengutronix.de>
In-Reply-To: <20201002105635.4662-1-m.felsch@pengutronix.de>
References: <20201002105635.4662-1-m.felsch@pengutronix.de>
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
Subject: [PATCH 2/3] ARM: i.MX6X: cleanup build dependency
To: barebox@lists.infradead.org

Both dependencies are covered by ARCH_IMX6 so we no longer need to
mention them here too.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 1e4ba0bca4..a1127e3707 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -157,8 +157,6 @@ config ARCH_IMX6SL
 config ARCH_IMX6SX
 	bool
 	select ARCH_IMX6
-	select OFTREE
-	select COMMON_CLK_OF_PROVIDER
 
 config ARCH_IMX6UL
 	bool
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
