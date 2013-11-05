Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og105.obsmtp.com ([64.18.0.180])
 by merlin.infradead.org with smtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vdih6-0005k3-Am
 for barebox@lists.infradead.org; Tue, 05 Nov 2013 15:37:29 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Tue,  5 Nov 2013 15:36:12 +0000
Message-Id: <1383665772-1167-6-git-send-email-renaud.barbier@ge.com>
In-Reply-To: <1383665772-1167-1-git-send-email-renaud.barbier@ge.com>
References: <1383665772-1167-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH 5/5] ppc: mpc85xx: build directives
To: barebox@lists.infradead.org

Add the Kconfig and Makefile directives to build barebox
for the GEIP DA923RC board.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 arch/ppc/Makefile              |    1 +
 arch/ppc/mach-mpc85xx/Kconfig  |   32 +++++++++++++++++++++++++-------
 arch/ppc/mach-mpc85xx/Makefile |    2 ++
 3 files changed, 28 insertions(+), 7 deletions(-)

diff --git a/arch/ppc/Makefile b/arch/ppc/Makefile
index f0322a2..aa00c96 100644
--- a/arch/ppc/Makefile
+++ b/arch/ppc/Makefile
@@ -13,6 +13,7 @@ endif
 
 board-$(CONFIG_MACH_PHYCORE_MPC5200B_TINY)	:= pcm030
 board-$(CONFIG_P2020RDB)			:= freescale-p2020rdb
+board-$(CONFIG_DA923RC)				:= geip-da923rc
 
 machine-$(CONFIG_ARCH_MPC5200)			:= mpc5xxx
 machine-$(CONFIG_ARCH_MPC85XX)			:= mpc85xx
diff --git a/arch/ppc/mach-mpc85xx/Kconfig b/arch/ppc/mach-mpc85xx/Kconfig
index 9af4af4..80cb0d9 100644
--- a/arch/ppc/mach-mpc85xx/Kconfig
+++ b/arch/ppc/mach-mpc85xx/Kconfig
@@ -3,10 +3,19 @@ if ARCH_MPC85XX
 config TEXT_BASE
 	hex
 	default 0xeff80000 if P2020RDB
+	default 0xfff80000 if DA923RC
 
 config MPC85xx
 	bool
-	default y if P2020RDB
+	default y
+
+config BOOKE
+	bool
+	default y
+
+config E500
+	bool
+	default y
 
 choice
 	prompt "Select your board"
@@ -16,8 +25,11 @@ config P2020RDB
 	help
 	  Say Y here if you are using the Freescale P2020RDB
 
+config DA923RC
+	bool "DA923RC"
+	help
+	Say Y here if you are using the GE Intelligent Platforms DA923RC
 endchoice
-
 endif
 
 if P2020RDB
@@ -25,15 +37,21 @@ config P2020
 	bool
 	default y
 
-config BOOKE
+config FSL_ELBC
 	bool
 	default y
+endif
 
-config E500
+if DA923RC
+config MPC8544
 	bool
 	default y
 
-config FSL_ELBC
-	bool
-	default y
+config DDR_SPD
+    bool
+    default y
+
+config FSL_DDR2
+    bool
+    default y
 endif
diff --git a/arch/ppc/mach-mpc85xx/Makefile b/arch/ppc/mach-mpc85xx/Makefile
index dba0550..ce6c77a 100644
--- a/arch/ppc/mach-mpc85xx/Makefile
+++ b/arch/ppc/mach-mpc85xx/Makefile
@@ -4,7 +4,9 @@ obj-y 			+= cpu_init.o
 obj-y			+= fsl_law.o
 obj-y			+= speed.o
 obj-y			+=time.o
+obj-y			+= fsl_gpio.o
 obj-y			+= fsl_i2c.o
 obj-$(CONFIG_MP)	+= mp.o
 obj-$(CONFIG_OFTREE)	+= fdt.o
 obj-$(CONFIG_DRIVER_NET_GIANFAR) += eth-devices.o
+obj-$(CONFIG_DDR_SPD)	+= ../ddr-8xxx/
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
