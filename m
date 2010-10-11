Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P5E7I-0001cM-8X
	for barebox@lists.infradead.org; Mon, 11 Oct 2010 08:52:21 +0000
Received: from gallifrey.ext.pengutronix.de
	([2001:6f8:1178:4:5054:ff:fe8d:eefb] helo=localhost)
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <jbe@pengutronix.de>) id 1P5E7E-0005mZ-VY
	for barebox@lists.infradead.org; Mon, 11 Oct 2010 10:52:17 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Mon, 11 Oct 2010 10:50:28 +0200
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201010111050.28141.jbe@pengutronix.de>
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
Subject: [PATCH] barebox-next: Avoid a Kconfig warning
To: barebox@lists.infradead.org

This patch removes the following warning in the current next-tree:

"arch/arm/mach-imx/Kconfig:53:warning: defaults for choice values not supported"

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>

---
 arch/arm/mach-imx/Kconfig |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

Index: arch/arm/mach-imx/Kconfig
===================================================================
--- arch/arm/mach-imx/Kconfig.orig
+++ arch/arm/mach-imx/Kconfig
@@ -42,6 +42,7 @@ config ARCH_IMX_INTERNAL_BOOT
 
 choice
 	depends on ARCH_IMX_INTERNAL_BOOT
+	default ARCH_IMX_INTERNAL_BOOT_NAND
 	prompt "Internal boot source"
 	help
 	  Determines the location of the header information for internal boot.
@@ -50,7 +51,6 @@ choice
 	  0x1000 for NOR
 
 config ARCH_IMX_INTERNAL_BOOT_NAND
-	default y
 	bool "NAND, SD/MMC, Serial ROM"
 	select NAND_IMX_BOOT
 

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | Phone: +49-8766-939 228     |
Vertretung Sued/Muenchen, Germany             | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686              | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
