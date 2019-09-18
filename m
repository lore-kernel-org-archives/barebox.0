Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAUnC-0001qW-Kd
 for barebox@lists.infradead.org; Wed, 18 Sep 2019 07:54:29 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 18 Sep 2019 09:54:19 +0200
Message-Id: <20190918075421.20456-15-s.hauer@pengutronix.de>
In-Reply-To: <20190918075421.20456-1-s.hauer@pengutronix.de>
References: <20190918075421.20456-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 14/16] ARM: mxs: Allow to compile all boards for a SoC together
To: Barebox List <barebox@lists.infradead.org>

All boards in mach-mxs support multi image, so we no longer have to make
the board type a choice. Let the user compile all boards for a SoC
together. We cannot compile i.MX23 together with i.MX28 though, there
are still many conflicting defines which use the IMX_ namespace which
are really SoC specific.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-mxs/Kconfig | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/arch/arm/mach-mxs/Kconfig b/arch/arm/mach-mxs/Kconfig
index ea877d24a3..b3a7c6259c 100644
--- a/arch/arm/mach-mxs/Kconfig
+++ b/arch/arm/mach-mxs/Kconfig
@@ -29,9 +29,6 @@ endchoice
 
 if ARCH_IMX23
 
-choice
-	prompt "i.MX23 Board Type"
-
 config MACH_MX23EVK
 	bool "mx23-evk"
 	help
@@ -48,15 +45,10 @@ config MACH_IMX233_OLINUXINO
 	help
 	  Say Y here if you are using the imx233-olinuxino
 
-endchoice
-
 endif
 
 if ARCH_IMX28
 
-choice
-	prompt "i.MX28 Board Type"
-
 config MACH_TX28
 	bool "KARO tx28"
 	help
@@ -82,8 +74,6 @@ config MACH_CFA10036
 	help
 	  Say Y here if you are using the Crystalfontz CFA-10036 module
 
-endchoice
-
 endif
 
 menu "i.MX specific settings"
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
