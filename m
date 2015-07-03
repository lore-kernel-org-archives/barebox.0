Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from forward3l.mail.yandex.net ([84.201.143.136])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZB3Ko-0003Pi-8e
 for barebox@lists.infradead.org; Fri, 03 Jul 2015 15:57:03 +0000
From: Alexander Smirnov <alllecs@yandex.ru>
Date: Fri,  3 Jul 2015 18:58:23 +0300
Message-Id: <1435939105-12189-2-git-send-email-alllecs@yandex.ru>
In-Reply-To: <1435939105-12189-1-git-send-email-alllecs@yandex.ru>
References: <1435939105-12189-1-git-send-email-alllecs@yandex.ru>
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
Subject: [PATCH 1/3] common: move DDR_SPD to common/Kconfig
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Alexander Smirnov <alllecs@yandex.ru>

This patch makes it possible to use ddr_spd-related
routines in any arch not only in ppc.

Signed-off-by: Alexander Smirnov <alllecs@yandex.ru>
---
 arch/ppc/mach-mpc85xx/Kconfig  | 4 ----
 arch/ppc/mach-mpc85xx/Makefile | 3 ++-
 common/Kconfig                 | 4 ++++
 3 files changed, 6 insertions(+), 5 deletions(-)

diff --git a/arch/ppc/mach-mpc85xx/Kconfig b/arch/ppc/mach-mpc85xx/Kconfig
index e29be9c..aa518b9 100644
--- a/arch/ppc/mach-mpc85xx/Kconfig
+++ b/arch/ppc/mach-mpc85xx/Kconfig
@@ -81,10 +81,6 @@ config P1022
 config MPC8544
 	bool
 
-config DDR_SPD
-	bool
-	select CRC16
-
 config FSL_DDR2
 	bool
 
diff --git a/arch/ppc/mach-mpc85xx/Makefile b/arch/ppc/mach-mpc85xx/Makefile
index 3e64617..de4f5ef 100644
--- a/arch/ppc/mach-mpc85xx/Makefile
+++ b/arch/ppc/mach-mpc85xx/Makefile
@@ -9,5 +9,6 @@ obj-y			+= fsl_i2c.o
 obj-$(CONFIG_MP)	+= mp.o
 obj-$(CONFIG_OFTREE)	+= fdt.o
 obj-$(CONFIG_DRIVER_NET_GIANFAR) += eth-devices.o
-obj-$(CONFIG_DDR_SPD)	+= ../ddr-8xxx/
+obj-$(CONFIG_FSL_DDR2) += ../ddr-8xxx/
+obj-$(CONFIG_FSL_DDR3) += ../ddr-8xxx/
 extra-y += barebox.lds
diff --git a/common/Kconfig b/common/Kconfig
index 983d305..9c3628e 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -951,3 +951,7 @@ endmenu
 
 config HAS_DEBUG_LL
 	bool
+
+config DDR_SPD
+	bool
+	select CRC16
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
