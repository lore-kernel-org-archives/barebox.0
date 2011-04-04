Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q6jbc-0002C4-5g
	for barebox@lists.infradead.org; Mon, 04 Apr 2011 13:14:18 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Apr 2011 15:13:58 +0200
Message-Id: <1301922843-12118-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1301922843-12118-1-git-send-email-s.hauer@pengutronix.de>
References: <1301922843-12118-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 4/9] ARM omap: move architecture specific kconfig entries to
	arch part
To: barebox@lists.infradead.org

Just like all other architectures do.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/omap/Kconfig |   93 ------------------------------------------
 arch/arm/mach-omap/Kconfig   |   70 ++++++++++++++++++++++++++++++-
 2 files changed, 68 insertions(+), 95 deletions(-)
 delete mode 100644 arch/arm/boards/omap/Kconfig

diff --git a/arch/arm/boards/omap/Kconfig b/arch/arm/boards/omap/Kconfig
deleted file mode 100644
index d612064..0000000
--- a/arch/arm/boards/omap/Kconfig
+++ /dev/null
@@ -1,93 +0,0 @@
-# OMAP based Board Specific Configuration file
-#
-# (C) Copyright 2008
-# OMAP Architecture specific features
-# Texas Instruments, <www.ti.com>
-# Nishanth Menon <x0nishan@ti.com>
-#
-# This program is free software; you can redistribute it and/or
-# modify it under the terms of the GNU General Public License as
-# published by the Free Software Foundation; either version 2 of
-# the License, or (at your option) any later version.
-#
-# This program is distributed in the hope that it will be useful,
-# but WITHOUT ANY WARRANTY; without even the implied warranty of
-# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-# GNU General Public License for more details.
-#
-# You should have received a copy of the GNU General Public License
-# along with this program; if not, write to the Free Software
-# Foundation, Inc., 59 Temple Place, Suite 330, Boston,
-# MA 02111-1307 USA
-
-config ARCH_TEXT_BASE
-	hex
-	default 0x80e80000 if MACH_OMAP343xSDP
-	default 0x80e80000 if MACH_BEAGLE
-
-menu "OMAP Platform Features"
-
-config BOARDINFO
-	default "Texas Instrument's SDP343x" if MACH_OMAP343xSDP
-	default "Texas Instrument's Beagle" if MACH_BEAGLE
-	default "Texas Instrument's OMAP3EVM" if MACH_OMAP3EVM
-
-choice
-	prompt "Select OMAP platform"
-
-config MACH_OMAP343xSDP
-	bool "Texas Instrument's SDP343x"
-	select MACH_HAS_LOWLEVEL_INIT
-	select OMAP_CLOCK_ALL
-	select HAS_OMAP_NAND
-	help
-	  Say Y here if you are using SDP343x platform
-
-config MACH_BEAGLE
-	bool "Texas Instrument's Beagle Board"
-	select MACH_HAS_LOWLEVEL_INIT
-	select OMAP_CLOCK_ALL
-	select HAS_OMAP_NAND
-	  help
-	  Say Y here if you are using Beagle Board
-
-config MACH_OMAP3EVM
-	bool "Texas Instrument's OMAP3 EVM"
-	select MACH_HAS_LOWLEVEL_INIT
-	select OMAP_CLOCK_ALL
-	select HAS_OMAP_NAND
-	  help
-	  Say Y here if you are using OMAP3EVM
-
-endchoice
-
-if MACH_OMAP3EVM
-	choice
-	prompt "Select UART"
-
-	config OMAP3EVM_UART1
-		bool "Use UART1"
-		depends on MACH_OMAP3EVM
-		help
-		  Say Y here if you would like to use UART1 as console.
-
-	config OMAP3EVM_UART3
-		bool "Use UART3"
-		depends on MACH_OMAP3EVM
-		help
-		  Say Y here if you would like to use UART3 as console.
-	endchoice
-endif
-
-config MACH_OMAP_ADVANCED_MUX
-	bool "Enable advanced pin muxing"
-	depends on MACH_OMAP343xSDP
-	default n
-	help
-	  Say Y here if you would like to have complete pin muxing to be
-	  done at boot time
-
-config HAS_OMAP_NAND
-	bool
-
-endmenu
diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
index 630405b..a13fb1c 100644
--- a/arch/arm/mach-omap/Kconfig
+++ b/arch/arm/mach-omap/Kconfig
@@ -91,7 +91,73 @@ config GPIO
 	help
 	  Enable this if you use Texas Instrument's General Purpose IO
 
-# Get the board specific configurations
-source arch/arm/boards/omap/Kconfig
+config ARCH_TEXT_BASE
+	hex
+	default 0x80e80000 if MACH_OMAP343xSDP
+	default 0x80e80000 if MACH_BEAGLE
+
+config BOARDINFO
+	default "Texas Instrument's SDP343x" if MACH_OMAP343xSDP
+	default "Texas Instrument's Beagle" if MACH_BEAGLE
+	default "Texas Instrument's OMAP3EVM" if MACH_OMAP3EVM
+	default "Texas Instrument's Panda" if MACH_PANDA
+
+choice
+	prompt "Select OMAP board"
+
+config MACH_OMAP343xSDP
+	bool "Texas Instrument's SDP343x"
+	select MACH_HAS_LOWLEVEL_INIT
+	select OMAP_CLOCK_ALL
+	select HAS_OMAP_NAND
+	help
+	  Say Y here if you are using SDP343x platform
+
+config MACH_BEAGLE
+	bool "Texas Instrument's Beagle Board"
+	select MACH_HAS_LOWLEVEL_INIT
+	select OMAP_CLOCK_ALL
+	select HAS_OMAP_NAND
+	  help
+	  Say Y here if you are using Beagle Board
+
+config MACH_OMAP3EVM
+	bool "Texas Instrument's OMAP3 EVM"
+	select MACH_HAS_LOWLEVEL_INIT
+	select OMAP_CLOCK_ALL
+	select HAS_OMAP_NAND
+	  help
+	  Say Y here if you are using OMAP3EVM
+
+endchoice
+
+if MACH_OMAP3EVM
+	choice
+	prompt "Select UART"
+
+	config OMAP3EVM_UART1
+		bool "Use UART1"
+		depends on MACH_OMAP3EVM
+		help
+		  Say Y here if you would like to use UART1 as console.
+
+	config OMAP3EVM_UART3
+		bool "Use UART3"
+		depends on MACH_OMAP3EVM
+		help
+		  Say Y here if you would like to use UART3 as console.
+	endchoice
+endif
+
+config MACH_OMAP_ADVANCED_MUX
+	bool "Enable advanced pin muxing"
+	depends on MACH_OMAP343xSDP
+	default n
+	help
+	  Say Y here if you would like to have complete pin muxing to be
+	  done at boot time
+
+config HAS_OMAP_NAND
+	bool
 
 endmenu
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
