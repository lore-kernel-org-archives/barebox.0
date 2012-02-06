Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RuVeO-0002Se-4D
 for barebox@lists.infradead.org; Mon, 06 Feb 2012 20:59:00 +0000
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
 ([99.241.91.63] helo=crashcourse.ca)
 by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
 (Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
 id 1RuVeH-0005G9-OV
 for barebox@lists.infradead.org; Mon, 06 Feb 2012 15:58:53 -0500
Date: Mon, 6 Feb 2012 15:58:38 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.DEB.2.02.1202061555500.16840@oneiric>
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
Subject: [PATCH] Add ARCH_OMAP[34] dependencies to Kconfig file
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>


Without the proper OMAP3 or OMAP4 dependency directives, you get the
wrong list of choices displayed based on which OMAP variant you pick.

Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

  is the MACH_PCAAL1 an OMAP3?  i wasn't sure, it looked that way.

diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
index 73125a7..ae5044a 100644
--- a/arch/arm/mach-omap/Kconfig
+++ b/arch/arm/mach-omap/Kconfig
@@ -142,6 +142,7 @@ config MACH_PANDA
 	bool "Texas Instrument's Panda Board"
 	select HAVE_NOSHELL
 	select MACH_HAS_LOWLEVEL_INIT
+	depends on ARCH_OMAP4
 	help
 	  Say Y here if you are using OMAP4 Panda board

@@ -159,6 +160,7 @@ config MACH_PCAAL1
 	select MACH_HAS_LOWLEVEL_INIT
 	select OMAP_CLOCK_ALL
 	select HAS_OMAP_NAND
+	depends on ARCH_OMAP3
 	  help
 	  Say Y here if you are using a phyCARD-A-L1 PCA-A-L1


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
