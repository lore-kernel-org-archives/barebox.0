Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RujjY-0007nA-Q3
 for barebox@lists.infradead.org; Tue, 07 Feb 2012 12:01:18 +0000
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
 ([99.241.91.63] helo=crashcourse.ca)
 by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
 (Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
 id 1RujjV-0005U8-Om
 for barebox@lists.infradead.org; Tue, 07 Feb 2012 07:01:13 -0500
Date: Tue, 7 Feb 2012 07:01:04 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.DEB.2.02.1202070656530.23864@oneiric>
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
Subject: [PATCH] Remove apparently superfluous Kconfig variable HAS_OMAP_NAND
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>


Remove what is an apparently valueless Kconfig variable HAS_OMAP_NAND.
A search of the entire source tree shows:

$ grep -r HAS_OMAP_NAND *
arch/arm/mach-omap/Kconfig:	select HAS_OMAP_NAND
arch/arm/mach-omap/Kconfig:	select HAS_OMAP_NAND
arch/arm/mach-omap/Kconfig:	select HAS_OMAP_NAND
arch/arm/mach-omap/Kconfig:	select HAS_OMAP_NAND
arch/arm/mach-omap/Kconfig:config HAS_OMAP_NAND
arch/arm/configs/phycard_a_l1_defconfig:CONFIG_HAS_OMAP_NAND=y
$

where the definition of that variable is simply:

config HAS_OMAP_NAND
        bool

so it seems pretty clear it can be removed as nothing is using it.

Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

  compile-tested for beagleboard.  beyond that, it looks like a pretty
safe removal.

diff --git a/arch/arm/configs/phycard_a_l1_defconfig b/arch/arm/configs/phycard_a_l1_defconfig
index 95dffbb..64afcc2 100644
--- a/arch/arm/configs/phycard_a_l1_defconfig
+++ b/arch/arm/configs/phycard_a_l1_defconfig
@@ -13,7 +13,6 @@ CONFIG_OMAP3_CLOCK_CONFIG=y
 CONFIG_OMAP3_COPY_CLOCK_SRAM=n
 CONFIG_OMAP_GPMC=y
 CONFIG_MACH_PCAAL1=y
-CONFIG_HAS_OMAP_NAND=y
 CONFIG_AEABI=y
 CONFIG_CMD_ARM_CPUINFO=y
 CONFIG_ARM_EXCEPTIONS=y
diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
index 73125a7..6a5e674 100644
--- a/arch/arm/mach-omap/Kconfig
+++ b/arch/arm/mach-omap/Kconfig
@@ -114,7 +114,6 @@ config MACH_OMAP343xSDP
 	bool "Texas Instrument's SDP343x"
 	select MACH_HAS_LOWLEVEL_INIT
 	select OMAP_CLOCK_ALL
-	select HAS_OMAP_NAND
 	depends on ARCH_OMAP3
 	help
 	  Say Y here if you are using SDP343x platform
@@ -124,7 +123,6 @@ config MACH_BEAGLE
 	select MACH_HAS_LOWLEVEL_INIT
 	select OMAP_CLOCK_ALL
 	select HAVE_NOSHELL
-	select HAS_OMAP_NAND
 	depends on ARCH_OMAP3
 	  help
 	  Say Y here if you are using Beagle Board
@@ -133,7 +131,6 @@ config MACH_OMAP3EVM
 	bool "Texas Instrument's OMAP3 EVM"
 	select MACH_HAS_LOWLEVEL_INIT
 	select OMAP_CLOCK_ALL
-	select HAS_OMAP_NAND
 	depends on ARCH_OMAP3
 	  help
 	  Say Y here if you are using OMAP3EVM
@@ -158,7 +155,6 @@ config MACH_PCAAL1
 	bool "Phytec phyCARD-A-L1"
 	select MACH_HAS_LOWLEVEL_INIT
 	select OMAP_CLOCK_ALL
-	select HAS_OMAP_NAND
 	  help
 	  Say Y here if you are using a phyCARD-A-L1 PCA-A-L1

@@ -190,7 +186,4 @@ config MACH_OMAP_ADVANCED_MUX
 	  Say Y here if you would like to have complete pin muxing to be
 	  done at boot time

-config HAS_OMAP_NAND
-	bool
-
 endmenu

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
