Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og116.obsmtp.com ([64.18.0.147])
 by merlin.infradead.org with smtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WOA6o-0001fu-6r
 for barebox@lists.infradead.org; Thu, 13 Mar 2014 18:12:02 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Thu, 13 Mar 2014 18:10:04 +0000
Message-Id: <1394734204-8181-8-git-send-email-renaud.barbier@ge.com>
In-Reply-To: <1394734204-8181-1-git-send-email-renaud.barbier@ge.com>
References: <1394734204-8181-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH 6/6] ppc: P1022DS: update Kconfig and Makefile
To: barebox@lists.infradead.org

Kconfig and make files are updated to build the Freescale P1022DS
image.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 arch/ppc/Makefile             |  1 +
 arch/ppc/mach-mpc85xx/Kconfig | 32 ++++++++++++++++++++++++--------
 2 files changed, 25 insertions(+), 8 deletions(-)

diff --git a/arch/ppc/Makefile b/arch/ppc/Makefile
index 87be193..b9b355a 100644
--- a/arch/ppc/Makefile
+++ b/arch/ppc/Makefile
@@ -13,6 +13,7 @@ endif
 
 board-$(CONFIG_MACH_PHYCORE_MPC5200B_TINY)	:= pcm030
 board-$(CONFIG_P2020RDB)			:= freescale-p2020rdb
+board-$(CONFIG_P1022DS)				:= freescale-p1022ds
 board-$(CONFIG_DA923RC)				:= geip-da923rc
 
 machine-$(CONFIG_ARCH_MPC5200)			:= mpc5xxx
diff --git a/arch/ppc/mach-mpc85xx/Kconfig b/arch/ppc/mach-mpc85xx/Kconfig
index d02cf9b..ec5f04c 100644
--- a/arch/ppc/mach-mpc85xx/Kconfig
+++ b/arch/ppc/mach-mpc85xx/Kconfig
@@ -1,7 +1,7 @@
 if ARCH_MPC85XX
 
 config MMU
-	default y if CMD_MEMTEST
+	default y
 
 config BTB
 	bool
@@ -9,13 +9,13 @@ config BTB
 
 config TEXT_BASE
 	hex
-	default 0xeff80000 if P2020RDB
+	default 0xeff80000 if P2020RDB || P1022DS
 	default 0xfff80000 if DA923RC
 
 config RESET_VECTOR_ADDRESS
 	hex
 	default 0xfffffffc if DA923RC
-	default 0xeffffffc if P2020RDB
+	default 0xeffffffc if P2020RDB || P1022DS
 
 config MPC85xx
 	bool
@@ -37,6 +37,11 @@ config P2020RDB
 	help
 	  Say Y here if you are using the Freescale P2020RDB
 
+config P1022DS
+	bool "P1022DS"
+	help
+	  Say Y here if you are using the Freescale P1022DS
+
 config DA923RC
 	bool "DA923RC"
 	help
@@ -44,22 +49,33 @@ config DA923RC
 endchoice
 endif
 
+config FSL_ELBC
+	bool
+	default y if P2020RDB || P1022DS
+
+config DDR_SPD
+	bool
+	select CRC16
+	default y if DA923RC || P1022DS
+
 if P2020RDB
 config P2020
 	bool
 	default y
+endif
 
-config FSL_ELBC
+if P1022DS
+config P1022
 	bool
 	default y
-endif
 
-if DA923RC
-config MPC8544
+config FSL_DDR3
 	bool
 	default y
+endif
 
-config DDR_SPD
+if DA923RC
+config MPC8544
 	bool
 	default y
 
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
