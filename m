Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x234.google.com ([2a00:1450:400c:c05::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XULkz-00043P-Ij
 for barebox@lists.infradead.org; Wed, 17 Sep 2014 20:23:18 +0000
Received: by mail-wi0-f180.google.com with SMTP id ex7so43179wid.1
 for <barebox@lists.infradead.org>; Wed, 17 Sep 2014 13:22:55 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Wed, 17 Sep 2014 22:22:43 +0200
Message-Id: <1410985364-7105-6-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1410985364-7105-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1410985364-7105-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH v2 5/6] ARM: mvebu: Allow multiple SoCs
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

Now that the correct SoC specific memory fixup function is called
we can allow to select multiple SoCs in Kconfig.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Acked-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Changelog:
v1->v2:
- add Kconfig comment lines for each SoC

Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
Cc: barebox@lists.infradead.org
---
 arch/arm/mach-mvebu/Kconfig | 37 ++++++++++++++++---------------------
 1 file changed, 16 insertions(+), 21 deletions(-)

diff --git a/arch/arm/mach-mvebu/Kconfig b/arch/arm/mach-mvebu/Kconfig
index 7f6e44e7fc7b..f92c72f46ae1 100644
--- a/arch/arm/mach-mvebu/Kconfig
+++ b/arch/arm/mach-mvebu/Kconfig
@@ -7,83 +7,78 @@ config ARCH_TEXT_BASE
 	default 0x2000000 if ARCH_DOVE
 	default 0x2000000 if ARCH_KIRKWOOD
 
-choice
-	prompt "Marvell EBU Processor"
-
 config ARCH_ARMADA_370
-	bool "Armada 370"
+	bool
 	select CPU_V7
 	select CLOCKSOURCE_MVEBU
 
 config ARCH_ARMADA_XP
-	bool "Armada XP"
+	bool
 	select CPU_V7
 	select CLOCKSOURCE_MVEBU
 
 config ARCH_DOVE
-	bool "Dove 88AP510"
+	bool
 	select CPU_V7
 	select CLOCKSOURCE_ORION
 
 config ARCH_KIRKWOOD
-	bool "Kirkwood"
+	bool
 	select CPU_FEROCEON
 	select CLOCKSOURCE_ORION
 
-endchoice
-
 #
 # Armada 370 SoC boards
 #
+#
 
-if ARCH_ARMADA_370
+comment "Armada 370 based boards"
 
 config MACH_GLOBALSCALE_MIRABOX
 	bool "Globalscale Mirabox"
-
-endif # ARCH_ARMADA_370
+	select ARCH_ARMADA_370
 
 #
 # Armada XP SoC boards
 #
 
-if ARCH_ARMADA_XP
+comment "Armada XP based boards"
 
 config MACH_PLATHOME_OPENBLOCKS_AX3
 	bool "PlatHome OpenBlocks AX3"
+	select ARCH_ARMADA_XP
 
 config MACH_MARVELL_ARMADA_XP_GP
 	bool "Marvell Armada XP GP"
-
-endif # ARCH_ARMADA_XP
+	select ARCH_ARMADA_XP
 
 #
 # Dove 88AP510 SoC boards
 #
 
-if ARCH_DOVE
+comment "Dove based boards"
 
 config MACH_SOLIDRUN_CUBOX
 	bool "SolidRun CuBox"
-
-endif # ARCH_DOVE
+	select ARCH_DOVE
 
 #
 # Kirkwood SoC boards
 #
 
-if ARCH_KIRKWOOD
+comment "Kirkwood based boards"
 
 config MACH_GLOBALSCALE_GURUPLUG
 	bool "Guruplug"
+	select ARCH_KIRKWOOD
 
 config MACH_PLATHOME_OPENBLOCKS_A6
 	bool "PlatHome OpenBlocks A6"
+	select ARCH_KIRKWOOD
 
 config MACH_USI_TOPKICK
 	bool "Topkick"
-
-endif # ARCH_KIRKWOOD
+	select ARCH_KIRKWOOD
 
 #
 # Common options
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
