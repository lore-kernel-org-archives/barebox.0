Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 26.mail-out.ovh.net ([91.121.27.225])
	by casper.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1P2EkL-0007Nm-V3
	for barebox@lists.infradead.org; Sun, 03 Oct 2010 02:56:18 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun,  3 Oct 2010 04:54:26 +0200
Message-Id: <1286074466-12894-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH] imx: fix Internal boot source default choice
To: barebox@lists.infradead.org

via
default ARCH_IMX_INTERNAL_BOOT_NAND

and not default y on ARCH_IMX_INTERNAL_BOOT_NAND

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-imx/Kconfig |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 8a4e1ee..4f95393 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -43,6 +43,7 @@ config ARCH_IMX_INTERNAL_BOOT
 choice
 	depends on ARCH_IMX_INTERNAL_BOOT
 	prompt "Internal boot source"
+	default ARCH_IMX_INTERNAL_BOOT_NAND
 	help
 	  Determines the location of the header information for internal boot.
 	  0x100 for OneNAND
@@ -50,7 +51,6 @@ choice
 	  0x1000 for NOR
 
 config ARCH_IMX_INTERNAL_BOOT_NAND
-	default y
 	bool "NAND, SD/MMC, Serial ROM"
 	select NAND_IMX_BOOT
 
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
