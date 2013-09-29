Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VQN7n-00023V-5I
 for barebox@lists.infradead.org; Sun, 29 Sep 2013 19:57:51 +0000
Received: from tellur.localdomain (p54831980.dip0.t-ipconnect.de
 [84.131.25.128]) by lynxeye.de (Postfix) with ESMTPA id 2D12C26C2004
 for <barebox@lists.infradead.org>; Sun, 29 Sep 2013 21:56:08 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Sun, 29 Sep 2013 21:59:33 +0200
Message-Id: <1380484776-32266-6-git-send-email-dev@lynxeye.de>
In-Reply-To: <1380484776-32266-1-git-send-email-dev@lynxeye.de>
References: <1380484776-32266-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 5/8] tegra: mandate relocatable binary
To: barebox@lists.infradead.org

Allows us to drop some silly code workaround.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/Kconfig                             | 1 +
 arch/arm/mach-tegra/Kconfig                  | 8 ++++----
 arch/arm/mach-tegra/tegra_maincomplex_init.c | 8 +-------
 3 files changed, 6 insertions(+), 11 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 398bc90..2ad8f6a 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -173,6 +173,7 @@ config ARCH_TEGRA
 	select GPIO_TEGRA
 	select OFDEVICE
 	select OFTREE
+	select RELOCATABLE
 
 config ARCH_ZYNQ
 	bool "Xilinx Zynq-based boards"
diff --git a/arch/arm/mach-tegra/Kconfig b/arch/arm/mach-tegra/Kconfig
index e6d53bc..4164f56 100644
--- a/arch/arm/mach-tegra/Kconfig
+++ b/arch/arm/mach-tegra/Kconfig
@@ -1,5 +1,9 @@
 if ARCH_TEGRA
 
+config ARCH_TEXT_BASE
+	hex
+	default 0x0
+
 choice
 	prompt "Tegra processor type"
 
@@ -46,10 +50,6 @@ endchoice
 
 if ARCH_TEGRA_2x_SOC
 
-config ARCH_TEXT_BASE
-	hex
-	default 0x00108000
-
 choice
 	prompt "Tegra 20 Board Type"
 
diff --git a/arch/arm/mach-tegra/tegra_maincomplex_init.c b/arch/arm/mach-tegra/tegra_maincomplex_init.c
index 343edd6..c485760 100644
--- a/arch/arm/mach-tegra/tegra_maincomplex_init.c
+++ b/arch/arm/mach-tegra/tegra_maincomplex_init.c
@@ -36,11 +36,5 @@ void tegra_maincomplex_entry(void)
 		unreachable();
 	}
 
-	/*
-	 * The standard load address for Tegra systems is 0x10800 which means
-	 * the barebox binary will always be below the malloc area for all
-	 * reasonable malloc area sizes. We offset the RAM base address by 8MB
-	 * to pretend barebox is in another bank.
-	 */
-	barebox_arm_entry(rambase + SZ_8M, ramsize - SZ_8M, 0);
+	barebox_arm_entry(rambase, ramsize, 0);
 }
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
