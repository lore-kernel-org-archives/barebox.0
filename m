Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tg1kC-0008U0-32
 for barebox@lists.infradead.org; Tue, 04 Dec 2012 23:17:40 +0000
Received: from cpe78cd8ec96008-cm78cd8ec96005.cpe.net.cable.rogers.com
 ([72.137.5.185]:43375 helo=crashcourse.ca)
 by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
 (Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
 id 1Tg1k9-0006Oo-VJ
 for barebox@lists.infradead.org; Tue, 04 Dec 2012 18:17:38 -0500
Date: Tue, 4 Dec 2012 18:17:30 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.DEB.2.02.1212041816280.7694@oneiric>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] mach-omap/Kconfig: Some spelling fixes and indentation.
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>


Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
index 81f6127..b9f3dff 100644
--- a/arch/arm/mach-omap/Kconfig
+++ b/arch/arm/mach-omap/Kconfig
@@ -75,7 +75,7 @@ config OMAP_BUILD_SPI
 	bool
 	help
 	  Say Y here if you want to build an barebox.spi image as used
-	  on the AM35xx chips when booting form SPI NOR flash.
+	  on the AM35xx chips when booting from SPI NOR flash.

 config ARCH_TEXT_BASE
 	hex
@@ -89,7 +89,7 @@ config OMAP4_USBBOOT
 	help
 	  Say Y here if you want to be able to boot an OMAP4 cpu from USB.
 	  You need the utility program omap4_usbboot to boot from USB.
-	  Please read oamp4_usb_booting.txt for more information.
+	  Please read omap4_usb_booting.txt for more information.

 config BOARDINFO
 	default "Archos G9" if MACH_ARCHOSG9
@@ -115,14 +115,14 @@ config MACH_BEAGLE
 	select HAVE_NOSHELL
 	select HAVE_DEFAULT_ENVIRONMENT_NEW
 	depends on ARCH_OMAP3
-	  help
+	help
 	  Say Y here if you are using Beagle Board

 config MACH_OMAP3EVM
 	bool "Texas Instrument's OMAP3 EVM"
 	select HAVE_NOSHELL
 	depends on ARCH_OMAP3
-	  help
+	help
 	  Say Y here if you are using OMAP3EVM

 config MACH_PANDA
@@ -155,7 +155,7 @@ config MACH_PCAAL1
 	bool "Phytec phyCARD-A-L1"
 	select HAVE_NOSHELL
 	depends on ARCH_OMAP3
-	  help
+	help
 	  Say Y here if you are using a phyCARD-A-L1 PCA-A-L1

 config MACH_PCAAXL2

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
